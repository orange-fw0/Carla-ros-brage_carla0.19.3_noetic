; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AirConditioningReportData.msg.html

(cl:defclass <AirConditioningReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (air_outlet_mode_array
    :reader air_outlet_mode_array
    :initarg :air_outlet_mode_array
    :type (cl:vector endpoint_msgs-msg:AirOutletMode)
   :initform (cl:make-array 0 :element-type 'endpoint_msgs-msg:AirOutletMode :initial-element (cl:make-instance 'endpoint_msgs-msg:AirOutletMode)))
   (air_outlet_mode_array_valid
    :reader air_outlet_mode_array_valid
    :initarg :air_outlet_mode_array_valid
    :type cl:boolean
    :initform cl:nil)
   (air_temp_mode_array
    :reader air_temp_mode_array
    :initarg :air_temp_mode_array
    :type (cl:vector endpoint_msgs-msg:AirTempMode)
   :initform (cl:make-array 0 :element-type 'endpoint_msgs-msg:AirTempMode :initial-element (cl:make-instance 'endpoint_msgs-msg:AirTempMode)))
   (air_temp_mode_array_valid
    :reader air_temp_mode_array_valid
    :initarg :air_temp_mode_array_valid
    :type cl:boolean
    :initform cl:nil)
   (air_defrost_mode_array
    :reader air_defrost_mode_array
    :initarg :air_defrost_mode_array
    :type (cl:vector endpoint_msgs-msg:AirDefrostMode)
   :initform (cl:make-array 0 :element-type 'endpoint_msgs-msg:AirDefrostMode :initial-element (cl:make-instance 'endpoint_msgs-msg:AirDefrostMode)))
   (air_defrost_mode_array_valid
    :reader air_defrost_mode_array_valid
    :initarg :air_defrost_mode_array_valid
    :type cl:boolean
    :initform cl:nil)
   (air_work_status
    :reader air_work_status
    :initarg :air_work_status
    :type endpoint_msgs-msg:AirWorkStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:AirWorkStatus)))
)

(cl:defclass AirConditioningReportData (<AirConditioningReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AirConditioningReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AirConditioningReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AirConditioningReportData> is deprecated: use endpoint_msgs-msg:AirConditioningReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <AirConditioningReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'air_outlet_mode_array-val :lambda-list '(m))
(cl:defmethod air_outlet_mode_array-val ((m <AirConditioningReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:air_outlet_mode_array-val is deprecated.  Use endpoint_msgs-msg:air_outlet_mode_array instead.")
  (air_outlet_mode_array m))

(cl:ensure-generic-function 'air_outlet_mode_array_valid-val :lambda-list '(m))
(cl:defmethod air_outlet_mode_array_valid-val ((m <AirConditioningReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:air_outlet_mode_array_valid-val is deprecated.  Use endpoint_msgs-msg:air_outlet_mode_array_valid instead.")
  (air_outlet_mode_array_valid m))

(cl:ensure-generic-function 'air_temp_mode_array-val :lambda-list '(m))
(cl:defmethod air_temp_mode_array-val ((m <AirConditioningReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:air_temp_mode_array-val is deprecated.  Use endpoint_msgs-msg:air_temp_mode_array instead.")
  (air_temp_mode_array m))

(cl:ensure-generic-function 'air_temp_mode_array_valid-val :lambda-list '(m))
(cl:defmethod air_temp_mode_array_valid-val ((m <AirConditioningReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:air_temp_mode_array_valid-val is deprecated.  Use endpoint_msgs-msg:air_temp_mode_array_valid instead.")
  (air_temp_mode_array_valid m))

(cl:ensure-generic-function 'air_defrost_mode_array-val :lambda-list '(m))
(cl:defmethod air_defrost_mode_array-val ((m <AirConditioningReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:air_defrost_mode_array-val is deprecated.  Use endpoint_msgs-msg:air_defrost_mode_array instead.")
  (air_defrost_mode_array m))

(cl:ensure-generic-function 'air_defrost_mode_array_valid-val :lambda-list '(m))
(cl:defmethod air_defrost_mode_array_valid-val ((m <AirConditioningReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:air_defrost_mode_array_valid-val is deprecated.  Use endpoint_msgs-msg:air_defrost_mode_array_valid instead.")
  (air_defrost_mode_array_valid m))

(cl:ensure-generic-function 'air_work_status-val :lambda-list '(m))
(cl:defmethod air_work_status-val ((m <AirConditioningReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:air_work_status-val is deprecated.  Use endpoint_msgs-msg:air_work_status instead.")
  (air_work_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AirConditioningReportData>) ostream)
  "Serializes a message object of type '<AirConditioningReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'air_outlet_mode_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'air_outlet_mode_array))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'air_outlet_mode_array_valid) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'air_temp_mode_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'air_temp_mode_array))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'air_temp_mode_array_valid) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'air_defrost_mode_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'air_defrost_mode_array))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'air_defrost_mode_array_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'air_work_status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AirConditioningReportData>) istream)
  "Deserializes a message object of type '<AirConditioningReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'air_outlet_mode_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'air_outlet_mode_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'endpoint_msgs-msg:AirOutletMode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'air_outlet_mode_array_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'air_temp_mode_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'air_temp_mode_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'endpoint_msgs-msg:AirTempMode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'air_temp_mode_array_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'air_defrost_mode_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'air_defrost_mode_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'endpoint_msgs-msg:AirDefrostMode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'air_defrost_mode_array_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'air_work_status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AirConditioningReportData>)))
  "Returns string type for a message object of type '<AirConditioningReportData>"
  "endpoint_msgs/AirConditioningReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AirConditioningReportData)))
  "Returns string type for a message object of type 'AirConditioningReportData"
  "endpoint_msgs/AirConditioningReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AirConditioningReportData>)))
  "Returns md5sum for a message object of type '<AirConditioningReportData>"
  "6cfae2aa89eb0aebe1c9c7535829c196")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AirConditioningReportData)))
  "Returns md5sum for a message object of type 'AirConditioningReportData"
  "6cfae2aa89eb0aebe1c9c7535829c196")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AirConditioningReportData>)))
  "Returns full string definition for message of type '<AirConditioningReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/AirOutletMode[] air_outlet_mode_array~%bool air_outlet_mode_array_valid~%endpoint_msgs/AirTempMode[] air_temp_mode_array~%bool air_temp_mode_array_valid~%endpoint_msgs/AirDefrostMode[] air_defrost_mode_array~%bool air_defrost_mode_array_valid~%endpoint_msgs/AirWorkStatus air_work_status~%~%================================================================================~%MSG: endpoint_msgs/AirOutletMode~%uint8 AIR_OUTLET_MODE_FACE = 0~%uint8 AIR_OUTLET_MODE_FOOT = 1~%uint8 AIR_OUTLET_MODE_BODY = 2~%uint8 AIR_OUTLET_MODE_KNEE = 3~%uint8 AIR_OUTLET_MODE_AUTO = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirTempMode~%uint8 AIR_TEMP_MODE_NORMAL = 0~%uint8 AIR_TEMP_MODE_COLD = 1~%uint8 AIR_TEMP_MODE_HOT = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirDefrostMode~%uint8 AIR_DEFROS_MODE_OFF = 0~%uint8 AIR_DEFROS_MODE_FONT = 1~%uint8 AIR_DEFROS_MODE_REAR = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirWorkStatus~%uint8 AIR_WORK_STATUS_NONE = 0~%uint8 AIR_WORK_STATUS_CLOSE = 1~%uint8 AIR_WORK_STATUS_OPEN = 2~%uint8 AIR_WORK_STATUS_INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AirConditioningReportData)))
  "Returns full string definition for message of type 'AirConditioningReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/AirOutletMode[] air_outlet_mode_array~%bool air_outlet_mode_array_valid~%endpoint_msgs/AirTempMode[] air_temp_mode_array~%bool air_temp_mode_array_valid~%endpoint_msgs/AirDefrostMode[] air_defrost_mode_array~%bool air_defrost_mode_array_valid~%endpoint_msgs/AirWorkStatus air_work_status~%~%================================================================================~%MSG: endpoint_msgs/AirOutletMode~%uint8 AIR_OUTLET_MODE_FACE = 0~%uint8 AIR_OUTLET_MODE_FOOT = 1~%uint8 AIR_OUTLET_MODE_BODY = 2~%uint8 AIR_OUTLET_MODE_KNEE = 3~%uint8 AIR_OUTLET_MODE_AUTO = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirTempMode~%uint8 AIR_TEMP_MODE_NORMAL = 0~%uint8 AIR_TEMP_MODE_COLD = 1~%uint8 AIR_TEMP_MODE_HOT = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirDefrostMode~%uint8 AIR_DEFROS_MODE_OFF = 0~%uint8 AIR_DEFROS_MODE_FONT = 1~%uint8 AIR_DEFROS_MODE_REAR = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AirWorkStatus~%uint8 AIR_WORK_STATUS_NONE = 0~%uint8 AIR_WORK_STATUS_CLOSE = 1~%uint8 AIR_WORK_STATUS_OPEN = 2~%uint8 AIR_WORK_STATUS_INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AirConditioningReportData>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'air_outlet_mode_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'air_temp_mode_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'air_defrost_mode_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'air_work_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AirConditioningReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'AirConditioningReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':air_outlet_mode_array (air_outlet_mode_array msg))
    (cl:cons ':air_outlet_mode_array_valid (air_outlet_mode_array_valid msg))
    (cl:cons ':air_temp_mode_array (air_temp_mode_array msg))
    (cl:cons ':air_temp_mode_array_valid (air_temp_mode_array_valid msg))
    (cl:cons ':air_defrost_mode_array (air_defrost_mode_array msg))
    (cl:cons ':air_defrost_mode_array_valid (air_defrost_mode_array_valid msg))
    (cl:cons ':air_work_status (air_work_status msg))
))
