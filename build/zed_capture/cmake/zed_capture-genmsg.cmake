# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "zed_capture: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ized_capture:/home/xj/zed_ws/src/zed_capture/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(zed_capture_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg" NAME_WE)
add_custom_target(_zed_capture_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_capture" "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg" ""
)

get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg" NAME_WE)
add_custom_target(_zed_capture_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zed_capture" "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(zed_capture
  "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_capture
)
_generate_msg_cpp(zed_capture
  "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_capture
)

### Generating Services

### Generating Module File
_generate_module_cpp(zed_capture
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_capture
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(zed_capture_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(zed_capture_generate_messages zed_capture_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg" NAME_WE)
add_dependencies(zed_capture_generate_messages_cpp _zed_capture_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg" NAME_WE)
add_dependencies(zed_capture_generate_messages_cpp _zed_capture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zed_capture_gencpp)
add_dependencies(zed_capture_gencpp zed_capture_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zed_capture_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(zed_capture
  "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_capture
)
_generate_msg_eus(zed_capture
  "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_capture
)

### Generating Services

### Generating Module File
_generate_module_eus(zed_capture
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_capture
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(zed_capture_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(zed_capture_generate_messages zed_capture_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg" NAME_WE)
add_dependencies(zed_capture_generate_messages_eus _zed_capture_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg" NAME_WE)
add_dependencies(zed_capture_generate_messages_eus _zed_capture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zed_capture_geneus)
add_dependencies(zed_capture_geneus zed_capture_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zed_capture_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(zed_capture
  "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_capture
)
_generate_msg_lisp(zed_capture
  "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_capture
)

### Generating Services

### Generating Module File
_generate_module_lisp(zed_capture
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_capture
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(zed_capture_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(zed_capture_generate_messages zed_capture_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg" NAME_WE)
add_dependencies(zed_capture_generate_messages_lisp _zed_capture_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg" NAME_WE)
add_dependencies(zed_capture_generate_messages_lisp _zed_capture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zed_capture_genlisp)
add_dependencies(zed_capture_genlisp zed_capture_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zed_capture_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(zed_capture
  "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_capture
)
_generate_msg_nodejs(zed_capture
  "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_capture
)

### Generating Services

### Generating Module File
_generate_module_nodejs(zed_capture
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_capture
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(zed_capture_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(zed_capture_generate_messages zed_capture_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg" NAME_WE)
add_dependencies(zed_capture_generate_messages_nodejs _zed_capture_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg" NAME_WE)
add_dependencies(zed_capture_generate_messages_nodejs _zed_capture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zed_capture_gennodejs)
add_dependencies(zed_capture_gennodejs zed_capture_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zed_capture_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(zed_capture
  "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_capture
)
_generate_msg_py(zed_capture
  "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_capture
)

### Generating Services

### Generating Module File
_generate_module_py(zed_capture
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_capture
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(zed_capture_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(zed_capture_generate_messages zed_capture_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Crop.msg" NAME_WE)
add_dependencies(zed_capture_generate_messages_py _zed_capture_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xj/zed_ws/src/zed_capture/msg/Grape.msg" NAME_WE)
add_dependencies(zed_capture_generate_messages_py _zed_capture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zed_capture_genpy)
add_dependencies(zed_capture_genpy zed_capture_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zed_capture_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_capture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zed_capture
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(zed_capture_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_capture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zed_capture
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(zed_capture_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_capture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zed_capture
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(zed_capture_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_capture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zed_capture
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(zed_capture_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_capture)
  install(CODE "execute_process(COMMAND \"/home/xj/anaconda3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_capture\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zed_capture
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(zed_capture_generate_messages_py std_msgs_generate_messages_py)
endif()
