; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude WayPointType.msg.html

(cl:defclass <WayPointType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WayPointType (<WayPointType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WayPointType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WayPointType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<WayPointType> is deprecated: use worldmodel_msgs-msg:WayPointType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WayPointType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WayPointType>)))
    "Constants for message type '<WayPointType>"
  '((:NORMAL_WAYPOINT . 1)
    (:INTERSECTION_WAYPOINT . 2)
    (:RAMP_WAYPOINT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WayPointType)))
    "Constants for message type 'WayPointType"
  '((:NORMAL_WAYPOINT . 1)
    (:INTERSECTION_WAYPOINT . 2)
    (:RAMP_WAYPOINT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WayPointType>) ostream)
  "Serializes a message object of type '<WayPointType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WayPointType>) istream)
  "Deserializes a message object of type '<WayPointType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WayPointType>)))
  "Returns string type for a message object of type '<WayPointType>"
  "worldmodel_msgs/WayPointType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WayPointType)))
  "Returns string type for a message object of type 'WayPointType"
  "worldmodel_msgs/WayPointType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WayPointType>)))
  "Returns md5sum for a message object of type '<WayPointType>"
  "f8e008c5205dcd4878d78d4df1b7f0fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WayPointType)))
  "Returns md5sum for a message object of type 'WayPointType"
  "f8e008c5205dcd4878d78d4df1b7f0fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WayPointType>)))
  "Returns full string definition for message of type '<WayPointType>"
  (cl:format cl:nil "uint8 NORMAL_WAYPOINT = 1~%uint8 INTERSECTION_WAYPOINT = 2~%uint8 RAMP_WAYPOINT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WayPointType)))
  "Returns full string definition for message of type 'WayPointType"
  (cl:format cl:nil "uint8 NORMAL_WAYPOINT = 1~%uint8 INTERSECTION_WAYPOINT = 2~%uint8 RAMP_WAYPOINT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WayPointType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WayPointType>))
  "Converts a ROS message object to a list"
  (cl:list 'WayPointType
    (cl:cons ':value (value msg))
))
