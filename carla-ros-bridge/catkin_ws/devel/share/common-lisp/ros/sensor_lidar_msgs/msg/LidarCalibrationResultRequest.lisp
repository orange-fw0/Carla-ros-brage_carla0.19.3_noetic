; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarCalibrationResultRequest.msg.html

(cl:defclass <LidarCalibrationResultRequest> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type sensor_lidar_msgs-msg:LidarID
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarID))
   (type
    :reader type
    :initarg :type
    :type sensor_lidar_msgs-msg:LidarCalibrationType
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarCalibrationType)))
)

(cl:defclass LidarCalibrationResultRequest (<LidarCalibrationResultRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarCalibrationResultRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarCalibrationResultRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarCalibrationResultRequest> is deprecated: use sensor_lidar_msgs-msg:LidarCalibrationResultRequest instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LidarCalibrationResultRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:id-val is deprecated.  Use sensor_lidar_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LidarCalibrationResultRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:type-val is deprecated.  Use sensor_lidar_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarCalibrationResultRequest>) ostream)
  "Serializes a message object of type '<LidarCalibrationResultRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarCalibrationResultRequest>) istream)
  "Deserializes a message object of type '<LidarCalibrationResultRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarCalibrationResultRequest>)))
  "Returns string type for a message object of type '<LidarCalibrationResultRequest>"
  "sensor_lidar_msgs/LidarCalibrationResultRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarCalibrationResultRequest)))
  "Returns string type for a message object of type 'LidarCalibrationResultRequest"
  "sensor_lidar_msgs/LidarCalibrationResultRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarCalibrationResultRequest>)))
  "Returns md5sum for a message object of type '<LidarCalibrationResultRequest>"
  "7e7206c0906d50fe4cd21763dfcd82e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarCalibrationResultRequest)))
  "Returns md5sum for a message object of type 'LidarCalibrationResultRequest"
  "7e7206c0906d50fe4cd21763dfcd82e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarCalibrationResultRequest>)))
  "Returns full string definition for message of type '<LidarCalibrationResultRequest>"
  (cl:format cl:nil "sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarCalibrationType type~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibrationType~%uint8 None = 0~%uint8 EOL_Calibration = 1~%uint8 AfterSale_Calibration = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarCalibrationResultRequest)))
  "Returns full string definition for message of type 'LidarCalibrationResultRequest"
  (cl:format cl:nil "sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarCalibrationType type~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibrationType~%uint8 None = 0~%uint8 EOL_Calibration = 1~%uint8 AfterSale_Calibration = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarCalibrationResultRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarCalibrationResultRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarCalibrationResultRequest
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
))
