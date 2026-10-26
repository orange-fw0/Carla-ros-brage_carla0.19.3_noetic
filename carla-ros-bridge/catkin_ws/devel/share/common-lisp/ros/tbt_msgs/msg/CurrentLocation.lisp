; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude CurrentLocation.msg.html

(cl:defclass <CurrentLocation> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (invalid
    :reader invalid
    :initarg :invalid
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CurrentLocation (<CurrentLocation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentLocation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentLocation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<CurrentLocation> is deprecated: use tbt_msgs-msg:CurrentLocation instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <CurrentLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:latitude-val is deprecated.  Use tbt_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <CurrentLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:longitude-val is deprecated.  Use tbt_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'invalid-val :lambda-list '(m))
(cl:defmethod invalid-val ((m <CurrentLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:invalid-val is deprecated.  Use tbt_msgs-msg:invalid instead.")
  (invalid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentLocation>) ostream)
  "Serializes a message object of type '<CurrentLocation>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'invalid)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentLocation>) istream)
  "Deserializes a message object of type '<CurrentLocation>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'invalid)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentLocation>)))
  "Returns string type for a message object of type '<CurrentLocation>"
  "tbt_msgs/CurrentLocation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentLocation)))
  "Returns string type for a message object of type 'CurrentLocation"
  "tbt_msgs/CurrentLocation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentLocation>)))
  "Returns md5sum for a message object of type '<CurrentLocation>"
  "bc4264e85ff3a1169d8bc0e937218e24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentLocation)))
  "Returns md5sum for a message object of type 'CurrentLocation"
  "bc4264e85ff3a1169d8bc0e937218e24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentLocation>)))
  "Returns full string definition for message of type '<CurrentLocation>"
  (cl:format cl:nil "float64 latitude~%float64 longitude~%uint8 invalid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentLocation)))
  "Returns full string definition for message of type 'CurrentLocation"
  (cl:format cl:nil "float64 latitude~%float64 longitude~%uint8 invalid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentLocation>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentLocation>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentLocation
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':invalid (invalid msg))
))
