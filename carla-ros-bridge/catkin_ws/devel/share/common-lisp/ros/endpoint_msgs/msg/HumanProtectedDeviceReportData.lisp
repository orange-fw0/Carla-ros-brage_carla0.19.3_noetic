; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude HumanProtectedDeviceReportData.msg.html

(cl:defclass <HumanProtectedDeviceReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (enabled_human_protected_device_array
    :reader enabled_human_protected_device_array
    :initarg :enabled_human_protected_device_array
    :type (cl:vector endpoint_msgs-msg:HumanProtectedDeviceType)
   :initform (cl:make-array 0 :element-type 'endpoint_msgs-msg:HumanProtectedDeviceType :initial-element (cl:make-instance 'endpoint_msgs-msg:HumanProtectedDeviceType)))
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HumanProtectedDeviceReportData (<HumanProtectedDeviceReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanProtectedDeviceReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanProtectedDeviceReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<HumanProtectedDeviceReportData> is deprecated: use endpoint_msgs-msg:HumanProtectedDeviceReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <HumanProtectedDeviceReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'enabled_human_protected_device_array-val :lambda-list '(m))
(cl:defmethod enabled_human_protected_device_array-val ((m <HumanProtectedDeviceReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:enabled_human_protected_device_array-val is deprecated.  Use endpoint_msgs-msg:enabled_human_protected_device_array instead.")
  (enabled_human_protected_device_array m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <HumanProtectedDeviceReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanProtectedDeviceReportData>) ostream)
  "Serializes a message object of type '<HumanProtectedDeviceReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'enabled_human_protected_device_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'enabled_human_protected_device_array))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanProtectedDeviceReportData>) istream)
  "Deserializes a message object of type '<HumanProtectedDeviceReportData>"
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
  (cl:setf (cl:slot-value msg 'enabled_human_protected_device_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'enabled_human_protected_device_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'endpoint_msgs-msg:HumanProtectedDeviceType))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanProtectedDeviceReportData>)))
  "Returns string type for a message object of type '<HumanProtectedDeviceReportData>"
  "endpoint_msgs/HumanProtectedDeviceReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanProtectedDeviceReportData)))
  "Returns string type for a message object of type 'HumanProtectedDeviceReportData"
  "endpoint_msgs/HumanProtectedDeviceReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanProtectedDeviceReportData>)))
  "Returns md5sum for a message object of type '<HumanProtectedDeviceReportData>"
  "a0866423dbad9507bb9f69bf05c1caaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanProtectedDeviceReportData)))
  "Returns md5sum for a message object of type 'HumanProtectedDeviceReportData"
  "a0866423dbad9507bb9f69bf05c1caaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanProtectedDeviceReportData>)))
  "Returns full string definition for message of type '<HumanProtectedDeviceReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/HumanProtectedDeviceType[] enabled_human_protected_device_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/HumanProtectedDeviceType~%uint8 DRIVER_SEATBELT = 0~%uint8 PASSENGER_SEATBELT = 1~%uint8 PASSENGER_DETECT = 2~%uint8 PASSENGER_AIRBAG = 3~%uint8 SECOND_LEFT_BELT = 4~%uint8 SECOND_MID_BELT = 5~%uint8 SECOND_RIGHT_BELT = 6~%uint8 RESERVED1 = 7~%uint8 RESERVED2 = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanProtectedDeviceReportData)))
  "Returns full string definition for message of type 'HumanProtectedDeviceReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/HumanProtectedDeviceType[] enabled_human_protected_device_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/HumanProtectedDeviceType~%uint8 DRIVER_SEATBELT = 0~%uint8 PASSENGER_SEATBELT = 1~%uint8 PASSENGER_DETECT = 2~%uint8 PASSENGER_AIRBAG = 3~%uint8 SECOND_LEFT_BELT = 4~%uint8 SECOND_MID_BELT = 5~%uint8 SECOND_RIGHT_BELT = 6~%uint8 RESERVED1 = 7~%uint8 RESERVED2 = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanProtectedDeviceReportData>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'enabled_human_protected_device_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanProtectedDeviceReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanProtectedDeviceReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':enabled_human_protected_device_array (enabled_human_protected_device_array msg))
    (cl:cons ':valid (valid msg))
))
