; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude MTPTrafficLightArray.msg.html

(cl:defclass <MTPTrafficLightArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (items
    :reader items
    :initarg :items
    :type (cl:vector momenta_msgs-msg:MTPTrafficLight)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:MTPTrafficLight :initial-element (cl:make-instance 'momenta_msgs-msg:MTPTrafficLight)))
   (bbox_points
    :reader bbox_points
    :initarg :bbox_points
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MTPTrafficLightArray (<MTPTrafficLightArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MTPTrafficLightArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MTPTrafficLightArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<MTPTrafficLightArray> is deprecated: use momenta_msgs-msg:MTPTrafficLightArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MTPTrafficLightArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'items-val :lambda-list '(m))
(cl:defmethod items-val ((m <MTPTrafficLightArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:items-val is deprecated.  Use momenta_msgs-msg:items instead.")
  (items m))

(cl:ensure-generic-function 'bbox_points-val :lambda-list '(m))
(cl:defmethod bbox_points-val ((m <MTPTrafficLightArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:bbox_points-val is deprecated.  Use momenta_msgs-msg:bbox_points instead.")
  (bbox_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MTPTrafficLightArray>) ostream)
  "Serializes a message object of type '<MTPTrafficLightArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'items))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'items))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bbox_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'bbox_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MTPTrafficLightArray>) istream)
  "Deserializes a message object of type '<MTPTrafficLightArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'items) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'items)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:MTPTrafficLight))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bbox_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bbox_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MTPTrafficLightArray>)))
  "Returns string type for a message object of type '<MTPTrafficLightArray>"
  "momenta_msgs/MTPTrafficLightArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MTPTrafficLightArray)))
  "Returns string type for a message object of type 'MTPTrafficLightArray"
  "momenta_msgs/MTPTrafficLightArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MTPTrafficLightArray>)))
  "Returns md5sum for a message object of type '<MTPTrafficLightArray>"
  "450daad939b682bf94fc0c3ec7176756")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MTPTrafficLightArray)))
  "Returns md5sum for a message object of type 'MTPTrafficLightArray"
  "450daad939b682bf94fc0c3ec7176756")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MTPTrafficLightArray>)))
  "Returns full string definition for message of type '<MTPTrafficLightArray>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/MTPTrafficLight[] items~%float32[] bbox_points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/MTPTrafficLight~%float32[] rect~%float32 score~%int32 state_enum~%int32 pattern_enum~%int32 track_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MTPTrafficLightArray)))
  "Returns full string definition for message of type 'MTPTrafficLightArray"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/MTPTrafficLight[] items~%float32[] bbox_points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/MTPTrafficLight~%float32[] rect~%float32 score~%int32 state_enum~%int32 pattern_enum~%int32 track_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MTPTrafficLightArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'items) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bbox_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MTPTrafficLightArray>))
  "Converts a ROS message object to a list"
  (cl:list 'MTPTrafficLightArray
    (cl:cons ':header (header msg))
    (cl:cons ':items (items msg))
    (cl:cons ':bbox_points (bbox_points msg))
))
