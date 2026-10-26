; Auto-generated. Do not edit!


(cl:in-package can_bridge_msgs-msg)


;//! \htmlinclude CanBridge.msg.html

(cl:defclass <CanBridge> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type can_bridge_msgs-msg:Meta
    :initform (cl:make-instance 'can_bridge_msgs-msg:Meta))
   (can
    :reader can
    :initarg :can
    :type (cl:vector can_bridge_msgs-msg:CanMessage)
   :initform (cl:make-array 0 :element-type 'can_bridge_msgs-msg:CanMessage :initial-element (cl:make-instance 'can_bridge_msgs-msg:CanMessage))))
)

(cl:defclass CanBridge (<CanBridge>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CanBridge>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CanBridge)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_bridge_msgs-msg:<CanBridge> is deprecated: use can_bridge_msgs-msg:CanBridge instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CanBridge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_bridge_msgs-msg:header-val is deprecated.  Use can_bridge_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <CanBridge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_bridge_msgs-msg:meta-val is deprecated.  Use can_bridge_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'can-val :lambda-list '(m))
(cl:defmethod can-val ((m <CanBridge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_bridge_msgs-msg:can-val is deprecated.  Use can_bridge_msgs-msg:can instead.")
  (can m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CanBridge>) ostream)
  "Serializes a message object of type '<CanBridge>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'can))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'can))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CanBridge>) istream)
  "Deserializes a message object of type '<CanBridge>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'can) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'can)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'can_bridge_msgs-msg:CanMessage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CanBridge>)))
  "Returns string type for a message object of type '<CanBridge>"
  "can_bridge_msgs/CanBridge")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanBridge)))
  "Returns string type for a message object of type 'CanBridge"
  "can_bridge_msgs/CanBridge")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CanBridge>)))
  "Returns md5sum for a message object of type '<CanBridge>"
  "0bab2daea292bfed2b50d56bf735ebbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CanBridge)))
  "Returns md5sum for a message object of type 'CanBridge"
  "0bab2daea292bfed2b50d56bf735ebbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CanBridge>)))
  "Returns full string definition for message of type '<CanBridge>"
  (cl:format cl:nil "std_msgs/Header header~%can_bridge_msgs/Meta meta~%can_bridge_msgs/CanMessage[] can~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: can_bridge_msgs/Meta~%uint64 sensor_timestamp_us~%uint64 seq~%~%================================================================================~%MSG: can_bridge_msgs/CanMessage~%uint32 can_id~%int32 ts_offset~%uint8 is_convert~%uint8 channel~%uint8 len~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CanBridge)))
  "Returns full string definition for message of type 'CanBridge"
  (cl:format cl:nil "std_msgs/Header header~%can_bridge_msgs/Meta meta~%can_bridge_msgs/CanMessage[] can~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: can_bridge_msgs/Meta~%uint64 sensor_timestamp_us~%uint64 seq~%~%================================================================================~%MSG: can_bridge_msgs/CanMessage~%uint32 can_id~%int32 ts_offset~%uint8 is_convert~%uint8 channel~%uint8 len~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CanBridge>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'can) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CanBridge>))
  "Converts a ROS message object to a list"
  (cl:list 'CanBridge
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':can (can msg))
))
