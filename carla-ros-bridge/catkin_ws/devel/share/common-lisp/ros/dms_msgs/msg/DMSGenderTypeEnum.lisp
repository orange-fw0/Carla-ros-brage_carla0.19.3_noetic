; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSGenderTypeEnum.msg.html

(cl:defclass <DMSGenderTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSGenderTypeEnum (<DMSGenderTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSGenderTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSGenderTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSGenderTypeEnum> is deprecated: use dms_msgs-msg:DMSGenderTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSGenderTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSGenderTypeEnum>)))
    "Constants for message type '<DMSGenderTypeEnum>"
  '((:DMS_GENDER_MALE . 0)
    (:DMS_GENDER_FEMALE . 1)
    (:DMS_GENDER_OTHER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSGenderTypeEnum)))
    "Constants for message type 'DMSGenderTypeEnum"
  '((:DMS_GENDER_MALE . 0)
    (:DMS_GENDER_FEMALE . 1)
    (:DMS_GENDER_OTHER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSGenderTypeEnum>) ostream)
  "Serializes a message object of type '<DMSGenderTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSGenderTypeEnum>) istream)
  "Deserializes a message object of type '<DMSGenderTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSGenderTypeEnum>)))
  "Returns string type for a message object of type '<DMSGenderTypeEnum>"
  "dms_msgs/DMSGenderTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSGenderTypeEnum)))
  "Returns string type for a message object of type 'DMSGenderTypeEnum"
  "dms_msgs/DMSGenderTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSGenderTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSGenderTypeEnum>"
  "6ab982dcb29b1b09ddedc27f71701519")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSGenderTypeEnum)))
  "Returns md5sum for a message object of type 'DMSGenderTypeEnum"
  "6ab982dcb29b1b09ddedc27f71701519")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSGenderTypeEnum>)))
  "Returns full string definition for message of type '<DMSGenderTypeEnum>"
  (cl:format cl:nil "uint8 DMS_GENDER_MALE = 0~%uint8 DMS_GENDER_FEMALE = 1~%uint8 DMS_GENDER_OTHER = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSGenderTypeEnum)))
  "Returns full string definition for message of type 'DMSGenderTypeEnum"
  (cl:format cl:nil "uint8 DMS_GENDER_MALE = 0~%uint8 DMS_GENDER_FEMALE = 1~%uint8 DMS_GENDER_OTHER = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSGenderTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSGenderTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSGenderTypeEnum
    (cl:cons ':value (value msg))
))
