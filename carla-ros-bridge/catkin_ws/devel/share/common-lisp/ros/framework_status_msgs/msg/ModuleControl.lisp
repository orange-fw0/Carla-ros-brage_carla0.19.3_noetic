; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude ModuleControl.msg.html

(cl:defclass <ModuleControl> (roslisp-msg-protocol:ros-message)
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
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ModuleControl (<ModuleControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<ModuleControl> is deprecated: use framework_status_msgs-msg:ModuleControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ModuleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header-val is deprecated.  Use framework_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <ModuleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:timestamp_us-val is deprecated.  Use framework_status_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'module_type-val :lambda-list '(m))
(cl:defmethod module_type-val ((m <ModuleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:module_type-val is deprecated.  Use framework_status_msgs-msg:module_type instead.")
  (module_type m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ModuleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:action-val is deprecated.  Use framework_status_msgs-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ModuleControl>)))
    "Constants for message type '<ModuleControl>"
  '((:STOP . 0)
    (:START . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ModuleControl)))
    "Constants for message type 'ModuleControl"
  '((:STOP . 0)
    (:START . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleControl>) ostream)
  "Serializes a message object of type '<ModuleControl>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleControl>) istream)
  "Deserializes a message object of type '<ModuleControl>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleControl>)))
  "Returns string type for a message object of type '<ModuleControl>"
  "framework_status_msgs/ModuleControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleControl)))
  "Returns string type for a message object of type 'ModuleControl"
  "framework_status_msgs/ModuleControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleControl>)))
  "Returns md5sum for a message object of type '<ModuleControl>"
  "abff0e71cedf4e41f7acb471b6a5e192")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleControl)))
  "Returns md5sum for a message object of type 'ModuleControl"
  "abff0e71cedf4e41f7acb471b6a5e192")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleControl>)))
  "Returns full string definition for message of type '<ModuleControl>"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 START = 1~%std_msgs/Header header~%uint64 timestamp_us~%framework_status_msgs/ModuleType module_type~%uint8 action~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/ModuleType~%uint8 PREDICTION = 0~%uint8 ROUTING = 1~%uint8 PLANNING = 2~%uint8 CONTROLLER = 3~%uint8 ENDPOINT = 4~%uint8 VEHICLE_REPORTER = 5~%uint8 WORLDMODEL = 6~%uint8 RADAR_PERCEPTION = 7~%uint8 VISION_PERCEPTION = 8~%uint8 LIDAR_PERCEPTION = 9~%uint8 FUSION_PERCEPTION = 10~%uint8 LOCATION = 11~%uint8 VISION_TFC_PERCEPTION = 12~%uint8 SENSOR_SERVICE = 13~%uint8 CAMERA_SERVICE = 14~%uint8 EGOPOSE_MANAGER = 15~%uint8 EGOMOTION = 16~%uint8 MAP_MANAGER = 17~%uint8 LDP_PLANNING = 18~%uint8 PLAC = 19~%uint8 ACE = 20~%uint8 VISTA = 21~%uint8 DYNAMIC_SAFETY_CHECK = 22~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleControl)))
  "Returns full string definition for message of type 'ModuleControl"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 START = 1~%std_msgs/Header header~%uint64 timestamp_us~%framework_status_msgs/ModuleType module_type~%uint8 action~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/ModuleType~%uint8 PREDICTION = 0~%uint8 ROUTING = 1~%uint8 PLANNING = 2~%uint8 CONTROLLER = 3~%uint8 ENDPOINT = 4~%uint8 VEHICLE_REPORTER = 5~%uint8 WORLDMODEL = 6~%uint8 RADAR_PERCEPTION = 7~%uint8 VISION_PERCEPTION = 8~%uint8 LIDAR_PERCEPTION = 9~%uint8 FUSION_PERCEPTION = 10~%uint8 LOCATION = 11~%uint8 VISION_TFC_PERCEPTION = 12~%uint8 SENSOR_SERVICE = 13~%uint8 CAMERA_SERVICE = 14~%uint8 EGOPOSE_MANAGER = 15~%uint8 EGOMOTION = 16~%uint8 MAP_MANAGER = 17~%uint8 LDP_PLANNING = 18~%uint8 PLAC = 19~%uint8 ACE = 20~%uint8 VISTA = 21~%uint8 DYNAMIC_SAFETY_CHECK = 22~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'module_type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleControl>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleControl
    (cl:cons ':header (header msg))
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':module_type (module_type msg))
    (cl:cons ':action (action msg))
))
