; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSObjectType.msg.html

(cl:defclass <OMSObjectType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass OMSObjectType (<OMSObjectType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSObjectType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSObjectType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSObjectType> is deprecated: use oms_msgs-msg:OMSObjectType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSObjectType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <OMSObjectType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:score-val is deprecated.  Use oms_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSObjectType>)))
    "Constants for message type '<OMSObjectType>"
  '((:UNAVAILABLE . 0)
    (:COMPUTER . 1)
    (:PAD . 2)
    (:WALLET . 3)
    (:BACKPACK . 4)
    (:HANDBAG . 5)
    (:PHONE . 6)
    (:CHILD_SEAT_HARD . 7)
    (:CHILD_SEAT_SOFT . 8)
    (:CHILD_SEAT_BASKET . 9)
    (:CHILD_SEAT_UNUSUAL . 10)
    (:CAT . 11)
    (:DOG . 12)
    (:RESERVED1 . 13)
    (:RESERVED2 . 14)
    (:RESERVED3 . 15)
    (:RESERVED4 . 16)
    (:RESERVED5 . 17)
    (:UNCERTAIN . 18))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSObjectType)))
    "Constants for message type 'OMSObjectType"
  '((:UNAVAILABLE . 0)
    (:COMPUTER . 1)
    (:PAD . 2)
    (:WALLET . 3)
    (:BACKPACK . 4)
    (:HANDBAG . 5)
    (:PHONE . 6)
    (:CHILD_SEAT_HARD . 7)
    (:CHILD_SEAT_SOFT . 8)
    (:CHILD_SEAT_BASKET . 9)
    (:CHILD_SEAT_UNUSUAL . 10)
    (:CAT . 11)
    (:DOG . 12)
    (:RESERVED1 . 13)
    (:RESERVED2 . 14)
    (:RESERVED3 . 15)
    (:RESERVED4 . 16)
    (:RESERVED5 . 17)
    (:UNCERTAIN . 18))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSObjectType>) ostream)
  "Serializes a message object of type '<OMSObjectType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSObjectType>) istream)
  "Deserializes a message object of type '<OMSObjectType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSObjectType>)))
  "Returns string type for a message object of type '<OMSObjectType>"
  "oms_msgs/OMSObjectType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSObjectType)))
  "Returns string type for a message object of type 'OMSObjectType"
  "oms_msgs/OMSObjectType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSObjectType>)))
  "Returns md5sum for a message object of type '<OMSObjectType>"
  "a643d2bc103096035a5c6a2eae13a0be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSObjectType)))
  "Returns md5sum for a message object of type 'OMSObjectType"
  "a643d2bc103096035a5c6a2eae13a0be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSObjectType>)))
  "Returns full string definition for message of type '<OMSObjectType>"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 COMPUTER = 1~%uint8 PAD = 2~%uint8 WALLET = 3~%uint8 BACKPACK = 4~%uint8 HANDBAG = 5~%uint8 PHONE = 6~%uint8 CHILD_SEAT_HARD = 7~%uint8 CHILD_SEAT_SOFT = 8~%uint8 CHILD_SEAT_BASKET = 9~%uint8 CHILD_SEAT_UNUSUAL = 10~%uint8 CAT = 11~%uint8 DOG = 12~%uint8 RESERVED1 = 13~%uint8 RESERVED2 = 14~%uint8 RESERVED3 = 15~%uint8 RESERVED4 = 16~%uint8 RESERVED5 = 17~%uint8 UNCERTAIN = 18~%uint8 value~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSObjectType)))
  "Returns full string definition for message of type 'OMSObjectType"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 COMPUTER = 1~%uint8 PAD = 2~%uint8 WALLET = 3~%uint8 BACKPACK = 4~%uint8 HANDBAG = 5~%uint8 PHONE = 6~%uint8 CHILD_SEAT_HARD = 7~%uint8 CHILD_SEAT_SOFT = 8~%uint8 CHILD_SEAT_BASKET = 9~%uint8 CHILD_SEAT_UNUSUAL = 10~%uint8 CAT = 11~%uint8 DOG = 12~%uint8 RESERVED1 = 13~%uint8 RESERVED2 = 14~%uint8 RESERVED3 = 15~%uint8 RESERVED4 = 16~%uint8 RESERVED5 = 17~%uint8 UNCERTAIN = 18~%uint8 value~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSObjectType>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSObjectType>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSObjectType
    (cl:cons ':value (value msg))
    (cl:cons ':score (score msg))
))
