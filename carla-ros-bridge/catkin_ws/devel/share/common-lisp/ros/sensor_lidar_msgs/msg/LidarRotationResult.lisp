; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarRotationResult.msg.html

(cl:defclass <LidarRotationResult> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarRotationResult (<LidarRotationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarRotationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarRotationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarRotationResult> is deprecated: use sensor_lidar_msgs-msg:LidarRotationResult instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LidarRotationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:value-val is deprecated.  Use sensor_lidar_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarRotationResult>) ostream)
  "Serializes a message object of type '<LidarRotationResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarRotationResult>) istream)
  "Deserializes a message object of type '<LidarRotationResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarRotationResult>)))
  "Returns string type for a message object of type '<LidarRotationResult>"
  "sensor_lidar_msgs/LidarRotationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarRotationResult)))
  "Returns string type for a message object of type 'LidarRotationResult"
  "sensor_lidar_msgs/LidarRotationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarRotationResult>)))
  "Returns md5sum for a message object of type '<LidarRotationResult>"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarRotationResult)))
  "Returns md5sum for a message object of type 'LidarRotationResult"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarRotationResult>)))
  "Returns full string definition for message of type '<LidarRotationResult>"
  (cl:format cl:nil "uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarRotationResult)))
  "Returns full string definition for message of type 'LidarRotationResult"
  (cl:format cl:nil "uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarRotationResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarRotationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarRotationResult
    (cl:cons ':value (value msg))
))
