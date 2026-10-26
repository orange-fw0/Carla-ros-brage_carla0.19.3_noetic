; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xPerception.msg.html

(cl:defclass <V2xPerception> (roslisp-msg-protocol:ros-message)
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
   (v2x_perception_info
    :reader v2x_perception_info
    :initarg :v2x_perception_info
    :type v2x_msgs-msg:V2xPerceptionInfo
    :initform (cl:make-instance 'v2x_msgs-msg:V2xPerceptionInfo)))
)

(cl:defclass V2xPerception (<V2xPerception>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xPerception>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xPerception)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xPerception> is deprecated: use v2x_msgs-msg:V2xPerception instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <V2xPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:header-val is deprecated.  Use v2x_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <V2xPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:meta-val is deprecated.  Use v2x_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'v2x_perception_info-val :lambda-list '(m))
(cl:defmethod v2x_perception_info-val ((m <V2xPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:v2x_perception_info-val is deprecated.  Use v2x_msgs-msg:v2x_perception_info instead.")
  (v2x_perception_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xPerception>) ostream)
  "Serializes a message object of type '<V2xPerception>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v2x_perception_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xPerception>) istream)
  "Deserializes a message object of type '<V2xPerception>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v2x_perception_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xPerception>)))
  "Returns string type for a message object of type '<V2xPerception>"
  "v2x_msgs/V2xPerception")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xPerception)))
  "Returns string type for a message object of type 'V2xPerception"
  "v2x_msgs/V2xPerception")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xPerception>)))
  "Returns md5sum for a message object of type '<V2xPerception>"
  "8fd25398ccdd57f99fef3f47d092cc36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xPerception)))
  "Returns md5sum for a message object of type 'V2xPerception"
  "8fd25398ccdd57f99fef3f47d092cc36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xPerception>)))
  "Returns full string definition for message of type '<V2xPerception>"
  (cl:format cl:nil "std_msgs/Header header~%v2x_msgs/V2xMeta meta~%v2x_msgs/V2xPerceptionInfo v2x_perception_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xMeta~%uint64 timestamp_us~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xPerceptionInfo~%uint8 V2X_PERCEPTION_OBJECT = 1~%uint8 available~%v2x_msgs/V2xPerceptionObject[] v2x_perception_object~%~%================================================================================~%MSG: v2x_msgs/V2xPerceptionObject~%v2x_msgs/V2xPerceptionObjectType type~%float64 longitude~%float64 latitude~%float64 elevation~%float64 speed~%float64 heading~%float64 width~%float64 length~%float64 height~%~%================================================================================~%MSG: v2x_msgs/V2xPerceptionObjectType~%uint32 UNKNOWN = 0~%uint32 PEDESTRIAN = 1~%uint32 NON_MOTOR = 2~%uint32 MOTOR = 3~%uint32 OTHER = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xPerception)))
  "Returns full string definition for message of type 'V2xPerception"
  (cl:format cl:nil "std_msgs/Header header~%v2x_msgs/V2xMeta meta~%v2x_msgs/V2xPerceptionInfo v2x_perception_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xMeta~%uint64 timestamp_us~%string frame_id~%~%================================================================================~%MSG: v2x_msgs/V2xPerceptionInfo~%uint8 V2X_PERCEPTION_OBJECT = 1~%uint8 available~%v2x_msgs/V2xPerceptionObject[] v2x_perception_object~%~%================================================================================~%MSG: v2x_msgs/V2xPerceptionObject~%v2x_msgs/V2xPerceptionObjectType type~%float64 longitude~%float64 latitude~%float64 elevation~%float64 speed~%float64 heading~%float64 width~%float64 length~%float64 height~%~%================================================================================~%MSG: v2x_msgs/V2xPerceptionObjectType~%uint32 UNKNOWN = 0~%uint32 PEDESTRIAN = 1~%uint32 NON_MOTOR = 2~%uint32 MOTOR = 3~%uint32 OTHER = 4~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xPerception>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v2x_perception_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xPerception>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xPerception
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':v2x_perception_info (v2x_perception_info msg))
))
