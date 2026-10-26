; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude PerceptionFusionObjectData.msg.html

(cl:defclass <PerceptionFusionObjectData> (roslisp-msg-protocol:ros-message)
  ((track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (type_info
    :reader type_info
    :initarg :type_info
    :type perception_interface_msgs-msg:ObjectTypeInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:ObjectTypeInfo))
   (barrier_state_info
    :reader barrier_state_info
    :initarg :barrier_state_info
    :type perception_interface_msgs-msg:BarrierStateInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:BarrierStateInfo))
   (is_static
    :reader is_static
    :initarg :is_static
    :type cl:boolean
    :initform cl:nil)
   (static_confidence
    :reader static_confidence
    :initarg :static_confidence
    :type cl:float
    :initform 0.0)
   (vehicle_state_info
    :reader vehicle_state_info
    :initarg :vehicle_state_info
    :type perception_interface_msgs-msg:VehicleStateInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleStateInfo))
   (shape
    :reader shape
    :initarg :shape
    :type perception_interface_msgs-msg:Shape3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Shape3d))
   (position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (velocity
    :reader velocity
    :initarg :velocity
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (heading_yaw
    :reader heading_yaw
    :initarg :heading_yaw
    :type cl:float
    :initform 0.0)
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:float
    :initform 0.0)
   (relative_position
    :reader relative_position
    :initarg :relative_position
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (relative_velocity
    :reader relative_velocity
    :initarg :relative_velocity
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (relative_acceleration
    :reader relative_acceleration
    :initarg :relative_acceleration
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (relative_heading_yaw
    :reader relative_heading_yaw
    :initarg :relative_heading_yaw
    :type cl:float
    :initform 0.0)
   (relative_angular_velocity
    :reader relative_angular_velocity
    :initarg :relative_angular_velocity
    :type cl:float
    :initform 0.0)
   (velocity_relative_to_ground
    :reader velocity_relative_to_ground
    :initarg :velocity_relative_to_ground
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (acceleration_relative_to_ground
    :reader acceleration_relative_to_ground
    :initarg :acceleration_relative_to_ground
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (crash_risk_ttc
    :reader crash_risk_ttc
    :initarg :crash_risk_ttc
    :type cl:float
    :initform 0.0)
   (polygon_bottom
    :reader polygon_bottom
    :initarg :polygon_bottom
    :type perception_interface_msgs-msg:Polygon3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Polygon3f))
   (polygon_top
    :reader polygon_top
    :initarg :polygon_top
    :type perception_interface_msgs-msg:Polygon3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Polygon3f))
   (available
    :reader available
    :initarg :available
    :type cl:boolean
    :initform cl:nil)
   (object_type
    :reader object_type
    :initarg :object_type
    :type perception_interface_msgs-msg:PerceptionObjectTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:PerceptionObjectTypeEnum))
   (scene_type
    :reader scene_type
    :initarg :scene_type
    :type perception_interface_msgs-msg:PerceptionSceneTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:PerceptionSceneTypeEnum))
   (scene_confidence
    :reader scene_confidence
    :initarg :scene_confidence
    :type cl:float
    :initform 0.0)
   (source_sensor
    :reader source_sensor
    :initarg :source_sensor
    :type cl:string
    :initform "")
   (source_timestamp
    :reader source_timestamp
    :initarg :source_timestamp
    :type cl:float
    :initform 0.0)
   (visibility
    :reader visibility
    :initarg :visibility
    :type cl:float
    :initform 0.0)
   (extra_json
    :reader extra_json
    :initarg :extra_json
    :type cl:string
    :initform ""))
)

(cl:defclass PerceptionFusionObjectData (<PerceptionFusionObjectData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerceptionFusionObjectData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerceptionFusionObjectData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<PerceptionFusionObjectData> is deprecated: use perception_interface_msgs-msg:PerceptionFusionObjectData instead.")))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:track_id-val is deprecated.  Use perception_interface_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'type_info-val :lambda-list '(m))
(cl:defmethod type_info-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type_info-val is deprecated.  Use perception_interface_msgs-msg:type_info instead.")
  (type_info m))

(cl:ensure-generic-function 'barrier_state_info-val :lambda-list '(m))
(cl:defmethod barrier_state_info-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:barrier_state_info-val is deprecated.  Use perception_interface_msgs-msg:barrier_state_info instead.")
  (barrier_state_info m))

(cl:ensure-generic-function 'is_static-val :lambda-list '(m))
(cl:defmethod is_static-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_static-val is deprecated.  Use perception_interface_msgs-msg:is_static instead.")
  (is_static m))

(cl:ensure-generic-function 'static_confidence-val :lambda-list '(m))
(cl:defmethod static_confidence-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:static_confidence-val is deprecated.  Use perception_interface_msgs-msg:static_confidence instead.")
  (static_confidence m))

(cl:ensure-generic-function 'vehicle_state_info-val :lambda-list '(m))
(cl:defmethod vehicle_state_info-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:vehicle_state_info-val is deprecated.  Use perception_interface_msgs-msg:vehicle_state_info instead.")
  (vehicle_state_info m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:shape-val is deprecated.  Use perception_interface_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:position-val is deprecated.  Use perception_interface_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:velocity-val is deprecated.  Use perception_interface_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:acceleration-val is deprecated.  Use perception_interface_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'heading_yaw-val :lambda-list '(m))
(cl:defmethod heading_yaw-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:heading_yaw-val is deprecated.  Use perception_interface_msgs-msg:heading_yaw instead.")
  (heading_yaw m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:angular_velocity-val is deprecated.  Use perception_interface_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'relative_position-val :lambda-list '(m))
(cl:defmethod relative_position-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_position-val is deprecated.  Use perception_interface_msgs-msg:relative_position instead.")
  (relative_position m))

(cl:ensure-generic-function 'relative_velocity-val :lambda-list '(m))
(cl:defmethod relative_velocity-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_velocity-val is deprecated.  Use perception_interface_msgs-msg:relative_velocity instead.")
  (relative_velocity m))

(cl:ensure-generic-function 'relative_acceleration-val :lambda-list '(m))
(cl:defmethod relative_acceleration-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_acceleration-val is deprecated.  Use perception_interface_msgs-msg:relative_acceleration instead.")
  (relative_acceleration m))

(cl:ensure-generic-function 'relative_heading_yaw-val :lambda-list '(m))
(cl:defmethod relative_heading_yaw-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_heading_yaw-val is deprecated.  Use perception_interface_msgs-msg:relative_heading_yaw instead.")
  (relative_heading_yaw m))

(cl:ensure-generic-function 'relative_angular_velocity-val :lambda-list '(m))
(cl:defmethod relative_angular_velocity-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_angular_velocity-val is deprecated.  Use perception_interface_msgs-msg:relative_angular_velocity instead.")
  (relative_angular_velocity m))

(cl:ensure-generic-function 'velocity_relative_to_ground-val :lambda-list '(m))
(cl:defmethod velocity_relative_to_ground-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:velocity_relative_to_ground-val is deprecated.  Use perception_interface_msgs-msg:velocity_relative_to_ground instead.")
  (velocity_relative_to_ground m))

(cl:ensure-generic-function 'acceleration_relative_to_ground-val :lambda-list '(m))
(cl:defmethod acceleration_relative_to_ground-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:acceleration_relative_to_ground-val is deprecated.  Use perception_interface_msgs-msg:acceleration_relative_to_ground instead.")
  (acceleration_relative_to_ground m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'crash_risk_ttc-val :lambda-list '(m))
(cl:defmethod crash_risk_ttc-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:crash_risk_ttc-val is deprecated.  Use perception_interface_msgs-msg:crash_risk_ttc instead.")
  (crash_risk_ttc m))

(cl:ensure-generic-function 'polygon_bottom-val :lambda-list '(m))
(cl:defmethod polygon_bottom-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:polygon_bottom-val is deprecated.  Use perception_interface_msgs-msg:polygon_bottom instead.")
  (polygon_bottom m))

(cl:ensure-generic-function 'polygon_top-val :lambda-list '(m))
(cl:defmethod polygon_top-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:polygon_top-val is deprecated.  Use perception_interface_msgs-msg:polygon_top instead.")
  (polygon_top m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'object_type-val :lambda-list '(m))
(cl:defmethod object_type-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:object_type-val is deprecated.  Use perception_interface_msgs-msg:object_type instead.")
  (object_type m))

(cl:ensure-generic-function 'scene_type-val :lambda-list '(m))
(cl:defmethod scene_type-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:scene_type-val is deprecated.  Use perception_interface_msgs-msg:scene_type instead.")
  (scene_type m))

(cl:ensure-generic-function 'scene_confidence-val :lambda-list '(m))
(cl:defmethod scene_confidence-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:scene_confidence-val is deprecated.  Use perception_interface_msgs-msg:scene_confidence instead.")
  (scene_confidence m))

(cl:ensure-generic-function 'source_sensor-val :lambda-list '(m))
(cl:defmethod source_sensor-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:source_sensor-val is deprecated.  Use perception_interface_msgs-msg:source_sensor instead.")
  (source_sensor m))

(cl:ensure-generic-function 'source_timestamp-val :lambda-list '(m))
(cl:defmethod source_timestamp-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:source_timestamp-val is deprecated.  Use perception_interface_msgs-msg:source_timestamp instead.")
  (source_timestamp m))

(cl:ensure-generic-function 'visibility-val :lambda-list '(m))
(cl:defmethod visibility-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:visibility-val is deprecated.  Use perception_interface_msgs-msg:visibility instead.")
  (visibility m))

(cl:ensure-generic-function 'extra_json-val :lambda-list '(m))
(cl:defmethod extra_json-val ((m <PerceptionFusionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:extra_json-val is deprecated.  Use perception_interface_msgs-msg:extra_json instead.")
  (extra_json m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerceptionFusionObjectData>) ostream)
  "Serializes a message object of type '<PerceptionFusionObjectData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'barrier_state_info) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_static) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'static_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_state_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_acceleration) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_heading_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_relative_to_ground) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_relative_to_ground) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'crash_risk_ttc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon_bottom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon_top) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'available) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scene_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scene_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source_sensor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source_sensor))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'source_timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'visibility))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extra_json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extra_json))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerceptionFusionObjectData>) istream)
  "Deserializes a message object of type '<PerceptionFusionObjectData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'barrier_state_info) istream)
    (cl:setf (cl:slot-value msg 'is_static) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'static_confidence) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_state_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_acceleration) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_heading_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_angular_velocity) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_relative_to_ground) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_relative_to_ground) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'crash_risk_ttc) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon_bottom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon_top) istream)
    (cl:setf (cl:slot-value msg 'available) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scene_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scene_confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source_sensor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source_sensor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'source_timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'visibility) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'extra_json) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'extra_json) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerceptionFusionObjectData>)))
  "Returns string type for a message object of type '<PerceptionFusionObjectData>"
  "perception_interface_msgs/PerceptionFusionObjectData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceptionFusionObjectData)))
  "Returns string type for a message object of type 'PerceptionFusionObjectData"
  "perception_interface_msgs/PerceptionFusionObjectData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerceptionFusionObjectData>)))
  "Returns md5sum for a message object of type '<PerceptionFusionObjectData>"
  "75e388fad6f1c45fee9951697067271e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerceptionFusionObjectData)))
  "Returns md5sum for a message object of type 'PerceptionFusionObjectData"
  "75e388fad6f1c45fee9951697067271e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerceptionFusionObjectData>)))
  "Returns full string definition for message of type '<PerceptionFusionObjectData>"
  (cl:format cl:nil "uint64 track_id~%perception_interface_msgs/ObjectTypeInfo type_info~%perception_interface_msgs/BarrierStateInfo barrier_state_info~%bool is_static~%float32 static_confidence~%perception_interface_msgs/VehicleStateInfo vehicle_state_info~%perception_interface_msgs/Shape3d shape~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%float32 heading_yaw~%float32 angular_velocity~%perception_interface_msgs/Point3d relative_position~%perception_interface_msgs/Vector3d relative_velocity~%perception_interface_msgs/Vector3d relative_acceleration~%float32 relative_heading_yaw~%float32 relative_angular_velocity~%perception_interface_msgs/Vector3d velocity_relative_to_ground~%perception_interface_msgs/Vector3d acceleration_relative_to_ground~%float32 score~%float32 crash_risk_ttc~%perception_interface_msgs/Polygon3f polygon_bottom~%perception_interface_msgs/Polygon3f polygon_top~%bool available~%perception_interface_msgs/PerceptionObjectTypeEnum object_type~%perception_interface_msgs/PerceptionSceneTypeEnum scene_type~%float32 scene_confidence~%string source_sensor~%float64 source_timestamp~%float32 visibility~%string extra_json~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeInfo~%perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/BarrierStateInfo~%perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo traffic_barrier_ego_lane_relation_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo~%float32 distance_to_left_line~%float32 distance_to_right_line~%perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum ego_lane_relation~%perception_interface_msgs/TrafficBarrierUsefulEnum useful~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierUsefulEnum~%uint8 TRAFFIC_BARRIER_UNUSEFUL = 0~%uint8 TRAFFIC_BARRIER_USEFUL = 1~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleStateInfo~%perception_interface_msgs/VehicleBrakeLightInfo brake_light_info~%perception_interface_msgs/VehicleTailLightInfo tail_light_info~%perception_interface_msgs/VehicleBlinkLightInfo blink_light_info~%perception_interface_msgs/VehicleBeamLightInfo beam_light_info~%perception_interface_msgs/VehicleDoorStateInfo door_state_info~%perception_interface_msgs/VehicleEgoLaneRelationInfo ego_lane_relation_info~%perception_interface_msgs/VehicleCutinStateInfo cutin_info~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightInfo~%float32 brake_light_on_score~%perception_interface_msgs/VehicleBrakeLightEnum brake_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightEnum~%uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0~%uint8 VEHICLE_BRAKELIGHT_OFF = 1~%uint8 VEHICLE_BRAKELIGHT_ON = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightInfo~%float32 tail_light_score~%float32 tail_light_unkown_score~%float32 tail_light_off_score~%float32 tail_light_on_score~%float32 tail_light_high_on_score~%perception_interface_msgs/VehicleTailLightEnum tail_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightEnum~%uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0~%uint8 VEHICLE_TAILLIGHT_OFF = 1~%uint8 VEHICLE_TAILLIGHT_ON = 2~%uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightInfo~%float32 blink_light_left_score~%float32 blink_light_right_score~%float32 blink_light_both_score~%perception_interface_msgs/VehicleBlinkLightEnum blink_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightEnum~%uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BLINKLIGHT_OFF = 1~%uint8 VEHICLE_BLINKLIGHT_LEFT = 2~%uint8 VEHICLE_BLINKLIGHT_RIGHT = 3~%uint8 VEHICLE_BLINKLIGHT_BOTH = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightInfo~%float32 beam_light_on_score~%perception_interface_msgs/VehicleBeamLightEnum beam_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightEnum~%uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BEAMLIGHT_OFF = 1~%uint8 VEHICLE_BEAMLIGHT_LOW = 2~%uint8 VEHICLE_BEAMLIGHT_HIGH = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateInfo~%float32 door_state_on_score~%perception_interface_msgs/VehicleDoorStateEnum door_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateEnum~%uint8 VEHICLE_DOORSTATE_UNKNOWN = 0~%uint8 VEHICLE_DOORSTATE_OFF = 1~%uint8 VEHICLE_DOORSTATE_ON = 2~%uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3~%uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4~%uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5~%uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6~%uint8 VEHICLE_DOOR_OPEN_BOTH = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationInfo~%float32 ego_lane_overlap_score~%float32 ego_lane_no_overlap_score~%perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum~%uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0~%uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1~%uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2~%uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateInfo~%float32 cutin_state_on_score~%perception_interface_msgs/VehicleCutinStateEnum cutin_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateEnum~%uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0~%uint8 VEHICLE_CUTINSTATE_OFF = 1~%uint8 VEHICLE_CUTINSTATE_ON = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3d~%float64 height~%float64 length~%float64 width~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionObjectTypeEnum~%uint8 OBJECT_TYPE_UNKNOWN = 0~%uint8 OBJECT_TYPE_RAW = 1~%uint8 OBJECT_TYPE_NORMAL = 2~%uint8 OBJECT_TYPE_RADAR_ONLY = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionSceneTypeEnum~%uint8 SCENE_TYPE_UNKNOWN = 0~%uint8 SCENE_TYPE_QUEUE = 1~%uint8 SCENE_TYPE_LONGTERM_LANE_OCCUPATION = 2~%uint8 SCENE_TYPE_SHORTTERM_LANE_OCCUPATION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerceptionFusionObjectData)))
  "Returns full string definition for message of type 'PerceptionFusionObjectData"
  (cl:format cl:nil "uint64 track_id~%perception_interface_msgs/ObjectTypeInfo type_info~%perception_interface_msgs/BarrierStateInfo barrier_state_info~%bool is_static~%float32 static_confidence~%perception_interface_msgs/VehicleStateInfo vehicle_state_info~%perception_interface_msgs/Shape3d shape~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%float32 heading_yaw~%float32 angular_velocity~%perception_interface_msgs/Point3d relative_position~%perception_interface_msgs/Vector3d relative_velocity~%perception_interface_msgs/Vector3d relative_acceleration~%float32 relative_heading_yaw~%float32 relative_angular_velocity~%perception_interface_msgs/Vector3d velocity_relative_to_ground~%perception_interface_msgs/Vector3d acceleration_relative_to_ground~%float32 score~%float32 crash_risk_ttc~%perception_interface_msgs/Polygon3f polygon_bottom~%perception_interface_msgs/Polygon3f polygon_top~%bool available~%perception_interface_msgs/PerceptionObjectTypeEnum object_type~%perception_interface_msgs/PerceptionSceneTypeEnum scene_type~%float32 scene_confidence~%string source_sensor~%float64 source_timestamp~%float32 visibility~%string extra_json~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeInfo~%perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/BarrierStateInfo~%perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo traffic_barrier_ego_lane_relation_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo~%float32 distance_to_left_line~%float32 distance_to_right_line~%perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum ego_lane_relation~%perception_interface_msgs/TrafficBarrierUsefulEnum useful~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierUsefulEnum~%uint8 TRAFFIC_BARRIER_UNUSEFUL = 0~%uint8 TRAFFIC_BARRIER_USEFUL = 1~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleStateInfo~%perception_interface_msgs/VehicleBrakeLightInfo brake_light_info~%perception_interface_msgs/VehicleTailLightInfo tail_light_info~%perception_interface_msgs/VehicleBlinkLightInfo blink_light_info~%perception_interface_msgs/VehicleBeamLightInfo beam_light_info~%perception_interface_msgs/VehicleDoorStateInfo door_state_info~%perception_interface_msgs/VehicleEgoLaneRelationInfo ego_lane_relation_info~%perception_interface_msgs/VehicleCutinStateInfo cutin_info~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightInfo~%float32 brake_light_on_score~%perception_interface_msgs/VehicleBrakeLightEnum brake_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightEnum~%uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0~%uint8 VEHICLE_BRAKELIGHT_OFF = 1~%uint8 VEHICLE_BRAKELIGHT_ON = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightInfo~%float32 tail_light_score~%float32 tail_light_unkown_score~%float32 tail_light_off_score~%float32 tail_light_on_score~%float32 tail_light_high_on_score~%perception_interface_msgs/VehicleTailLightEnum tail_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightEnum~%uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0~%uint8 VEHICLE_TAILLIGHT_OFF = 1~%uint8 VEHICLE_TAILLIGHT_ON = 2~%uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightInfo~%float32 blink_light_left_score~%float32 blink_light_right_score~%float32 blink_light_both_score~%perception_interface_msgs/VehicleBlinkLightEnum blink_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightEnum~%uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BLINKLIGHT_OFF = 1~%uint8 VEHICLE_BLINKLIGHT_LEFT = 2~%uint8 VEHICLE_BLINKLIGHT_RIGHT = 3~%uint8 VEHICLE_BLINKLIGHT_BOTH = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightInfo~%float32 beam_light_on_score~%perception_interface_msgs/VehicleBeamLightEnum beam_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightEnum~%uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BEAMLIGHT_OFF = 1~%uint8 VEHICLE_BEAMLIGHT_LOW = 2~%uint8 VEHICLE_BEAMLIGHT_HIGH = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateInfo~%float32 door_state_on_score~%perception_interface_msgs/VehicleDoorStateEnum door_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateEnum~%uint8 VEHICLE_DOORSTATE_UNKNOWN = 0~%uint8 VEHICLE_DOORSTATE_OFF = 1~%uint8 VEHICLE_DOORSTATE_ON = 2~%uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3~%uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4~%uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5~%uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6~%uint8 VEHICLE_DOOR_OPEN_BOTH = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationInfo~%float32 ego_lane_overlap_score~%float32 ego_lane_no_overlap_score~%perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum~%uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0~%uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1~%uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2~%uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateInfo~%float32 cutin_state_on_score~%perception_interface_msgs/VehicleCutinStateEnum cutin_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateEnum~%uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0~%uint8 VEHICLE_CUTINSTATE_OFF = 1~%uint8 VEHICLE_CUTINSTATE_ON = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3d~%float64 height~%float64 length~%float64 width~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionObjectTypeEnum~%uint8 OBJECT_TYPE_UNKNOWN = 0~%uint8 OBJECT_TYPE_RAW = 1~%uint8 OBJECT_TYPE_NORMAL = 2~%uint8 OBJECT_TYPE_RADAR_ONLY = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionSceneTypeEnum~%uint8 SCENE_TYPE_UNKNOWN = 0~%uint8 SCENE_TYPE_QUEUE = 1~%uint8 SCENE_TYPE_LONGTERM_LANE_OCCUPATION = 2~%uint8 SCENE_TYPE_SHORTTERM_LANE_OCCUPATION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerceptionFusionObjectData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'barrier_state_info))
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_state_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_acceleration))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_relative_to_ground))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_relative_to_ground))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon_bottom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon_top))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scene_type))
     4
     4 (cl:length (cl:slot-value msg 'source_sensor))
     8
     4
     4 (cl:length (cl:slot-value msg 'extra_json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerceptionFusionObjectData>))
  "Converts a ROS message object to a list"
  (cl:list 'PerceptionFusionObjectData
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':type_info (type_info msg))
    (cl:cons ':barrier_state_info (barrier_state_info msg))
    (cl:cons ':is_static (is_static msg))
    (cl:cons ':static_confidence (static_confidence msg))
    (cl:cons ':vehicle_state_info (vehicle_state_info msg))
    (cl:cons ':shape (shape msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':heading_yaw (heading_yaw msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':relative_position (relative_position msg))
    (cl:cons ':relative_velocity (relative_velocity msg))
    (cl:cons ':relative_acceleration (relative_acceleration msg))
    (cl:cons ':relative_heading_yaw (relative_heading_yaw msg))
    (cl:cons ':relative_angular_velocity (relative_angular_velocity msg))
    (cl:cons ':velocity_relative_to_ground (velocity_relative_to_ground msg))
    (cl:cons ':acceleration_relative_to_ground (acceleration_relative_to_ground msg))
    (cl:cons ':score (score msg))
    (cl:cons ':crash_risk_ttc (crash_risk_ttc msg))
    (cl:cons ':polygon_bottom (polygon_bottom msg))
    (cl:cons ':polygon_top (polygon_top msg))
    (cl:cons ':available (available msg))
    (cl:cons ':object_type (object_type msg))
    (cl:cons ':scene_type (scene_type msg))
    (cl:cons ':scene_confidence (scene_confidence msg))
    (cl:cons ':source_sensor (source_sensor msg))
    (cl:cons ':source_timestamp (source_timestamp msg))
    (cl:cons ':visibility (visibility msg))
    (cl:cons ':extra_json (extra_json msg))
))
