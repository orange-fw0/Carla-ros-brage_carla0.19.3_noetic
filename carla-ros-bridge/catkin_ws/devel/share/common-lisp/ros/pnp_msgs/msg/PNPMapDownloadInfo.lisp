; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude PNPMapDownloadInfo.msg.html

(cl:defclass <PNPMapDownloadInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type pnp_msgs-msg:MapDownloadTypeEnum
    :initform (cl:make-instance 'pnp_msgs-msg:MapDownloadTypeEnum))
   (response_id
    :reader response_id
    :initarg :response_id
    :type pnp_msgs-msg:MapDownloadResponseId
    :initform (cl:make-instance 'pnp_msgs-msg:MapDownloadResponseId))
   (map_list
    :reader map_list
    :initarg :map_list
    :type (cl:vector pnp_msgs-msg:MapDownloadStatus)
   :initform (cl:make-array 0 :element-type 'pnp_msgs-msg:MapDownloadStatus :initial-element (cl:make-instance 'pnp_msgs-msg:MapDownloadStatus)))
   (total_status
    :reader total_status
    :initarg :total_status
    :type pnp_msgs-msg:DownloadStatusEnum
    :initform (cl:make-instance 'pnp_msgs-msg:DownloadStatusEnum))
   (total_progress
    :reader total_progress
    :initarg :total_progress
    :type cl:fixnum
    :initform 0)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform ""))
)

(cl:defclass PNPMapDownloadInfo (<PNPMapDownloadInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PNPMapDownloadInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PNPMapDownloadInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<PNPMapDownloadInfo> is deprecated: use pnp_msgs-msg:PNPMapDownloadInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PNPMapDownloadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:header-val is deprecated.  Use pnp_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PNPMapDownloadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:type-val is deprecated.  Use pnp_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'response_id-val :lambda-list '(m))
(cl:defmethod response_id-val ((m <PNPMapDownloadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:response_id-val is deprecated.  Use pnp_msgs-msg:response_id instead.")
  (response_id m))

(cl:ensure-generic-function 'map_list-val :lambda-list '(m))
(cl:defmethod map_list-val ((m <PNPMapDownloadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:map_list-val is deprecated.  Use pnp_msgs-msg:map_list instead.")
  (map_list m))

(cl:ensure-generic-function 'total_status-val :lambda-list '(m))
(cl:defmethod total_status-val ((m <PNPMapDownloadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:total_status-val is deprecated.  Use pnp_msgs-msg:total_status instead.")
  (total_status m))

(cl:ensure-generic-function 'total_progress-val :lambda-list '(m))
(cl:defmethod total_progress-val ((m <PNPMapDownloadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:total_progress-val is deprecated.  Use pnp_msgs-msg:total_progress instead.")
  (total_progress m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <PNPMapDownloadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:error_msg-val is deprecated.  Use pnp_msgs-msg:error_msg instead.")
  (error_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PNPMapDownloadInfo>) ostream)
  "Serializes a message object of type '<PNPMapDownloadInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response_id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'map_list))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'total_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_progress)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PNPMapDownloadInfo>) istream)
  "Deserializes a message object of type '<PNPMapDownloadInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response_id) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pnp_msgs-msg:MapDownloadStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'total_status) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_progress)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PNPMapDownloadInfo>)))
  "Returns string type for a message object of type '<PNPMapDownloadInfo>"
  "pnp_msgs/PNPMapDownloadInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PNPMapDownloadInfo)))
  "Returns string type for a message object of type 'PNPMapDownloadInfo"
  "pnp_msgs/PNPMapDownloadInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PNPMapDownloadInfo>)))
  "Returns md5sum for a message object of type '<PNPMapDownloadInfo>"
  "afbee8de108eeef3b359a44295c11441")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PNPMapDownloadInfo)))
  "Returns md5sum for a message object of type 'PNPMapDownloadInfo"
  "afbee8de108eeef3b359a44295c11441")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PNPMapDownloadInfo>)))
  "Returns full string definition for message of type '<PNPMapDownloadInfo>"
  (cl:format cl:nil "std_msgs/Header header~%pnp_msgs/MapDownloadTypeEnum type~%pnp_msgs/MapDownloadResponseId response_id~%pnp_msgs/MapDownloadStatus[] map_list~%pnp_msgs/DownloadStatusEnum total_status~%uint8 total_progress~%string error_msg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pnp_msgs/MapDownloadTypeEnum~%uint8 UNKNOWN = 0~%uint8 CRUISING_SEARCH = 1~%uint8 SD_DESTINATION_SEARCH = 2~%uint8 SPECIFIC_ID = 3~%uint8 RANGE_SEARCH = 4~%uint8 status~%~%================================================================================~%MSG: pnp_msgs/MapDownloadResponseId~%uint64 response_id~%uint64 route_id~%~%================================================================================~%MSG: pnp_msgs/MapDownloadStatus~%uint32 id~%pnp_msgs/DownloadStatusEnum status~%uint8 progress~%string reserved~%~%================================================================================~%MSG: pnp_msgs/DownloadStatusEnum~%uint8 UNKNOWN = 0~%uint8 SUCCESS = 1~%uint8 DOWNLOADING = 2~%uint8 WAITING = 3~%uint8 FAILED = 4~%uint8 ERROR_TIMEOUT = 100~%uint8 ERROR_NETWORK = 101~%uint8 ERROR_DISK_FULL = 102~%uint8 ERROR_PERMISSION = 103~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PNPMapDownloadInfo)))
  "Returns full string definition for message of type 'PNPMapDownloadInfo"
  (cl:format cl:nil "std_msgs/Header header~%pnp_msgs/MapDownloadTypeEnum type~%pnp_msgs/MapDownloadResponseId response_id~%pnp_msgs/MapDownloadStatus[] map_list~%pnp_msgs/DownloadStatusEnum total_status~%uint8 total_progress~%string error_msg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pnp_msgs/MapDownloadTypeEnum~%uint8 UNKNOWN = 0~%uint8 CRUISING_SEARCH = 1~%uint8 SD_DESTINATION_SEARCH = 2~%uint8 SPECIFIC_ID = 3~%uint8 RANGE_SEARCH = 4~%uint8 status~%~%================================================================================~%MSG: pnp_msgs/MapDownloadResponseId~%uint64 response_id~%uint64 route_id~%~%================================================================================~%MSG: pnp_msgs/MapDownloadStatus~%uint32 id~%pnp_msgs/DownloadStatusEnum status~%uint8 progress~%string reserved~%~%================================================================================~%MSG: pnp_msgs/DownloadStatusEnum~%uint8 UNKNOWN = 0~%uint8 SUCCESS = 1~%uint8 DOWNLOADING = 2~%uint8 WAITING = 3~%uint8 FAILED = 4~%uint8 ERROR_TIMEOUT = 100~%uint8 ERROR_NETWORK = 101~%uint8 ERROR_DISK_FULL = 102~%uint8 ERROR_PERMISSION = 103~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PNPMapDownloadInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'total_status))
     1
     4 (cl:length (cl:slot-value msg 'error_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PNPMapDownloadInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PNPMapDownloadInfo
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':response_id (response_id msg))
    (cl:cons ':map_list (map_list msg))
    (cl:cons ':total_status (total_status msg))
    (cl:cons ':total_progress (total_progress msg))
    (cl:cons ':error_msg (error_msg msg))
))
