; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarModeRequest.msg.html

(cl:defclass <LidarModeRequest> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type sensor_lidar_msgs-msg:LidarID
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarID))
   (mode
    :reader mode
    :initarg :mode
    :type sensor_lidar_msgs-msg:LidarMode
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarMode)))
)

(cl:defclass LidarModeRequest (<LidarModeRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarModeRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarModeRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarModeRequest> is deprecated: use sensor_lidar_msgs-msg:LidarModeRequest instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LidarModeRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:id-val is deprecated.  Use sensor_lidar_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <LidarModeRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:mode-val is deprecated.  Use sensor_lidar_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarModeRequest>) ostream)
  "Serializes a message object of type '<LidarModeRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarModeRequest>) istream)
  "Deserializes a message object of type '<LidarModeRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarModeRequest>)))
  "Returns string type for a message object of type '<LidarModeRequest>"
  "sensor_lidar_msgs/LidarModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarModeRequest)))
  "Returns string type for a message object of type 'LidarModeRequest"
  "sensor_lidar_msgs/LidarModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarModeRequest>)))
  "Returns md5sum for a message object of type '<LidarModeRequest>"
  "4444835642b6c551bb1faa8245470185")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarModeRequest)))
  "Returns md5sum for a message object of type 'LidarModeRequest"
  "4444835642b6c551bb1faa8245470185")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarModeRequest>)))
  "Returns full string definition for message of type '<LidarModeRequest>"
  (cl:format cl:nil "sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarMode mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarMode~%uint8 Normal_Mode = 0~%uint8 EOL_Calibration_Mode = 1~%uint8 AfterSale_Calibration_Mode = 2~%uint8 SuperEco = 3~%uint8 StandBy = 4~%uint8 PlayBack = 5~%uint8 Reserved = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarModeRequest)))
  "Returns full string definition for message of type 'LidarModeRequest"
  (cl:format cl:nil "sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarMode mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarMode~%uint8 Normal_Mode = 0~%uint8 EOL_Calibration_Mode = 1~%uint8 AfterSale_Calibration_Mode = 2~%uint8 SuperEco = 3~%uint8 StandBy = 4~%uint8 PlayBack = 5~%uint8 Reserved = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarModeRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarModeRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarModeRequest
    (cl:cons ':id (id msg))
    (cl:cons ':mode (mode msg))
))
