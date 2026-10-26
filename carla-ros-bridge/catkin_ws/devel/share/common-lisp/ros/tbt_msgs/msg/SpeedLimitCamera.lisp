; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude SpeedLimitCamera.msg.html

(cl:defclass <SpeedLimitCamera> (roslisp-msg-protocol:ros-message)
  ((speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0))
)

(cl:defclass SpeedLimitCamera (<SpeedLimitCamera>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedLimitCamera>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedLimitCamera)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<SpeedLimitCamera> is deprecated: use tbt_msgs-msg:SpeedLimitCamera instead.")))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <SpeedLimitCamera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:speed_limit-val is deprecated.  Use tbt_msgs-msg:speed_limit instead.")
  (speed_limit m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <SpeedLimitCamera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:distance-val is deprecated.  Use tbt_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedLimitCamera>) ostream)
  "Serializes a message object of type '<SpeedLimitCamera>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedLimitCamera>) istream)
  "Deserializes a message object of type '<SpeedLimitCamera>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedLimitCamera>)))
  "Returns string type for a message object of type '<SpeedLimitCamera>"
  "tbt_msgs/SpeedLimitCamera")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedLimitCamera)))
  "Returns string type for a message object of type 'SpeedLimitCamera"
  "tbt_msgs/SpeedLimitCamera")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedLimitCamera>)))
  "Returns md5sum for a message object of type '<SpeedLimitCamera>"
  "323991c3d7e20cb10e43803d5123c993")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedLimitCamera)))
  "Returns md5sum for a message object of type 'SpeedLimitCamera"
  "323991c3d7e20cb10e43803d5123c993")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedLimitCamera>)))
  "Returns full string definition for message of type '<SpeedLimitCamera>"
  (cl:format cl:nil "uint8 speed_limit~%uint32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedLimitCamera)))
  "Returns full string definition for message of type 'SpeedLimitCamera"
  (cl:format cl:nil "uint8 speed_limit~%uint32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedLimitCamera>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedLimitCamera>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedLimitCamera
    (cl:cons ':speed_limit (speed_limit msg))
    (cl:cons ':distance (distance msg))
))
