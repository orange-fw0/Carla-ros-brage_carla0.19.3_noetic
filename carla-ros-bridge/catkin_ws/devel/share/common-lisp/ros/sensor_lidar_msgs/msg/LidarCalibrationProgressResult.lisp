; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarCalibrationProgressResult.msg.html

(cl:defclass <LidarCalibrationProgressResult> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarCalibrationProgressResult (<LidarCalibrationProgressResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarCalibrationProgressResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarCalibrationProgressResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarCalibrationProgressResult> is deprecated: use sensor_lidar_msgs-msg:LidarCalibrationProgressResult instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LidarCalibrationProgressResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:value-val is deprecated.  Use sensor_lidar_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LidarCalibrationProgressResult>)))
    "Constants for message type '<LidarCalibrationProgressResult>"
  '((:NONE . 0)
    (:INIT . 1)
    (:ONGOING . 2)
    (:COMPLETE_SUCCESSFUL . 3)
    (:COMPLETE_WITH_ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LidarCalibrationProgressResult)))
    "Constants for message type 'LidarCalibrationProgressResult"
  '((:NONE . 0)
    (:INIT . 1)
    (:ONGOING . 2)
    (:COMPLETE_SUCCESSFUL . 3)
    (:COMPLETE_WITH_ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarCalibrationProgressResult>) ostream)
  "Serializes a message object of type '<LidarCalibrationProgressResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarCalibrationProgressResult>) istream)
  "Deserializes a message object of type '<LidarCalibrationProgressResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarCalibrationProgressResult>)))
  "Returns string type for a message object of type '<LidarCalibrationProgressResult>"
  "sensor_lidar_msgs/LidarCalibrationProgressResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarCalibrationProgressResult)))
  "Returns string type for a message object of type 'LidarCalibrationProgressResult"
  "sensor_lidar_msgs/LidarCalibrationProgressResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarCalibrationProgressResult>)))
  "Returns md5sum for a message object of type '<LidarCalibrationProgressResult>"
  "930f2fdef13c3190fdbeda7406771f57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarCalibrationProgressResult)))
  "Returns md5sum for a message object of type 'LidarCalibrationProgressResult"
  "930f2fdef13c3190fdbeda7406771f57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarCalibrationProgressResult>)))
  "Returns full string definition for message of type '<LidarCalibrationProgressResult>"
  (cl:format cl:nil "uint8 None = 0~%uint8 Init = 1~%uint8 Ongoing = 2~%uint8 Complete_Successful = 3~%uint8 Complete_With_Error = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarCalibrationProgressResult)))
  "Returns full string definition for message of type 'LidarCalibrationProgressResult"
  (cl:format cl:nil "uint8 None = 0~%uint8 Init = 1~%uint8 Ongoing = 2~%uint8 Complete_Successful = 3~%uint8 Complete_With_Error = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarCalibrationProgressResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarCalibrationProgressResult>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarCalibrationProgressResult
    (cl:cons ':value (value msg))
))
