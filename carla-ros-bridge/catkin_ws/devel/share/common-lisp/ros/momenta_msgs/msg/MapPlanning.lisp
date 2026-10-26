; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude MapPlanning.msg.html

(cl:defclass <MapPlanning> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lane_boundaries
    :reader lane_boundaries
    :initarg :lane_boundaries
    :type (cl:vector momenta_msgs-msg:LaneBoundary)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:LaneBoundary :initial-element (cl:make-instance 'momenta_msgs-msg:LaneBoundary)))
   (next_maneuver
    :reader next_maneuver
    :initarg :next_maneuver
    :type momenta_msgs-msg:IntersectionManeuver
    :initform (cl:make-instance 'momenta_msgs-msg:IntersectionManeuver))
   (last_maneuver
    :reader last_maneuver
    :initarg :last_maneuver
    :type momenta_msgs-msg:IntersectionManeuver
    :initform (cl:make-instance 'momenta_msgs-msg:IntersectionManeuver))
   (next_merge
    :reader next_merge
    :initarg :next_merge
    :type momenta_msgs-msg:MergePoint
    :initform (cl:make-instance 'momenta_msgs-msg:MergePoint))
   (tasks
    :reader tasks
    :initarg :tasks
    :type momenta_msgs-msg:MapTask
    :initform (cl:make-instance 'momenta_msgs-msg:MapTask))
   (current_refline
    :reader current_refline
    :initarg :current_refline
    :type momenta_msgs-msg:Refline
    :initform (cl:make-instance 'momenta_msgs-msg:Refline))
   (left_left_refline
    :reader left_left_refline
    :initarg :left_left_refline
    :type momenta_msgs-msg:Refline
    :initform (cl:make-instance 'momenta_msgs-msg:Refline))
   (left_refline
    :reader left_refline
    :initarg :left_refline
    :type momenta_msgs-msg:Refline
    :initform (cl:make-instance 'momenta_msgs-msg:Refline))
   (right_refline
    :reader right_refline
    :initarg :right_refline
    :type momenta_msgs-msg:Refline
    :initform (cl:make-instance 'momenta_msgs-msg:Refline))
   (right_right_refline
    :reader right_right_refline
    :initarg :right_right_refline
    :type momenta_msgs-msg:Refline
    :initform (cl:make-instance 'momenta_msgs-msg:Refline))
   (left_boundary_info
    :reader left_boundary_info
    :initarg :left_boundary_info
    :type (cl:vector momenta_msgs-msg:BoundaryInfo)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:BoundaryInfo :initial-element (cl:make-instance 'momenta_msgs-msg:BoundaryInfo)))
   (right_boundary_info
    :reader right_boundary_info
    :initarg :right_boundary_info
    :type (cl:vector momenta_msgs-msg:BoundaryInfo)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:BoundaryInfo :initial-element (cl:make-instance 'momenta_msgs-msg:BoundaryInfo)))
   (traffic_light
    :reader traffic_light
    :initarg :traffic_light
    :type momenta_msgs-msg:TrafficLightInfo
    :initform (cl:make-instance 'momenta_msgs-msg:TrafficLightInfo))
   (lanes_info
    :reader lanes_info
    :initarg :lanes_info
    :type (cl:vector momenta_msgs-msg:LaneInfo)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:LaneInfo :initial-element (cl:make-instance 'momenta_msgs-msg:LaneInfo)))
   (distance_to_stop_line
    :reader distance_to_stop_line
    :initarg :distance_to_stop_line
    :type cl:float
    :initform 0.0)
   (distance_to_car_park
    :reader distance_to_car_park
    :initarg :distance_to_car_park
    :type cl:float
    :initform 0.0)
   (distance_to_destination
    :reader distance_to_destination
    :initarg :distance_to_destination
    :type cl:float
    :initform 0.0)
   (distance_to_left_waiting_area
    :reader distance_to_left_waiting_area
    :initarg :distance_to_left_waiting_area
    :type cl:float
    :initform 0.0)
   (distance_to_left_waiting_area_stop_line
    :reader distance_to_left_waiting_area_stop_line
    :initarg :distance_to_left_waiting_area_stop_line
    :type cl:float
    :initform 0.0)
   (distance_to_barrier_gap
    :reader distance_to_barrier_gap
    :initarg :distance_to_barrier_gap
    :type cl:float
    :initform 0.0)
   (current_lane_speed_limit
    :reader current_lane_speed_limit
    :initarg :current_lane_speed_limit
    :type cl:float
    :initform 0.0)
   (speed_change_point
    :reader speed_change_point
    :initarg :speed_change_point
    :type momenta_msgs-msg:SpeedChangePoint
    :initform (cl:make-instance 'momenta_msgs-msg:SpeedChangePoint))
   (is_in_map_area
    :reader is_in_map_area
    :initarg :is_in_map_area
    :type cl:boolean
    :initform cl:nil)
   (is_in_intersection
    :reader is_in_intersection
    :initarg :is_in_intersection
    :type cl:boolean
    :initform cl:nil)
   (current_lane_index
    :reader current_lane_index
    :initarg :current_lane_index
    :type cl:fixnum
    :initform 0)
   (mono_time
    :reader mono_time
    :initarg :mono_time
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (enu
    :reader enu
    :initarg :enu
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (wgs84_position
    :reader wgs84_position
    :initarg :wgs84_position
    :type sensor_msgs-msg:NavSatFix
    :initform (cl:make-instance 'sensor_msgs-msg:NavSatFix)))
)

(cl:defclass MapPlanning (<MapPlanning>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapPlanning>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapPlanning)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<MapPlanning> is deprecated: use momenta_msgs-msg:MapPlanning instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lane_boundaries-val :lambda-list '(m))
(cl:defmethod lane_boundaries-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane_boundaries-val is deprecated.  Use momenta_msgs-msg:lane_boundaries instead.")
  (lane_boundaries m))

(cl:ensure-generic-function 'next_maneuver-val :lambda-list '(m))
(cl:defmethod next_maneuver-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:next_maneuver-val is deprecated.  Use momenta_msgs-msg:next_maneuver instead.")
  (next_maneuver m))

(cl:ensure-generic-function 'last_maneuver-val :lambda-list '(m))
(cl:defmethod last_maneuver-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:last_maneuver-val is deprecated.  Use momenta_msgs-msg:last_maneuver instead.")
  (last_maneuver m))

(cl:ensure-generic-function 'next_merge-val :lambda-list '(m))
(cl:defmethod next_merge-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:next_merge-val is deprecated.  Use momenta_msgs-msg:next_merge instead.")
  (next_merge m))

(cl:ensure-generic-function 'tasks-val :lambda-list '(m))
(cl:defmethod tasks-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:tasks-val is deprecated.  Use momenta_msgs-msg:tasks instead.")
  (tasks m))

(cl:ensure-generic-function 'current_refline-val :lambda-list '(m))
(cl:defmethod current_refline-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:current_refline-val is deprecated.  Use momenta_msgs-msg:current_refline instead.")
  (current_refline m))

(cl:ensure-generic-function 'left_left_refline-val :lambda-list '(m))
(cl:defmethod left_left_refline-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:left_left_refline-val is deprecated.  Use momenta_msgs-msg:left_left_refline instead.")
  (left_left_refline m))

(cl:ensure-generic-function 'left_refline-val :lambda-list '(m))
(cl:defmethod left_refline-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:left_refline-val is deprecated.  Use momenta_msgs-msg:left_refline instead.")
  (left_refline m))

(cl:ensure-generic-function 'right_refline-val :lambda-list '(m))
(cl:defmethod right_refline-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:right_refline-val is deprecated.  Use momenta_msgs-msg:right_refline instead.")
  (right_refline m))

(cl:ensure-generic-function 'right_right_refline-val :lambda-list '(m))
(cl:defmethod right_right_refline-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:right_right_refline-val is deprecated.  Use momenta_msgs-msg:right_right_refline instead.")
  (right_right_refline m))

(cl:ensure-generic-function 'left_boundary_info-val :lambda-list '(m))
(cl:defmethod left_boundary_info-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:left_boundary_info-val is deprecated.  Use momenta_msgs-msg:left_boundary_info instead.")
  (left_boundary_info m))

(cl:ensure-generic-function 'right_boundary_info-val :lambda-list '(m))
(cl:defmethod right_boundary_info-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:right_boundary_info-val is deprecated.  Use momenta_msgs-msg:right_boundary_info instead.")
  (right_boundary_info m))

(cl:ensure-generic-function 'traffic_light-val :lambda-list '(m))
(cl:defmethod traffic_light-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:traffic_light-val is deprecated.  Use momenta_msgs-msg:traffic_light instead.")
  (traffic_light m))

(cl:ensure-generic-function 'lanes_info-val :lambda-list '(m))
(cl:defmethod lanes_info-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lanes_info-val is deprecated.  Use momenta_msgs-msg:lanes_info instead.")
  (lanes_info m))

(cl:ensure-generic-function 'distance_to_stop_line-val :lambda-list '(m))
(cl:defmethod distance_to_stop_line-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance_to_stop_line-val is deprecated.  Use momenta_msgs-msg:distance_to_stop_line instead.")
  (distance_to_stop_line m))

(cl:ensure-generic-function 'distance_to_car_park-val :lambda-list '(m))
(cl:defmethod distance_to_car_park-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance_to_car_park-val is deprecated.  Use momenta_msgs-msg:distance_to_car_park instead.")
  (distance_to_car_park m))

(cl:ensure-generic-function 'distance_to_destination-val :lambda-list '(m))
(cl:defmethod distance_to_destination-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance_to_destination-val is deprecated.  Use momenta_msgs-msg:distance_to_destination instead.")
  (distance_to_destination m))

(cl:ensure-generic-function 'distance_to_left_waiting_area-val :lambda-list '(m))
(cl:defmethod distance_to_left_waiting_area-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance_to_left_waiting_area-val is deprecated.  Use momenta_msgs-msg:distance_to_left_waiting_area instead.")
  (distance_to_left_waiting_area m))

(cl:ensure-generic-function 'distance_to_left_waiting_area_stop_line-val :lambda-list '(m))
(cl:defmethod distance_to_left_waiting_area_stop_line-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance_to_left_waiting_area_stop_line-val is deprecated.  Use momenta_msgs-msg:distance_to_left_waiting_area_stop_line instead.")
  (distance_to_left_waiting_area_stop_line m))

(cl:ensure-generic-function 'distance_to_barrier_gap-val :lambda-list '(m))
(cl:defmethod distance_to_barrier_gap-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance_to_barrier_gap-val is deprecated.  Use momenta_msgs-msg:distance_to_barrier_gap instead.")
  (distance_to_barrier_gap m))

(cl:ensure-generic-function 'current_lane_speed_limit-val :lambda-list '(m))
(cl:defmethod current_lane_speed_limit-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:current_lane_speed_limit-val is deprecated.  Use momenta_msgs-msg:current_lane_speed_limit instead.")
  (current_lane_speed_limit m))

(cl:ensure-generic-function 'speed_change_point-val :lambda-list '(m))
(cl:defmethod speed_change_point-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:speed_change_point-val is deprecated.  Use momenta_msgs-msg:speed_change_point instead.")
  (speed_change_point m))

(cl:ensure-generic-function 'is_in_map_area-val :lambda-list '(m))
(cl:defmethod is_in_map_area-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_in_map_area-val is deprecated.  Use momenta_msgs-msg:is_in_map_area instead.")
  (is_in_map_area m))

(cl:ensure-generic-function 'is_in_intersection-val :lambda-list '(m))
(cl:defmethod is_in_intersection-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_in_intersection-val is deprecated.  Use momenta_msgs-msg:is_in_intersection instead.")
  (is_in_intersection m))

(cl:ensure-generic-function 'current_lane_index-val :lambda-list '(m))
(cl:defmethod current_lane_index-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:current_lane_index-val is deprecated.  Use momenta_msgs-msg:current_lane_index instead.")
  (current_lane_index m))

(cl:ensure-generic-function 'mono_time-val :lambda-list '(m))
(cl:defmethod mono_time-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:mono_time-val is deprecated.  Use momenta_msgs-msg:mono_time instead.")
  (mono_time m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:pose-val is deprecated.  Use momenta_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'enu-val :lambda-list '(m))
(cl:defmethod enu-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:enu-val is deprecated.  Use momenta_msgs-msg:enu instead.")
  (enu m))

(cl:ensure-generic-function 'wgs84_position-val :lambda-list '(m))
(cl:defmethod wgs84_position-val ((m <MapPlanning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:wgs84_position-val is deprecated.  Use momenta_msgs-msg:wgs84_position instead.")
  (wgs84_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapPlanning>) ostream)
  "Serializes a message object of type '<MapPlanning>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_boundaries))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_boundaries))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_maneuver) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_maneuver) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_merge) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tasks) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_refline) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_left_refline) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_refline) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_refline) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_right_refline) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_boundary_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'left_boundary_info))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_boundary_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'right_boundary_info))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traffic_light) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes_info))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_stop_line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_car_park))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_destination))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_left_waiting_area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_left_waiting_area_stop_line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_barrier_gap))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_lane_speed_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_change_point) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_in_map_area) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_in_intersection) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_lane_index)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mono_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'enu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wgs84_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapPlanning>) istream)
  "Deserializes a message object of type '<MapPlanning>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_boundaries) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_boundaries)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:LaneBoundary))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_maneuver) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_maneuver) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_merge) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tasks) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_refline) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_left_refline) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_refline) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_refline) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_right_refline) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_boundary_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_boundary_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:BoundaryInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_boundary_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_boundary_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:BoundaryInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traffic_light) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:LaneInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_stop_line) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_car_park) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_destination) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_left_waiting_area) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_left_waiting_area_stop_line) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_barrier_gap) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_lane_speed_limit) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_change_point) istream)
    (cl:setf (cl:slot-value msg 'is_in_map_area) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_in_intersection) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_lane_index)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mono_time) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'enu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wgs84_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapPlanning>)))
  "Returns string type for a message object of type '<MapPlanning>"
  "momenta_msgs/MapPlanning")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapPlanning)))
  "Returns string type for a message object of type 'MapPlanning"
  "momenta_msgs/MapPlanning")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapPlanning>)))
  "Returns md5sum for a message object of type '<MapPlanning>"
  "508245ebd9190b4916a201f05fa0bcd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapPlanning)))
  "Returns md5sum for a message object of type 'MapPlanning"
  "508245ebd9190b4916a201f05fa0bcd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapPlanning>)))
  "Returns full string definition for message of type '<MapPlanning>"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/LaneBoundary[] lane_boundaries~%momenta_msgs/IntersectionManeuver next_maneuver~%momenta_msgs/IntersectionManeuver last_maneuver~%momenta_msgs/MergePoint next_merge~%momenta_msgs/MapTask tasks~%momenta_msgs/Refline current_refline~%momenta_msgs/Refline left_left_refline~%momenta_msgs/Refline left_refline~%momenta_msgs/Refline right_refline~%momenta_msgs/Refline right_right_refline~%momenta_msgs/BoundaryInfo[] left_boundary_info~%momenta_msgs/BoundaryInfo[] right_boundary_info~%momenta_msgs/TrafficLightInfo traffic_light~%momenta_msgs/LaneInfo[] lanes_info~%float64 distance_to_stop_line~%float64 distance_to_car_park~%float64 distance_to_destination~%float64 distance_to_left_waiting_area~%float64 distance_to_left_waiting_area_stop_line~%float64 distance_to_barrier_gap~%float64 current_lane_speed_limit~%momenta_msgs/SpeedChangePoint speed_change_point~%bool is_in_map_area~%bool is_in_intersection~%uint8 current_lane_index~%int64 mono_time~%geometry_msgs/Pose2D pose~%geometry_msgs/Pose enu~%sensor_msgs/NavSatFix wgs84_position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/LaneBoundary~%float64[] polycoeff~%float64 head~%float64 tail~%int8 relative_id~%uint64 track_id~%~%================================================================================~%MSG: momenta_msgs/IntersectionManeuver~%uint8 direction~%float64 distance~%float64 length~%~%================================================================================~%MSG: momenta_msgs/MergePoint~%float64 distance~%uint8 merge_type~%~%================================================================================~%MSG: momenta_msgs/MapTask~%int8[] current_tasks~%int8[] left_lane_tasks~%int8[] right_lane_tasks~%momenta_msgs/MapTaskRange[] first_task_ranges~%~%================================================================================~%MSG: momenta_msgs/MapTaskRange~%float64 begin_pos~%float64 end_pos~%~%================================================================================~%MSG: momenta_msgs/Refline~%momenta_msgs/Segment[] segments~%momenta_msgs/RefLinePoint[] points~%~%================================================================================~%MSG: momenta_msgs/Segment~%uint16 begin_index~%uint16 end_index~%uint8 connection_type~%uint8 direction~%uint8 lane_type~%int64 lane_original_id~%bool is_in_intersection~%bool is_on_route~%~%================================================================================~%MSG: momenta_msgs/RefLinePoint~%float64 x~%float64 y~%float64 z~%float64 curvature~%float64 yaw~%float64 left_road_border_distance~%float64 right_road_border_distance~%float64 left_lane_border_distance~%float64 right_lane_border_distance~%float64 left_obstacle_distance~%float64 right_obstacle_distance~%float64 lane_width~%float64 speed_limit~%string track_id~%~%================================================================================~%MSG: momenta_msgs/BoundaryInfo~%float64 length~%uint8 type~%~%================================================================================~%MSG: momenta_msgs/TrafficLightInfo~%uint8[] patterns~%uint8 direction~%~%================================================================================~%MSG: momenta_msgs/LaneInfo~%uint8[] lane_marks~%uint8 lane_type~%uint8 lane_boundary_existence~%~%================================================================================~%MSG: momenta_msgs/SpeedChangePoint~%float64 x~%float64 y~%float64 speed~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapPlanning)))
  "Returns full string definition for message of type 'MapPlanning"
  (cl:format cl:nil "std_msgs/Header header~%momenta_msgs/LaneBoundary[] lane_boundaries~%momenta_msgs/IntersectionManeuver next_maneuver~%momenta_msgs/IntersectionManeuver last_maneuver~%momenta_msgs/MergePoint next_merge~%momenta_msgs/MapTask tasks~%momenta_msgs/Refline current_refline~%momenta_msgs/Refline left_left_refline~%momenta_msgs/Refline left_refline~%momenta_msgs/Refline right_refline~%momenta_msgs/Refline right_right_refline~%momenta_msgs/BoundaryInfo[] left_boundary_info~%momenta_msgs/BoundaryInfo[] right_boundary_info~%momenta_msgs/TrafficLightInfo traffic_light~%momenta_msgs/LaneInfo[] lanes_info~%float64 distance_to_stop_line~%float64 distance_to_car_park~%float64 distance_to_destination~%float64 distance_to_left_waiting_area~%float64 distance_to_left_waiting_area_stop_line~%float64 distance_to_barrier_gap~%float64 current_lane_speed_limit~%momenta_msgs/SpeedChangePoint speed_change_point~%bool is_in_map_area~%bool is_in_intersection~%uint8 current_lane_index~%int64 mono_time~%geometry_msgs/Pose2D pose~%geometry_msgs/Pose enu~%sensor_msgs/NavSatFix wgs84_position~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/LaneBoundary~%float64[] polycoeff~%float64 head~%float64 tail~%int8 relative_id~%uint64 track_id~%~%================================================================================~%MSG: momenta_msgs/IntersectionManeuver~%uint8 direction~%float64 distance~%float64 length~%~%================================================================================~%MSG: momenta_msgs/MergePoint~%float64 distance~%uint8 merge_type~%~%================================================================================~%MSG: momenta_msgs/MapTask~%int8[] current_tasks~%int8[] left_lane_tasks~%int8[] right_lane_tasks~%momenta_msgs/MapTaskRange[] first_task_ranges~%~%================================================================================~%MSG: momenta_msgs/MapTaskRange~%float64 begin_pos~%float64 end_pos~%~%================================================================================~%MSG: momenta_msgs/Refline~%momenta_msgs/Segment[] segments~%momenta_msgs/RefLinePoint[] points~%~%================================================================================~%MSG: momenta_msgs/Segment~%uint16 begin_index~%uint16 end_index~%uint8 connection_type~%uint8 direction~%uint8 lane_type~%int64 lane_original_id~%bool is_in_intersection~%bool is_on_route~%~%================================================================================~%MSG: momenta_msgs/RefLinePoint~%float64 x~%float64 y~%float64 z~%float64 curvature~%float64 yaw~%float64 left_road_border_distance~%float64 right_road_border_distance~%float64 left_lane_border_distance~%float64 right_lane_border_distance~%float64 left_obstacle_distance~%float64 right_obstacle_distance~%float64 lane_width~%float64 speed_limit~%string track_id~%~%================================================================================~%MSG: momenta_msgs/BoundaryInfo~%float64 length~%uint8 type~%~%================================================================================~%MSG: momenta_msgs/TrafficLightInfo~%uint8[] patterns~%uint8 direction~%~%================================================================================~%MSG: momenta_msgs/LaneInfo~%uint8[] lane_marks~%uint8 lane_type~%uint8 lane_boundary_existence~%~%================================================================================~%MSG: momenta_msgs/SpeedChangePoint~%float64 x~%float64 y~%float64 speed~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapPlanning>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_boundaries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_maneuver))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_maneuver))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_merge))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tasks))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_refline))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_left_refline))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_refline))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_refline))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_right_refline))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_boundary_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_boundary_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traffic_light))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     8
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_change_point))
     1
     1
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'enu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wgs84_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapPlanning>))
  "Converts a ROS message object to a list"
  (cl:list 'MapPlanning
    (cl:cons ':header (header msg))
    (cl:cons ':lane_boundaries (lane_boundaries msg))
    (cl:cons ':next_maneuver (next_maneuver msg))
    (cl:cons ':last_maneuver (last_maneuver msg))
    (cl:cons ':next_merge (next_merge msg))
    (cl:cons ':tasks (tasks msg))
    (cl:cons ':current_refline (current_refline msg))
    (cl:cons ':left_left_refline (left_left_refline msg))
    (cl:cons ':left_refline (left_refline msg))
    (cl:cons ':right_refline (right_refline msg))
    (cl:cons ':right_right_refline (right_right_refline msg))
    (cl:cons ':left_boundary_info (left_boundary_info msg))
    (cl:cons ':right_boundary_info (right_boundary_info msg))
    (cl:cons ':traffic_light (traffic_light msg))
    (cl:cons ':lanes_info (lanes_info msg))
    (cl:cons ':distance_to_stop_line (distance_to_stop_line msg))
    (cl:cons ':distance_to_car_park (distance_to_car_park msg))
    (cl:cons ':distance_to_destination (distance_to_destination msg))
    (cl:cons ':distance_to_left_waiting_area (distance_to_left_waiting_area msg))
    (cl:cons ':distance_to_left_waiting_area_stop_line (distance_to_left_waiting_area_stop_line msg))
    (cl:cons ':distance_to_barrier_gap (distance_to_barrier_gap msg))
    (cl:cons ':current_lane_speed_limit (current_lane_speed_limit msg))
    (cl:cons ':speed_change_point (speed_change_point msg))
    (cl:cons ':is_in_map_area (is_in_map_area msg))
    (cl:cons ':is_in_intersection (is_in_intersection msg))
    (cl:cons ':current_lane_index (current_lane_index msg))
    (cl:cons ':mono_time (mono_time msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':enu (enu msg))
    (cl:cons ':wgs84_position (wgs84_position msg))
))
