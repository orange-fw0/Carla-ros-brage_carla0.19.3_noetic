; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude ParkingOutInfo.msg.html

(cl:defclass <ParkingOutInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (corners
    :reader corners
    :initarg :corners
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (apoa_yaw
    :reader apoa_yaw
    :initarg :apoa_yaw
    :type cl:float
    :initform 0.0)
   (apoa_enu
    :reader apoa_enu
    :initarg :apoa_enu
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass ParkingOutInfo (<ParkingOutInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingOutInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingOutInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<ParkingOutInfo> is deprecated: use momenta_msgs-msg:ParkingOutInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:id-val is deprecated.  Use momenta_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:type-val is deprecated.  Use momenta_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'corners-val :lambda-list '(m))
(cl:defmethod corners-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:corners-val is deprecated.  Use momenta_msgs-msg:corners instead.")
  (corners m))

(cl:ensure-generic-function 'apoa_yaw-val :lambda-list '(m))
(cl:defmethod apoa_yaw-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:apoa_yaw-val is deprecated.  Use momenta_msgs-msg:apoa_yaw instead.")
  (apoa_yaw m))

(cl:ensure-generic-function 'apoa_enu-val :lambda-list '(m))
(cl:defmethod apoa_enu-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:apoa_enu-val is deprecated.  Use momenta_msgs-msg:apoa_enu instead.")
  (apoa_enu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingOutInfo>) ostream)
  "Serializes a message object of type '<ParkingOutInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corners))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'apoa_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'apoa_enu) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingOutInfo>) istream)
  "Deserializes a message object of type '<ParkingOutInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'corners) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'corners)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'apoa_yaw) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'apoa_enu) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingOutInfo>)))
  "Returns string type for a message object of type '<ParkingOutInfo>"
  "momenta_msgs/ParkingOutInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingOutInfo)))
  "Returns string type for a message object of type 'ParkingOutInfo"
  "momenta_msgs/ParkingOutInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingOutInfo>)))
  "Returns md5sum for a message object of type '<ParkingOutInfo>"
  "8c2a99e8375b17e279eee0726e77a6ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingOutInfo)))
  "Returns md5sum for a message object of type 'ParkingOutInfo"
  "8c2a99e8375b17e279eee0726e77a6ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingOutInfo>)))
  "Returns full string definition for message of type '<ParkingOutInfo>"
  (cl:format cl:nil "std_msgs/Header header~%uint16 id~%string type~%geometry_msgs/Point[] corners~%float64 apoa_yaw~%geometry_msgs/Point apoa_enu~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingOutInfo)))
  "Returns full string definition for message of type 'ParkingOutInfo"
  (cl:format cl:nil "std_msgs/Header header~%uint16 id~%string type~%geometry_msgs/Point[] corners~%float64 apoa_yaw~%geometry_msgs/Point apoa_enu~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingOutInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'apoa_enu))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingOutInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingOutInfo
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':corners (corners msg))
    (cl:cons ':apoa_yaw (apoa_yaw msg))
    (cl:cons ':apoa_enu (apoa_enu msg))
))
