; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSRecvCtrlCmdEnumType.msg.html

(cl:defclass <DMSRecvCtrlCmdEnumType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSRecvCtrlCmdEnumType (<DMSRecvCtrlCmdEnumType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSRecvCtrlCmdEnumType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSRecvCtrlCmdEnumType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSRecvCtrlCmdEnumType> is deprecated: use dms_msgs-msg:DMSRecvCtrlCmdEnumType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSRecvCtrlCmdEnumType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSRecvCtrlCmdEnumType>)))
    "Constants for message type '<DMSRecvCtrlCmdEnumType>"
  '((:DMS_DISTRACTION_RESET . 1)
    (:DMS_DISTRACTION_PAUSE . 2)
    (:DMS_DISTRACTION_NORMAL_SENSITIVITY . 4)
    (:DMS_DISTRACTION_LOW_SENSITIVITY . 5)
    (:DMS_DISTRACTION_HIGH_SENSITIVITY . 6)
    (:DMS_DISTRACTION_RESERVED . 7)
    (:DMS_DISTRACTION_RESERVED1 . 8)
    (:DMS_DROWSY_RESET . 20)
    (:DMS_DROWSY_PAUSE . 21)
    (:DMS_DROWSY_NORMAL_SENSITIVITY . 22)
    (:DMS_DROWSY_LOW_SENSITIVITY . 23)
    (:DMS_DROWSY_HIGH_SENSITIVITY . 24)
    (:DMS_DROWSY_RESERVED . 25)
    (:DMS_DROWSY_RESERVED1 . 26))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSRecvCtrlCmdEnumType)))
    "Constants for message type 'DMSRecvCtrlCmdEnumType"
  '((:DMS_DISTRACTION_RESET . 1)
    (:DMS_DISTRACTION_PAUSE . 2)
    (:DMS_DISTRACTION_NORMAL_SENSITIVITY . 4)
    (:DMS_DISTRACTION_LOW_SENSITIVITY . 5)
    (:DMS_DISTRACTION_HIGH_SENSITIVITY . 6)
    (:DMS_DISTRACTION_RESERVED . 7)
    (:DMS_DISTRACTION_RESERVED1 . 8)
    (:DMS_DROWSY_RESET . 20)
    (:DMS_DROWSY_PAUSE . 21)
    (:DMS_DROWSY_NORMAL_SENSITIVITY . 22)
    (:DMS_DROWSY_LOW_SENSITIVITY . 23)
    (:DMS_DROWSY_HIGH_SENSITIVITY . 24)
    (:DMS_DROWSY_RESERVED . 25)
    (:DMS_DROWSY_RESERVED1 . 26))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSRecvCtrlCmdEnumType>) ostream)
  "Serializes a message object of type '<DMSRecvCtrlCmdEnumType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSRecvCtrlCmdEnumType>) istream)
  "Deserializes a message object of type '<DMSRecvCtrlCmdEnumType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSRecvCtrlCmdEnumType>)))
  "Returns string type for a message object of type '<DMSRecvCtrlCmdEnumType>"
  "dms_msgs/DMSRecvCtrlCmdEnumType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSRecvCtrlCmdEnumType)))
  "Returns string type for a message object of type 'DMSRecvCtrlCmdEnumType"
  "dms_msgs/DMSRecvCtrlCmdEnumType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSRecvCtrlCmdEnumType>)))
  "Returns md5sum for a message object of type '<DMSRecvCtrlCmdEnumType>"
  "372d237580a62eb1d13f8c0bdb848dc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSRecvCtrlCmdEnumType)))
  "Returns md5sum for a message object of type 'DMSRecvCtrlCmdEnumType"
  "372d237580a62eb1d13f8c0bdb848dc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSRecvCtrlCmdEnumType>)))
  "Returns full string definition for message of type '<DMSRecvCtrlCmdEnumType>"
  (cl:format cl:nil "uint8 DMS_DISTRACTION_RESET = 1~%uint8 DMS_DISTRACTION_PAUSE = 2~%uint8 DMS_DISTRACTION_NORMAL_SENSITIVITY = 4~%uint8 DMS_DISTRACTION_LOW_SENSITIVITY = 5~%uint8 DMS_DISTRACTION_HIGH_SENSITIVITY = 6~%uint8 DMS_DISTRACTION_RESERVED = 7~%uint8 DMS_DISTRACTION_RESERVED1 = 8~%uint8 DMS_DROWSY_RESET = 20~%uint8 DMS_DROWSY_PAUSE = 21~%uint8 DMS_DROWSY_NORMAL_SENSITIVITY = 22~%uint8 DMS_DROWSY_LOW_SENSITIVITY = 23~%uint8 DMS_DROWSY_HIGH_SENSITIVITY = 24~%uint8 DMS_DROWSY_RESERVED = 25~%uint8 DMS_DROWSY_RESERVED1 = 26~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSRecvCtrlCmdEnumType)))
  "Returns full string definition for message of type 'DMSRecvCtrlCmdEnumType"
  (cl:format cl:nil "uint8 DMS_DISTRACTION_RESET = 1~%uint8 DMS_DISTRACTION_PAUSE = 2~%uint8 DMS_DISTRACTION_NORMAL_SENSITIVITY = 4~%uint8 DMS_DISTRACTION_LOW_SENSITIVITY = 5~%uint8 DMS_DISTRACTION_HIGH_SENSITIVITY = 6~%uint8 DMS_DISTRACTION_RESERVED = 7~%uint8 DMS_DISTRACTION_RESERVED1 = 8~%uint8 DMS_DROWSY_RESET = 20~%uint8 DMS_DROWSY_PAUSE = 21~%uint8 DMS_DROWSY_NORMAL_SENSITIVITY = 22~%uint8 DMS_DROWSY_LOW_SENSITIVITY = 23~%uint8 DMS_DROWSY_HIGH_SENSITIVITY = 24~%uint8 DMS_DROWSY_RESERVED = 25~%uint8 DMS_DROWSY_RESERVED1 = 26~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSRecvCtrlCmdEnumType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSRecvCtrlCmdEnumType>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSRecvCtrlCmdEnumType
    (cl:cons ':value (value msg))
))
