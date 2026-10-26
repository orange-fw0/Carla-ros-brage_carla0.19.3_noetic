; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSObjectInfo.msg.html

(cl:defclass <OMSObjectInfo> (roslisp-msg-protocol:ros-message)
  ((seat_id
    :reader seat_id
    :initarg :seat_id
    :type cl:fixnum
    :initform 0)
   (object_type
    :reader object_type
    :initarg :object_type
    :type oms_msgs-msg:OMSObjectType
    :initform (cl:make-instance 'oms_msgs-msg:OMSObjectType))
   (object_rect
    :reader object_rect
    :initarg :object_rect
    :type oms_msgs-msg:OMSObjectDetResult
    :initform (cl:make-instance 'oms_msgs-msg:OMSObjectDetResult)))
)

(cl:defclass OMSObjectInfo (<OMSObjectInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSObjectInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSObjectInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSObjectInfo> is deprecated: use oms_msgs-msg:OMSObjectInfo instead.")))

(cl:ensure-generic-function 'seat_id-val :lambda-list '(m))
(cl:defmethod seat_id-val ((m <OMSObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:seat_id-val is deprecated.  Use oms_msgs-msg:seat_id instead.")
  (seat_id m))

(cl:ensure-generic-function 'object_type-val :lambda-list '(m))
(cl:defmethod object_type-val ((m <OMSObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:object_type-val is deprecated.  Use oms_msgs-msg:object_type instead.")
  (object_type m))

(cl:ensure-generic-function 'object_rect-val :lambda-list '(m))
(cl:defmethod object_rect-val ((m <OMSObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:object_rect-val is deprecated.  Use oms_msgs-msg:object_rect instead.")
  (object_rect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSObjectInfo>) ostream)
  "Serializes a message object of type '<OMSObjectInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seat_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_rect) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSObjectInfo>) istream)
  "Deserializes a message object of type '<OMSObjectInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seat_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_rect) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSObjectInfo>)))
  "Returns string type for a message object of type '<OMSObjectInfo>"
  "oms_msgs/OMSObjectInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSObjectInfo)))
  "Returns string type for a message object of type 'OMSObjectInfo"
  "oms_msgs/OMSObjectInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSObjectInfo>)))
  "Returns md5sum for a message object of type '<OMSObjectInfo>"
  "627b785048f9f96a95c27a49dd32e600")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSObjectInfo)))
  "Returns md5sum for a message object of type 'OMSObjectInfo"
  "627b785048f9f96a95c27a49dd32e600")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSObjectInfo>)))
  "Returns full string definition for message of type '<OMSObjectInfo>"
  (cl:format cl:nil "uint8 seat_id~%oms_msgs/OMSObjectType object_type~%oms_msgs/OMSObjectDetResult object_rect~%~%================================================================================~%MSG: oms_msgs/OMSObjectType~%uint8 UNAVAILABLE = 0~%uint8 COMPUTER = 1~%uint8 PAD = 2~%uint8 WALLET = 3~%uint8 BACKPACK = 4~%uint8 HANDBAG = 5~%uint8 PHONE = 6~%uint8 CHILD_SEAT_HARD = 7~%uint8 CHILD_SEAT_SOFT = 8~%uint8 CHILD_SEAT_BASKET = 9~%uint8 CHILD_SEAT_UNUSUAL = 10~%uint8 CAT = 11~%uint8 DOG = 12~%uint8 RESERVED1 = 13~%uint8 RESERVED2 = 14~%uint8 RESERVED3 = 15~%uint8 RESERVED4 = 16~%uint8 RESERVED5 = 17~%uint8 UNCERTAIN = 18~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSObjectDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f object_rect~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSObjectInfo)))
  "Returns full string definition for message of type 'OMSObjectInfo"
  (cl:format cl:nil "uint8 seat_id~%oms_msgs/OMSObjectType object_type~%oms_msgs/OMSObjectDetResult object_rect~%~%================================================================================~%MSG: oms_msgs/OMSObjectType~%uint8 UNAVAILABLE = 0~%uint8 COMPUTER = 1~%uint8 PAD = 2~%uint8 WALLET = 3~%uint8 BACKPACK = 4~%uint8 HANDBAG = 5~%uint8 PHONE = 6~%uint8 CHILD_SEAT_HARD = 7~%uint8 CHILD_SEAT_SOFT = 8~%uint8 CHILD_SEAT_BASKET = 9~%uint8 CHILD_SEAT_UNUSUAL = 10~%uint8 CAT = 11~%uint8 DOG = 12~%uint8 RESERVED1 = 13~%uint8 RESERVED2 = 14~%uint8 RESERVED3 = 15~%uint8 RESERVED4 = 16~%uint8 RESERVED5 = 17~%uint8 UNCERTAIN = 18~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSObjectDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f object_rect~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSObjectInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_rect))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSObjectInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSObjectInfo
    (cl:cons ':seat_id (seat_id msg))
    (cl:cons ':object_type (object_type msg))
    (cl:cons ':object_rect (object_rect msg))
))
