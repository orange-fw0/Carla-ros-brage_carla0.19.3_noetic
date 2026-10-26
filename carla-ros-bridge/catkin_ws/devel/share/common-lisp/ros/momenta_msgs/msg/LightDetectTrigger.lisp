; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude LightDetectTrigger.msg.html

(cl:defclass <LightDetectTrigger> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (boundary
    :reader boundary
    :initarg :boundary
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (num_signals
    :reader num_signals
    :initarg :num_signals
    :type cl:integer
    :initform 0)
   (pattern_signals
    :reader pattern_signals
    :initarg :pattern_signals
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (light_id
    :reader light_id
    :initarg :light_id
    :type cl:integer
    :initform 0))
)

(cl:defclass LightDetectTrigger (<LightDetectTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightDetectTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightDetectTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<LightDetectTrigger> is deprecated: use momenta_msgs-msg:LightDetectTrigger instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LightDetectTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'boundary-val :lambda-list '(m))
(cl:defmethod boundary-val ((m <LightDetectTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:boundary-val is deprecated.  Use momenta_msgs-msg:boundary instead.")
  (boundary m))

(cl:ensure-generic-function 'num_signals-val :lambda-list '(m))
(cl:defmethod num_signals-val ((m <LightDetectTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:num_signals-val is deprecated.  Use momenta_msgs-msg:num_signals instead.")
  (num_signals m))

(cl:ensure-generic-function 'pattern_signals-val :lambda-list '(m))
(cl:defmethod pattern_signals-val ((m <LightDetectTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:pattern_signals-val is deprecated.  Use momenta_msgs-msg:pattern_signals instead.")
  (pattern_signals m))

(cl:ensure-generic-function 'light_id-val :lambda-list '(m))
(cl:defmethod light_id-val ((m <LightDetectTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:light_id-val is deprecated.  Use momenta_msgs-msg:light_id instead.")
  (light_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightDetectTrigger>) ostream)
  "Serializes a message object of type '<LightDetectTrigger>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'boundary))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'boundary))
  (cl:let* ((signed (cl:slot-value msg 'num_signals)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pattern_signals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'pattern_signals))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'light_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'light_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'light_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'light_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'light_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'light_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'light_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightDetectTrigger>) istream)
  "Deserializes a message object of type '<LightDetectTrigger>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'boundary) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'boundary)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_signals) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pattern_signals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pattern_signals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'light_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'light_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'light_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'light_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'light_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'light_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'light_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightDetectTrigger>)))
  "Returns string type for a message object of type '<LightDetectTrigger>"
  "momenta_msgs/LightDetectTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightDetectTrigger)))
  "Returns string type for a message object of type 'LightDetectTrigger"
  "momenta_msgs/LightDetectTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightDetectTrigger>)))
  "Returns md5sum for a message object of type '<LightDetectTrigger>"
  "8875c216bd3d8b8e2f33f0088d50ca8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightDetectTrigger)))
  "Returns md5sum for a message object of type 'LightDetectTrigger"
  "8875c216bd3d8b8e2f33f0088d50ca8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightDetectTrigger>)))
  "Returns full string definition for message of type '<LightDetectTrigger>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Point[] boundary~%int32 num_signals~%int32[] pattern_signals~%uint64 light_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightDetectTrigger)))
  "Returns full string definition for message of type 'LightDetectTrigger"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Point[] boundary~%int32 num_signals~%int32[] pattern_signals~%uint64 light_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightDetectTrigger>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'boundary) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pattern_signals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightDetectTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'LightDetectTrigger
    (cl:cons ':header (header msg))
    (cl:cons ':boundary (boundary msg))
    (cl:cons ':num_signals (num_signals msg))
    (cl:cons ':pattern_signals (pattern_signals msg))
    (cl:cons ':light_id (light_id msg))
))
