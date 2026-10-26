; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSScenarioEnum.msg.html

(cl:defclass <TOSScenarioEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TOSScenarioEnum (<TOSScenarioEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSScenarioEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSScenarioEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSScenarioEnum> is deprecated: use tos_msgs-msg:TOSScenarioEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TOSScenarioEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:value-val is deprecated.  Use tos_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TOSScenarioEnum>)))
    "Constants for message type '<TOSScenarioEnum>"
  '((:LANE_BORROW . 0)
    (:TRAFFIC_LIGHT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TOSScenarioEnum)))
    "Constants for message type 'TOSScenarioEnum"
  '((:LANE_BORROW . 0)
    (:TRAFFIC_LIGHT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSScenarioEnum>) ostream)
  "Serializes a message object of type '<TOSScenarioEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSScenarioEnum>) istream)
  "Deserializes a message object of type '<TOSScenarioEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSScenarioEnum>)))
  "Returns string type for a message object of type '<TOSScenarioEnum>"
  "tos_msgs/TOSScenarioEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSScenarioEnum)))
  "Returns string type for a message object of type 'TOSScenarioEnum"
  "tos_msgs/TOSScenarioEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSScenarioEnum>)))
  "Returns md5sum for a message object of type '<TOSScenarioEnum>"
  "e9f5f35820d7a06349098b3dab035842")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSScenarioEnum)))
  "Returns md5sum for a message object of type 'TOSScenarioEnum"
  "e9f5f35820d7a06349098b3dab035842")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSScenarioEnum>)))
  "Returns full string definition for message of type '<TOSScenarioEnum>"
  (cl:format cl:nil "uint8 LANE_BORROW = 0~%uint8 TRAFFIC_LIGHT = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSScenarioEnum)))
  "Returns full string definition for message of type 'TOSScenarioEnum"
  (cl:format cl:nil "uint8 LANE_BORROW = 0~%uint8 TRAFFIC_LIGHT = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSScenarioEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSScenarioEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSScenarioEnum
    (cl:cons ':value (value msg))
))
