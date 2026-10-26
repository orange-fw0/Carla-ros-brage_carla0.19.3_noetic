; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarCalibResult.msg.html

(cl:defclass <LidarCalibResult> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarCalibResult (<LidarCalibResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarCalibResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarCalibResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarCalibResult> is deprecated: use sensor_lidar_msgs-msg:LidarCalibResult instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LidarCalibResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:value-val is deprecated.  Use sensor_lidar_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarCalibResult>) ostream)
  "Serializes a message object of type '<LidarCalibResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarCalibResult>) istream)
  "Deserializes a message object of type '<LidarCalibResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarCalibResult>)))
  "Returns string type for a message object of type '<LidarCalibResult>"
  "sensor_lidar_msgs/LidarCalibResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarCalibResult)))
  "Returns string type for a message object of type 'LidarCalibResult"
  "sensor_lidar_msgs/LidarCalibResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarCalibResult>)))
  "Returns md5sum for a message object of type '<LidarCalibResult>"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarCalibResult)))
  "Returns md5sum for a message object of type 'LidarCalibResult"
  "e4da51e86d3bac963ee2bb1f41031407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarCalibResult>)))
  "Returns full string definition for message of type '<LidarCalibResult>"
  (cl:format cl:nil "uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarCalibResult)))
  "Returns full string definition for message of type 'LidarCalibResult"
  (cl:format cl:nil "uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarCalibResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarCalibResult>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarCalibResult
    (cl:cons ':value (value msg))
))
