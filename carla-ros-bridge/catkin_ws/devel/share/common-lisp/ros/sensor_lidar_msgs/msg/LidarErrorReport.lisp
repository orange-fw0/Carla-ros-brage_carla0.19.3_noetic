; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarErrorReport.msg.html

(cl:defclass <LidarErrorReport> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type sensor_lidar_msgs-msg:LidarID
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarID))
   (error_mode
    :reader error_mode
    :initarg :error_mode
    :type cl:integer
    :initform 0))
)

(cl:defclass LidarErrorReport (<LidarErrorReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarErrorReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarErrorReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarErrorReport> is deprecated: use sensor_lidar_msgs-msg:LidarErrorReport instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LidarErrorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:id-val is deprecated.  Use sensor_lidar_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'error_mode-val :lambda-list '(m))
(cl:defmethod error_mode-val ((m <LidarErrorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:error_mode-val is deprecated.  Use sensor_lidar_msgs-msg:error_mode instead.")
  (error_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LidarErrorReport>)))
    "Constants for message type '<LidarErrorReport>"
  '((:NORMAL . 0)
    (:HARDWARE_ERROR . 1)
    (:WINDOWCONTAMINATION_ERR . 2)
    (:FAILSAFE_ERROR . 3)
    (:NO_CALIBRATION_ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LidarErrorReport)))
    "Constants for message type 'LidarErrorReport"
  '((:NORMAL . 0)
    (:HARDWARE_ERROR . 1)
    (:WINDOWCONTAMINATION_ERR . 2)
    (:FAILSAFE_ERROR . 3)
    (:NO_CALIBRATION_ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarErrorReport>) ostream)
  "Serializes a message object of type '<LidarErrorReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarErrorReport>) istream)
  "Deserializes a message object of type '<LidarErrorReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarErrorReport>)))
  "Returns string type for a message object of type '<LidarErrorReport>"
  "sensor_lidar_msgs/LidarErrorReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarErrorReport)))
  "Returns string type for a message object of type 'LidarErrorReport"
  "sensor_lidar_msgs/LidarErrorReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarErrorReport>)))
  "Returns md5sum for a message object of type '<LidarErrorReport>"
  "64113973402cc388561582a486791df9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarErrorReport)))
  "Returns md5sum for a message object of type 'LidarErrorReport"
  "64113973402cc388561582a486791df9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarErrorReport>)))
  "Returns full string definition for message of type '<LidarErrorReport>"
  (cl:format cl:nil "uint32 Normal = 0~%uint32 Hardware_error = 1~%uint32 WindowContamination_Err = 2~%uint32 FailSafe_error = 3~%uint32 No_Calibration_error = 4~%sensor_lidar_msgs/LidarID id~%uint32 error_mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarErrorReport)))
  "Returns full string definition for message of type 'LidarErrorReport"
  (cl:format cl:nil "uint32 Normal = 0~%uint32 Hardware_error = 1~%uint32 WindowContamination_Err = 2~%uint32 FailSafe_error = 3~%uint32 No_Calibration_error = 4~%sensor_lidar_msgs/LidarID id~%uint32 error_mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarErrorReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarErrorReport>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarErrorReport
    (cl:cons ':id (id msg))
    (cl:cons ':error_mode (error_mode msg))
))
