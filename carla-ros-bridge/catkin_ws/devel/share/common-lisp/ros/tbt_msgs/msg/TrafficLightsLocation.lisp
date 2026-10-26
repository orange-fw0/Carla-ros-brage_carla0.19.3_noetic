; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude TrafficLightsLocation.msg.html

(cl:defclass <TrafficLightsLocation> (roslisp-msg-protocol:ros-message)
  ((lat
    :reader lat
    :initarg :lat
    :type cl:float
    :initform 0.0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrafficLightsLocation (<TrafficLightsLocation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightsLocation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightsLocation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<TrafficLightsLocation> is deprecated: use tbt_msgs-msg:TrafficLightsLocation instead.")))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <TrafficLightsLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:lat-val is deprecated.  Use tbt_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <TrafficLightsLocation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:lon-val is deprecated.  Use tbt_msgs-msg:lon instead.")
  (lon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightsLocation>) ostream)
  "Serializes a message object of type '<TrafficLightsLocation>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightsLocation>) istream)
  "Deserializes a message object of type '<TrafficLightsLocation>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightsLocation>)))
  "Returns string type for a message object of type '<TrafficLightsLocation>"
  "tbt_msgs/TrafficLightsLocation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightsLocation)))
  "Returns string type for a message object of type 'TrafficLightsLocation"
  "tbt_msgs/TrafficLightsLocation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightsLocation>)))
  "Returns md5sum for a message object of type '<TrafficLightsLocation>"
  "deb12644498d4b5511a84dbd9af1e283")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightsLocation)))
  "Returns md5sum for a message object of type 'TrafficLightsLocation"
  "deb12644498d4b5511a84dbd9af1e283")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightsLocation>)))
  "Returns full string definition for message of type '<TrafficLightsLocation>"
  (cl:format cl:nil "float64 lat~%float64 lon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightsLocation)))
  "Returns full string definition for message of type 'TrafficLightsLocation"
  (cl:format cl:nil "float64 lat~%float64 lon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightsLocation>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightsLocation>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightsLocation
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
))
