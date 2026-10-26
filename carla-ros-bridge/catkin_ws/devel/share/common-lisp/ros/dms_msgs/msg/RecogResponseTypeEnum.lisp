; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude RecogResponseTypeEnum.msg.html

(cl:defclass <RecogResponseTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RecogResponseTypeEnum (<RecogResponseTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecogResponseTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecogResponseTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<RecogResponseTypeEnum> is deprecated: use dms_msgs-msg:RecogResponseTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RecogResponseTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RecogResponseTypeEnum>)))
    "Constants for message type '<RecogResponseTypeEnum>"
  '((:RESPOND_FAIL . 0)
    (:RESPOND_SUCCESS . 1)
    (:RESERVED . 2)
    (:RESERVED1 . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RecogResponseTypeEnum)))
    "Constants for message type 'RecogResponseTypeEnum"
  '((:RESPOND_FAIL . 0)
    (:RESPOND_SUCCESS . 1)
    (:RESERVED . 2)
    (:RESERVED1 . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecogResponseTypeEnum>) ostream)
  "Serializes a message object of type '<RecogResponseTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecogResponseTypeEnum>) istream)
  "Deserializes a message object of type '<RecogResponseTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecogResponseTypeEnum>)))
  "Returns string type for a message object of type '<RecogResponseTypeEnum>"
  "dms_msgs/RecogResponseTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecogResponseTypeEnum)))
  "Returns string type for a message object of type 'RecogResponseTypeEnum"
  "dms_msgs/RecogResponseTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecogResponseTypeEnum>)))
  "Returns md5sum for a message object of type '<RecogResponseTypeEnum>"
  "2b34c6848b94a5c3d32a1b99a1cd2077")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecogResponseTypeEnum)))
  "Returns md5sum for a message object of type 'RecogResponseTypeEnum"
  "2b34c6848b94a5c3d32a1b99a1cd2077")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecogResponseTypeEnum>)))
  "Returns full string definition for message of type '<RecogResponseTypeEnum>"
  (cl:format cl:nil "uint8 RESPOND_FAIL = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecogResponseTypeEnum)))
  "Returns full string definition for message of type 'RecogResponseTypeEnum"
  (cl:format cl:nil "uint8 RESPOND_FAIL = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecogResponseTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecogResponseTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RecogResponseTypeEnum
    (cl:cons ':value (value msg))
))
