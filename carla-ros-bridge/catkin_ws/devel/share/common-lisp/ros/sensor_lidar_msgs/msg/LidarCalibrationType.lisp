; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarCalibrationType.msg.html

(cl:defclass <LidarCalibrationType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarCalibrationType (<LidarCalibrationType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarCalibrationType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarCalibrationType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarCalibrationType> is deprecated: use sensor_lidar_msgs-msg:LidarCalibrationType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LidarCalibrationType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:value-val is deprecated.  Use sensor_lidar_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LidarCalibrationType>)))
    "Constants for message type '<LidarCalibrationType>"
  '((:NONE . 0)
    (:EOL_CALIBRATION . 1)
    (:AFTERSALE_CALIBRATION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LidarCalibrationType)))
    "Constants for message type 'LidarCalibrationType"
  '((:NONE . 0)
    (:EOL_CALIBRATION . 1)
    (:AFTERSALE_CALIBRATION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarCalibrationType>) ostream)
  "Serializes a message object of type '<LidarCalibrationType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarCalibrationType>) istream)
  "Deserializes a message object of type '<LidarCalibrationType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarCalibrationType>)))
  "Returns string type for a message object of type '<LidarCalibrationType>"
  "sensor_lidar_msgs/LidarCalibrationType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarCalibrationType)))
  "Returns string type for a message object of type 'LidarCalibrationType"
  "sensor_lidar_msgs/LidarCalibrationType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarCalibrationType>)))
  "Returns md5sum for a message object of type '<LidarCalibrationType>"
  "ddf76402361ed2bdd24dd050318e30ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarCalibrationType)))
  "Returns md5sum for a message object of type 'LidarCalibrationType"
  "ddf76402361ed2bdd24dd050318e30ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarCalibrationType>)))
  "Returns full string definition for message of type '<LidarCalibrationType>"
  (cl:format cl:nil "uint8 None = 0~%uint8 EOL_Calibration = 1~%uint8 AfterSale_Calibration = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarCalibrationType)))
  "Returns full string definition for message of type 'LidarCalibrationType"
  (cl:format cl:nil "uint8 None = 0~%uint8 EOL_Calibration = 1~%uint8 AfterSale_Calibration = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarCalibrationType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarCalibrationType>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarCalibrationType
    (cl:cons ':value (value msg))
))
