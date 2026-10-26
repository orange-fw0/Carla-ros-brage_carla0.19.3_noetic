; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude RoadPriorityType.msg.html

(cl:defclass <RoadPriorityType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadPriorityType (<RoadPriorityType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadPriorityType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadPriorityType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<RoadPriorityType> is deprecated: use worldmodel_msgs-msg:RoadPriorityType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadPriorityType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadPriorityType>)))
    "Constants for message type '<RoadPriorityType>"
  '((:UNKNOWN . 0)
    (:PRIORITY_ROAD . 1)
    (:PRIORITY_ROAD_END . 2)
    (:PRIORITY_AUXILIARY . 4)
    (:PRIORITY_NEXT_INTERSECTION . 8)
    (:STOP . 16)
    (:YIELD . 32)
    (:PRIORITY_OVER_ONGOING . 64)
    (:YIELD_TO_ONCOMING . 128))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadPriorityType)))
    "Constants for message type 'RoadPriorityType"
  '((:UNKNOWN . 0)
    (:PRIORITY_ROAD . 1)
    (:PRIORITY_ROAD_END . 2)
    (:PRIORITY_AUXILIARY . 4)
    (:PRIORITY_NEXT_INTERSECTION . 8)
    (:STOP . 16)
    (:YIELD . 32)
    (:PRIORITY_OVER_ONGOING . 64)
    (:YIELD_TO_ONCOMING . 128))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadPriorityType>) ostream)
  "Serializes a message object of type '<RoadPriorityType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadPriorityType>) istream)
  "Deserializes a message object of type '<RoadPriorityType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadPriorityType>)))
  "Returns string type for a message object of type '<RoadPriorityType>"
  "worldmodel_msgs/RoadPriorityType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadPriorityType)))
  "Returns string type for a message object of type 'RoadPriorityType"
  "worldmodel_msgs/RoadPriorityType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadPriorityType>)))
  "Returns md5sum for a message object of type '<RoadPriorityType>"
  "5535e09f661c77b4688dd8fbe68661fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadPriorityType)))
  "Returns md5sum for a message object of type 'RoadPriorityType"
  "5535e09f661c77b4688dd8fbe68661fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadPriorityType>)))
  "Returns full string definition for message of type '<RoadPriorityType>"
  (cl:format cl:nil "uint16 UNKNOWN = 0~%uint16 PRIORITY_ROAD = 1~%uint16 PRIORITY_ROAD_END = 2~%uint16 PRIORITY_AUXILIARY = 4~%uint16 PRIORITY_NEXT_INTERSECTION = 8~%uint16 STOP = 16~%uint16 YIELD = 32~%uint16 PRIORITY_OVER_ONGOING = 64~%uint16 YIELD_TO_ONCOMING = 128~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadPriorityType)))
  "Returns full string definition for message of type 'RoadPriorityType"
  (cl:format cl:nil "uint16 UNKNOWN = 0~%uint16 PRIORITY_ROAD = 1~%uint16 PRIORITY_ROAD_END = 2~%uint16 PRIORITY_AUXILIARY = 4~%uint16 PRIORITY_NEXT_INTERSECTION = 8~%uint16 STOP = 16~%uint16 YIELD = 32~%uint16 PRIORITY_OVER_ONGOING = 64~%uint16 YIELD_TO_ONCOMING = 128~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadPriorityType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadPriorityType>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadPriorityType
    (cl:cons ':value (value msg))
))
