; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude ModuleStatus.msg.html

(cl:defclass <ModuleStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (module_type
    :reader module_type
    :initarg :module_type
    :type framework_status_msgs-msg:ModuleType
    :initform (cl:make-instance 'framework_status_msgs-msg:ModuleType))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (detail_status
    :reader detail_status
    :initarg :detail_status
    :type cl:fixnum
    :initform 0)
   (latency_ms
    :reader latency_ms
    :initarg :latency_ms
    :type cl:float
    :initform 0.0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ModuleStatus (<ModuleStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<ModuleStatus> is deprecated: use framework_status_msgs-msg:ModuleStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header-val is deprecated.  Use framework_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:timestamp_us-val is deprecated.  Use framework_status_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'module_type-val :lambda-list '(m))
(cl:defmethod module_type-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:module_type-val is deprecated.  Use framework_status_msgs-msg:module_type instead.")
  (module_type m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:status-val is deprecated.  Use framework_status_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'detail_status-val :lambda-list '(m))
(cl:defmethod detail_status-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:detail_status-val is deprecated.  Use framework_status_msgs-msg:detail_status instead.")
  (detail_status m))

(cl:ensure-generic-function 'latency_ms-val :lambda-list '(m))
(cl:defmethod latency_ms-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:latency_ms-val is deprecated.  Use framework_status_msgs-msg:latency_ms instead.")
  (latency_ms m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:message-val is deprecated.  Use framework_status_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ModuleStatus>)))
    "Constants for message type '<ModuleStatus>"
  '((:STOP . 0)
    (:STARTING . 1)
    (:RUNNING . 2)
    (:STOPPING . 3)
    (:RUNNING_WARNING . 4)
    (:RUNNING_ERROR . 5)
    (:NONE . 0)
    (:RUNNING_UNKNOWN_ERROR . 1)
    (:RUNNING_OUT_OF_ROUTE . 2)
    (:RUNNING_OUT_OF_MAP . 3)
    (:RUNNING_INVALID_LANE_SCENE . 4)
    (:RUNNING_TAKING_OVER . 5)
    (:RUNNING_UNEXPECTED_ERROR . 6)
    (:RUNNING_IMAGE_BLACK . 7)
    (:RUNNING_IMAGE_HIGH_LATENCY . 8)
    (:RUNNING_IMAGE_LOST . 9)
    (:RUNNING_POINT_CLOUD_EMPTY . 10)
    (:RUNNING_LOCATION_LOW_ACCURACY . 11)
    (:RUNNING_MISSING_INPUTS . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ModuleStatus)))
    "Constants for message type 'ModuleStatus"
  '((:STOP . 0)
    (:STARTING . 1)
    (:RUNNING . 2)
    (:STOPPING . 3)
    (:RUNNING_WARNING . 4)
    (:RUNNING_ERROR . 5)
    (:NONE . 0)
    (:RUNNING_UNKNOWN_ERROR . 1)
    (:RUNNING_OUT_OF_ROUTE . 2)
    (:RUNNING_OUT_OF_MAP . 3)
    (:RUNNING_INVALID_LANE_SCENE . 4)
    (:RUNNING_TAKING_OVER . 5)
    (:RUNNING_UNEXPECTED_ERROR . 6)
    (:RUNNING_IMAGE_BLACK . 7)
    (:RUNNING_IMAGE_HIGH_LATENCY . 8)
    (:RUNNING_IMAGE_LOST . 9)
    (:RUNNING_POINT_CLOUD_EMPTY . 10)
    (:RUNNING_LOCATION_LOW_ACCURACY . 11)
    (:RUNNING_MISSING_INPUTS . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleStatus>) ostream)
  "Serializes a message object of type '<ModuleStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'module_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detail_status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latency_ms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleStatus>) istream)
  "Deserializes a message object of type '<ModuleStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'module_type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detail_status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latency_ms) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleStatus>)))
  "Returns string type for a message object of type '<ModuleStatus>"
  "framework_status_msgs/ModuleStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleStatus)))
  "Returns string type for a message object of type 'ModuleStatus"
  "framework_status_msgs/ModuleStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleStatus>)))
  "Returns md5sum for a message object of type '<ModuleStatus>"
  "2e6d24127e694ab410bf12cdf334cc32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleStatus)))
  "Returns md5sum for a message object of type 'ModuleStatus"
  "2e6d24127e694ab410bf12cdf334cc32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleStatus>)))
  "Returns full string definition for message of type '<ModuleStatus>"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 STARTING = 1~%uint8 RUNNING = 2~%uint8 STOPPING = 3~%uint8 RUNNING_WARNING = 4~%uint8 RUNNING_ERROR = 5~%uint8 NONE = 0~%uint8 RUNNING_UNKNOWN_ERROR = 1~%uint8 RUNNING_OUT_OF_ROUTE = 2~%uint8 RUNNING_OUT_OF_MAP = 3~%uint8 RUNNING_INVALID_LANE_SCENE = 4~%uint8 RUNNING_TAKING_OVER = 5~%uint8 RUNNING_UNEXPECTED_ERROR = 6~%uint8 RUNNING_IMAGE_BLACK = 7~%uint8 RUNNING_IMAGE_HIGH_LATENCY = 8~%uint8 RUNNING_IMAGE_LOST = 9~%uint8 RUNNING_POINT_CLOUD_EMPTY = 10~%uint8 RUNNING_LOCATION_LOW_ACCURACY = 11~%uint8 RUNNING_MISSING_INPUTS = 12~%std_msgs/Header header~%uint64 timestamp_us~%framework_status_msgs/ModuleType module_type~%uint8 status~%uint8 detail_status~%float64 latency_ms~%string message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/ModuleType~%uint8 PREDICTION = 0~%uint8 ROUTING = 1~%uint8 PLANNING = 2~%uint8 CONTROLLER = 3~%uint8 ENDPOINT = 4~%uint8 VEHICLE_REPORTER = 5~%uint8 WORLDMODEL = 6~%uint8 RADAR_PERCEPTION = 7~%uint8 VISION_PERCEPTION = 8~%uint8 LIDAR_PERCEPTION = 9~%uint8 FUSION_PERCEPTION = 10~%uint8 LOCATION = 11~%uint8 VISION_TFC_PERCEPTION = 12~%uint8 SENSOR_SERVICE = 13~%uint8 CAMERA_SERVICE = 14~%uint8 EGOPOSE_MANAGER = 15~%uint8 EGOMOTION = 16~%uint8 MAP_MANAGER = 17~%uint8 LDP_PLANNING = 18~%uint8 PLAC = 19~%uint8 ACE = 20~%uint8 VISTA = 21~%uint8 DYNAMIC_SAFETY_CHECK = 22~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleStatus)))
  "Returns full string definition for message of type 'ModuleStatus"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 STARTING = 1~%uint8 RUNNING = 2~%uint8 STOPPING = 3~%uint8 RUNNING_WARNING = 4~%uint8 RUNNING_ERROR = 5~%uint8 NONE = 0~%uint8 RUNNING_UNKNOWN_ERROR = 1~%uint8 RUNNING_OUT_OF_ROUTE = 2~%uint8 RUNNING_OUT_OF_MAP = 3~%uint8 RUNNING_INVALID_LANE_SCENE = 4~%uint8 RUNNING_TAKING_OVER = 5~%uint8 RUNNING_UNEXPECTED_ERROR = 6~%uint8 RUNNING_IMAGE_BLACK = 7~%uint8 RUNNING_IMAGE_HIGH_LATENCY = 8~%uint8 RUNNING_IMAGE_LOST = 9~%uint8 RUNNING_POINT_CLOUD_EMPTY = 10~%uint8 RUNNING_LOCATION_LOW_ACCURACY = 11~%uint8 RUNNING_MISSING_INPUTS = 12~%std_msgs/Header header~%uint64 timestamp_us~%framework_status_msgs/ModuleType module_type~%uint8 status~%uint8 detail_status~%float64 latency_ms~%string message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/ModuleType~%uint8 PREDICTION = 0~%uint8 ROUTING = 1~%uint8 PLANNING = 2~%uint8 CONTROLLER = 3~%uint8 ENDPOINT = 4~%uint8 VEHICLE_REPORTER = 5~%uint8 WORLDMODEL = 6~%uint8 RADAR_PERCEPTION = 7~%uint8 VISION_PERCEPTION = 8~%uint8 LIDAR_PERCEPTION = 9~%uint8 FUSION_PERCEPTION = 10~%uint8 LOCATION = 11~%uint8 VISION_TFC_PERCEPTION = 12~%uint8 SENSOR_SERVICE = 13~%uint8 CAMERA_SERVICE = 14~%uint8 EGOPOSE_MANAGER = 15~%uint8 EGOMOTION = 16~%uint8 MAP_MANAGER = 17~%uint8 LDP_PLANNING = 18~%uint8 PLAC = 19~%uint8 ACE = 20~%uint8 VISTA = 21~%uint8 DYNAMIC_SAFETY_CHECK = 22~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'module_type))
     1
     1
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleStatus
    (cl:cons ':header (header msg))
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':module_type (module_type msg))
    (cl:cons ':status (status msg))
    (cl:cons ':detail_status (detail_status msg))
    (cl:cons ':latency_ms (latency_ms msg))
    (cl:cons ':message (message msg))
))
