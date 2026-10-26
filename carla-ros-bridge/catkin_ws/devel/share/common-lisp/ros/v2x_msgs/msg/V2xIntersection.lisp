; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xIntersection.msg.html

(cl:defclass <V2xIntersection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type v2x_msgs-msg:V2xMeta
    :initform (cl:make-instance 'v2x_msgs-msg:V2xMeta))
   (v2x_intersection_info
    :reader v2x_intersection_info
    :initarg :v2x_intersection_info
    :type v2x_msgs-msg:V2xIntersectionInfo
    :initform (cl:make-instance 'v2x_msgs-msg:V2xIntersectionInfo)))
)

(cl:defclass V2xIntersection (<V2xIntersection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xIntersection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xIntersection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xIntersection> is deprecated: use v2x_msgs-msg:V2xIntersection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <V2xIntersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:header-val is deprecated.  Use v2x_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <V2xIntersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:meta-val is deprecated.  Use v2x_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'v2x_intersection_info-val :lambda-list '(m))
(cl:defmethod v2x_intersection_info-val ((m <V2xIntersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:v2x_intersection_info-val is deprecated.  Use v2x_msgs-msg:v2x_intersection_info instead.")
  (v2x_intersection_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xIntersection>) ostream)
  "Serializes a message object of type '<V2xIntersection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v2x_intersection_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xIntersection>) istream)
  "Deserializes a message object of type '<V2xIntersection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v2x_intersection_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xIntersection>)))
  "Returns string type for a message object of type '<V2xIntersection>"
  "v2x_msgs/V2xIntersection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xIntersection)))
  "Returns string type for a message object of type 'V2xIntersection"
  "v2x_msgs/V2xIntersection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xIntersection>)))
  "Returns md5sum for a message object of type '<V2xIntersection>"
  "4d9da85f26e70015e10ed73b3cb46d59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xIntersection)))
  "Returns md5sum for a message object of type 'V2xIntersection"
  "4d9da85f26e70015e10ed73b3cb46d59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xIntersection>)))
  "Returns full string definition for message of type '<V2xIntersection>"
  (cl:format cl:nil "std_msgs/Header header~%v2x_msgs/V2xMeta meta~%v2x_msgs/V2xIntersectionInfo v2x_intersection_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xMeta~%uint64 timestamp_us~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xIntersectionInfo~%uint8 V2X_INTERSECTION_DATA = 1~%uint8 available~%v2x_msgs/V2xIntersectionData v2x_intersection_data~%~%================================================================================~%MSG: v2x_msgs/V2xIntersectionData~%int32 intersection_id~%float64 enter_angle~%float64 exit_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xIntersection)))
  "Returns full string definition for message of type 'V2xIntersection"
  (cl:format cl:nil "std_msgs/Header header~%v2x_msgs/V2xMeta meta~%v2x_msgs/V2xIntersectionInfo v2x_intersection_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xMeta~%uint64 timestamp_us~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xIntersectionInfo~%uint8 V2X_INTERSECTION_DATA = 1~%uint8 available~%v2x_msgs/V2xIntersectionData v2x_intersection_data~%~%================================================================================~%MSG: v2x_msgs/V2xIntersectionData~%int32 intersection_id~%float64 enter_angle~%float64 exit_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xIntersection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v2x_intersection_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xIntersection>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xIntersection
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':v2x_intersection_info (v2x_intersection_info msg))
))
