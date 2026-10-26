; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarStatusReport.msg.html

(cl:defclass <LidarStatusReport> (roslisp-msg-protocol:ros-message)
  ((lidar_service_mode
    :reader lidar_service_mode
    :initarg :lidar_service_mode
    :type sensor_lidar_msgs-msg:LidarMode
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarMode))
   (status
    :reader status
    :initarg :status
    :type (cl:vector sensor_lidar_msgs-msg:LidarStatus)
   :initform (cl:make-array 0 :element-type 'sensor_lidar_msgs-msg:LidarStatus :initial-element (cl:make-instance 'sensor_lidar_msgs-msg:LidarStatus))))
)

(cl:defclass LidarStatusReport (<LidarStatusReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarStatusReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarStatusReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarStatusReport> is deprecated: use sensor_lidar_msgs-msg:LidarStatusReport instead.")))

(cl:ensure-generic-function 'lidar_service_mode-val :lambda-list '(m))
(cl:defmethod lidar_service_mode-val ((m <LidarStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:lidar_service_mode-val is deprecated.  Use sensor_lidar_msgs-msg:lidar_service_mode instead.")
  (lidar_service_mode m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LidarStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:status-val is deprecated.  Use sensor_lidar_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarStatusReport>) ostream)
  "Serializes a message object of type '<LidarStatusReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lidar_service_mode) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarStatusReport>) istream)
  "Deserializes a message object of type '<LidarStatusReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lidar_service_mode) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_lidar_msgs-msg:LidarStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarStatusReport>)))
  "Returns string type for a message object of type '<LidarStatusReport>"
  "sensor_lidar_msgs/LidarStatusReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarStatusReport)))
  "Returns string type for a message object of type 'LidarStatusReport"
  "sensor_lidar_msgs/LidarStatusReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarStatusReport>)))
  "Returns md5sum for a message object of type '<LidarStatusReport>"
  "062867f8099d28209fbcb16d94267f6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarStatusReport)))
  "Returns md5sum for a message object of type 'LidarStatusReport"
  "062867f8099d28209fbcb16d94267f6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarStatusReport>)))
  "Returns full string definition for message of type '<LidarStatusReport>"
  (cl:format cl:nil "sensor_lidar_msgs/LidarMode lidar_service_mode~%sensor_lidar_msgs/LidarStatus[] status~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarMode~%uint8 Normal_Mode = 0~%uint8 EOL_Calibration_Mode = 1~%uint8 AfterSale_Calibration_Mode = 2~%uint8 SuperEco = 3~%uint8 StandBy = 4~%uint8 PlayBack = 5~%uint8 Reserved = 6~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarStatus~%uint32 Normal = 0~%uint32 No_Calibration = 1~%uint32 On_Calibration = 2~%uint32 Calibration_Failed = 3~%uint32 None = 4~%sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarCalibrationProgressResult progress_result~%uint8 calib_progress~%sensor_lidar_msgs/LidarError error~%uint32 calib_mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibrationProgressResult~%uint8 None = 0~%uint8 Init = 1~%uint8 Ongoing = 2~%uint8 Complete_Successful = 3~%uint8 Complete_With_Error = 4~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarError~%uint8 MemsIntialization_Err~%uint8 MemsOperating_Err~%uint8 LidarTransmitting_Err~%uint8 LidarReceiving_Err~%uint8 Lidar_Fusa_Err~%uint8 WindowContamination_Err~%uint8 SunBlind_Err~%uint8 WindowHeating_Err~%uint8 LidarInternal_Err~%uint8 LidarExternal_Err~%uint8 LidarInternal_Volt_Err~%uint32 Lidar_Temp_Err~%uint8 Clock_Err~%uint8 Sync_Err~%uint8 reserved1~%uint8 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarStatusReport)))
  "Returns full string definition for message of type 'LidarStatusReport"
  (cl:format cl:nil "sensor_lidar_msgs/LidarMode lidar_service_mode~%sensor_lidar_msgs/LidarStatus[] status~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarMode~%uint8 Normal_Mode = 0~%uint8 EOL_Calibration_Mode = 1~%uint8 AfterSale_Calibration_Mode = 2~%uint8 SuperEco = 3~%uint8 StandBy = 4~%uint8 PlayBack = 5~%uint8 Reserved = 6~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarStatus~%uint32 Normal = 0~%uint32 No_Calibration = 1~%uint32 On_Calibration = 2~%uint32 Calibration_Failed = 3~%uint32 None = 4~%sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarCalibrationProgressResult progress_result~%uint8 calib_progress~%sensor_lidar_msgs/LidarError error~%uint32 calib_mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibrationProgressResult~%uint8 None = 0~%uint8 Init = 1~%uint8 Ongoing = 2~%uint8 Complete_Successful = 3~%uint8 Complete_With_Error = 4~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarError~%uint8 MemsIntialization_Err~%uint8 MemsOperating_Err~%uint8 LidarTransmitting_Err~%uint8 LidarReceiving_Err~%uint8 Lidar_Fusa_Err~%uint8 WindowContamination_Err~%uint8 SunBlind_Err~%uint8 WindowHeating_Err~%uint8 LidarInternal_Err~%uint8 LidarExternal_Err~%uint8 LidarInternal_Volt_Err~%uint32 Lidar_Temp_Err~%uint8 Clock_Err~%uint8 Sync_Err~%uint8 reserved1~%uint8 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarStatusReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lidar_service_mode))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarStatusReport>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarStatusReport
    (cl:cons ':lidar_service_mode (lidar_service_mode msg))
    (cl:cons ':status (status msg))
))
