; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude APATrajectoryExtendType.msg.html

(cl:defclass <APATrajectoryExtendType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass APATrajectoryExtendType (<APATrajectoryExtendType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <APATrajectoryExtendType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'APATrajectoryExtendType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<APATrajectoryExtendType> is deprecated: use planning_msgs-msg:APATrajectoryExtendType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <APATrajectoryExtendType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<APATrajectoryExtendType>)))
    "Constants for message type '<APATrajectoryExtendType>"
  '((:UNEXTENDED . 0)
    (:STRAIGHT . 1)
    (:CIRCULAR_CURVE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'APATrajectoryExtendType)))
    "Constants for message type 'APATrajectoryExtendType"
  '((:UNEXTENDED . 0)
    (:STRAIGHT . 1)
    (:CIRCULAR_CURVE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <APATrajectoryExtendType>) ostream)
  "Serializes a message object of type '<APATrajectoryExtendType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <APATrajectoryExtendType>) istream)
  "Deserializes a message object of type '<APATrajectoryExtendType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<APATrajectoryExtendType>)))
  "Returns string type for a message object of type '<APATrajectoryExtendType>"
  "planning_msgs/APATrajectoryExtendType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'APATrajectoryExtendType)))
  "Returns string type for a message object of type 'APATrajectoryExtendType"
  "planning_msgs/APATrajectoryExtendType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<APATrajectoryExtendType>)))
  "Returns md5sum for a message object of type '<APATrajectoryExtendType>"
  "da5e39bceca1b16f58b560b19ca1124b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'APATrajectoryExtendType)))
  "Returns md5sum for a message object of type 'APATrajectoryExtendType"
  "da5e39bceca1b16f58b560b19ca1124b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<APATrajectoryExtendType>)))
  "Returns full string definition for message of type '<APATrajectoryExtendType>"
  (cl:format cl:nil "uint8 UNEXTENDED = 0~%uint8 STRAIGHT = 1~%uint8 CIRCULAR_CURVE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'APATrajectoryExtendType)))
  "Returns full string definition for message of type 'APATrajectoryExtendType"
  (cl:format cl:nil "uint8 UNEXTENDED = 0~%uint8 STRAIGHT = 1~%uint8 CIRCULAR_CURVE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <APATrajectoryExtendType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <APATrajectoryExtendType>))
  "Converts a ROS message object to a list"
  (cl:list 'APATrajectoryExtendType
    (cl:cons ':value (value msg))
))
