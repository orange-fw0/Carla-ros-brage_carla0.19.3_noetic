; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSDistractionTypeEnum.msg.html

(cl:defclass <DMSDistractionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSDistractionTypeEnum (<DMSDistractionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSDistractionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSDistractionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSDistractionTypeEnum> is deprecated: use dms_msgs-msg:DMSDistractionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSDistractionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSDistractionTypeEnum>)))
    "Constants for message type '<DMSDistractionTypeEnum>"
  '((:LONG_TERM_DISTRACTION . 0)
    (:SHORT_TERM_DISTRACTION . 1)
    (:HEADPOSE_ABNORMAL_DISTRACTION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSDistractionTypeEnum)))
    "Constants for message type 'DMSDistractionTypeEnum"
  '((:LONG_TERM_DISTRACTION . 0)
    (:SHORT_TERM_DISTRACTION . 1)
    (:HEADPOSE_ABNORMAL_DISTRACTION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSDistractionTypeEnum>) ostream)
  "Serializes a message object of type '<DMSDistractionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSDistractionTypeEnum>) istream)
  "Deserializes a message object of type '<DMSDistractionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSDistractionTypeEnum>)))
  "Returns string type for a message object of type '<DMSDistractionTypeEnum>"
  "dms_msgs/DMSDistractionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSDistractionTypeEnum)))
  "Returns string type for a message object of type 'DMSDistractionTypeEnum"
  "dms_msgs/DMSDistractionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSDistractionTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSDistractionTypeEnum>"
  "48bb7f05d0f14e5c6767335d849baf64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSDistractionTypeEnum)))
  "Returns md5sum for a message object of type 'DMSDistractionTypeEnum"
  "48bb7f05d0f14e5c6767335d849baf64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSDistractionTypeEnum>)))
  "Returns full string definition for message of type '<DMSDistractionTypeEnum>"
  (cl:format cl:nil "uint8 LONG_TERM_DISTRACTION = 0~%uint8 SHORT_TERM_DISTRACTION = 1~%uint8 HEADPOSE_ABNORMAL_DISTRACTION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSDistractionTypeEnum)))
  "Returns full string definition for message of type 'DMSDistractionTypeEnum"
  (cl:format cl:nil "uint8 LONG_TERM_DISTRACTION = 0~%uint8 SHORT_TERM_DISTRACTION = 1~%uint8 HEADPOSE_ABNORMAL_DISTRACTION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSDistractionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSDistractionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSDistractionTypeEnum
    (cl:cons ':value (value msg))
))
