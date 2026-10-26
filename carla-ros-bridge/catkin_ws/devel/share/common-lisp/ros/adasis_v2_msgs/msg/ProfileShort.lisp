; Auto-generated. Do not edit!


(cl:in-package adasis_v2_msgs-msg)


;//! \htmlinclude ProfileShort.msg.html

(cl:defclass <ProfileShort> (roslisp-msg-protocol:ros-message)
  ((cyclic_counter
    :reader cyclic_counter
    :initarg :cyclic_counter
    :type cl:fixnum
    :initform 0)
   (is_retransmission
    :reader is_retransmission
    :initarg :is_retransmission
    :type cl:fixnum
    :initform 0)
   (path_index
    :reader path_index
    :initarg :path_index
    :type cl:fixnum
    :initform 0)
   (offset
    :reader offset
    :initarg :offset
    :type cl:fixnum
    :initform 0)
   (is_update
    :reader is_update
    :initarg :is_update
    :type cl:fixnum
    :initform 0)
   (profile_type
    :reader profile_type
    :initarg :profile_type
    :type cl:fixnum
    :initform 0)
   (is_control_point
    :reader is_control_point
    :initarg :is_control_point
    :type cl:fixnum
    :initform 0)
   (value_0
    :reader value_0
    :initarg :value_0
    :type cl:fixnum
    :initform 0)
   (distance_1
    :reader distance_1
    :initarg :distance_1
    :type cl:fixnum
    :initform 0)
   (value_1
    :reader value_1
    :initarg :value_1
    :type cl:fixnum
    :initform 0)
   (accuracy
    :reader accuracy
    :initarg :accuracy
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ProfileShort (<ProfileShort>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProfileShort>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProfileShort)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adasis_v2_msgs-msg:<ProfileShort> is deprecated: use adasis_v2_msgs-msg:ProfileShort instead.")))

(cl:ensure-generic-function 'cyclic_counter-val :lambda-list '(m))
(cl:defmethod cyclic_counter-val ((m <ProfileShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:cyclic_counter-val is deprecated.  Use adasis_v2_msgs-msg:cyclic_counter instead.")
  (cyclic_counter m))

(cl:ensure-generic-function 'is_retransmission-val :lambda-list '(m))
(cl:defmethod is_retransmission-val ((m <ProfileShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:is_retransmission-val is deprecated.  Use adasis_v2_msgs-msg:is_retransmission instead.")
  (is_retransmission m))

(cl:ensure-generic-function 'path_index-val :lambda-list '(m))
(cl:defmethod path_index-val ((m <ProfileShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:path_index-val is deprecated.  Use adasis_v2_msgs-msg:path_index instead.")
  (path_index m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <ProfileShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:offset-val is deprecated.  Use adasis_v2_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'is_update-val :lambda-list '(m))
(cl:defmethod is_update-val ((m <ProfileShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:is_update-val is deprecated.  Use adasis_v2_msgs-msg:is_update instead.")
  (is_update m))

(cl:ensure-generic-function 'profile_type-val :lambda-list '(m))
(cl:defmethod profile_type-val ((m <ProfileShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:profile_type-val is deprecated.  Use adasis_v2_msgs-msg:profile_type instead.")
  (profile_type m))

(cl:ensure-generic-function 'is_control_point-val :lambda-list '(m))
(cl:defmethod is_control_point-val ((m <ProfileShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:is_control_point-val is deprecated.  Use adasis_v2_msgs-msg:is_control_point instead.")
  (is_control_point m))

(cl:ensure-generic-function 'value_0-val :lambda-list '(m))
(cl:defmethod value_0-val ((m <ProfileShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:value_0-val is deprecated.  Use adasis_v2_msgs-msg:value_0 instead.")
  (value_0 m))

(cl:ensure-generic-function 'distance_1-val :lambda-list '(m))
(cl:defmethod distance_1-val ((m <ProfileShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:distance_1-val is deprecated.  Use adasis_v2_msgs-msg:distance_1 instead.")
  (distance_1 m))

(cl:ensure-generic-function 'value_1-val :lambda-list '(m))
(cl:defmethod value_1-val ((m <ProfileShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:value_1-val is deprecated.  Use adasis_v2_msgs-msg:value_1 instead.")
  (value_1 m))

(cl:ensure-generic-function 'accuracy-val :lambda-list '(m))
(cl:defmethod accuracy-val ((m <ProfileShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:accuracy-val is deprecated.  Use adasis_v2_msgs-msg:accuracy instead.")
  (accuracy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProfileShort>) ostream)
  "Serializes a message object of type '<ProfileShort>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cyclic_counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_retransmission)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_update)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profile_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_control_point)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value_0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value_0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accuracy)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProfileShort>) istream)
  "Deserializes a message object of type '<ProfileShort>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cyclic_counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_retransmission)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_update)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'profile_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_control_point)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value_0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value_0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accuracy)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProfileShort>)))
  "Returns string type for a message object of type '<ProfileShort>"
  "adasis_v2_msgs/ProfileShort")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProfileShort)))
  "Returns string type for a message object of type 'ProfileShort"
  "adasis_v2_msgs/ProfileShort")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProfileShort>)))
  "Returns md5sum for a message object of type '<ProfileShort>"
  "f584934032a4b5c391f83031d8a144af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProfileShort)))
  "Returns md5sum for a message object of type 'ProfileShort"
  "f584934032a4b5c391f83031d8a144af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProfileShort>)))
  "Returns full string definition for message of type '<ProfileShort>"
  (cl:format cl:nil "uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 profile_type~%uint8 is_control_point~%uint16 value_0~%uint16 distance_1~%uint16 value_1~%uint8 accuracy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProfileShort)))
  "Returns full string definition for message of type 'ProfileShort"
  (cl:format cl:nil "uint8 cyclic_counter~%uint8 is_retransmission~%uint8 path_index~%uint16 offset~%uint8 is_update~%uint8 profile_type~%uint8 is_control_point~%uint16 value_0~%uint16 distance_1~%uint16 value_1~%uint8 accuracy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProfileShort>))
  (cl:+ 0
     1
     1
     1
     2
     1
     1
     1
     2
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProfileShort>))
  "Converts a ROS message object to a list"
  (cl:list 'ProfileShort
    (cl:cons ':cyclic_counter (cyclic_counter msg))
    (cl:cons ':is_retransmission (is_retransmission msg))
    (cl:cons ':path_index (path_index msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':is_update (is_update msg))
    (cl:cons ':profile_type (profile_type msg))
    (cl:cons ':is_control_point (is_control_point msg))
    (cl:cons ':value_0 (value_0 msg))
    (cl:cons ':distance_1 (distance_1 msg))
    (cl:cons ':value_1 (value_1 msg))
    (cl:cons ':accuracy (accuracy msg))
))
