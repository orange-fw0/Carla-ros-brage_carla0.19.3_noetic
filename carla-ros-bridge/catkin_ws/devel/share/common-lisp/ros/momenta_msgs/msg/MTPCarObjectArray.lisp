; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude MTPCarObjectArray.msg.html

(cl:defclass <MTPCarObjectArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (object_array
    :reader object_array
    :initarg :object_array
    :type (cl:vector momenta_msgs-msg:MTPCarObject)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:MTPCarObject :initial-element (cl:make-instance 'momenta_msgs-msg:MTPCarObject))))
)

(cl:defclass MTPCarObjectArray (<MTPCarObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MTPCarObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MTPCarObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<MTPCarObjectArray> is deprecated: use momenta_msgs-msg:MTPCarObjectArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MTPCarObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'object_array-val :lambda-list '(m))
(cl:defmethod object_array-val ((m <MTPCarObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:object_array-val is deprecated.  Use momenta_msgs-msg:object_array instead.")
  (object_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MTPCarObjectArray>) ostream)
  "Serializes a message object of type '<MTPCarObjectArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MTPCarObjectArray>) istream)
  "Deserializes a message object of type '<MTPCarObjectArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:MTPCarObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MTPCarObjectArray>)))
  "Returns string type for a message object of type '<MTPCarObjectArray>"
  "momenta_msgs/MTPCarObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MTPCarObjectArray)))
  "Returns string type for a message object of type 'MTPCarObjectArray"
  "momenta_msgs/MTPCarObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MTPCarObjectArray>)))
  "Returns md5sum for a message object of type '<MTPCarObjectArray>"
  "16cd1162891106a5e503fb0f646c393c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MTPCarObjectArray)))
  "Returns md5sum for a message object of type 'MTPCarObjectArray"
  "16cd1162891106a5e503fb0f646c393c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MTPCarObjectArray>)))
  "Returns full string definition for message of type '<MTPCarObjectArray>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/MTPCarObject[] object_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/MTPCarObject~%uint64 available~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%int32 visibility~%float32[] wheels_position_x~%float32[] wheels_position_y~%float32[] wheels_visibility~%int32 wheels_count~%float32[] pillars_position_x~%float32[] pillars_visibility~%int32 pillars_count~%uint32 heading~%uint64 track_id~%uint64 track_times~%int32 live~%float32 angle_yaw~%uint32 backlamp~%uint32 type~%uint32 reid_feature_length~%float32[] reid_feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MTPCarObjectArray)))
  "Returns full string definition for message of type 'MTPCarObjectArray"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/MTPCarObject[] object_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/MTPCarObject~%uint64 available~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%int32 visibility~%float32[] wheels_position_x~%float32[] wheels_position_y~%float32[] wheels_visibility~%int32 wheels_count~%float32[] pillars_position_x~%float32[] pillars_visibility~%int32 pillars_count~%uint32 heading~%uint64 track_id~%uint64 track_times~%int32 live~%float32 angle_yaw~%uint32 backlamp~%uint32 type~%uint32 reid_feature_length~%float32[] reid_feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MTPCarObjectArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MTPCarObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'MTPCarObjectArray
    (cl:cons ':header (header msg))
    (cl:cons ':object_array (object_array msg))
))
