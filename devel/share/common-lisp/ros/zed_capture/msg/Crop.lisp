; Auto-generated. Do not edit!


(cl:in-package zed_capture-msg)


;//! \htmlinclude Crop.msg.html

(cl:defclass <Crop> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Crop (<Crop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Crop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Crop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zed_capture-msg:<Crop> is deprecated: use zed_capture-msg:Crop instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Crop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_capture-msg:x-val is deprecated.  Use zed_capture-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Crop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zed_capture-msg:y-val is deprecated.  Use zed_capture-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Crop>) ostream)
  "Serializes a message object of type '<Crop>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Crop>) istream)
  "Deserializes a message object of type '<Crop>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Crop>)))
  "Returns string type for a message object of type '<Crop>"
  "zed_capture/Crop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Crop)))
  "Returns string type for a message object of type 'Crop"
  "zed_capture/Crop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Crop>)))
  "Returns md5sum for a message object of type '<Crop>"
  "2b80853b9dd76da1c3efb4dbc2426fe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Crop)))
  "Returns md5sum for a message object of type 'Crop"
  "2b80853b9dd76da1c3efb4dbc2426fe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Crop>)))
  "Returns full string definition for message of type '<Crop>"
  (cl:format cl:nil "uint16 x~%uint16 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Crop)))
  "Returns full string definition for message of type 'Crop"
  (cl:format cl:nil "uint16 x~%uint16 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Crop>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Crop>))
  "Converts a ROS message object to a list"
  (cl:list 'Crop
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
