; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSEmotionResult.msg.html

(cl:defclass <DMSEmotionResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (emotion_type
    :reader emotion_type
    :initarg :emotion_type
    :type dms_msgs-msg:DMSEmotionTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSEmotionTypeEnum)))
)

(cl:defclass DMSEmotionResult (<DMSEmotionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSEmotionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSEmotionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSEmotionResult> is deprecated: use dms_msgs-msg:DMSEmotionResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSEmotionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'emotion_type-val :lambda-list '(m))
(cl:defmethod emotion_type-val ((m <DMSEmotionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:emotion_type-val is deprecated.  Use dms_msgs-msg:emotion_type instead.")
  (emotion_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSEmotionResult>)))
    "Constants for message type '<DMSEmotionResult>"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1)
    (:RESERVED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSEmotionResult)))
    "Constants for message type 'DMSEmotionResult"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1)
    (:RESERVED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSEmotionResult>) ostream)
  "Serializes a message object of type '<DMSEmotionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'emotion_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSEmotionResult>) istream)
  "Deserializes a message object of type '<DMSEmotionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'emotion_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSEmotionResult>)))
  "Returns string type for a message object of type '<DMSEmotionResult>"
  "dms_msgs/DMSEmotionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSEmotionResult)))
  "Returns string type for a message object of type 'DMSEmotionResult"
  "dms_msgs/DMSEmotionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSEmotionResult>)))
  "Returns md5sum for a message object of type '<DMSEmotionResult>"
  "4fbda016f0ca402ea5064aae13dee501")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSEmotionResult)))
  "Returns md5sum for a message object of type 'DMSEmotionResult"
  "4fbda016f0ca402ea5064aae13dee501")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSEmotionResult>)))
  "Returns full string definition for message of type '<DMSEmotionResult>"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 RESERVED = 2~%uint8 available~%dms_msgs/DMSEmotionTypeEnum emotion_type~%~%================================================================================~%MSG: dms_msgs/DMSEmotionTypeEnum~%uint8 DMS_EXPRESSION_ANGRY = 0~%uint8 DMS_EXPRESSION_FEAR = 1~%uint8 DMS_EXPRESSION_HAPPY = 2~%uint8 DMS_EXPRESSION_SAD = 3~%uint8 DMS_EXPRESSION_SURPRISE = 4~%uint8 DMS_EXPRESSION_NEUTRAL = 5~%uint8 DMS_EXPRESSION_RESERVED = 6~%uint8 DMS_EXPRESSION_RESERVED1 = 7~%uint8 DMS_EXPRESSION_RESERVED2 = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSEmotionResult)))
  "Returns full string definition for message of type 'DMSEmotionResult"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 RESERVED = 2~%uint8 available~%dms_msgs/DMSEmotionTypeEnum emotion_type~%~%================================================================================~%MSG: dms_msgs/DMSEmotionTypeEnum~%uint8 DMS_EXPRESSION_ANGRY = 0~%uint8 DMS_EXPRESSION_FEAR = 1~%uint8 DMS_EXPRESSION_HAPPY = 2~%uint8 DMS_EXPRESSION_SAD = 3~%uint8 DMS_EXPRESSION_SURPRISE = 4~%uint8 DMS_EXPRESSION_NEUTRAL = 5~%uint8 DMS_EXPRESSION_RESERVED = 6~%uint8 DMS_EXPRESSION_RESERVED1 = 7~%uint8 DMS_EXPRESSION_RESERVED2 = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSEmotionResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'emotion_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSEmotionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSEmotionResult
    (cl:cons ':available (available msg))
    (cl:cons ':emotion_type (emotion_type msg))
))
