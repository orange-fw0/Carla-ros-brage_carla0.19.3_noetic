; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude TrafficJam.msg.html

(cl:defclass <TrafficJam> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type tbt_msgs-msg:TrafficJamStatusEnum
    :initform (cl:make-instance 'tbt_msgs-msg:TrafficJamStatusEnum))
   (length
    :reader length
    :initarg :length
    :type cl:integer
    :initform 0)
   (distance_to_jam
    :reader distance_to_jam
    :initarg :distance_to_jam
    :type cl:integer
    :initform 0))
)

(cl:defclass TrafficJam (<TrafficJam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficJam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficJam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<TrafficJam> is deprecated: use tbt_msgs-msg:TrafficJam instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TrafficJam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:status-val is deprecated.  Use tbt_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <TrafficJam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:length-val is deprecated.  Use tbt_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'distance_to_jam-val :lambda-list '(m))
(cl:defmethod distance_to_jam-val ((m <TrafficJam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:distance_to_jam-val is deprecated.  Use tbt_msgs-msg:distance_to_jam instead.")
  (distance_to_jam m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficJam>) ostream)
  "Serializes a message object of type '<TrafficJam>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_to_jam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_to_jam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance_to_jam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance_to_jam)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficJam>) istream)
  "Deserializes a message object of type '<TrafficJam>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_to_jam)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_to_jam)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'distance_to_jam)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'distance_to_jam)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficJam>)))
  "Returns string type for a message object of type '<TrafficJam>"
  "tbt_msgs/TrafficJam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficJam)))
  "Returns string type for a message object of type 'TrafficJam"
  "tbt_msgs/TrafficJam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficJam>)))
  "Returns md5sum for a message object of type '<TrafficJam>"
  "5f76f89549e15659ef7306ece9884c75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficJam)))
  "Returns md5sum for a message object of type 'TrafficJam"
  "5f76f89549e15659ef7306ece9884c75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficJam>)))
  "Returns full string definition for message of type '<TrafficJam>"
  (cl:format cl:nil "tbt_msgs/TrafficJamStatusEnum status~%uint32 length~%uint32 distance_to_jam~%~%================================================================================~%MSG: tbt_msgs/TrafficJamStatusEnum~%uint8 Unkwon = 0~%uint8 TrafStsFast = 1~%uint8 TrafStsSlow = 2~%uint8 TrafStsJamed = 3~%uint8 TrafStsJamedBad = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficJam)))
  "Returns full string definition for message of type 'TrafficJam"
  (cl:format cl:nil "tbt_msgs/TrafficJamStatusEnum status~%uint32 length~%uint32 distance_to_jam~%~%================================================================================~%MSG: tbt_msgs/TrafficJamStatusEnum~%uint8 Unkwon = 0~%uint8 TrafStsFast = 1~%uint8 TrafStsSlow = 2~%uint8 TrafStsJamed = 3~%uint8 TrafStsJamedBad = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficJam>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficJam>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficJam
    (cl:cons ':status (status msg))
    (cl:cons ':length (length msg))
    (cl:cons ':distance_to_jam (distance_to_jam msg))
))
