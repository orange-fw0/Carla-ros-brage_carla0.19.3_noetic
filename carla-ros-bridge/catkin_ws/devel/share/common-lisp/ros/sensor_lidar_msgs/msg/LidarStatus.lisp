; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarStatus.msg.html

(cl:defclass <LidarStatus> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type sensor_lidar_msgs-msg:LidarID
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarID))
   (progress_result
    :reader progress_result
    :initarg :progress_result
    :type sensor_lidar_msgs-msg:LidarCalibrationProgressResult
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarCalibrationProgressResult))
   (calib_progress
    :reader calib_progress
    :initarg :calib_progress
    :type cl:fixnum
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type sensor_lidar_msgs-msg:LidarError
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarError))
   (calib_mode
    :reader calib_mode
    :initarg :calib_mode
    :type cl:integer
    :initform 0))
)

(cl:defclass LidarStatus (<LidarStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarStatus> is deprecated: use sensor_lidar_msgs-msg:LidarStatus instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LidarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:id-val is deprecated.  Use sensor_lidar_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'progress_result-val :lambda-list '(m))
(cl:defmethod progress_result-val ((m <LidarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:progress_result-val is deprecated.  Use sensor_lidar_msgs-msg:progress_result instead.")
  (progress_result m))

(cl:ensure-generic-function 'calib_progress-val :lambda-list '(m))
(cl:defmethod calib_progress-val ((m <LidarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:calib_progress-val is deprecated.  Use sensor_lidar_msgs-msg:calib_progress instead.")
  (calib_progress m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <LidarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:error-val is deprecated.  Use sensor_lidar_msgs-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'calib_mode-val :lambda-list '(m))
(cl:defmethod calib_mode-val ((m <LidarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:calib_mode-val is deprecated.  Use sensor_lidar_msgs-msg:calib_mode instead.")
  (calib_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LidarStatus>)))
    "Constants for message type '<LidarStatus>"
  '((:NORMAL . 0)
    (:NO_CALIBRATION . 1)
    (:ON_CALIBRATION . 2)
    (:CALIBRATION_FAILED . 3)
    (:NONE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LidarStatus)))
    "Constants for message type 'LidarStatus"
  '((:NORMAL . 0)
    (:NO_CALIBRATION . 1)
    (:ON_CALIBRATION . 2)
    (:CALIBRATION_FAILED . 3)
    (:NONE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarStatus>) ostream)
  "Serializes a message object of type '<LidarStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'progress_result) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calib_progress)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calib_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'calib_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'calib_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'calib_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarStatus>) istream)
  "Deserializes a message object of type '<LidarStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'progress_result) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calib_progress)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calib_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'calib_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'calib_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'calib_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarStatus>)))
  "Returns string type for a message object of type '<LidarStatus>"
  "sensor_lidar_msgs/LidarStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarStatus)))
  "Returns string type for a message object of type 'LidarStatus"
  "sensor_lidar_msgs/LidarStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarStatus>)))
  "Returns md5sum for a message object of type '<LidarStatus>"
  "824d0217e9b2d6099bff37b24ed51e2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarStatus)))
  "Returns md5sum for a message object of type 'LidarStatus"
  "824d0217e9b2d6099bff37b24ed51e2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarStatus>)))
  "Returns full string definition for message of type '<LidarStatus>"
  (cl:format cl:nil "uint32 Normal = 0~%uint32 No_Calibration = 1~%uint32 On_Calibration = 2~%uint32 Calibration_Failed = 3~%uint32 None = 4~%sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarCalibrationProgressResult progress_result~%uint8 calib_progress~%sensor_lidar_msgs/LidarError error~%uint32 calib_mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibrationProgressResult~%uint8 None = 0~%uint8 Init = 1~%uint8 Ongoing = 2~%uint8 Complete_Successful = 3~%uint8 Complete_With_Error = 4~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarError~%uint8 MemsIntialization_Err~%uint8 MemsOperating_Err~%uint8 LidarTransmitting_Err~%uint8 LidarReceiving_Err~%uint8 Lidar_Fusa_Err~%uint8 WindowContamination_Err~%uint8 SunBlind_Err~%uint8 WindowHeating_Err~%uint8 LidarInternal_Err~%uint8 LidarExternal_Err~%uint8 LidarInternal_Volt_Err~%uint32 Lidar_Temp_Err~%uint8 Clock_Err~%uint8 Sync_Err~%uint8 reserved1~%uint8 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarStatus)))
  "Returns full string definition for message of type 'LidarStatus"
  (cl:format cl:nil "uint32 Normal = 0~%uint32 No_Calibration = 1~%uint32 On_Calibration = 2~%uint32 Calibration_Failed = 3~%uint32 None = 4~%sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarCalibrationProgressResult progress_result~%uint8 calib_progress~%sensor_lidar_msgs/LidarError error~%uint32 calib_mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibrationProgressResult~%uint8 None = 0~%uint8 Init = 1~%uint8 Ongoing = 2~%uint8 Complete_Successful = 3~%uint8 Complete_With_Error = 4~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarError~%uint8 MemsIntialization_Err~%uint8 MemsOperating_Err~%uint8 LidarTransmitting_Err~%uint8 LidarReceiving_Err~%uint8 Lidar_Fusa_Err~%uint8 WindowContamination_Err~%uint8 SunBlind_Err~%uint8 WindowHeating_Err~%uint8 LidarInternal_Err~%uint8 LidarExternal_Err~%uint8 LidarInternal_Volt_Err~%uint32 Lidar_Temp_Err~%uint8 Clock_Err~%uint8 Sync_Err~%uint8 reserved1~%uint8 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'progress_result))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarStatus
    (cl:cons ':id (id msg))
    (cl:cons ':progress_result (progress_result msg))
    (cl:cons ':calib_progress (calib_progress msg))
    (cl:cons ':error (error msg))
    (cl:cons ':calib_mode (calib_mode msg))
))
