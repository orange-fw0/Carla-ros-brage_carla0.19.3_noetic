; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LongitudinalIntention.msg.html

(cl:defclass <LongitudinalIntention> (roslisp-msg-protocol:ros-message)
  ((score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LongitudinalIntention (<LongitudinalIntention>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LongitudinalIntention>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LongitudinalIntention)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LongitudinalIntention> is deprecated: use worldmodel_msgs-msg:LongitudinalIntention instead.")))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <LongitudinalIntention>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:score-val is deprecated.  Use worldmodel_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LongitudinalIntention>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LongitudinalIntention>)))
    "Constants for message type '<LongitudinalIntention>"
  '((:INVALID . 0)
    (:ACCELERATE . 1)
    (:DECELERATE . 2)
    (:CRUISE . 3)
    (:START_MOVE . 4)
    (:STATIONARY . 5)
    (:REVERSE . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LongitudinalIntention)))
    "Constants for message type 'LongitudinalIntention"
  '((:INVALID . 0)
    (:ACCELERATE . 1)
    (:DECELERATE . 2)
    (:CRUISE . 3)
    (:START_MOVE . 4)
    (:STATIONARY . 5)
    (:REVERSE . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LongitudinalIntention>) ostream)
  "Serializes a message object of type '<LongitudinalIntention>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LongitudinalIntention>) istream)
  "Deserializes a message object of type '<LongitudinalIntention>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LongitudinalIntention>)))
  "Returns string type for a message object of type '<LongitudinalIntention>"
  "worldmodel_msgs/LongitudinalIntention")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LongitudinalIntention)))
  "Returns string type for a message object of type 'LongitudinalIntention"
  "worldmodel_msgs/LongitudinalIntention")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LongitudinalIntention>)))
  "Returns md5sum for a message object of type '<LongitudinalIntention>"
  "56494fdf01aaea0581a10ad868e017ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LongitudinalIntention)))
  "Returns md5sum for a message object of type 'LongitudinalIntention"
  "56494fdf01aaea0581a10ad868e017ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LongitudinalIntention>)))
  "Returns full string definition for message of type '<LongitudinalIntention>"
  (cl:format cl:nil "uint16 INVALID = 0~%uint16 ACCELERATE = 1~%uint16 DECELERATE = 2~%uint16 CRUISE = 3~%uint16 START_MOVE = 4~%uint16 STATIONARY = 5~%uint16 REVERSE = 6~%float32 score~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LongitudinalIntention)))
  "Returns full string definition for message of type 'LongitudinalIntention"
  (cl:format cl:nil "uint16 INVALID = 0~%uint16 ACCELERATE = 1~%uint16 DECELERATE = 2~%uint16 CRUISE = 3~%uint16 START_MOVE = 4~%uint16 STATIONARY = 5~%uint16 REVERSE = 6~%float32 score~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LongitudinalIntention>))
  (cl:+ 0
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LongitudinalIntention>))
  "Converts a ROS message object to a list"
  (cl:list 'LongitudinalIntention
    (cl:cons ':score (score msg))
    (cl:cons ':value (value msg))
))
