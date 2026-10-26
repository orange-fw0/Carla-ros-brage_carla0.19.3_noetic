; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude L2DMSFunctionLimitedTypeEnum.msg.html

(cl:defclass <L2DMSFunctionLimitedTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass L2DMSFunctionLimitedTypeEnum (<L2DMSFunctionLimitedTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <L2DMSFunctionLimitedTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'L2DMSFunctionLimitedTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<L2DMSFunctionLimitedTypeEnum> is deprecated: use dms_msgs-msg:L2DMSFunctionLimitedTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <L2DMSFunctionLimitedTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<L2DMSFunctionLimitedTypeEnum>)))
    "Constants for message type '<L2DMSFunctionLimitedTypeEnum>"
  '((:DMS_NORMAL_FUNCTION_STATE . 0)
    (:DMS_LIMITED_FUNCTION_STATE . 1)
    (:DMS_FUNCTION_LIMIT_RESERVERD_STATE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'L2DMSFunctionLimitedTypeEnum)))
    "Constants for message type 'L2DMSFunctionLimitedTypeEnum"
  '((:DMS_NORMAL_FUNCTION_STATE . 0)
    (:DMS_LIMITED_FUNCTION_STATE . 1)
    (:DMS_FUNCTION_LIMIT_RESERVERD_STATE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <L2DMSFunctionLimitedTypeEnum>) ostream)
  "Serializes a message object of type '<L2DMSFunctionLimitedTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <L2DMSFunctionLimitedTypeEnum>) istream)
  "Deserializes a message object of type '<L2DMSFunctionLimitedTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<L2DMSFunctionLimitedTypeEnum>)))
  "Returns string type for a message object of type '<L2DMSFunctionLimitedTypeEnum>"
  "dms_msgs/L2DMSFunctionLimitedTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'L2DMSFunctionLimitedTypeEnum)))
  "Returns string type for a message object of type 'L2DMSFunctionLimitedTypeEnum"
  "dms_msgs/L2DMSFunctionLimitedTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<L2DMSFunctionLimitedTypeEnum>)))
  "Returns md5sum for a message object of type '<L2DMSFunctionLimitedTypeEnum>"
  "0aee695f20be5e0034b84bc87bcea8ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'L2DMSFunctionLimitedTypeEnum)))
  "Returns md5sum for a message object of type 'L2DMSFunctionLimitedTypeEnum"
  "0aee695f20be5e0034b84bc87bcea8ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<L2DMSFunctionLimitedTypeEnum>)))
  "Returns full string definition for message of type '<L2DMSFunctionLimitedTypeEnum>"
  (cl:format cl:nil "uint8 DMS_NORMAL_FUNCTION_STATE = 0~%uint8 DMS_LIMITED_FUNCTION_STATE = 1~%uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'L2DMSFunctionLimitedTypeEnum)))
  "Returns full string definition for message of type 'L2DMSFunctionLimitedTypeEnum"
  (cl:format cl:nil "uint8 DMS_NORMAL_FUNCTION_STATE = 0~%uint8 DMS_LIMITED_FUNCTION_STATE = 1~%uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <L2DMSFunctionLimitedTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <L2DMSFunctionLimitedTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'L2DMSFunctionLimitedTypeEnum
    (cl:cons ':value (value msg))
))
