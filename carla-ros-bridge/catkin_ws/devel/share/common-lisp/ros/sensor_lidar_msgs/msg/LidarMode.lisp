; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarMode.msg.html

(cl:defclass <LidarMode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarMode (<LidarMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarMode> is deprecated: use sensor_lidar_msgs-msg:LidarMode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LidarMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:value-val is deprecated.  Use sensor_lidar_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LidarMode>)))
    "Constants for message type '<LidarMode>"
  '((:NORMAL_MODE . 0)
    (:EOL_CALIBRATION_MODE . 1)
    (:AFTERSALE_CALIBRATION_MODE . 2)
    (:SUPERECO . 3)
    (:STANDBY . 4)
    (:PLAYBACK . 5)
    (:RESERVED . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LidarMode)))
    "Constants for message type 'LidarMode"
  '((:NORMAL_MODE . 0)
    (:EOL_CALIBRATION_MODE . 1)
    (:AFTERSALE_CALIBRATION_MODE . 2)
    (:SUPERECO . 3)
    (:STANDBY . 4)
    (:PLAYBACK . 5)
    (:RESERVED . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarMode>) ostream)
  "Serializes a message object of type '<LidarMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarMode>) istream)
  "Deserializes a message object of type '<LidarMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarMode>)))
  "Returns string type for a message object of type '<LidarMode>"
  "sensor_lidar_msgs/LidarMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarMode)))
  "Returns string type for a message object of type 'LidarMode"
  "sensor_lidar_msgs/LidarMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarMode>)))
  "Returns md5sum for a message object of type '<LidarMode>"
  "4024931a4d53ded66e606c97ee6cf6e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarMode)))
  "Returns md5sum for a message object of type 'LidarMode"
  "4024931a4d53ded66e606c97ee6cf6e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarMode>)))
  "Returns full string definition for message of type '<LidarMode>"
  (cl:format cl:nil "uint8 Normal_Mode = 0~%uint8 EOL_Calibration_Mode = 1~%uint8 AfterSale_Calibration_Mode = 2~%uint8 SuperEco = 3~%uint8 StandBy = 4~%uint8 PlayBack = 5~%uint8 Reserved = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarMode)))
  "Returns full string definition for message of type 'LidarMode"
  (cl:format cl:nil "uint8 Normal_Mode = 0~%uint8 EOL_Calibration_Mode = 1~%uint8 AfterSale_Calibration_Mode = 2~%uint8 SuperEco = 3~%uint8 StandBy = 4~%uint8 PlayBack = 5~%uint8 Reserved = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarMode>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarMode
    (cl:cons ':value (value msg))
))
