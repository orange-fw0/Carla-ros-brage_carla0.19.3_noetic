; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude RecogStatusTypeEnum.msg.html

(cl:defclass <RecogStatusTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RecogStatusTypeEnum (<RecogStatusTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecogStatusTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecogStatusTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<RecogStatusTypeEnum> is deprecated: use dms_msgs-msg:RecogStatusTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RecogStatusTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RecogStatusTypeEnum>)))
    "Constants for message type '<RecogStatusTypeEnum>"
  '((:NO_ACTION . 0)
    (:RECOGNIZING . 1)
    (:RECOG_SUCCESS . 2)
    (:RECOG_FAIL . 3)
    (:RESERVED . 4)
    (:RESERVED1 . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RecogStatusTypeEnum)))
    "Constants for message type 'RecogStatusTypeEnum"
  '((:NO_ACTION . 0)
    (:RECOGNIZING . 1)
    (:RECOG_SUCCESS . 2)
    (:RECOG_FAIL . 3)
    (:RESERVED . 4)
    (:RESERVED1 . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecogStatusTypeEnum>) ostream)
  "Serializes a message object of type '<RecogStatusTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecogStatusTypeEnum>) istream)
  "Deserializes a message object of type '<RecogStatusTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecogStatusTypeEnum>)))
  "Returns string type for a message object of type '<RecogStatusTypeEnum>"
  "dms_msgs/RecogStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecogStatusTypeEnum)))
  "Returns string type for a message object of type 'RecogStatusTypeEnum"
  "dms_msgs/RecogStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecogStatusTypeEnum>)))
  "Returns md5sum for a message object of type '<RecogStatusTypeEnum>"
  "ef1e39c4275d80eb9b2f3de6e067ffe3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecogStatusTypeEnum)))
  "Returns md5sum for a message object of type 'RecogStatusTypeEnum"
  "ef1e39c4275d80eb9b2f3de6e067ffe3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecogStatusTypeEnum>)))
  "Returns full string definition for message of type '<RecogStatusTypeEnum>"
  (cl:format cl:nil "uint8 NO_ACTION = 0~%uint8 Recognizing = 1~%uint8 Recog_SUCCESS = 2~%uint8 Recog_FAIL = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecogStatusTypeEnum)))
  "Returns full string definition for message of type 'RecogStatusTypeEnum"
  (cl:format cl:nil "uint8 NO_ACTION = 0~%uint8 Recognizing = 1~%uint8 Recog_SUCCESS = 2~%uint8 Recog_FAIL = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecogStatusTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecogStatusTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RecogStatusTypeEnum
    (cl:cons ':value (value msg))
))
