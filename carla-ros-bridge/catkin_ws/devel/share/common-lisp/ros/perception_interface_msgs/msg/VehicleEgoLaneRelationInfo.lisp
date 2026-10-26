; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleEgoLaneRelationInfo.msg.html

(cl:defclass <VehicleEgoLaneRelationInfo> (roslisp-msg-protocol:ros-message)
  ((ego_lane_overlap_score
    :reader ego_lane_overlap_score
    :initarg :ego_lane_overlap_score
    :type cl:float
    :initform 0.0)
   (ego_lane_no_overlap_score
    :reader ego_lane_no_overlap_score
    :initarg :ego_lane_no_overlap_score
    :type cl:float
    :initform 0.0)
   (ego_lane_relation
    :reader ego_lane_relation
    :initarg :ego_lane_relation
    :type perception_interface_msgs-msg:VehicleEgoLaneRelationEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleEgoLaneRelationEnum)))
)

(cl:defclass VehicleEgoLaneRelationInfo (<VehicleEgoLaneRelationInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleEgoLaneRelationInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleEgoLaneRelationInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleEgoLaneRelationInfo> is deprecated: use perception_interface_msgs-msg:VehicleEgoLaneRelationInfo instead.")))

(cl:ensure-generic-function 'ego_lane_overlap_score-val :lambda-list '(m))
(cl:defmethod ego_lane_overlap_score-val ((m <VehicleEgoLaneRelationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:ego_lane_overlap_score-val is deprecated.  Use perception_interface_msgs-msg:ego_lane_overlap_score instead.")
  (ego_lane_overlap_score m))

(cl:ensure-generic-function 'ego_lane_no_overlap_score-val :lambda-list '(m))
(cl:defmethod ego_lane_no_overlap_score-val ((m <VehicleEgoLaneRelationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:ego_lane_no_overlap_score-val is deprecated.  Use perception_interface_msgs-msg:ego_lane_no_overlap_score instead.")
  (ego_lane_no_overlap_score m))

(cl:ensure-generic-function 'ego_lane_relation-val :lambda-list '(m))
(cl:defmethod ego_lane_relation-val ((m <VehicleEgoLaneRelationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:ego_lane_relation-val is deprecated.  Use perception_interface_msgs-msg:ego_lane_relation instead.")
  (ego_lane_relation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleEgoLaneRelationInfo>) ostream)
  "Serializes a message object of type '<VehicleEgoLaneRelationInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ego_lane_overlap_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ego_lane_no_overlap_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ego_lane_relation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleEgoLaneRelationInfo>) istream)
  "Deserializes a message object of type '<VehicleEgoLaneRelationInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_lane_overlap_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_lane_no_overlap_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ego_lane_relation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleEgoLaneRelationInfo>)))
  "Returns string type for a message object of type '<VehicleEgoLaneRelationInfo>"
  "perception_interface_msgs/VehicleEgoLaneRelationInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleEgoLaneRelationInfo)))
  "Returns string type for a message object of type 'VehicleEgoLaneRelationInfo"
  "perception_interface_msgs/VehicleEgoLaneRelationInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleEgoLaneRelationInfo>)))
  "Returns md5sum for a message object of type '<VehicleEgoLaneRelationInfo>"
  "1f395e671d62e5b2052d6c52364fed8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleEgoLaneRelationInfo)))
  "Returns md5sum for a message object of type 'VehicleEgoLaneRelationInfo"
  "1f395e671d62e5b2052d6c52364fed8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleEgoLaneRelationInfo>)))
  "Returns full string definition for message of type '<VehicleEgoLaneRelationInfo>"
  (cl:format cl:nil "float32 ego_lane_overlap_score~%float32 ego_lane_no_overlap_score~%perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum~%uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0~%uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1~%uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2~%uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleEgoLaneRelationInfo)))
  "Returns full string definition for message of type 'VehicleEgoLaneRelationInfo"
  (cl:format cl:nil "float32 ego_lane_overlap_score~%float32 ego_lane_no_overlap_score~%perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum~%uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0~%uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1~%uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2~%uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleEgoLaneRelationInfo>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ego_lane_relation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleEgoLaneRelationInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleEgoLaneRelationInfo
    (cl:cons ':ego_lane_overlap_score (ego_lane_overlap_score msg))
    (cl:cons ':ego_lane_no_overlap_score (ego_lane_no_overlap_score msg))
    (cl:cons ':ego_lane_relation (ego_lane_relation msg))
))
