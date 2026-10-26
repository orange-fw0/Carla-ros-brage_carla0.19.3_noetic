; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSRecvWaringCmdEnumType.msg.html

(cl:defclass <DMSRecvWaringCmdEnumType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSRecvWaringCmdEnumType (<DMSRecvWaringCmdEnumType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSRecvWaringCmdEnumType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSRecvWaringCmdEnumType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSRecvWaringCmdEnumType> is deprecated: use dms_msgs-msg:DMSRecvWaringCmdEnumType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSRecvWaringCmdEnumType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSRecvWaringCmdEnumType>)))
    "Constants for message type '<DMSRecvWaringCmdEnumType>"
  '((:DROWSINESS_WARING_OFF . 1)
    (:DROWSINESS_WARING_ON . 2)
    (:DISTRACTION_WARING_OFF . 4)
    (:DISTRACTION_WARING_ON . 8)
    (:ABNORMAL_BEHAVIOR_WARING_OFF . 16)
    (:ABNORMAL_BEHAVIOR_WARING_ON . 32)
    (:HEALTH_WARING_OFF . 64)
    (:HEALTH_WARING_ON . 128)
    (:RESERVED . 256)
    (:RESERVED1 . 512)
    (:RESERVED2 . 1024))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSRecvWaringCmdEnumType)))
    "Constants for message type 'DMSRecvWaringCmdEnumType"
  '((:DROWSINESS_WARING_OFF . 1)
    (:DROWSINESS_WARING_ON . 2)
    (:DISTRACTION_WARING_OFF . 4)
    (:DISTRACTION_WARING_ON . 8)
    (:ABNORMAL_BEHAVIOR_WARING_OFF . 16)
    (:ABNORMAL_BEHAVIOR_WARING_ON . 32)
    (:HEALTH_WARING_OFF . 64)
    (:HEALTH_WARING_ON . 128)
    (:RESERVED . 256)
    (:RESERVED1 . 512)
    (:RESERVED2 . 1024))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSRecvWaringCmdEnumType>) ostream)
  "Serializes a message object of type '<DMSRecvWaringCmdEnumType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSRecvWaringCmdEnumType>) istream)
  "Deserializes a message object of type '<DMSRecvWaringCmdEnumType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSRecvWaringCmdEnumType>)))
  "Returns string type for a message object of type '<DMSRecvWaringCmdEnumType>"
  "dms_msgs/DMSRecvWaringCmdEnumType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSRecvWaringCmdEnumType)))
  "Returns string type for a message object of type 'DMSRecvWaringCmdEnumType"
  "dms_msgs/DMSRecvWaringCmdEnumType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSRecvWaringCmdEnumType>)))
  "Returns md5sum for a message object of type '<DMSRecvWaringCmdEnumType>"
  "bac8085387035dfd71a6f096a0b1d8ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSRecvWaringCmdEnumType)))
  "Returns md5sum for a message object of type 'DMSRecvWaringCmdEnumType"
  "bac8085387035dfd71a6f096a0b1d8ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSRecvWaringCmdEnumType>)))
  "Returns full string definition for message of type '<DMSRecvWaringCmdEnumType>"
  (cl:format cl:nil "uint16 DROWSINESS_WARING_OFF = 1~%uint16 DROWSINESS_WARING_ON = 2~%uint16 DISTRACTION_WARING_OFF = 4~%uint16 DISTRACTION_WARING_ON = 8~%uint16 ABNORMAL_BEHAVIOR_WARING_OFF = 16~%uint16 ABNORMAL_BEHAVIOR_WARING_ON = 32~%uint16 HEALTH_WARING_OFF = 64~%uint16 HEALTH_WARING_ON = 128~%uint16 RESERVED = 256~%uint16 RESERVED1 = 512~%uint16 RESERVED2 = 1024~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSRecvWaringCmdEnumType)))
  "Returns full string definition for message of type 'DMSRecvWaringCmdEnumType"
  (cl:format cl:nil "uint16 DROWSINESS_WARING_OFF = 1~%uint16 DROWSINESS_WARING_ON = 2~%uint16 DISTRACTION_WARING_OFF = 4~%uint16 DISTRACTION_WARING_ON = 8~%uint16 ABNORMAL_BEHAVIOR_WARING_OFF = 16~%uint16 ABNORMAL_BEHAVIOR_WARING_ON = 32~%uint16 HEALTH_WARING_OFF = 64~%uint16 HEALTH_WARING_ON = 128~%uint16 RESERVED = 256~%uint16 RESERVED1 = 512~%uint16 RESERVED2 = 1024~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSRecvWaringCmdEnumType>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSRecvWaringCmdEnumType>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSRecvWaringCmdEnumType
    (cl:cons ':value (value msg))
))
