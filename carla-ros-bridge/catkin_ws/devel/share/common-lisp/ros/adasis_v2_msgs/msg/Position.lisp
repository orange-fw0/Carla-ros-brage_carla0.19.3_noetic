; Auto-generated. Do not edit!


(cl:in-package adasis_v2_msgs-msg)


;//! \htmlinclude Position.msg.html

(cl:defclass <Position> (roslisp-msg-protocol:ros-message)
  ((cyclic_counter
    :reader cyclic_counter
    :initarg :cyclic_counter
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
   (position_index
    :reader position_index
    :initarg :position_index
    :type cl:fixnum
    :initform 0)
   (position_age
    :reader position_age
    :initarg :position_age
    :type cl:fixnum
    :initform 0)
   (position_probability
    :reader position_probability
    :initarg :position_probability
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (relative_heading
    :reader relative_heading
    :initarg :relative_heading
    :type cl:fixnum
    :initform 0)
   (position_confidence
    :reader position_confidence
    :initarg :position_confidence
    :type cl:fixnum
    :initform 0)
   (current_lane
    :reader current_lane
    :initarg :current_lane
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Position (<Position>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Position>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Position)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adasis_v2_msgs-msg:<Position> is deprecated: use adasis_v2_msgs-msg:Position instead.")))

(cl:ensure-generic-function 'cyclic_counter-val :lambda-list '(m))
(cl:defmethod cyclic_counter-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:cyclic_counter-val is deprecated.  Use adasis_v2_msgs-msg:cyclic_counter instead.")
  (cyclic_counter m))

(cl:ensure-generic-function 'path_index-val :lambda-list '(m))
(cl:defmethod path_index-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:path_index-val is deprecated.  Use adasis_v2_msgs-msg:path_index instead.")
  (path_index m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:offset-val is deprecated.  Use adasis_v2_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'position_index-val :lambda-list '(m))
(cl:defmethod position_index-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:position_index-val is deprecated.  Use adasis_v2_msgs-msg:position_index instead.")
  (position_index m))

(cl:ensure-generic-function 'position_age-val :lambda-list '(m))
(cl:defmethod position_age-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:position_age-val is deprecated.  Use adasis_v2_msgs-msg:position_age instead.")
  (position_age m))

(cl:ensure-generic-function 'position_probability-val :lambda-list '(m))
(cl:defmethod position_probability-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:position_probability-val is deprecated.  Use adasis_v2_msgs-msg:position_probability instead.")
  (position_probability m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:speed-val is deprecated.  Use adasis_v2_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'relative_heading-val :lambda-list '(m))
(cl:defmethod relative_heading-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:relative_heading-val is deprecated.  Use adasis_v2_msgs-msg:relative_heading instead.")
  (relative_heading m))

(cl:ensure-generic-function 'position_confidence-val :lambda-list '(m))
(cl:defmethod position_confidence-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:position_confidence-val is deprecated.  Use adasis_v2_msgs-msg:position_confidence instead.")
  (position_confidence m))

(cl:ensure-generic-function 'current_lane-val :lambda-list '(m))
(cl:defmethod current_lane-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:current_lane-val is deprecated.  Use adasis_v2_msgs-msg:current_lane instead.")
  (current_lane m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adasis_v2_msgs-msg:reserved-val is deprecated.  Use adasis_v2_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Position>) ostream)
  "Serializes a message object of type '<Position>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cyclic_counter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_probability)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative_heading)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_confidence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Position>) istream)
  "Deserializes a message object of type '<Position>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cyclic_counter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_probability)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative_heading)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_confidence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_lane)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Position>)))
  "Returns string type for a message object of type '<Position>"
  "adasis_v2_msgs/Position")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Position)))
  "Returns string type for a message object of type 'Position"
  "adasis_v2_msgs/Position")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Position>)))
  "Returns md5sum for a message object of type '<Position>"
  "45cbf057ed09aa18faf9a7bac3745eae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Position)))
  "Returns md5sum for a message object of type 'Position"
  "45cbf057ed09aa18faf9a7bac3745eae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Position>)))
  "Returns full string definition for message of type '<Position>"
  (cl:format cl:nil "uint8 cyclic_counter~%uint8 path_index~%uint16 offset~%uint8 position_index~%uint16 position_age~%uint8 position_probability~%uint16 speed~%uint8 relative_heading~%uint8 position_confidence~%uint8 current_lane~%uint8 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Position)))
  "Returns full string definition for message of type 'Position"
  (cl:format cl:nil "uint8 cyclic_counter~%uint8 path_index~%uint16 offset~%uint8 position_index~%uint16 position_age~%uint8 position_probability~%uint16 speed~%uint8 relative_heading~%uint8 position_confidence~%uint8 current_lane~%uint8 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Position>))
  (cl:+ 0
     1
     1
     2
     1
     2
     1
     2
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Position>))
  "Converts a ROS message object to a list"
  (cl:list 'Position
    (cl:cons ':cyclic_counter (cyclic_counter msg))
    (cl:cons ':path_index (path_index msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':position_index (position_index msg))
    (cl:cons ':position_age (position_age msg))
    (cl:cons ':position_probability (position_probability msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':relative_heading (relative_heading msg))
    (cl:cons ':position_confidence (position_confidence msg))
    (cl:cons ':current_lane (current_lane msg))
    (cl:cons ':reserved (reserved msg))
))
