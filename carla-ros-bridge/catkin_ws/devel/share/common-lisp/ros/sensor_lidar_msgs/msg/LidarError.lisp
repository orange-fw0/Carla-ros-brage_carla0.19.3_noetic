; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarError.msg.html

(cl:defclass <LidarError> (roslisp-msg-protocol:ros-message)
  ((MemsIntialization_Err
    :reader MemsIntialization_Err
    :initarg :MemsIntialization_Err
    :type cl:fixnum
    :initform 0)
   (MemsOperating_Err
    :reader MemsOperating_Err
    :initarg :MemsOperating_Err
    :type cl:fixnum
    :initform 0)
   (LidarTransmitting_Err
    :reader LidarTransmitting_Err
    :initarg :LidarTransmitting_Err
    :type cl:fixnum
    :initform 0)
   (LidarReceiving_Err
    :reader LidarReceiving_Err
    :initarg :LidarReceiving_Err
    :type cl:fixnum
    :initform 0)
   (Lidar_Fusa_Err
    :reader Lidar_Fusa_Err
    :initarg :Lidar_Fusa_Err
    :type cl:fixnum
    :initform 0)
   (WindowContamination_Err
    :reader WindowContamination_Err
    :initarg :WindowContamination_Err
    :type cl:fixnum
    :initform 0)
   (SunBlind_Err
    :reader SunBlind_Err
    :initarg :SunBlind_Err
    :type cl:fixnum
    :initform 0)
   (WindowHeating_Err
    :reader WindowHeating_Err
    :initarg :WindowHeating_Err
    :type cl:fixnum
    :initform 0)
   (LidarInternal_Err
    :reader LidarInternal_Err
    :initarg :LidarInternal_Err
    :type cl:fixnum
    :initform 0)
   (LidarExternal_Err
    :reader LidarExternal_Err
    :initarg :LidarExternal_Err
    :type cl:fixnum
    :initform 0)
   (LidarInternal_Volt_Err
    :reader LidarInternal_Volt_Err
    :initarg :LidarInternal_Volt_Err
    :type cl:fixnum
    :initform 0)
   (Lidar_Temp_Err
    :reader Lidar_Temp_Err
    :initarg :Lidar_Temp_Err
    :type cl:integer
    :initform 0)
   (Clock_Err
    :reader Clock_Err
    :initarg :Clock_Err
    :type cl:fixnum
    :initform 0)
   (Sync_Err
    :reader Sync_Err
    :initarg :Sync_Err
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:fixnum
    :initform 0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarError (<LidarError>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarError>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarError)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarError> is deprecated: use sensor_lidar_msgs-msg:LidarError instead.")))

(cl:ensure-generic-function 'MemsIntialization_Err-val :lambda-list '(m))
(cl:defmethod MemsIntialization_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:MemsIntialization_Err-val is deprecated.  Use sensor_lidar_msgs-msg:MemsIntialization_Err instead.")
  (MemsIntialization_Err m))

(cl:ensure-generic-function 'MemsOperating_Err-val :lambda-list '(m))
(cl:defmethod MemsOperating_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:MemsOperating_Err-val is deprecated.  Use sensor_lidar_msgs-msg:MemsOperating_Err instead.")
  (MemsOperating_Err m))

(cl:ensure-generic-function 'LidarTransmitting_Err-val :lambda-list '(m))
(cl:defmethod LidarTransmitting_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:LidarTransmitting_Err-val is deprecated.  Use sensor_lidar_msgs-msg:LidarTransmitting_Err instead.")
  (LidarTransmitting_Err m))

(cl:ensure-generic-function 'LidarReceiving_Err-val :lambda-list '(m))
(cl:defmethod LidarReceiving_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:LidarReceiving_Err-val is deprecated.  Use sensor_lidar_msgs-msg:LidarReceiving_Err instead.")
  (LidarReceiving_Err m))

(cl:ensure-generic-function 'Lidar_Fusa_Err-val :lambda-list '(m))
(cl:defmethod Lidar_Fusa_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:Lidar_Fusa_Err-val is deprecated.  Use sensor_lidar_msgs-msg:Lidar_Fusa_Err instead.")
  (Lidar_Fusa_Err m))

(cl:ensure-generic-function 'WindowContamination_Err-val :lambda-list '(m))
(cl:defmethod WindowContamination_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:WindowContamination_Err-val is deprecated.  Use sensor_lidar_msgs-msg:WindowContamination_Err instead.")
  (WindowContamination_Err m))

(cl:ensure-generic-function 'SunBlind_Err-val :lambda-list '(m))
(cl:defmethod SunBlind_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:SunBlind_Err-val is deprecated.  Use sensor_lidar_msgs-msg:SunBlind_Err instead.")
  (SunBlind_Err m))

(cl:ensure-generic-function 'WindowHeating_Err-val :lambda-list '(m))
(cl:defmethod WindowHeating_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:WindowHeating_Err-val is deprecated.  Use sensor_lidar_msgs-msg:WindowHeating_Err instead.")
  (WindowHeating_Err m))

(cl:ensure-generic-function 'LidarInternal_Err-val :lambda-list '(m))
(cl:defmethod LidarInternal_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:LidarInternal_Err-val is deprecated.  Use sensor_lidar_msgs-msg:LidarInternal_Err instead.")
  (LidarInternal_Err m))

(cl:ensure-generic-function 'LidarExternal_Err-val :lambda-list '(m))
(cl:defmethod LidarExternal_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:LidarExternal_Err-val is deprecated.  Use sensor_lidar_msgs-msg:LidarExternal_Err instead.")
  (LidarExternal_Err m))

(cl:ensure-generic-function 'LidarInternal_Volt_Err-val :lambda-list '(m))
(cl:defmethod LidarInternal_Volt_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:LidarInternal_Volt_Err-val is deprecated.  Use sensor_lidar_msgs-msg:LidarInternal_Volt_Err instead.")
  (LidarInternal_Volt_Err m))

(cl:ensure-generic-function 'Lidar_Temp_Err-val :lambda-list '(m))
(cl:defmethod Lidar_Temp_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:Lidar_Temp_Err-val is deprecated.  Use sensor_lidar_msgs-msg:Lidar_Temp_Err instead.")
  (Lidar_Temp_Err m))

(cl:ensure-generic-function 'Clock_Err-val :lambda-list '(m))
(cl:defmethod Clock_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:Clock_Err-val is deprecated.  Use sensor_lidar_msgs-msg:Clock_Err instead.")
  (Clock_Err m))

(cl:ensure-generic-function 'Sync_Err-val :lambda-list '(m))
(cl:defmethod Sync_Err-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:Sync_Err-val is deprecated.  Use sensor_lidar_msgs-msg:Sync_Err instead.")
  (Sync_Err m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:reserved1-val is deprecated.  Use sensor_lidar_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <LidarError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:reserved2-val is deprecated.  Use sensor_lidar_msgs-msg:reserved2 instead.")
  (reserved2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarError>) ostream)
  "Serializes a message object of type '<LidarError>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MemsIntialization_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MemsOperating_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarTransmitting_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarReceiving_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Lidar_Fusa_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WindowContamination_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SunBlind_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WindowHeating_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarInternal_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarExternal_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarInternal_Volt_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Lidar_Temp_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Lidar_Temp_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Lidar_Temp_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Lidar_Temp_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Clock_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Sync_Err)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarError>) istream)
  "Deserializes a message object of type '<LidarError>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MemsIntialization_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MemsOperating_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarTransmitting_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarReceiving_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Lidar_Fusa_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WindowContamination_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SunBlind_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WindowHeating_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarInternal_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarExternal_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarInternal_Volt_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Lidar_Temp_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Lidar_Temp_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Lidar_Temp_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Lidar_Temp_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Clock_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Sync_Err)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarError>)))
  "Returns string type for a message object of type '<LidarError>"
  "sensor_lidar_msgs/LidarError")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarError)))
  "Returns string type for a message object of type 'LidarError"
  "sensor_lidar_msgs/LidarError")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarError>)))
  "Returns md5sum for a message object of type '<LidarError>"
  "6a95160d0c9ab50db5596dcb007fb02d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarError)))
  "Returns md5sum for a message object of type 'LidarError"
  "6a95160d0c9ab50db5596dcb007fb02d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarError>)))
  "Returns full string definition for message of type '<LidarError>"
  (cl:format cl:nil "uint8 MemsIntialization_Err~%uint8 MemsOperating_Err~%uint8 LidarTransmitting_Err~%uint8 LidarReceiving_Err~%uint8 Lidar_Fusa_Err~%uint8 WindowContamination_Err~%uint8 SunBlind_Err~%uint8 WindowHeating_Err~%uint8 LidarInternal_Err~%uint8 LidarExternal_Err~%uint8 LidarInternal_Volt_Err~%uint32 Lidar_Temp_Err~%uint8 Clock_Err~%uint8 Sync_Err~%uint8 reserved1~%uint8 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarError)))
  "Returns full string definition for message of type 'LidarError"
  (cl:format cl:nil "uint8 MemsIntialization_Err~%uint8 MemsOperating_Err~%uint8 LidarTransmitting_Err~%uint8 LidarReceiving_Err~%uint8 Lidar_Fusa_Err~%uint8 WindowContamination_Err~%uint8 SunBlind_Err~%uint8 WindowHeating_Err~%uint8 LidarInternal_Err~%uint8 LidarExternal_Err~%uint8 LidarInternal_Volt_Err~%uint32 Lidar_Temp_Err~%uint8 Clock_Err~%uint8 Sync_Err~%uint8 reserved1~%uint8 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarError>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarError>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarError
    (cl:cons ':MemsIntialization_Err (MemsIntialization_Err msg))
    (cl:cons ':MemsOperating_Err (MemsOperating_Err msg))
    (cl:cons ':LidarTransmitting_Err (LidarTransmitting_Err msg))
    (cl:cons ':LidarReceiving_Err (LidarReceiving_Err msg))
    (cl:cons ':Lidar_Fusa_Err (Lidar_Fusa_Err msg))
    (cl:cons ':WindowContamination_Err (WindowContamination_Err msg))
    (cl:cons ':SunBlind_Err (SunBlind_Err msg))
    (cl:cons ':WindowHeating_Err (WindowHeating_Err msg))
    (cl:cons ':LidarInternal_Err (LidarInternal_Err msg))
    (cl:cons ':LidarExternal_Err (LidarExternal_Err msg))
    (cl:cons ':LidarInternal_Volt_Err (LidarInternal_Volt_Err msg))
    (cl:cons ':Lidar_Temp_Err (Lidar_Temp_Err msg))
    (cl:cons ':Clock_Err (Clock_Err msg))
    (cl:cons ':Sync_Err (Sync_Err msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':reserved2 (reserved2 msg))
))
