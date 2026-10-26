; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ReferenceLineSegment.msg.html

(cl:defclass <ReferenceLineSegment> (roslisp-msg-protocol:ros-message)
  ((begin_index
    :reader begin_index
    :initarg :begin_index
    :type cl:fixnum
    :initform 0)
   (end_index
    :reader end_index
    :initarg :end_index
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type worldmodel_msgs-msg:LaneConnectDirection
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneConnectDirection))
   (lane_type
    :reader lane_type
    :initarg :lane_type
    :type worldmodel_msgs-msg:LaneType
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneType))
   (is_in_intersection
    :reader is_in_intersection
    :initarg :is_in_intersection
    :type cl:boolean
    :initform cl:nil)
   (is_in_route
    :reader is_in_route
    :initarg :is_in_route
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReferenceLineSegment (<ReferenceLineSegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReferenceLineSegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReferenceLineSegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ReferenceLineSegment> is deprecated: use worldmodel_msgs-msg:ReferenceLineSegment instead.")))

(cl:ensure-generic-function 'begin_index-val :lambda-list '(m))
(cl:defmethod begin_index-val ((m <ReferenceLineSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:begin_index-val is deprecated.  Use worldmodel_msgs-msg:begin_index instead.")
  (begin_index m))

(cl:ensure-generic-function 'end_index-val :lambda-list '(m))
(cl:defmethod end_index-val ((m <ReferenceLineSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:end_index-val is deprecated.  Use worldmodel_msgs-msg:end_index instead.")
  (end_index m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <ReferenceLineSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:direction-val is deprecated.  Use worldmodel_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'lane_type-val :lambda-list '(m))
(cl:defmethod lane_type-val ((m <ReferenceLineSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:lane_type-val is deprecated.  Use worldmodel_msgs-msg:lane_type instead.")
  (lane_type m))

(cl:ensure-generic-function 'is_in_intersection-val :lambda-list '(m))
(cl:defmethod is_in_intersection-val ((m <ReferenceLineSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:is_in_intersection-val is deprecated.  Use worldmodel_msgs-msg:is_in_intersection instead.")
  (is_in_intersection m))

(cl:ensure-generic-function 'is_in_route-val :lambda-list '(m))
(cl:defmethod is_in_route-val ((m <ReferenceLineSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:is_in_route-val is deprecated.  Use worldmodel_msgs-msg:is_in_route instead.")
  (is_in_route m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReferenceLineSegment>) ostream)
  "Serializes a message object of type '<ReferenceLineSegment>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'begin_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'begin_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_index)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_in_intersection) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_in_route) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReferenceLineSegment>) istream)
  "Deserializes a message object of type '<ReferenceLineSegment>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'begin_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'begin_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_index)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_type) istream)
    (cl:setf (cl:slot-value msg 'is_in_intersection) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_in_route) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReferenceLineSegment>)))
  "Returns string type for a message object of type '<ReferenceLineSegment>"
  "worldmodel_msgs/ReferenceLineSegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceLineSegment)))
  "Returns string type for a message object of type 'ReferenceLineSegment"
  "worldmodel_msgs/ReferenceLineSegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReferenceLineSegment>)))
  "Returns md5sum for a message object of type '<ReferenceLineSegment>"
  "3f509e0e69594c073549ebbc315cf1a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReferenceLineSegment)))
  "Returns md5sum for a message object of type 'ReferenceLineSegment"
  "3f509e0e69594c073549ebbc315cf1a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReferenceLineSegment>)))
  "Returns full string definition for message of type '<ReferenceLineSegment>"
  (cl:format cl:nil "uint16 begin_index~%uint16 end_index~%worldmodel_msgs/LaneConnectDirection direction~%worldmodel_msgs/LaneType lane_type~%bool is_in_intersection~%bool is_in_route~%~%================================================================================~%MSG: worldmodel_msgs/LaneConnectDirection~%uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneType~%uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReferenceLineSegment)))
  "Returns full string definition for message of type 'ReferenceLineSegment"
  (cl:format cl:nil "uint16 begin_index~%uint16 end_index~%worldmodel_msgs/LaneConnectDirection direction~%worldmodel_msgs/LaneType lane_type~%bool is_in_intersection~%bool is_in_route~%~%================================================================================~%MSG: worldmodel_msgs/LaneConnectDirection~%uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneType~%uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReferenceLineSegment>))
  (cl:+ 0
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_type))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReferenceLineSegment>))
  "Converts a ROS message object to a list"
  (cl:list 'ReferenceLineSegment
    (cl:cons ':begin_index (begin_index msg))
    (cl:cons ':end_index (end_index msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':lane_type (lane_type msg))
    (cl:cons ':is_in_intersection (is_in_intersection msg))
    (cl:cons ':is_in_route (is_in_route msg))
))
