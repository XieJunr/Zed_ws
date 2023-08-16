#include <ros/ros.h>
#include <ros/console.h>
#include <sl/Camera.hpp>
#include <sensor_msgs/Image.h>
#include "zed_capture/Crop.h"
#include "zed_capture/Grape.h"

using namespace std;
using namespace sl;

static sl::Mat image,point_cloud;

void find_deep(const zed_capture::Crop::ConstPtr& crop);

ros::Publisher grape_pub;

int main(int argc, char** argv)
{
    Camera zed;

    InitParameters init_parameters;
    init_parameters.camera_resolution = RESOLUTION::HD1080; 
    init_parameters.camera_fps = 30; 
    init_parameters.coordinate_units = UNIT::METER;
    init_parameters.depth_mode = DEPTH_MODE::NEURAL;
    init_parameters.depth_minimum_distance = 0.3;
    init_parameters.depth_maximum_distance = 40;
    auto returned_state = zed.open(init_parameters);
    if (returned_state != ERROR_CODE::SUCCESS) {
        cout << "Error " << returned_state << ", exit program." << endl;
        return EXIT_FAILURE;
    }
    ros::init(argc, argv, "zed_image_publisher");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe<zed_capture::Crop>("crop",10,find_deep);
    ros::Publisher image_pub = nh.advertise<sensor_msgs::Image>("zed/image", 10);
    grape_pub = nh.advertise<sensor_msgs::Image>("your_node_name", 10);
    
    returned_state = zed.grab();
       
    if (returned_state == ERROR_CODE::SUCCESS) {
    zed.retrieveImage(image, VIEW::LEFT);
    zed.retrieveMeasure(point_cloud, MEASURE::XYZRGBA);
    }

    sensor_msgs::ImagePtr msg = boost::make_shared<sensor_msgs::Image>();
    msg->header.stamp = ros::Time::now();
    msg->header.frame_id = "camera_frame";
    msg->height = image.getHeight();
    msg->width = image.getWidth();
    msg->encoding = "rgb8";
    msg->step = static_cast<uint32_t>(image.getWidth() * 3);
    msg->data.resize(msg->step * msg->height);
    std::memcpy(&msg->data[0], image.getPtr<sl::uchar1>(sl::MEM::CPU), msg->step * msg->height);

    ros::Duration(1.0).sleep(); 
    if(ros::ok())
    {
        image_pub.publish(msg);
        ROS_INFO("Image Successfully sub!\nWaiting for message");
        ros::spin();
    
    }
    


    return 0;
}

void find_deep(const zed_capture::Crop::ConstPtr& crop){
    ROS_INFO("The grape subscribe x:%d, y:%d", crop->x, crop->y);
    
    sl::float4 point_cloud_value;
    point_cloud.getValue(crop->x, crop->y, &point_cloud_value);
    
    ROS_INFO("The coordinates x:%.3f, y:%.3f, z:%.3f", point_cloud_value.x, point_cloud_value.y, point_cloud_value.z);
    static zed_capture::Grape coor;
    
    coor.x = point_cloud_value.x;
    coor.y = point_cloud_value.y;
    coor.z = point_cloud_value.z;

    ros::Rate r(1);
    r.sleep();
    if (ros::ok())
    {
        grape_pub.publish(coor);

        ROS_INFO("Successfully Send");
    }
}