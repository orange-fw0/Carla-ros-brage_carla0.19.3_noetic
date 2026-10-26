; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude RoadPriority.msg.html

(cl:defclass <RoadPriority> (roslisp-msg-protocol:ros-message)
  ((road_priority_type
    :reader road_priority_type
    :initarg :road_priority_type
    :type worldmodel_msgs-msg:RoadPriorityType
    :initform (cl:make-instance 'worldmodel_msgs-msg:RoadPriorityType))
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass RoadPriority (<RoadPriority>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadPriority>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadPriority)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<RoadPriority> is deprecated: use worldmodel_msgs-msg:RoadPriority instead.")))

(cl:ensure-generic-function 'road_priority_type-val :lambda-list '(m))
(cl:defmethod road_priority_type-val ((m <RoadPriority>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:road_priority_type-val is deprecated.  Use worldmodel_msgs-msg:road_priority_type instead.")
  (road_priority_type m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <RoadPriority>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance-val is deprecated.  Use worldmodel_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <RoadPriority>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:length-val is deprecated.  Use worldmodel_msgs-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadPriority>) ostream)
  "Serializes a message object of type '<RoadPriority>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_priority_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadPriority>) istream)
  "Deserializes a message object of type '<RoadPriority>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_priority_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadPriority>)))
  "Returns string type for a message object of type '<RoadPriority>"
  "worldmodel_msgs/RoadPriority")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadPriority)))
  "Returns string type for a message object of type 'RoadPriority"
  "worldmodel_msgs/RoadPriority")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadPriority>)))
  "Returns md5sum for a message object of type '<RoadPriority>"
  "1fdce789557c67fc9d2a05524d43427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadPriority)))
  "Returns md5sum for a message object of type 'RoadPriority"
  "1fdce789557c67fc9d2a05524d43427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadPriority>)))
  "Returns full string definition for message of type '<RoadPriority>"
  (cl:format cl:nil "worldmodel_msgs/RoadPriorityType road_priority_type~%float64 distance~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriorityType~%uint16 UNKNOWN = 0~%uint16 PRIORITY_ROAD = 1~%uint16 PRIORITY_ROAD_END = 2~%uint16 PRIORITY_AUXILIARY = 4~%uint16 PRIORITY_NEXT_INTERSECTION = 8~%uint16 STOP = 16~%uint16 YIELD = 32~%uint16 PRIORITY_OVER_ONGOING = 64~%uint16 YIELD_TO_ONCOMING = 128~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadPriority)))
  "Returns full string definition for message of type 'RoadPriority"
  (cl:format cl:nil "worldmodel_msgs/RoadPriorityType road_priority_type~%float64 distance~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriorityType~%uint16 UNKNOWN = 0~%uint16 PRIORITY_ROAD = 1~%uint16 PRIORITY_ROAD_END = 2~%uint16 PRIORITY_AUXILIARY = 4~%uint16 PRIORITY_NEXT_INTERSECTION = 8~%uint16 STOP = 16~%uint16 YIELD = 32~%uint16 PRIORITY_OVER_ONGOING = 64~%uint16 YIELD_TO_ONCOMING = 128~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadPriority>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_priority_type))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadPriority>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadPriority
    (cl:cons ':road_priority_type (road_priority_type msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':length (length msg))
))
