; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude IntervalCamera.msg.html

(cl:defclass <IntervalCamera> (roslisp-msg-protocol:ros-message)
  ((speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:fixnum
    :initform 0)
   (start_lat
    :reader start_lat
    :initarg :start_lat
    :type cl:float
    :initform 0.0)
   (start_long
    :reader start_long
    :initarg :start_long
    :type cl:float
    :initform 0.0)
   (end_lat
    :reader end_lat
    :initarg :end_lat
    :type cl:float
    :initform 0.0)
   (end_long
    :reader end_long
    :initarg :end_long
    :type cl:float
    :initform 0.0))
)

(cl:defclass IntervalCamera (<IntervalCamera>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntervalCamera>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntervalCamera)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<IntervalCamera> is deprecated: use tbt_msgs-msg:IntervalCamera instead.")))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <IntervalCamera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:speed_limit-val is deprecated.  Use tbt_msgs-msg:speed_limit instead.")
  (speed_limit m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <IntervalCamera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:distance-val is deprecated.  Use tbt_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'start_lat-val :lambda-list '(m))
(cl:defmethod start_lat-val ((m <IntervalCamera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:start_lat-val is deprecated.  Use tbt_msgs-msg:start_lat instead.")
  (start_lat m))

(cl:ensure-generic-function 'start_long-val :lambda-list '(m))
(cl:defmethod start_long-val ((m <IntervalCamera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:start_long-val is deprecated.  Use tbt_msgs-msg:start_long instead.")
  (start_long m))

(cl:ensure-generic-function 'end_lat-val :lambda-list '(m))
(cl:defmethod end_lat-val ((m <IntervalCamera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:end_lat-val is deprecated.  Use tbt_msgs-msg:end_lat instead.")
  (end_lat m))

(cl:ensure-generic-function 'end_long-val :lambda-list '(m))
(cl:defmethod end_long-val ((m <IntervalCamera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:end_long-val is deprecated.  Use tbt_msgs-msg:end_long instead.")
  (end_long m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntervalCamera>) ostream)
  "Serializes a message object of type '<IntervalCamera>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_long))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_long))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntervalCamera>) istream)
  "Deserializes a message object of type '<IntervalCamera>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_lat) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_long) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_lat) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_long) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntervalCamera>)))
  "Returns string type for a message object of type '<IntervalCamera>"
  "tbt_msgs/IntervalCamera")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntervalCamera)))
  "Returns string type for a message object of type 'IntervalCamera"
  "tbt_msgs/IntervalCamera")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntervalCamera>)))
  "Returns md5sum for a message object of type '<IntervalCamera>"
  "66b6eeb10de2e2817875b67f8250c648")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntervalCamera)))
  "Returns md5sum for a message object of type 'IntervalCamera"
  "66b6eeb10de2e2817875b67f8250c648")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntervalCamera>)))
  "Returns full string definition for message of type '<IntervalCamera>"
  (cl:format cl:nil "uint8 speed_limit~%uint16 distance~%float64 start_lat~%float64 start_long~%float64 end_lat~%float64 end_long~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntervalCamera)))
  "Returns full string definition for message of type 'IntervalCamera"
  (cl:format cl:nil "uint8 speed_limit~%uint16 distance~%float64 start_lat~%float64 start_long~%float64 end_lat~%float64 end_long~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntervalCamera>))
  (cl:+ 0
     1
     2
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntervalCamera>))
  "Converts a ROS message object to a list"
  (cl:list 'IntervalCamera
    (cl:cons ':speed_limit (speed_limit msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':start_lat (start_lat msg))
    (cl:cons ':start_long (start_long msg))
    (cl:cons ':end_lat (end_lat msg))
    (cl:cons ':end_long (end_long msg))
))
