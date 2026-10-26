; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude RoutingRequest.msg.html

(cl:defclass <RoutingRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (order_id
    :reader order_id
    :initarg :order_id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type framework_status_msgs-msg:RoutingRequestType
    :initform (cl:make-instance 'framework_status_msgs-msg:RoutingRequestType))
   (json_path
    :reader json_path
    :initarg :json_path
    :type cl:string
    :initform "")
   (route_ends
    :reader route_ends
    :initarg :route_ends
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass RoutingRequest (<RoutingRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutingRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutingRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<RoutingRequest> is deprecated: use framework_status_msgs-msg:RoutingRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header-val is deprecated.  Use framework_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'order_id-val :lambda-list '(m))
(cl:defmethod order_id-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:order_id-val is deprecated.  Use framework_status_msgs-msg:order_id instead.")
  (order_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:type-val is deprecated.  Use framework_status_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'json_path-val :lambda-list '(m))
(cl:defmethod json_path-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:json_path-val is deprecated.  Use framework_status_msgs-msg:json_path instead.")
  (json_path m))

(cl:ensure-generic-function 'route_ends-val :lambda-list '(m))
(cl:defmethod route_ends-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:route_ends-val is deprecated.  Use framework_status_msgs-msg:route_ends instead.")
  (route_ends m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutingRequest>) ostream)
  "Serializes a message object of type '<RoutingRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'order_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json_path))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'route_ends))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'route_ends))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutingRequest>) istream)
  "Deserializes a message object of type '<RoutingRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'route_ends) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'route_ends)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutingRequest>)))
  "Returns string type for a message object of type '<RoutingRequest>"
  "framework_status_msgs/RoutingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingRequest)))
  "Returns string type for a message object of type 'RoutingRequest"
  "framework_status_msgs/RoutingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutingRequest>)))
  "Returns md5sum for a message object of type '<RoutingRequest>"
  "ebc20bf1e15843c1c60434850faa0494")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutingRequest)))
  "Returns md5sum for a message object of type 'RoutingRequest"
  "ebc20bf1e15843c1c60434850faa0494")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutingRequest>)))
  "Returns full string definition for message of type '<RoutingRequest>"
  (cl:format cl:nil "std_msgs/Header header~%int64 order_id~%framework_status_msgs/RoutingRequestType type~%string json_path~%geometry_msgs/Point[] route_ends~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/RoutingRequestType~%uint8 ROUTE_ENDS = 0~%uint8 JSON_FILE = 1~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutingRequest)))
  "Returns full string definition for message of type 'RoutingRequest"
  (cl:format cl:nil "std_msgs/Header header~%int64 order_id~%framework_status_msgs/RoutingRequestType type~%string json_path~%geometry_msgs/Point[] route_ends~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/RoutingRequestType~%uint8 ROUTE_ENDS = 0~%uint8 JSON_FILE = 1~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutingRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'json_path))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'route_ends) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutingRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutingRequest
    (cl:cons ':header (header msg))
    (cl:cons ':order_id (order_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':json_path (json_path msg))
    (cl:cons ':route_ends (route_ends msg))
))
