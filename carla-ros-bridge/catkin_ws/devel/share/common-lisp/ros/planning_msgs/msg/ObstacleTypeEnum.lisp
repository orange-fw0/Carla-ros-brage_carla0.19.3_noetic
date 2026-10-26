; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ObstacleTypeEnum.msg.html

(cl:defclass <ObstacleTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObstacleTypeEnum (<ObstacleTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ObstacleTypeEnum> is deprecated: use planning_msgs-msg:ObstacleTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ObstacleTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObstacleTypeEnum>)))
    "Constants for message type '<ObstacleTypeEnum>"
  '((:PHYSICAL . 1)
    (:LOGICAL . 2)
    (:PARKING_SLOT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObstacleTypeEnum)))
    "Constants for message type 'ObstacleTypeEnum"
  '((:PHYSICAL . 1)
    (:LOGICAL . 2)
    (:PARKING_SLOT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleTypeEnum>) ostream)
  "Serializes a message object of type '<ObstacleTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleTypeEnum>) istream)
  "Deserializes a message object of type '<ObstacleTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleTypeEnum>)))
  "Returns string type for a message object of type '<ObstacleTypeEnum>"
  "planning_msgs/ObstacleTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleTypeEnum)))
  "Returns string type for a message object of type 'ObstacleTypeEnum"
  "planning_msgs/ObstacleTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleTypeEnum>)))
  "Returns md5sum for a message object of type '<ObstacleTypeEnum>"
  "1bdb6dd7b672524d997137da2eb6126d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleTypeEnum)))
  "Returns md5sum for a message object of type 'ObstacleTypeEnum"
  "1bdb6dd7b672524d997137da2eb6126d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleTypeEnum>)))
  "Returns full string definition for message of type '<ObstacleTypeEnum>"
  (cl:format cl:nil "uint8 PHYSICAL = 1~%uint8 LOGICAL = 2~%uint8 PARKING_SLOT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleTypeEnum)))
  "Returns full string definition for message of type 'ObstacleTypeEnum"
  (cl:format cl:nil "uint8 PHYSICAL = 1~%uint8 LOGICAL = 2~%uint8 PARKING_SLOT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleTypeEnum
    (cl:cons ':value (value msg))
))
