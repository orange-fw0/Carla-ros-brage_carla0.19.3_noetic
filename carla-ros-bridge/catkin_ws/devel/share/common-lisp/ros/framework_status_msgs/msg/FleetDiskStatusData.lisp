; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude FleetDiskStatusData.msg.html

(cl:defclass <FleetDiskStatusData> (roslisp-msg-protocol:ros-message)
  ((health_status
    :reader health_status
    :initarg :health_status
    :type cl:fixnum
    :initform 0)
   (timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (single_disk_list
    :reader single_disk_list
    :initarg :single_disk_list
    :type (cl:vector framework_status_msgs-msg:SingleDiskStatus)
   :initform (cl:make-array 0 :element-type 'framework_status_msgs-msg:SingleDiskStatus :initial-element (cl:make-instance 'framework_status_msgs-msg:SingleDiskStatus)))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass FleetDiskStatusData (<FleetDiskStatusData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FleetDiskStatusData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FleetDiskStatusData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<FleetDiskStatusData> is deprecated: use framework_status_msgs-msg:FleetDiskStatusData instead.")))

(cl:ensure-generic-function 'health_status-val :lambda-list '(m))
(cl:defmethod health_status-val ((m <FleetDiskStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:health_status-val is deprecated.  Use framework_status_msgs-msg:health_status instead.")
  (health_status m))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <FleetDiskStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:timestamp_us-val is deprecated.  Use framework_status_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'single_disk_list-val :lambda-list '(m))
(cl:defmethod single_disk_list-val ((m <FleetDiskStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:single_disk_list-val is deprecated.  Use framework_status_msgs-msg:single_disk_list instead.")
  (single_disk_list m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <FleetDiskStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:reserved_info-val is deprecated.  Use framework_status_msgs-msg:reserved_info instead.")
  (reserved_info m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <FleetDiskStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:message-val is deprecated.  Use framework_status_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FleetDiskStatusData>)))
    "Constants for message type '<FleetDiskStatusData>"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FleetDiskStatusData)))
    "Constants for message type 'FleetDiskStatusData"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FleetDiskStatusData>) ostream)
  "Serializes a message object of type '<FleetDiskStatusData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'single_disk_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'single_disk_list))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FleetDiskStatusData>) istream)
  "Deserializes a message object of type '<FleetDiskStatusData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) (cl:read-byte istream))
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
  (cl:setf (cl:slot-value msg 'single_disk_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'single_disk_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'framework_status_msgs-msg:SingleDiskStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FleetDiskStatusData>)))
  "Returns string type for a message object of type '<FleetDiskStatusData>"
  "framework_status_msgs/FleetDiskStatusData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FleetDiskStatusData)))
  "Returns string type for a message object of type 'FleetDiskStatusData"
  "framework_status_msgs/FleetDiskStatusData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FleetDiskStatusData>)))
  "Returns md5sum for a message object of type '<FleetDiskStatusData>"
  "b8f555a00f4163ed2113c12110612f05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FleetDiskStatusData)))
  "Returns md5sum for a message object of type 'FleetDiskStatusData"
  "b8f555a00f4163ed2113c12110612f05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FleetDiskStatusData>)))
  "Returns full string definition for message of type '<FleetDiskStatusData>"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%framework_status_msgs/SingleDiskStatus[] single_disk_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleDiskStatus~%string sn~%string disk_type~%string status~%uint64 space_size~%uint64 space_used~%string driver~%string speed~%int64 availability~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FleetDiskStatusData)))
  "Returns full string definition for message of type 'FleetDiskStatusData"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%framework_status_msgs/SingleDiskStatus[] single_disk_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleDiskStatus~%string sn~%string disk_type~%string status~%uint64 space_size~%uint64 space_used~%string driver~%string speed~%int64 availability~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FleetDiskStatusData>))
  (cl:+ 0
     1
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'single_disk_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'reserved_info))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FleetDiskStatusData>))
  "Converts a ROS message object to a list"
  (cl:list 'FleetDiskStatusData
    (cl:cons ':health_status (health_status msg))
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':single_disk_list (single_disk_list msg))
    (cl:cons ':reserved_info (reserved_info msg))
    (cl:cons ':message (message msg))
))
