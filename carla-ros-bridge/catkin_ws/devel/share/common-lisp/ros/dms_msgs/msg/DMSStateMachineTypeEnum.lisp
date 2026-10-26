; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSStateMachineTypeEnum.msg.html

(cl:defclass <DMSStateMachineTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DMSStateMachineTypeEnum (<DMSStateMachineTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSStateMachineTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSStateMachineTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSStateMachineTypeEnum> is deprecated: use dms_msgs-msg:DMSStateMachineTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DMSStateMachineTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSStateMachineTypeEnum>)))
    "Constants for message type '<DMSStateMachineTypeEnum>"
  '((:OFF . 0)
    (:STANDBY . 1)
    (:ACTIVE . 2)
    (:FAILURE . 3)
    (:UNKNOWN . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSStateMachineTypeEnum)))
    "Constants for message type 'DMSStateMachineTypeEnum"
  '((:OFF . 0)
    (:STANDBY . 1)
    (:ACTIVE . 2)
    (:FAILURE . 3)
    (:UNKNOWN . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSStateMachineTypeEnum>) ostream)
  "Serializes a message object of type '<DMSStateMachineTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSStateMachineTypeEnum>) istream)
  "Deserializes a message object of type '<DMSStateMachineTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSStateMachineTypeEnum>)))
  "Returns string type for a message object of type '<DMSStateMachineTypeEnum>"
  "dms_msgs/DMSStateMachineTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSStateMachineTypeEnum)))
  "Returns string type for a message object of type 'DMSStateMachineTypeEnum"
  "dms_msgs/DMSStateMachineTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSStateMachineTypeEnum>)))
  "Returns md5sum for a message object of type '<DMSStateMachineTypeEnum>"
  "adf46f3d8a5ac9c98b9018c3b2fe794b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSStateMachineTypeEnum)))
  "Returns md5sum for a message object of type 'DMSStateMachineTypeEnum"
  "adf46f3d8a5ac9c98b9018c3b2fe794b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSStateMachineTypeEnum>)))
  "Returns full string definition for message of type '<DMSStateMachineTypeEnum>"
  (cl:format cl:nil "uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 ACTIVE = 2~%uint8 FAILURE = 3~%uint8 UNKNOWN = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSStateMachineTypeEnum)))
  "Returns full string definition for message of type 'DMSStateMachineTypeEnum"
  (cl:format cl:nil "uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 ACTIVE = 2~%uint8 FAILURE = 3~%uint8 UNKNOWN = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSStateMachineTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSStateMachineTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSStateMachineTypeEnum
    (cl:cons ':value (value msg))
))
