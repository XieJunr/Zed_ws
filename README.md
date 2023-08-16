# Zed_ws
***
## 项目架构

  ros包：/src/zed_capture
  
>  #### 节点：
>  * zed_capture
> > /src/zed_capture/src/zed_capture.cpp  
>  * detect.py 
> > /src/zed_capture/scripts/detect.py

## 功能说明

  * 运行zed_capture节点，启用zed2捕捉图像，并等待message
  * 运行detect节点，接受图像，使用yolo推理出所有水果的像素中心点(x ,y),并发送第一对xy坐标至zed_capture
  * zed_capture接受坐标后，在点云中找到对应点的三维坐标，并使用话题传输
  > 1. 坐标系以zed2左镜头光心为原点，x轴向右，y轴向上，z轴向外
  > 2. 坐标系以米为单位
  > 3. 坐标会出现负数
  > 4. 多次测试下，深度精度成高斯分布，实际情况还需实际测试
    
## 使用说明

  首先打开/src/zed_capture/src/zed_capture.cpp，找到发布者grape_pub，修改话题并保存
  
  打开终端，进行编译
  ```
  cd 工作空间/
  catkin_make
  ```
  启用ros服务
  `roscore`
  另起一个终端，先启动detect节点
  `rosrun zed_capture detect.py`
  再另起一个终端，然后启动zed_capture节点
  `rosrun zed_capture zed_capture`

  > ps: 为防止发送第一条数据时， publisher 还未在 roscore 注册完毕，导致消息丢失，在发布前手动加了一秒的sleep。如想加快速度可注释。
***
## 环境配置

### ZED SDK
  请到[zed官方文档](https://www.stereolabs.com/docs/installation/linux/)安装sdk，注意安装sdk时会询问你是否安装python_api，输入no，是否下载moudle，同样no，可以节省很多时间。无需设置cuda。

  然后配置c++
  ```
  sudo apt-get install build-essential cmake
  ```
### python
  根据这篇[博客](https://blog.csdn.net/qq_33806001/article/details/124850247?ops_request_misc=&request_id=&biz_id=102&utm_term=ubuntu%E5%AE%89%E8%A3%85pytorch&utm_medium=distribute.pc_search_result.none-task-blog-2~all~sobaiduweb~default-0-124850247.nonecase&spm=1018.2226.3001.4187)配置python环境
                      * python3.9
                      * 显卡驱动
                      * cuda11.6
                      * pytorch1.13
  > 如选择其他版本可能会报错

然后`cd 工作空间/`，`pip install -r requirements.txt `
***
python环境非常复杂，缺啥装啥，依赖项互相不兼容也没关系，能运行`python detect.py`就行
