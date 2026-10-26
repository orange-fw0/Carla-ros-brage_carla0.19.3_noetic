; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ContiRadarExistenceProbabilityType.msg.html

(cl:defclass <ContiRadarExistenceProbabilityType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ContiRadarExistenceProbabilityType (<ContiRadarExistenceProbabilityType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContiRadarExistenceProbabilityType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContiRadarExistenceProbabilityType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ContiRadarExistenceProbabilityType> is deprecated: use perception_interface_msgs-msg:ContiRadarExistenceProbabilityType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ContiRadarExistenceProbabilityType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ContiRadarExistenceProbabilityType>)))
    "Constants for message type '<ContiRadarExistenceProbabilityType>"
  '((:INVALID . 0)
    (:PROBABILITY_25 . 1)
    (:PROBABILITY_50 . 2)
    (:PROBABILITY_75 . 3)
    (:PROBABILITY_90 . 4)
    (:PROBABILITY_99 . 5)
    (:PROBABILITY_99_9 . 6)
    (:PROBABILITY_100 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ContiRadarExistenceProbabilityType)))
    "Constants for message type 'ContiRadarExistenceProbabilityType"
  '((:INVALID . 0)
    (:PROBABILITY_25 . 1)
    (:PROBABILITY_50 . 2)
    (:PROBABILITY_75 . 3)
    (:PROBABILITY_90 . 4)
    (:PROBABILITY_99 . 5)
    (:PROBABILITY_99_9 . 6)
    (:PROBABILITY_100 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContiRadarExistenceProbabilityType>) ostream)
  "Serializes a message object of type '<ContiRadarExistenceProbabilityType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContiRadarExistenceProbabilityType>) istream)
  "Deserializes a message object of type '<ContiRadarExistenceProbabilityType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContiRadarExistenceProbabilityType>)))
  "Returns string type for a message object of type '<ContiRadarExistenceProbabilityType>"
  "perception_interface_msgs/ContiRadarExistenceProbabilityType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContiRadarExistenceProbabilityType)))
  "Returns string type for a message object of type 'ContiRadarExistenceProbabilityType"
  "perception_interface_msgs/ContiRadarExistenceProbabilityType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContiRadarExistenceProbabilityType>)))
  "Returns md5sum for a message object of type '<ContiRadarExistenceProbabilityType>"
  "b3c8877c39dff786a917bb770c546b6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContiRadarExistenceProbabilityType)))
  "Returns md5sum for a message object of type 'ContiRadarExistenceProbabilityType"
  "b3c8877c39dff786a917bb770c546b6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContiRadarExistenceProbabilityType>)))
  "Returns full string definition for message of type '<ContiRadarExistenceProbabilityType>"
  (cl:format cl:nil "uint8 INVALID = 0~%uint8 PROBABILITY_25 = 1~%uint8 PROBABILITY_50 = 2~%uint8 PROBABILITY_75 = 3~%uint8 PROBABILITY_90 = 4~%uint8 PROBABILITY_99 = 5~%uint8 PROBABILITY_99_9 = 6~%uint8 PROBABILITY_100 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContiRadarExistenceProbabilityType)))
  "Returns full string definition for message of type 'ContiRadarExistenceProbabilityType"
  (cl:format cl:nil "uint8 INVALID = 0~%uint8 PROBABILITY_25 = 1~%uint8 PROBABILITY_50 = 2~%uint8 PROBABILITY_75 = 3~%uint8 PROBABILITY_90 = 4~%uint8 PROBABILITY_99 = 5~%uint8 PROBABILITY_99_9 = 6~%uint8 PROBABILITY_100 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContiRadarExistenceProbabilityType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContiRadarExistenceProbabilityType>))
  "Converts a ROS message object to a list"
  (cl:list 'ContiRadarExistenceProbabilityType
    (cl:cons ':value (value msg))
))
