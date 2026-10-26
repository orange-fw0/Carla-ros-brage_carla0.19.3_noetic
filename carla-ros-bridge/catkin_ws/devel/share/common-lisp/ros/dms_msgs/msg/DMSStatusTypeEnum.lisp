; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSStatusTypeEnum.msg.html

(cl:defclass <DMSStatusTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSStatusTypeEnum (<DMSStatusTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSStatusTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSStatusTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSStatusTypeEnum> is deprecated: use dms_msgs-msg:DMSStatusTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSStatusTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSStatusTypeEnum>)))
    "Constants for message type '<DMSStatusTypeEnum>"
  '((:UNKNOWN . 0)
    (:INITIALIZING . 1)
    (:INTERNAL_FAULT . 2)
    (:EXTERNAL_FAULT . 3)
    (:INVALID_ENVIRONMENT . 4)
    (:AUTHENTICATION_FAIL . 5)
    (:INITIALIZ_OK . 6)
    (:INITIALIZ_FAIL . 7)
    (:RUNNING_OK . 8)
    (:RUNNING_FAIL . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSStatusTypeEnum)))
    "Constants for message type 'DMSStatusTypeEnum"
  '((:UNKNOWN . 0)
    (:INITIALIZING . 1)
    (:INTERNAL_FAULT . 2)
    (:EXTERNAL_FAULT . 3)
    (:INVALID_ENVIRONMENT . 4)
    (:AUTHENTICATION_FAIL . 5)
    (:INITIALIZ_OK . 6)
    (:INITIALIZ_FAIL . 7)
    (:RUNNING_OK . 8)
    (:RUNNING_FAIL . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSStatusTypeEnum>) ostream)
  "Serializes a message object of type '<DMSStatusTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSStatusTypeEnum>) istream)
  "Deserializes a message object of type '<DMSStatusTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSStatusTypeEnum>)))
  "Returns string type for a message object of type '<DMSStatusTypeEnum>"
  "dms_msgs/DMSStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSStatusTypeEnum)))
  "Returns string type for a message object of type 'DMSStatusTypeEnum"
  "dms_msgs/DMSStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSStatusTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSStatusTypeEnum>"
  "5d0a7c0b1ee6e9baf81d765548603d71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSStatusTypeEnum)))
  "Returns md5sum for a message object of type 'DMSStatusTypeEnum"
  "5d0a7c0b1ee6e9baf81d765548603d71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSStatusTypeEnum>)))
  "Returns full string definition for message of type '<DMSStatusTypeEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 INITIALIZING = 1~%uint8 INTERNAL_FAULT = 2~%uint8 EXTERNAL_FAULT = 3~%uint8 INVALID_ENVIRONMENT = 4~%uint8 AUTHENTICATION_FAIL = 5~%uint8 INITIALIZ_OK = 6~%uint8 INITIALIZ_FAIL = 7~%uint8 RUNNING_OK = 8~%uint8 RUNNING_FAIL = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSStatusTypeEnum)))
  "Returns full string definition for message of type 'DMSStatusTypeEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 INITIALIZING = 1~%uint8 INTERNAL_FAULT = 2~%uint8 EXTERNAL_FAULT = 3~%uint8 INVALID_ENVIRONMENT = 4~%uint8 AUTHENTICATION_FAIL = 5~%uint8 INITIALIZ_OK = 6~%uint8 INITIALIZ_FAIL = 7~%uint8 RUNNING_OK = 8~%uint8 RUNNING_FAIL = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSStatusTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSStatusTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSStatusTypeEnum
    (cl:cons ':value (value msg))
))
