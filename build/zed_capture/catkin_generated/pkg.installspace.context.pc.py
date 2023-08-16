# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/local/zed/include".split(';') if "${prefix}/include;/usr/local/zed/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rospy;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lzed_capture;/usr/local/zed/lib/libsl_zed.so;/usr/lib/x86_64-linux-gnu/libopenblas.so;/usr/lib/x86_64-linux-gnu/libusb-1.0.so;/usr/lib/x86_64-linux-gnu/libnvidia-encode.so".split(';') if "-lzed_capture;/usr/local/zed/lib/libsl_zed.so;/usr/lib/x86_64-linux-gnu/libopenblas.so;/usr/lib/x86_64-linux-gnu/libusb-1.0.so;/usr/lib/x86_64-linux-gnu/libnvidia-encode.so" != "" else []
PROJECT_NAME = "zed_capture"
PROJECT_SPACE_DIR = "/home/xj/zed_ws/install"
PROJECT_VERSION = "0.0.0"
