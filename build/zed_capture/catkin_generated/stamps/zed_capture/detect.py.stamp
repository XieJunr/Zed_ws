import rospy
from sensor_msgs.msg import Image
from zed_capture.msg import Crop
from cv_bridge import CvBridge
from PIL import Image,ImageDraw
from utils.operation import YOLO
import onnxruntime as ort

def detect(onnx_path='best.onnx',img_path="0142.jpg",show=True):  #可关闭可视化窗口
    
    yolo = YOLO(onnx_path=onnx_path)
    det_obj = yolo.decect(img_path)
    
    crop = []
    for i in range(len(det_obj)):
        x1,y1,x2,y2 = det_obj[i]['crop']
        crop.append(((x1 + x2)//2,(y1 + y2)//2))

def image_callback(msg):
    
    rospy.loginfo("Successfully received message")

    bridge = CvBridge()
        
    cv_image = bridge.imgmsg_to_cv2(msg, desired_encoding="passthrough")
    
    crop = Crop()

    crop.x = detect(img_path=cv_image)[0]
    crop.y = detect(img_path=cv_image)[1]

    r = rospy.Rate(1)
    r.sleep()

    pub.publish(crop)

    rospy.loginfo("Already send xy")
           
def main():

    rospy.loginfo("Starting")
    
    rospy.init_node("image_listener_node", anonymous=True)

 
    rospy.Subscriber("zed/image", Image, image_callback)

    pub = rospy.Publisher("crop",Crop,queue_size=1)
    

    rospy.spin()

if __name__ == '__main__':
    main()