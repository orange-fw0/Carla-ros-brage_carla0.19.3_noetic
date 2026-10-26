; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude FailureReasonEnum.msg.html

(cl:defclass <FailureReasonEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FailureReasonEnum (<FailureReasonEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FailureReasonEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FailureReasonEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<FailureReasonEnum> is deprecated: use planning_msgs-msg:FailureReasonEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FailureReasonEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FailureReasonEnum>)))
    "Constants for message type '<FailureReasonEnum>"
  '((:INFEASIBLE . 1)
    (:TIMEOUT . 2)
    (:EXCEPTION . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FailureReasonEnum)))
    "Constants for message type 'FailureReasonEnum"
  '((:INFEASIBLE . 1)
    (:TIMEOUT . 2)
    (:EXCEPTION . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FailureReasonEnum>) ostream)
  "Serializes a message object of type '<FailureReasonEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FailureReasonEnum>) istream)
  "Deserializes a message object of type '<FailureReasonEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FailureReasonEnum>)))
  "Returns string type for a message object of type '<FailureReasonEnum>"
  "planning_msgs/FailureReasonEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FailureReasonEnum)))
  "Returns string type for a message object of type 'FailureReasonEnum"
  "planning_msgs/FailureReasonEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FailureReasonEnum>)))
  "Returns md5sum for a message object of type '<FailureReasonEnum>"
  "247784f4eebee5d0838b00570e9c09a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FailureReasonEnum)))
  "Returns md5sum for a message object of type 'FailureReasonEnum"
  "247784f4eebee5d0838b00570e9c09a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FailureReasonEnum>)))
  "Returns full string definition for message of type '<FailureReasonEnum>"
  (cl:format cl:nil "uint8 INFEASIBLE = 1~%uint8 TIMEOUT = 2~%uint8 EXCEPTION = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FailureReasonEnum)))
  "Returns full string definition for message of type 'FailureReasonEnum"
  (cl:format cl:nil "uint8 INFEASIBLE = 1~%uint8 TIMEOUT = 2~%uint8 EXCEPTION = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FailureReasonEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FailureReasonEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'FailureReasonEnum
    (cl:cons ':value (value msg))
))
