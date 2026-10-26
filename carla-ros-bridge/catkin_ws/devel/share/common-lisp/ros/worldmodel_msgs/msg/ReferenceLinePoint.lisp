; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ReferenceLinePoint.msg.html

(cl:defclass <ReferenceLinePoint> (roslisp-msg-protocol:ros-message)
  ((enu_point
    :reader enu_point
    :initarg :enu_point
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (curvature
    :reader curvature
    :initarg :curvature
    :type cl:float
    :initform 0.0)
   (distance_to_left_road_border
    :reader distance_to_left_road_border
    :initarg :distance_to_left_road_border
    :type cl:float
    :initform 0.0)
   (distance_to_right_road_border
    :reader distance_to_right_road_border
    :initarg :distance_to_right_road_border
    :type cl:float
    :initform 0.0)
   (distance_to_left_lane_border
    :reader distance_to_left_lane_border
    :initarg :distance_to_left_lane_border
    :type cl:float
    :initform 0.0)
   (distance_to_right_lane_border
    :reader distance_to_right_lane_border
    :initarg :distance_to_right_lane_border
    :type cl:float
    :initform 0.0)
   (distance_to_left_obstacle
    :reader distance_to_left_obstacle
    :initarg :distance_to_left_obstacle
    :type cl:float
    :initform 0.0)
   (distance_to_right_obstacle
    :reader distance_to_right_obstacle
    :initarg :distance_to_right_obstacle
    :type cl:float
    :initform 0.0)
   (lane_width
    :reader lane_width
    :initarg :lane_width
    :type cl:float
    :initform 0.0)
   (max_velocity
    :reader max_velocity
    :initarg :max_velocity
    :type cl:integer
    :initform 0)
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (is_experience_data
    :reader is_experience_data
    :initarg :is_experience_data
    :type cl:boolean
    :initform cl:nil)
   (left_road_border_type
    :reader left_road_border_type
    :initarg :left_road_border_type
    :type worldmodel_msgs-msg:LaneBoundaryType
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneBoundaryType))
   (right_road_border_type
    :reader right_road_border_type
    :initarg :right_road_border_type
    :type worldmodel_msgs-msg:LaneBoundaryType
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneBoundaryType))
   (on_route
    :reader on_route
    :initarg :on_route
    :type cl:boolean
    :initform cl:nil)
   (longitudinal_slope
    :reader longitudinal_slope
    :initarg :longitudinal_slope
    :type cl:float
    :initform 0.0)
   (horizontal_slope
    :reader horizontal_slope
    :initarg :horizontal_slope
    :type cl:float
    :initform 0.0))
)

(cl:defclass ReferenceLinePoint (<ReferenceLinePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReferenceLinePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReferenceLinePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ReferenceLinePoint> is deprecated: use worldmodel_msgs-msg:ReferenceLinePoint instead.")))

(cl:ensure-generic-function 'enu_point-val :lambda-list '(m))
(cl:defmethod enu_point-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:enu_point-val is deprecated.  Use worldmodel_msgs-msg:enu_point instead.")
  (enu_point m))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:curvature-val is deprecated.  Use worldmodel_msgs-msg:curvature instead.")
  (curvature m))

(cl:ensure-generic-function 'distance_to_left_road_border-val :lambda-list '(m))
(cl:defmethod distance_to_left_road_border-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance_to_left_road_border-val is deprecated.  Use worldmodel_msgs-msg:distance_to_left_road_border instead.")
  (distance_to_left_road_border m))

(cl:ensure-generic-function 'distance_to_right_road_border-val :lambda-list '(m))
(cl:defmethod distance_to_right_road_border-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance_to_right_road_border-val is deprecated.  Use worldmodel_msgs-msg:distance_to_right_road_border instead.")
  (distance_to_right_road_border m))

(cl:ensure-generic-function 'distance_to_left_lane_border-val :lambda-list '(m))
(cl:defmethod distance_to_left_lane_border-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance_to_left_lane_border-val is deprecated.  Use worldmodel_msgs-msg:distance_to_left_lane_border instead.")
  (distance_to_left_lane_border m))

(cl:ensure-generic-function 'distance_to_right_lane_border-val :lambda-list '(m))
(cl:defmethod distance_to_right_lane_border-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance_to_right_lane_border-val is deprecated.  Use worldmodel_msgs-msg:distance_to_right_lane_border instead.")
  (distance_to_right_lane_border m))

(cl:ensure-generic-function 'distance_to_left_obstacle-val :lambda-list '(m))
(cl:defmethod distance_to_left_obstacle-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance_to_left_obstacle-val is deprecated.  Use worldmodel_msgs-msg:distance_to_left_obstacle instead.")
  (distance_to_left_obstacle m))

(cl:ensure-generic-function 'distance_to_right_obstacle-val :lambda-list '(m))
(cl:defmethod distance_to_right_obstacle-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance_to_right_obstacle-val is deprecated.  Use worldmodel_msgs-msg:distance_to_right_obstacle instead.")
  (distance_to_right_obstacle m))

(cl:ensure-generic-function 'lane_width-val :lambda-list '(m))
(cl:defmethod lane_width-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:lane_width-val is deprecated.  Use worldmodel_msgs-msg:lane_width instead.")
  (lane_width m))

(cl:ensure-generic-function 'max_velocity-val :lambda-list '(m))
(cl:defmethod max_velocity-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:max_velocity-val is deprecated.  Use worldmodel_msgs-msg:max_velocity instead.")
  (max_velocity m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:track_id-val is deprecated.  Use worldmodel_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'is_experience_data-val :lambda-list '(m))
(cl:defmethod is_experience_data-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:is_experience_data-val is deprecated.  Use worldmodel_msgs-msg:is_experience_data instead.")
  (is_experience_data m))

(cl:ensure-generic-function 'left_road_border_type-val :lambda-list '(m))
(cl:defmethod left_road_border_type-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:left_road_border_type-val is deprecated.  Use worldmodel_msgs-msg:left_road_border_type instead.")
  (left_road_border_type m))

(cl:ensure-generic-function 'right_road_border_type-val :lambda-list '(m))
(cl:defmethod right_road_border_type-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:right_road_border_type-val is deprecated.  Use worldmodel_msgs-msg:right_road_border_type instead.")
  (right_road_border_type m))

(cl:ensure-generic-function 'on_route-val :lambda-list '(m))
(cl:defmethod on_route-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:on_route-val is deprecated.  Use worldmodel_msgs-msg:on_route instead.")
  (on_route m))

(cl:ensure-generic-function 'longitudinal_slope-val :lambda-list '(m))
(cl:defmethod longitudinal_slope-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:longitudinal_slope-val is deprecated.  Use worldmodel_msgs-msg:longitudinal_slope instead.")
  (longitudinal_slope m))

(cl:ensure-generic-function 'horizontal_slope-val :lambda-list '(m))
(cl:defmethod horizontal_slope-val ((m <ReferenceLinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:horizontal_slope-val is deprecated.  Use worldmodel_msgs-msg:horizontal_slope instead.")
  (horizontal_slope m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReferenceLinePoint>) ostream)
  "Serializes a message object of type '<ReferenceLinePoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'enu_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_left_road_border))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_right_road_border))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_left_lane_border))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_right_lane_border))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_left_obstacle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_right_obstacle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lane_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'max_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_experience_data) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_road_border_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_road_border_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on_route) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitudinal_slope))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'horizontal_slope))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReferenceLinePoint>) istream)
  "Deserializes a message object of type '<ReferenceLinePoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'enu_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_left_road_border) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_right_road_border) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_left_lane_border) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_right_lane_border) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_left_obstacle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_right_obstacle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_velocity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_experience_data) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_road_border_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_road_border_type) istream)
    (cl:setf (cl:slot-value msg 'on_route) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitudinal_slope) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontal_slope) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReferenceLinePoint>)))
  "Returns string type for a message object of type '<ReferenceLinePoint>"
  "worldmodel_msgs/ReferenceLinePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceLinePoint)))
  "Returns string type for a message object of type 'ReferenceLinePoint"
  "worldmodel_msgs/ReferenceLinePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReferenceLinePoint>)))
  "Returns md5sum for a message object of type '<ReferenceLinePoint>"
  "00add1f69861e3bf3d68775bc3111b4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReferenceLinePoint)))
  "Returns md5sum for a message object of type 'ReferenceLinePoint"
  "00add1f69861e3bf3d68775bc3111b4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReferenceLinePoint>)))
  "Returns full string definition for message of type '<ReferenceLinePoint>"
  (cl:format cl:nil "perception_interface_msgs/Point3d enu_point~%float32 curvature~%float32 distance_to_left_road_border~%float32 distance_to_right_road_border~%float32 distance_to_left_lane_border~%float32 distance_to_right_lane_border~%float32 distance_to_left_obstacle~%float32 distance_to_right_obstacle~%float32 lane_width~%int32 max_velocity~%uint64 track_id~%bool is_experience_data~%worldmodel_msgs/LaneBoundaryType left_road_border_type~%worldmodel_msgs/LaneBoundaryType right_road_border_type~%bool on_route~%float64 longitudinal_slope~%float64 horizontal_slope~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReferenceLinePoint)))
  "Returns full string definition for message of type 'ReferenceLinePoint"
  (cl:format cl:nil "perception_interface_msgs/Point3d enu_point~%float32 curvature~%float32 distance_to_left_road_border~%float32 distance_to_right_road_border~%float32 distance_to_left_lane_border~%float32 distance_to_right_lane_border~%float32 distance_to_left_obstacle~%float32 distance_to_right_obstacle~%float32 lane_width~%int32 max_velocity~%uint64 track_id~%bool is_experience_data~%worldmodel_msgs/LaneBoundaryType left_road_border_type~%worldmodel_msgs/LaneBoundaryType right_road_border_type~%bool on_route~%float64 longitudinal_slope~%float64 horizontal_slope~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReferenceLinePoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'enu_point))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_road_border_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_road_border_type))
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReferenceLinePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'ReferenceLinePoint
    (cl:cons ':enu_point (enu_point msg))
    (cl:cons ':curvature (curvature msg))
    (cl:cons ':distance_to_left_road_border (distance_to_left_road_border msg))
    (cl:cons ':distance_to_right_road_border (distance_to_right_road_border msg))
    (cl:cons ':distance_to_left_lane_border (distance_to_left_lane_border msg))
    (cl:cons ':distance_to_right_lane_border (distance_to_right_lane_border msg))
    (cl:cons ':distance_to_left_obstacle (distance_to_left_obstacle msg))
    (cl:cons ':distance_to_right_obstacle (distance_to_right_obstacle msg))
    (cl:cons ':lane_width (lane_width msg))
    (cl:cons ':max_velocity (max_velocity msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':is_experience_data (is_experience_data msg))
    (cl:cons ':left_road_border_type (left_road_border_type msg))
    (cl:cons ':right_road_border_type (right_road_border_type msg))
    (cl:cons ':on_route (on_route msg))
    (cl:cons ':longitudinal_slope (longitudinal_slope msg))
    (cl:cons ':horizontal_slope (horizontal_slope msg))
))
