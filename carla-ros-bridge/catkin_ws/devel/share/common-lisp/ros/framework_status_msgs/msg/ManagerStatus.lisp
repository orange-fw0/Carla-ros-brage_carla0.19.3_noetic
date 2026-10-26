; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude ManagerStatus.msg.html

(cl:defclass <ManagerStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (auto_status
    :reader auto_status
    :initarg :auto_status
    :type cl:fixnum
    :initform 0)
   (map_engine_status
    :reader map_engine_status
    :initarg :map_engine_status
    :type cl:fixnum
    :initform 0)
   (map_routing_response
    :reader map_routing_response
    :initarg :map_routing_response
    :type framework_status_msgs-msg:RoutingResponse
    :initform (cl:make-instance 'framework_status_msgs-msg:RoutingResponse))
   (notify
    :reader notify
    :initarg :notify
    :type (cl:vector framework_status_msgs-msg:ManagerNotify)
   :initform (cl:make-array 0 :element-type 'framework_status_msgs-msg:ManagerNotify :initial-element (cl:make-instance 'framework_status_msgs-msg:ManagerNotify)))
   (hdmap_available
    :reader hdmap_available
    :initarg :hdmap_available
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ManagerStatus (<ManagerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManagerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManagerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<ManagerStatus> is deprecated: use framework_status_msgs-msg:ManagerStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header-val is deprecated.  Use framework_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'auto_status-val :lambda-list '(m))
(cl:defmethod auto_status-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:auto_status-val is deprecated.  Use framework_status_msgs-msg:auto_status instead.")
  (auto_status m))

(cl:ensure-generic-function 'map_engine_status-val :lambda-list '(m))
(cl:defmethod map_engine_status-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:map_engine_status-val is deprecated.  Use framework_status_msgs-msg:map_engine_status instead.")
  (map_engine_status m))

(cl:ensure-generic-function 'map_routing_response-val :lambda-list '(m))
(cl:defmethod map_routing_response-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:map_routing_response-val is deprecated.  Use framework_status_msgs-msg:map_routing_response instead.")
  (map_routing_response m))

(cl:ensure-generic-function 'notify-val :lambda-list '(m))
(cl:defmethod notify-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:notify-val is deprecated.  Use framework_status_msgs-msg:notify instead.")
  (notify m))

(cl:ensure-generic-function 'hdmap_available-val :lambda-list '(m))
(cl:defmethod hdmap_available-val ((m <ManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:hdmap_available-val is deprecated.  Use framework_status_msgs-msg:hdmap_available instead.")
  (hdmap_available m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ManagerStatus>)))
    "Constants for message type '<ManagerStatus>"
  '((:INITIALIZING . 0)
    (:READY . 1)
    (:ENGAGE_PENDING . 2)
    (:ENGAGED . 3)
    (:DISENGAGE_PENDING . 4)
    (:FAULT . 5)
    (:NAVIGATE . 0)
    (:CRUISE . 1)
    (:OFF_MAP . 2)
    (:AUTO_STATUS . 1)
    (:MAP_ENGINE_STATUS . 2)
    (:MAP_ROUTING_RESPONSE . 4)
    (:NOTIFY . 8)
    (:HDMAP_AVAILABLE . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ManagerStatus)))
    "Constants for message type 'ManagerStatus"
  '((:INITIALIZING . 0)
    (:READY . 1)
    (:ENGAGE_PENDING . 2)
    (:ENGAGED . 3)
    (:DISENGAGE_PENDING . 4)
    (:FAULT . 5)
    (:NAVIGATE . 0)
    (:CRUISE . 1)
    (:OFF_MAP . 2)
    (:AUTO_STATUS . 1)
    (:MAP_ENGINE_STATUS . 2)
    (:MAP_ROUTING_RESPONSE . 4)
    (:NOTIFY . 8)
    (:HDMAP_AVAILABLE . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManagerStatus>) ostream)
  "Serializes a message object of type '<ManagerStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_engine_status)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map_routing_response) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'notify))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'notify))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hdmap_available) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManagerStatus>) istream)
  "Deserializes a message object of type '<ManagerStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_engine_status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map_routing_response) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'notify) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'notify)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'framework_status_msgs-msg:ManagerNotify))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'hdmap_available) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManagerStatus>)))
  "Returns string type for a message object of type '<ManagerStatus>"
  "framework_status_msgs/ManagerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManagerStatus)))
  "Returns string type for a message object of type 'ManagerStatus"
  "framework_status_msgs/ManagerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManagerStatus>)))
  "Returns md5sum for a message object of type '<ManagerStatus>"
  "2bee84429af0bd75d8feb94d49983977")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManagerStatus)))
  "Returns md5sum for a message object of type 'ManagerStatus"
  "2bee84429af0bd75d8feb94d49983977")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManagerStatus>)))
  "Returns full string definition for message of type '<ManagerStatus>"
  (cl:format cl:nil "uint8 INITIALIZING = 0~%uint8 READY = 1~%uint8 ENGAGE_PENDING = 2~%uint8 ENGAGED = 3~%uint8 DISENGAGE_PENDING = 4~%uint8 FAULT = 5~%uint8 NAVIGATE = 0~%uint8 CRUISE = 1~%uint8 OFF_MAP = 2~%uint8 AUTO_STATUS = 1~%uint8 MAP_ENGINE_STATUS = 2~%uint8 MAP_ROUTING_RESPONSE = 4~%uint8 NOTIFY = 8~%uint8 HDMAP_AVAILABLE = 16~%std_msgs/Header header~%uint8 available~%uint8 auto_status~%uint8 map_engine_status~%framework_status_msgs/RoutingResponse map_routing_response~%framework_status_msgs/ManagerNotify[] notify~%bool hdmap_available~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/RoutingResponse~%std_msgs/Header header~%framework_status_msgs/RoutingRequest request~%bool success~%framework_status_msgs/MDKDiRoadId[] di_roads~%geometry_msgs/Point[] road_points~%~%================================================================================~%MSG: framework_status_msgs/RoutingRequest~%std_msgs/Header header~%int64 order_id~%framework_status_msgs/RoutingRequestType type~%string json_path~%geometry_msgs/Point[] route_ends~%~%================================================================================~%MSG: framework_status_msgs/RoutingRequestType~%uint8 ROUTE_ENDS = 0~%uint8 JSON_FILE = 1~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: framework_status_msgs/MDKDiRoadId~%int64 tile_id~%int64 road_count~%bool dir_reversed~%~%================================================================================~%MSG: framework_status_msgs/ManagerNotify~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManagerStatus)))
  "Returns full string definition for message of type 'ManagerStatus"
  (cl:format cl:nil "uint8 INITIALIZING = 0~%uint8 READY = 1~%uint8 ENGAGE_PENDING = 2~%uint8 ENGAGED = 3~%uint8 DISENGAGE_PENDING = 4~%uint8 FAULT = 5~%uint8 NAVIGATE = 0~%uint8 CRUISE = 1~%uint8 OFF_MAP = 2~%uint8 AUTO_STATUS = 1~%uint8 MAP_ENGINE_STATUS = 2~%uint8 MAP_ROUTING_RESPONSE = 4~%uint8 NOTIFY = 8~%uint8 HDMAP_AVAILABLE = 16~%std_msgs/Header header~%uint8 available~%uint8 auto_status~%uint8 map_engine_status~%framework_status_msgs/RoutingResponse map_routing_response~%framework_status_msgs/ManagerNotify[] notify~%bool hdmap_available~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/RoutingResponse~%std_msgs/Header header~%framework_status_msgs/RoutingRequest request~%bool success~%framework_status_msgs/MDKDiRoadId[] di_roads~%geometry_msgs/Point[] road_points~%~%================================================================================~%MSG: framework_status_msgs/RoutingRequest~%std_msgs/Header header~%int64 order_id~%framework_status_msgs/RoutingRequestType type~%string json_path~%geometry_msgs/Point[] route_ends~%~%================================================================================~%MSG: framework_status_msgs/RoutingRequestType~%uint8 ROUTE_ENDS = 0~%uint8 JSON_FILE = 1~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: framework_status_msgs/MDKDiRoadId~%int64 tile_id~%int64 road_count~%bool dir_reversed~%~%================================================================================~%MSG: framework_status_msgs/ManagerNotify~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManagerStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_routing_response))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'notify) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManagerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ManagerStatus
    (cl:cons ':header (header msg))
    (cl:cons ':available (available msg))
    (cl:cons ':auto_status (auto_status msg))
    (cl:cons ':map_engine_status (map_engine_status msg))
    (cl:cons ':map_routing_response (map_routing_response msg))
    (cl:cons ':notify (notify msg))
    (cl:cons ':hdmap_available (hdmap_available msg))
))
