; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFidStateMachineTypeEnum.msg.html

(cl:defclass <DMSFidStateMachineTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSFidStateMachineTypeEnum (<DMSFidStateMachineTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFidStateMachineTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFidStateMachineTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFidStateMachineTypeEnum> is deprecated: use dms_msgs-msg:DMSFidStateMachineTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSFidStateMachineTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSFidStateMachineTypeEnum>)))
    "Constants for message type '<DMSFidStateMachineTypeEnum>"
  '((:OFF . 0)
    (:PASSIVE . 1)
    (:STANDBY . 2)
    (:REGISTRATION . 3)
    (:RECOGNITION . 4)
    (:DELETE . 5)
    (:FAILURE . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSFidStateMachineTypeEnum)))
    "Constants for message type 'DMSFidStateMachineTypeEnum"
  '((:OFF . 0)
    (:PASSIVE . 1)
    (:STANDBY . 2)
    (:REGISTRATION . 3)
    (:RECOGNITION . 4)
    (:DELETE . 5)
    (:FAILURE . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFidStateMachineTypeEnum>) ostream)
  "Serializes a message object of type '<DMSFidStateMachineTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFidStateMachineTypeEnum>) istream)
  "Deserializes a message object of type '<DMSFidStateMachineTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFidStateMachineTypeEnum>)))
  "Returns string type for a message object of type '<DMSFidStateMachineTypeEnum>"
  "dms_msgs/DMSFidStateMachineTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFidStateMachineTypeEnum)))
  "Returns string type for a message object of type 'DMSFidStateMachineTypeEnum"
  "dms_msgs/DMSFidStateMachineTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFidStateMachineTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSFidStateMachineTypeEnum>"
  "b5dc259366d7a8083430b143340e1de6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFidStateMachineTypeEnum)))
  "Returns md5sum for a message object of type 'DMSFidStateMachineTypeEnum"
  "b5dc259366d7a8083430b143340e1de6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFidStateMachineTypeEnum>)))
  "Returns full string definition for message of type '<DMSFidStateMachineTypeEnum>"
  (cl:format cl:nil "uint8 OFF = 0~%uint8 PASSIVE = 1~%uint8 STANDBY = 2~%uint8 REGISTRATION = 3~%uint8 RECOGNITION = 4~%uint8 DELETE = 5~%uint8 FAILURE = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFidStateMachineTypeEnum)))
  "Returns full string definition for message of type 'DMSFidStateMachineTypeEnum"
  (cl:format cl:nil "uint8 OFF = 0~%uint8 PASSIVE = 1~%uint8 STANDBY = 2~%uint8 REGISTRATION = 3~%uint8 RECOGNITION = 4~%uint8 DELETE = 5~%uint8 FAILURE = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFidStateMachineTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFidStateMachineTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFidStateMachineTypeEnum
    (cl:cons ':value (value msg))
))
