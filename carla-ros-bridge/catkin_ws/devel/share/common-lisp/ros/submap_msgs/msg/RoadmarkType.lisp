; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude RoadmarkType.msg.html

(cl:defclass <RoadmarkType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadmarkType (<RoadmarkType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadmarkType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadmarkType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<RoadmarkType> is deprecated: use submap_msgs-msg:RoadmarkType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadmarkType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:value-val is deprecated.  Use submap_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadmarkType>)))
    "Constants for message type '<RoadmarkType>"
  '((:NORMAL . 0)
    (:ARROW . 1)
    (:SPEED_BUMP . 2)
    (:CROSS_WALK . 3)
    (:STOP_LINE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadmarkType)))
    "Constants for message type 'RoadmarkType"
  '((:NORMAL . 0)
    (:ARROW . 1)
    (:SPEED_BUMP . 2)
    (:CROSS_WALK . 3)
    (:STOP_LINE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadmarkType>) ostream)
  "Serializes a message object of type '<RoadmarkType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadmarkType>) istream)
  "Deserializes a message object of type '<RoadmarkType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadmarkType>)))
  "Returns string type for a message object of type '<RoadmarkType>"
  "submap_msgs/RoadmarkType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadmarkType)))
  "Returns string type for a message object of type 'RoadmarkType"
  "submap_msgs/RoadmarkType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadmarkType>)))
  "Returns md5sum for a message object of type '<RoadmarkType>"
  "8ce61d277bb8041d244e2d7c56c02e00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadmarkType)))
  "Returns md5sum for a message object of type 'RoadmarkType"
  "8ce61d277bb8041d244e2d7c56c02e00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadmarkType>)))
  "Returns full string definition for message of type '<RoadmarkType>"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 ARROW = 1~%uint8 SPEED_BUMP = 2~%uint8 CROSS_WALK = 3~%uint8 STOP_LINE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadmarkType)))
  "Returns full string definition for message of type 'RoadmarkType"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 ARROW = 1~%uint8 SPEED_BUMP = 2~%uint8 CROSS_WALK = 3~%uint8 STOP_LINE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadmarkType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadmarkType>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadmarkType
    (cl:cons ':value (value msg))
))
