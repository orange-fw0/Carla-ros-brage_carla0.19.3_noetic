; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficBarrierUsefulEnum.msg.html

(cl:defclass <TrafficBarrierUsefulEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficBarrierUsefulEnum (<TrafficBarrierUsefulEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficBarrierUsefulEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficBarrierUsefulEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficBarrierUsefulEnum> is deprecated: use perception_interface_msgs-msg:TrafficBarrierUsefulEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficBarrierUsefulEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficBarrierUsefulEnum>)))
    "Constants for message type '<TrafficBarrierUsefulEnum>"
  '((:TRAFFIC_BARRIER_UNUSEFUL . 0)
    (:TRAFFIC_BARRIER_USEFUL . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficBarrierUsefulEnum)))
    "Constants for message type 'TrafficBarrierUsefulEnum"
  '((:TRAFFIC_BARRIER_UNUSEFUL . 0)
    (:TRAFFIC_BARRIER_USEFUL . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficBarrierUsefulEnum>) ostream)
  "Serializes a message object of type '<TrafficBarrierUsefulEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficBarrierUsefulEnum>) istream)
  "Deserializes a message object of type '<TrafficBarrierUsefulEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficBarrierUsefulEnum>)))
  "Returns string type for a message object of type '<TrafficBarrierUsefulEnum>"
  "perception_interface_msgs/TrafficBarrierUsefulEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficBarrierUsefulEnum)))
  "Returns string type for a message object of type 'TrafficBarrierUsefulEnum"
  "perception_interface_msgs/TrafficBarrierUsefulEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficBarrierUsefulEnum>)))
  "Returns md5sum for a message object of type '<TrafficBarrierUsefulEnum>"
  "d084c76485f8908ea5e6f58e7f2b0434")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficBarrierUsefulEnum)))
  "Returns md5sum for a message object of type 'TrafficBarrierUsefulEnum"
  "d084c76485f8908ea5e6f58e7f2b0434")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficBarrierUsefulEnum>)))
  "Returns full string definition for message of type '<TrafficBarrierUsefulEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_BARRIER_UNUSEFUL = 0~%uint8 TRAFFIC_BARRIER_USEFUL = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficBarrierUsefulEnum)))
  "Returns full string definition for message of type 'TrafficBarrierUsefulEnum"
  (cl:format cl:nil "uint8 TRAFFIC_BARRIER_UNUSEFUL = 0~%uint8 TRAFFIC_BARRIER_USEFUL = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficBarrierUsefulEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficBarrierUsefulEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficBarrierUsefulEnum
    (cl:cons ':value (value msg))
))
