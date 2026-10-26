; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FusionObstaclePointType.msg.html

(cl:defclass <FusionObstaclePointType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FusionObstaclePointType (<FusionObstaclePointType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionObstaclePointType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionObstaclePointType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FusionObstaclePointType> is deprecated: use perception_interface_msgs-msg:FusionObstaclePointType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FusionObstaclePointType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FusionObstaclePointType>)))
    "Constants for message type '<FusionObstaclePointType>"
  '((:POINT_TYPE_UNKNOWN . 0)
    (:POINT_TYPE_SCATTER . 1)
    (:POINT_TYPE_POLYLINE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FusionObstaclePointType)))
    "Constants for message type 'FusionObstaclePointType"
  '((:POINT_TYPE_UNKNOWN . 0)
    (:POINT_TYPE_SCATTER . 1)
    (:POINT_TYPE_POLYLINE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionObstaclePointType>) ostream)
  "Serializes a message object of type '<FusionObstaclePointType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionObstaclePointType>) istream)
  "Deserializes a message object of type '<FusionObstaclePointType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionObstaclePointType>)))
  "Returns string type for a message object of type '<FusionObstaclePointType>"
  "perception_interface_msgs/FusionObstaclePointType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionObstaclePointType)))
  "Returns string type for a message object of type 'FusionObstaclePointType"
  "perception_interface_msgs/FusionObstaclePointType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionObstaclePointType>)))
  "Returns md5sum for a message object of type '<FusionObstaclePointType>"
  "3b80751c1a5131c072335da95bd257b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionObstaclePointType)))
  "Returns md5sum for a message object of type 'FusionObstaclePointType"
  "3b80751c1a5131c072335da95bd257b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionObstaclePointType>)))
  "Returns full string definition for message of type '<FusionObstaclePointType>"
  (cl:format cl:nil "uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_SCATTER = 1~%uint8 POINT_TYPE_POLYLINE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionObstaclePointType)))
  "Returns full string definition for message of type 'FusionObstaclePointType"
  (cl:format cl:nil "uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_SCATTER = 1~%uint8 POINT_TYPE_POLYLINE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionObstaclePointType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionObstaclePointType>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionObstaclePointType
    (cl:cons ':value (value msg))
))
