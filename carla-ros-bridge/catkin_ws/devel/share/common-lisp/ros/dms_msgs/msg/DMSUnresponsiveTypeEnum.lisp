; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSUnresponsiveTypeEnum.msg.html

(cl:defclass <DMSUnresponsiveTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSUnresponsiveTypeEnum (<DMSUnresponsiveTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSUnresponsiveTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSUnresponsiveTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSUnresponsiveTypeEnum> is deprecated: use dms_msgs-msg:DMSUnresponsiveTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSUnresponsiveTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSUnresponsiveTypeEnum>)))
    "Constants for message type '<DMSUnresponsiveTypeEnum>"
  '((:NORMAL_DRIVE_STATE . 0)
    (:UNRESPONSIVE_DRIVE_STATE . 1)
    (:UNRESPONSIVE_DRIVE_RESERVERD_STATE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSUnresponsiveTypeEnum)))
    "Constants for message type 'DMSUnresponsiveTypeEnum"
  '((:NORMAL_DRIVE_STATE . 0)
    (:UNRESPONSIVE_DRIVE_STATE . 1)
    (:UNRESPONSIVE_DRIVE_RESERVERD_STATE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSUnresponsiveTypeEnum>) ostream)
  "Serializes a message object of type '<DMSUnresponsiveTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSUnresponsiveTypeEnum>) istream)
  "Deserializes a message object of type '<DMSUnresponsiveTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSUnresponsiveTypeEnum>)))
  "Returns string type for a message object of type '<DMSUnresponsiveTypeEnum>"
  "dms_msgs/DMSUnresponsiveTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSUnresponsiveTypeEnum)))
  "Returns string type for a message object of type 'DMSUnresponsiveTypeEnum"
  "dms_msgs/DMSUnresponsiveTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSUnresponsiveTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSUnresponsiveTypeEnum>"
  "01304b0954a7b5260d16ea88a2beeaa0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSUnresponsiveTypeEnum)))
  "Returns md5sum for a message object of type 'DMSUnresponsiveTypeEnum"
  "01304b0954a7b5260d16ea88a2beeaa0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSUnresponsiveTypeEnum>)))
  "Returns full string definition for message of type '<DMSUnresponsiveTypeEnum>"
  (cl:format cl:nil "uint8 NORMAL_DRIVE_STATE = 0~%uint8 UNRESPONSIVE_DRIVE_STATE = 1~%uint8 UNRESPONSIVE_DRIVE_RESERVERD_STATE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSUnresponsiveTypeEnum)))
  "Returns full string definition for message of type 'DMSUnresponsiveTypeEnum"
  (cl:format cl:nil "uint8 NORMAL_DRIVE_STATE = 0~%uint8 UNRESPONSIVE_DRIVE_STATE = 1~%uint8 UNRESPONSIVE_DRIVE_RESERVERD_STATE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSUnresponsiveTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSUnresponsiveTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSUnresponsiveTypeEnum
    (cl:cons ':value (value msg))
))
