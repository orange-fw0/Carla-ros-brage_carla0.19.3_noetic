; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude LidarPerceptionObjectData.msg.html

(cl:defclass <LidarPerceptionObjectData> (roslisp-msg-protocol:ros-message)
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
   (shape
    :reader shape
    :initarg :shape
    :type perception_interface_msgs-msg:Shape3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Shape3d))
   (shape_sigma
    :reader shape_sigma
    :initarg :shape_sigma
    :type perception_interface_msgs-msg:Shape3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Shape3d))
   (position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (position_sigma
    :reader position_sigma
    :initarg :position_sigma
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (velocity
    :reader velocity
    :initarg :velocity
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (velocity_sigma
    :reader velocity_sigma
    :initarg :velocity_sigma
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (acceleration_sigma
    :reader acceleration_sigma
    :initarg :acceleration_sigma
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (heading_yaw
    :reader heading_yaw
    :initarg :heading_yaw
    :type cl:float
    :initform 0.0)
   (heading_yaw_sigma
    :reader heading_yaw_sigma
    :initarg :heading_yaw_sigma
    :type cl:float
    :initform 0.0)
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:float
    :initform 0.0)
   (angular_velocity_sigma
    :reader angular_velocity_sigma
    :initarg :angular_velocity_sigma
    :type cl:float
    :initform 0.0)
   (relative_position
    :reader relative_position
    :initarg :relative_position
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (relative_position_sigma
    :reader relative_position_sigma
    :initarg :relative_position_sigma
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (relative_velocity
    :reader relative_velocity
    :initarg :relative_velocity
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (relative_velocity_sigma
    :reader relative_velocity_sigma
    :initarg :relative_velocity_sigma
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (relative_acceleration
    :reader relative_acceleration
    :initarg :relative_acceleration
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (relative_acceleration_sigma
    :reader relative_acceleration_sigma
    :initarg :relative_acceleration_sigma
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (relative_heading_yaw
    :reader relative_heading_yaw
    :initarg :relative_heading_yaw
    :type cl:float
    :initform 0.0)
   (relative_heading_yaw_sigma
    :reader relative_heading_yaw_sigma
    :initarg :relative_heading_yaw_sigma
    :type cl:float
    :initform 0.0)
   (relative_angular_velocity
    :reader relative_angular_velocity
    :initarg :relative_angular_velocity
    :type cl:float
    :initform 0.0)
   (relative_angular_velocity_sigma
    :reader relative_angular_velocity_sigma
    :initarg :relative_angular_velocity_sigma
    :type cl:float
    :initform 0.0)
   (velocity_relative_to_ground
    :reader velocity_relative_to_ground
    :initarg :velocity_relative_to_ground
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (velocity_relative_to_ground_sigma
    :reader velocity_relative_to_ground_sigma
    :initarg :velocity_relative_to_ground_sigma
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (acceleration_relative_to_ground
    :reader acceleration_relative_to_ground
    :initarg :acceleration_relative_to_ground
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (acceleration_relative_to_ground_sigma
    :reader acceleration_relative_to_ground_sigma
    :initarg :acceleration_relative_to_ground_sigma
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (score
    :reader score
    :initarg :score
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
    :type cl:fixnum
    :initform 0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass LidarPerceptionObjectData (<LidarPerceptionObjectData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarPerceptionObjectData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarPerceptionObjectData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<LidarPerceptionObjectData> is deprecated: use perception_interface_msgs-msg:LidarPerceptionObjectData instead.")))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:track_id-val is deprecated.  Use perception_interface_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'type_info-val :lambda-list '(m))
(cl:defmethod type_info-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type_info-val is deprecated.  Use perception_interface_msgs-msg:type_info instead.")
  (type_info m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:shape-val is deprecated.  Use perception_interface_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'shape_sigma-val :lambda-list '(m))
(cl:defmethod shape_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:shape_sigma-val is deprecated.  Use perception_interface_msgs-msg:shape_sigma instead.")
  (shape_sigma m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:position-val is deprecated.  Use perception_interface_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'position_sigma-val :lambda-list '(m))
(cl:defmethod position_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:position_sigma-val is deprecated.  Use perception_interface_msgs-msg:position_sigma instead.")
  (position_sigma m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:velocity-val is deprecated.  Use perception_interface_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'velocity_sigma-val :lambda-list '(m))
(cl:defmethod velocity_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:velocity_sigma-val is deprecated.  Use perception_interface_msgs-msg:velocity_sigma instead.")
  (velocity_sigma m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:acceleration-val is deprecated.  Use perception_interface_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'acceleration_sigma-val :lambda-list '(m))
(cl:defmethod acceleration_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:acceleration_sigma-val is deprecated.  Use perception_interface_msgs-msg:acceleration_sigma instead.")
  (acceleration_sigma m))

(cl:ensure-generic-function 'heading_yaw-val :lambda-list '(m))
(cl:defmethod heading_yaw-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:heading_yaw-val is deprecated.  Use perception_interface_msgs-msg:heading_yaw instead.")
  (heading_yaw m))

(cl:ensure-generic-function 'heading_yaw_sigma-val :lambda-list '(m))
(cl:defmethod heading_yaw_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:heading_yaw_sigma-val is deprecated.  Use perception_interface_msgs-msg:heading_yaw_sigma instead.")
  (heading_yaw_sigma m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:angular_velocity-val is deprecated.  Use perception_interface_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'angular_velocity_sigma-val :lambda-list '(m))
(cl:defmethod angular_velocity_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:angular_velocity_sigma-val is deprecated.  Use perception_interface_msgs-msg:angular_velocity_sigma instead.")
  (angular_velocity_sigma m))

(cl:ensure-generic-function 'relative_position-val :lambda-list '(m))
(cl:defmethod relative_position-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_position-val is deprecated.  Use perception_interface_msgs-msg:relative_position instead.")
  (relative_position m))

(cl:ensure-generic-function 'relative_position_sigma-val :lambda-list '(m))
(cl:defmethod relative_position_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_position_sigma-val is deprecated.  Use perception_interface_msgs-msg:relative_position_sigma instead.")
  (relative_position_sigma m))

(cl:ensure-generic-function 'relative_velocity-val :lambda-list '(m))
(cl:defmethod relative_velocity-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_velocity-val is deprecated.  Use perception_interface_msgs-msg:relative_velocity instead.")
  (relative_velocity m))

(cl:ensure-generic-function 'relative_velocity_sigma-val :lambda-list '(m))
(cl:defmethod relative_velocity_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_velocity_sigma-val is deprecated.  Use perception_interface_msgs-msg:relative_velocity_sigma instead.")
  (relative_velocity_sigma m))

(cl:ensure-generic-function 'relative_acceleration-val :lambda-list '(m))
(cl:defmethod relative_acceleration-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_acceleration-val is deprecated.  Use perception_interface_msgs-msg:relative_acceleration instead.")
  (relative_acceleration m))

(cl:ensure-generic-function 'relative_acceleration_sigma-val :lambda-list '(m))
(cl:defmethod relative_acceleration_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_acceleration_sigma-val is deprecated.  Use perception_interface_msgs-msg:relative_acceleration_sigma instead.")
  (relative_acceleration_sigma m))

(cl:ensure-generic-function 'relative_heading_yaw-val :lambda-list '(m))
(cl:defmethod relative_heading_yaw-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_heading_yaw-val is deprecated.  Use perception_interface_msgs-msg:relative_heading_yaw instead.")
  (relative_heading_yaw m))

(cl:ensure-generic-function 'relative_heading_yaw_sigma-val :lambda-list '(m))
(cl:defmethod relative_heading_yaw_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_heading_yaw_sigma-val is deprecated.  Use perception_interface_msgs-msg:relative_heading_yaw_sigma instead.")
  (relative_heading_yaw_sigma m))

(cl:ensure-generic-function 'relative_angular_velocity-val :lambda-list '(m))
(cl:defmethod relative_angular_velocity-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_angular_velocity-val is deprecated.  Use perception_interface_msgs-msg:relative_angular_velocity instead.")
  (relative_angular_velocity m))

(cl:ensure-generic-function 'relative_angular_velocity_sigma-val :lambda-list '(m))
(cl:defmethod relative_angular_velocity_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:relative_angular_velocity_sigma-val is deprecated.  Use perception_interface_msgs-msg:relative_angular_velocity_sigma instead.")
  (relative_angular_velocity_sigma m))

(cl:ensure-generic-function 'velocity_relative_to_ground-val :lambda-list '(m))
(cl:defmethod velocity_relative_to_ground-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:velocity_relative_to_ground-val is deprecated.  Use perception_interface_msgs-msg:velocity_relative_to_ground instead.")
  (velocity_relative_to_ground m))

(cl:ensure-generic-function 'velocity_relative_to_ground_sigma-val :lambda-list '(m))
(cl:defmethod velocity_relative_to_ground_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:velocity_relative_to_ground_sigma-val is deprecated.  Use perception_interface_msgs-msg:velocity_relative_to_ground_sigma instead.")
  (velocity_relative_to_ground_sigma m))

(cl:ensure-generic-function 'acceleration_relative_to_ground-val :lambda-list '(m))
(cl:defmethod acceleration_relative_to_ground-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:acceleration_relative_to_ground-val is deprecated.  Use perception_interface_msgs-msg:acceleration_relative_to_ground instead.")
  (acceleration_relative_to_ground m))

(cl:ensure-generic-function 'acceleration_relative_to_ground_sigma-val :lambda-list '(m))
(cl:defmethod acceleration_relative_to_ground_sigma-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:acceleration_relative_to_ground_sigma-val is deprecated.  Use perception_interface_msgs-msg:acceleration_relative_to_ground_sigma instead.")
  (acceleration_relative_to_ground_sigma m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'polygon_bottom-val :lambda-list '(m))
(cl:defmethod polygon_bottom-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:polygon_bottom-val is deprecated.  Use perception_interface_msgs-msg:polygon_bottom instead.")
  (polygon_bottom m))

(cl:ensure-generic-function 'polygon_top-val :lambda-list '(m))
(cl:defmethod polygon_top-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:polygon_top-val is deprecated.  Use perception_interface_msgs-msg:polygon_top instead.")
  (polygon_top m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <LidarPerceptionObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reserved_info-val is deprecated.  Use perception_interface_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarPerceptionObjectData>) ostream)
  "Serializes a message object of type '<LidarPerceptionObjectData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape_sigma) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_sigma) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_sigma) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_sigma) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading_yaw_sigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity_sigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_position_sigma) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_velocity_sigma) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_acceleration_sigma) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_heading_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_heading_yaw_sigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_angular_velocity_sigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_relative_to_ground) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_relative_to_ground_sigma) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_relative_to_ground) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_relative_to_ground_sigma) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon_bottom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon_top) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarPerceptionObjectData>) istream)
  "Deserializes a message object of type '<LidarPerceptionObjectData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape_sigma) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_sigma) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_sigma) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_sigma) istream)
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
    (cl:setf (cl:slot-value msg 'heading_yaw_sigma) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity_sigma) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_position_sigma) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_velocity_sigma) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_acceleration_sigma) istream)
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
    (cl:setf (cl:slot-value msg 'relative_heading_yaw_sigma) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_angular_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_angular_velocity_sigma) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_relative_to_ground) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_relative_to_ground_sigma) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_relative_to_ground) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_relative_to_ground_sigma) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon_bottom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon_top) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarPerceptionObjectData>)))
  "Returns string type for a message object of type '<LidarPerceptionObjectData>"
  "perception_interface_msgs/LidarPerceptionObjectData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarPerceptionObjectData)))
  "Returns string type for a message object of type 'LidarPerceptionObjectData"
  "perception_interface_msgs/LidarPerceptionObjectData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarPerceptionObjectData>)))
  "Returns md5sum for a message object of type '<LidarPerceptionObjectData>"
  "2fd75493b6255b96a71ae09d8d3fd4e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarPerceptionObjectData)))
  "Returns md5sum for a message object of type 'LidarPerceptionObjectData"
  "2fd75493b6255b96a71ae09d8d3fd4e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarPerceptionObjectData>)))
  "Returns full string definition for message of type '<LidarPerceptionObjectData>"
  (cl:format cl:nil "uint64 track_id~%perception_interface_msgs/ObjectTypeInfo type_info~%perception_interface_msgs/Shape3d shape~%perception_interface_msgs/Shape3d shape_sigma~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Point3d position_sigma~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d velocity_sigma~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d acceleration_sigma~%float32 heading_yaw~%float32 heading_yaw_sigma~%float32 angular_velocity~%float32 angular_velocity_sigma~%perception_interface_msgs/Point3d relative_position~%perception_interface_msgs/Point3d relative_position_sigma~%perception_interface_msgs/Vector3d relative_velocity~%perception_interface_msgs/Vector3d relative_velocity_sigma~%perception_interface_msgs/Vector3d relative_acceleration~%perception_interface_msgs/Vector3d relative_acceleration_sigma~%float32 relative_heading_yaw~%float32 relative_heading_yaw_sigma~%float32 relative_angular_velocity~%float32 relative_angular_velocity_sigma~%perception_interface_msgs/Vector3d velocity_relative_to_ground~%perception_interface_msgs/Vector3d velocity_relative_to_ground_sigma~%perception_interface_msgs/Vector3d acceleration_relative_to_ground~%perception_interface_msgs/Vector3d acceleration_relative_to_ground_sigma~%float32 score~%perception_interface_msgs/Polygon3f polygon_bottom~%perception_interface_msgs/Polygon3f polygon_top~%uint8 available~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeInfo~%perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3d~%float64 height~%float64 length~%float64 width~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarPerceptionObjectData)))
  "Returns full string definition for message of type 'LidarPerceptionObjectData"
  (cl:format cl:nil "uint64 track_id~%perception_interface_msgs/ObjectTypeInfo type_info~%perception_interface_msgs/Shape3d shape~%perception_interface_msgs/Shape3d shape_sigma~%perception_interface_msgs/Point3d position~%perception_interface_msgs/Point3d position_sigma~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d velocity_sigma~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d acceleration_sigma~%float32 heading_yaw~%float32 heading_yaw_sigma~%float32 angular_velocity~%float32 angular_velocity_sigma~%perception_interface_msgs/Point3d relative_position~%perception_interface_msgs/Point3d relative_position_sigma~%perception_interface_msgs/Vector3d relative_velocity~%perception_interface_msgs/Vector3d relative_velocity_sigma~%perception_interface_msgs/Vector3d relative_acceleration~%perception_interface_msgs/Vector3d relative_acceleration_sigma~%float32 relative_heading_yaw~%float32 relative_heading_yaw_sigma~%float32 relative_angular_velocity~%float32 relative_angular_velocity_sigma~%perception_interface_msgs/Vector3d velocity_relative_to_ground~%perception_interface_msgs/Vector3d velocity_relative_to_ground_sigma~%perception_interface_msgs/Vector3d acceleration_relative_to_ground~%perception_interface_msgs/Vector3d acceleration_relative_to_ground_sigma~%float32 score~%perception_interface_msgs/Polygon3f polygon_bottom~%perception_interface_msgs/Polygon3f polygon_top~%uint8 available~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeInfo~%perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3d~%float64 height~%float64 length~%float64 width~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarPerceptionObjectData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape_sigma))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_sigma))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_sigma))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_sigma))
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_position_sigma))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_velocity_sigma))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_acceleration_sigma))
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_relative_to_ground))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_relative_to_ground_sigma))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_relative_to_ground))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_relative_to_ground_sigma))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon_bottom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon_top))
     1
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarPerceptionObjectData>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarPerceptionObjectData
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':type_info (type_info msg))
    (cl:cons ':shape (shape msg))
    (cl:cons ':shape_sigma (shape_sigma msg))
    (cl:cons ':position (position msg))
    (cl:cons ':position_sigma (position_sigma msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':velocity_sigma (velocity_sigma msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':acceleration_sigma (acceleration_sigma msg))
    (cl:cons ':heading_yaw (heading_yaw msg))
    (cl:cons ':heading_yaw_sigma (heading_yaw_sigma msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':angular_velocity_sigma (angular_velocity_sigma msg))
    (cl:cons ':relative_position (relative_position msg))
    (cl:cons ':relative_position_sigma (relative_position_sigma msg))
    (cl:cons ':relative_velocity (relative_velocity msg))
    (cl:cons ':relative_velocity_sigma (relative_velocity_sigma msg))
    (cl:cons ':relative_acceleration (relative_acceleration msg))
    (cl:cons ':relative_acceleration_sigma (relative_acceleration_sigma msg))
    (cl:cons ':relative_heading_yaw (relative_heading_yaw msg))
    (cl:cons ':relative_heading_yaw_sigma (relative_heading_yaw_sigma msg))
    (cl:cons ':relative_angular_velocity (relative_angular_velocity msg))
    (cl:cons ':relative_angular_velocity_sigma (relative_angular_velocity_sigma msg))
    (cl:cons ':velocity_relative_to_ground (velocity_relative_to_ground msg))
    (cl:cons ':velocity_relative_to_ground_sigma (velocity_relative_to_ground_sigma msg))
    (cl:cons ':acceleration_relative_to_ground (acceleration_relative_to_ground msg))
    (cl:cons ':acceleration_relative_to_ground_sigma (acceleration_relative_to_ground_sigma msg))
    (cl:cons ':score (score msg))
    (cl:cons ':polygon_bottom (polygon_bottom msg))
    (cl:cons ':polygon_top (polygon_top msg))
    (cl:cons ':available (available msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
