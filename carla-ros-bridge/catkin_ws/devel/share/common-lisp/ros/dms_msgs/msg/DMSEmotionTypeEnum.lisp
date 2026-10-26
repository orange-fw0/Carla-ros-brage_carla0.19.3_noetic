; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSEmotionTypeEnum.msg.html

(cl:defclass <DMSEmotionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSEmotionTypeEnum (<DMSEmotionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSEmotionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSEmotionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSEmotionTypeEnum> is deprecated: use dms_msgs-msg:DMSEmotionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSEmotionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSEmotionTypeEnum>)))
    "Constants for message type '<DMSEmotionTypeEnum>"
  '((:DMS_EXPRESSION_ANGRY . 0)
    (:DMS_EXPRESSION_FEAR . 1)
    (:DMS_EXPRESSION_HAPPY . 2)
    (:DMS_EXPRESSION_SAD . 3)
    (:DMS_EXPRESSION_SURPRISE . 4)
    (:DMS_EXPRESSION_NEUTRAL . 5)
    (:DMS_EXPRESSION_RESERVED . 6)
    (:DMS_EXPRESSION_RESERVED1 . 7)
    (:DMS_EXPRESSION_RESERVED2 . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSEmotionTypeEnum)))
    "Constants for message type 'DMSEmotionTypeEnum"
  '((:DMS_EXPRESSION_ANGRY . 0)
    (:DMS_EXPRESSION_FEAR . 1)
    (:DMS_EXPRESSION_HAPPY . 2)
    (:DMS_EXPRESSION_SAD . 3)
    (:DMS_EXPRESSION_SURPRISE . 4)
    (:DMS_EXPRESSION_NEUTRAL . 5)
    (:DMS_EXPRESSION_RESERVED . 6)
    (:DMS_EXPRESSION_RESERVED1 . 7)
    (:DMS_EXPRESSION_RESERVED2 . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSEmotionTypeEnum>) ostream)
  "Serializes a message object of type '<DMSEmotionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSEmotionTypeEnum>) istream)
  "Deserializes a message object of type '<DMSEmotionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSEmotionTypeEnum>)))
  "Returns string type for a message object of type '<DMSEmotionTypeEnum>"
  "dms_msgs/DMSEmotionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSEmotionTypeEnum)))
  "Returns string type for a message object of type 'DMSEmotionTypeEnum"
  "dms_msgs/DMSEmotionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSEmotionTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSEmotionTypeEnum>"
  "084ae889afb12e7377fba9bef0324b1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSEmotionTypeEnum)))
  "Returns md5sum for a message object of type 'DMSEmotionTypeEnum"
  "084ae889afb12e7377fba9bef0324b1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSEmotionTypeEnum>)))
  "Returns full string definition for message of type '<DMSEmotionTypeEnum>"
  (cl:format cl:nil "uint8 DMS_EXPRESSION_ANGRY = 0~%uint8 DMS_EXPRESSION_FEAR = 1~%uint8 DMS_EXPRESSION_HAPPY = 2~%uint8 DMS_EXPRESSION_SAD = 3~%uint8 DMS_EXPRESSION_SURPRISE = 4~%uint8 DMS_EXPRESSION_NEUTRAL = 5~%uint8 DMS_EXPRESSION_RESERVED = 6~%uint8 DMS_EXPRESSION_RESERVED1 = 7~%uint8 DMS_EXPRESSION_RESERVED2 = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSEmotionTypeEnum)))
  "Returns full string definition for message of type 'DMSEmotionTypeEnum"
  (cl:format cl:nil "uint8 DMS_EXPRESSION_ANGRY = 0~%uint8 DMS_EXPRESSION_FEAR = 1~%uint8 DMS_EXPRESSION_HAPPY = 2~%uint8 DMS_EXPRESSION_SAD = 3~%uint8 DMS_EXPRESSION_SURPRISE = 4~%uint8 DMS_EXPRESSION_NEUTRAL = 5~%uint8 DMS_EXPRESSION_RESERVED = 6~%uint8 DMS_EXPRESSION_RESERVED1 = 7~%uint8 DMS_EXPRESSION_RESERVED2 = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSEmotionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSEmotionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSEmotionTypeEnum
    (cl:cons ':value (value msg))
))
