; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude Segment.msg.html

(cl:defclass <Segment> (roslisp-msg-protocol:ros-message)
  ((begin_index
    :reader begin_index
    :initarg :begin_index
    :type cl:fixnum
    :initform 0)
   (end_index
    :reader end_index
    :initarg :end_index
    :type cl:fixnum
    :initform 0)
   (connection_type
    :reader connection_type
    :initarg :connection_type
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (lane_type
    :reader lane_type
    :initarg :lane_type
    :type cl:fixnum
    :initform 0)
   (lane_original_id
    :reader lane_original_id
    :initarg :lane_original_id
    :type cl:integer
    :initform 0)
   (is_in_intersection
    :reader is_in_intersection
    :initarg :is_in_intersection
    :type cl:boolean
    :initform cl:nil)
   (is_on_route
    :reader is_on_route
    :initarg :is_on_route
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Segment (<Segment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Segment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Segment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<Segment> is deprecated: use momenta_msgs-msg:Segment instead.")))

(cl:ensure-generic-function 'begin_index-val :lambda-list '(m))
(cl:defmethod begin_index-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:begin_index-val is deprecated.  Use momenta_msgs-msg:begin_index instead.")
  (begin_index m))

(cl:ensure-generic-function 'end_index-val :lambda-list '(m))
(cl:defmethod end_index-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:end_index-val is deprecated.  Use momenta_msgs-msg:end_index instead.")
  (end_index m))

(cl:ensure-generic-function 'connection_type-val :lambda-list '(m))
(cl:defmethod connection_type-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:connection_type-val is deprecated.  Use momenta_msgs-msg:connection_type instead.")
  (connection_type m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:direction-val is deprecated.  Use momenta_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'lane_type-val :lambda-list '(m))
(cl:defmethod lane_type-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane_type-val is deprecated.  Use momenta_msgs-msg:lane_type instead.")
  (lane_type m))

(cl:ensure-generic-function 'lane_original_id-val :lambda-list '(m))
(cl:defmethod lane_original_id-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane_original_id-val is deprecated.  Use momenta_msgs-msg:lane_original_id instead.")
  (lane_original_id m))

(cl:ensure-generic-function 'is_in_intersection-val :lambda-list '(m))
(cl:defmethod is_in_intersection-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_in_intersection-val is deprecated.  Use momenta_msgs-msg:is_in_intersection instead.")
  (is_in_intersection m))

(cl:ensure-generic-function 'is_on_route-val :lambda-list '(m))
(cl:defmethod is_on_route-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_on_route-val is deprecated.  Use momenta_msgs-msg:is_on_route instead.")
  (is_on_route m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Segment>) ostream)
  "Serializes a message object of type '<Segment>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'begin_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'begin_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lane_original_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_in_intersection) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_on_route) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Segment>) istream)
  "Deserializes a message object of type '<Segment>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'begin_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'begin_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connection_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_original_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'is_in_intersection) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_on_route) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Segment>)))
  "Returns string type for a message object of type '<Segment>"
  "momenta_msgs/Segment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Segment)))
  "Returns string type for a message object of type 'Segment"
  "momenta_msgs/Segment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Segment>)))
  "Returns md5sum for a message object of type '<Segment>"
  "d39ccb4c476821967623d7d1188c5107")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Segment)))
  "Returns md5sum for a message object of type 'Segment"
  "d39ccb4c476821967623d7d1188c5107")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Segment>)))
  "Returns full string definition for message of type '<Segment>"
  (cl:format cl:nil "uint16 begin_index~%uint16 end_index~%uint8 connection_type~%uint8 direction~%uint8 lane_type~%int64 lane_original_id~%bool is_in_intersection~%bool is_on_route~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Segment)))
  "Returns full string definition for message of type 'Segment"
  (cl:format cl:nil "uint16 begin_index~%uint16 end_index~%uint8 connection_type~%uint8 direction~%uint8 lane_type~%int64 lane_original_id~%bool is_in_intersection~%bool is_on_route~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Segment>))
  (cl:+ 0
     2
     2
     1
     1
     1
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Segment>))
  "Converts a ROS message object to a list"
  (cl:list 'Segment
    (cl:cons ':begin_index (begin_index msg))
    (cl:cons ':end_index (end_index msg))
    (cl:cons ':connection_type (connection_type msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':lane_type (lane_type msg))
    (cl:cons ':lane_original_id (lane_original_id msg))
    (cl:cons ':is_in_intersection (is_in_intersection msg))
    (cl:cons ':is_on_route (is_on_route msg))
))
