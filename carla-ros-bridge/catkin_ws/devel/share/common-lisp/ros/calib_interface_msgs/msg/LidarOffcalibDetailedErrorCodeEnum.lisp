; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude LidarOffcalibDetailedErrorCodeEnum.msg.html

(cl:defclass <LidarOffcalibDetailedErrorCodeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarOffcalibDetailedErrorCodeEnum (<LidarOffcalibDetailedErrorCodeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarOffcalibDetailedErrorCodeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarOffcalibDetailedErrorCodeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<LidarOffcalibDetailedErrorCodeEnum> is deprecated: use calib_interface_msgs-msg:LidarOffcalibDetailedErrorCodeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LidarOffcalibDetailedErrorCodeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:value-val is deprecated.  Use calib_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LidarOffcalibDetailedErrorCodeEnum>)))
    "Constants for message type '<LidarOffcalibDetailedErrorCodeEnum>"
  '((:NORMAL . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LidarOffcalibDetailedErrorCodeEnum)))
    "Constants for message type 'LidarOffcalibDetailedErrorCodeEnum"
  '((:NORMAL . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarOffcalibDetailedErrorCodeEnum>) ostream)
  "Serializes a message object of type '<LidarOffcalibDetailedErrorCodeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarOffcalibDetailedErrorCodeEnum>) istream)
  "Deserializes a message object of type '<LidarOffcalibDetailedErrorCodeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarOffcalibDetailedErrorCodeEnum>)))
  "Returns string type for a message object of type '<LidarOffcalibDetailedErrorCodeEnum>"
  "calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarOffcalibDetailedErrorCodeEnum)))
  "Returns string type for a message object of type 'LidarOffcalibDetailedErrorCodeEnum"
  "calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarOffcalibDetailedErrorCodeEnum>)))
  "Returns md5sum for a message object of type '<LidarOffcalibDetailedErrorCodeEnum>"
  "6260181ac4dfaf104c54bba3d58df919")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarOffcalibDetailedErrorCodeEnum)))
  "Returns md5sum for a message object of type 'LidarOffcalibDetailedErrorCodeEnum"
  "6260181ac4dfaf104c54bba3d58df919")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarOffcalibDetailedErrorCodeEnum>)))
  "Returns full string definition for message of type '<LidarOffcalibDetailedErrorCodeEnum>"
  (cl:format cl:nil "uint16 NORMAL = 0~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarOffcalibDetailedErrorCodeEnum)))
  "Returns full string definition for message of type 'LidarOffcalibDetailedErrorCodeEnum"
  (cl:format cl:nil "uint16 NORMAL = 0~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarOffcalibDetailedErrorCodeEnum>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarOffcalibDetailedErrorCodeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarOffcalibDetailedErrorCodeEnum
    (cl:cons ':value (value msg))
))
