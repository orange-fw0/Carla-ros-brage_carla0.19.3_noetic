; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarHorizontResult.msg.html

(cl:defclass <LidarHorizontResult> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarHorizontResult (<LidarHorizontResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarHorizontResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarHorizontResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarHorizontResult> is deprecated: use sensor_lidar_msgs-msg:LidarHorizontResult instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LidarHorizontResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:value-val is deprecated.  Use sensor_lidar_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarHorizontResult>) ostream)
  "Serializes a message object of type '<LidarHorizontResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarHorizontResult>) istream)
  "Deserializes a message object of type '<LidarHorizontResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarHorizontResult>)))
  "Returns string type for a message object of type '<LidarHorizontResult>"
  "sensor_lidar_msgs/LidarHorizontResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarHorizontResult)))
  "Returns string type for a message object of type 'LidarHorizontResult"
  "sensor_lidar_msgs/LidarHorizontResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarHorizontResult>)))
  "Returns md5sum for a message object of type '<LidarHorizontResult>"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarHorizontResult)))
  "Returns md5sum for a message object of type 'LidarHorizontResult"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarHorizontResult>)))
  "Returns full string definition for message of type '<LidarHorizontResult>"
  (cl:format cl:nil "uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarHorizontResult)))
  "Returns full string definition for message of type 'LidarHorizontResult"
  (cl:format cl:nil "uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarHorizontResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarHorizontResult>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarHorizontResult
    (cl:cons ':value (value msg))
))
