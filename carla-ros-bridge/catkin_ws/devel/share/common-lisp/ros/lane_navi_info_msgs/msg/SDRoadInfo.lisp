; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDRoadInfo.msg.html

(cl:defclass <SDRoadInfo> (roslisp-msg-protocol:ros-message)
  ((f_angle
    :reader f_angle
    :initarg :f_angle
    :type cl:fixnum
    :initform 0)
   (t_angle
    :reader t_angle
    :initarg :t_angle
    :type cl:fixnum
    :initform 0)
   (has_toll
    :reader has_toll
    :initarg :has_toll
    :type cl:boolean
    :initform cl:nil)
   (has_traffic_light
    :reader has_traffic_light
    :initarg :has_traffic_light
    :type cl:boolean
    :initform cl:nil)
   (history_average_speed
    :reader history_average_speed
    :initarg :history_average_speed
    :type cl:fixnum
    :initform 0)
   (max_speed_limit_list
    :reader max_speed_limit_list
    :initarg :max_speed_limit_list
    :type (cl:vector lane_navi_info_msgs-msg:SpeedLimit)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SpeedLimit :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SpeedLimit)))
   (derived_speed_limit_list
    :reader derived_speed_limit_list
    :initarg :derived_speed_limit_list
    :type (cl:vector lane_navi_info_msgs-msg:SpeedLimit)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SpeedLimit :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SpeedLimit)))
   (facility_list
    :reader facility_list
    :initarg :facility_list
    :type (cl:vector lane_navi_info_msgs-msg:SDFacility)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDFacility :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDFacility)))
   (camera_list
    :reader camera_list
    :initarg :camera_list
    :type (cl:vector lane_navi_info_msgs-msg:SDCameraInfo)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDCameraInfo :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDCameraInfo)))
   (arrow_marking_list
    :reader arrow_marking_list
    :initarg :arrow_marking_list
    :type (cl:vector lane_navi_info_msgs-msg:SDArrowMarking)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDArrowMarking :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDArrowMarking)))
   (point_curvature_list
    :reader point_curvature_list
    :initarg :point_curvature_list
    :type (cl:vector lane_navi_info_msgs-msg:SDPointCurvature)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDPointCurvature :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDPointCurvature)))
   (long_solid_line_list
    :reader long_solid_line_list
    :initarg :long_solid_line_list
    :type (cl:vector lane_navi_info_msgs-msg:SDLongSolidLine)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDLongSolidLine :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDLongSolidLine)))
   (bus_lane_info_list
    :reader bus_lane_info_list
    :initarg :bus_lane_info_list
    :type (cl:vector lane_navi_info_msgs-msg:SDBusLaneInfo)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDBusLaneInfo :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDBusLaneInfo)))
   (back_lane_list
    :reader back_lane_list
    :initarg :back_lane_list
    :type (cl:vector lane_navi_info_msgs-msg:SDBackLaneInfo)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDBackLaneInfo :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDBackLaneInfo)))
   (front_lane_list
    :reader front_lane_list
    :initarg :front_lane_list
    :type (cl:vector lane_navi_info_msgs-msg:SDFrontLaneInfo)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDFrontLaneInfo :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDFrontLaneInfo)))
   (check_point_list
    :reader check_point_list
    :initarg :check_point_list
    :type (cl:vector lane_navi_info_msgs-msg:SDCheckPoint)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SDCheckPoint :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SDCheckPoint)))
   (ownership
    :reader ownership
    :initarg :ownership
    :type lane_navi_info_msgs-msg:SDOwnership
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:SDOwnership))
   (region_code
    :reader region_code
    :initarg :region_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SDRoadInfo (<SDRoadInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDRoadInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDRoadInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDRoadInfo> is deprecated: use lane_navi_info_msgs-msg:SDRoadInfo instead.")))

(cl:ensure-generic-function 'f_angle-val :lambda-list '(m))
(cl:defmethod f_angle-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:f_angle-val is deprecated.  Use lane_navi_info_msgs-msg:f_angle instead.")
  (f_angle m))

(cl:ensure-generic-function 't_angle-val :lambda-list '(m))
(cl:defmethod t_angle-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:t_angle-val is deprecated.  Use lane_navi_info_msgs-msg:t_angle instead.")
  (t_angle m))

(cl:ensure-generic-function 'has_toll-val :lambda-list '(m))
(cl:defmethod has_toll-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:has_toll-val is deprecated.  Use lane_navi_info_msgs-msg:has_toll instead.")
  (has_toll m))

(cl:ensure-generic-function 'has_traffic_light-val :lambda-list '(m))
(cl:defmethod has_traffic_light-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:has_traffic_light-val is deprecated.  Use lane_navi_info_msgs-msg:has_traffic_light instead.")
  (has_traffic_light m))

(cl:ensure-generic-function 'history_average_speed-val :lambda-list '(m))
(cl:defmethod history_average_speed-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:history_average_speed-val is deprecated.  Use lane_navi_info_msgs-msg:history_average_speed instead.")
  (history_average_speed m))

(cl:ensure-generic-function 'max_speed_limit_list-val :lambda-list '(m))
(cl:defmethod max_speed_limit_list-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:max_speed_limit_list-val is deprecated.  Use lane_navi_info_msgs-msg:max_speed_limit_list instead.")
  (max_speed_limit_list m))

(cl:ensure-generic-function 'derived_speed_limit_list-val :lambda-list '(m))
(cl:defmethod derived_speed_limit_list-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:derived_speed_limit_list-val is deprecated.  Use lane_navi_info_msgs-msg:derived_speed_limit_list instead.")
  (derived_speed_limit_list m))

(cl:ensure-generic-function 'facility_list-val :lambda-list '(m))
(cl:defmethod facility_list-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:facility_list-val is deprecated.  Use lane_navi_info_msgs-msg:facility_list instead.")
  (facility_list m))

(cl:ensure-generic-function 'camera_list-val :lambda-list '(m))
(cl:defmethod camera_list-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:camera_list-val is deprecated.  Use lane_navi_info_msgs-msg:camera_list instead.")
  (camera_list m))

(cl:ensure-generic-function 'arrow_marking_list-val :lambda-list '(m))
(cl:defmethod arrow_marking_list-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:arrow_marking_list-val is deprecated.  Use lane_navi_info_msgs-msg:arrow_marking_list instead.")
  (arrow_marking_list m))

(cl:ensure-generic-function 'point_curvature_list-val :lambda-list '(m))
(cl:defmethod point_curvature_list-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:point_curvature_list-val is deprecated.  Use lane_navi_info_msgs-msg:point_curvature_list instead.")
  (point_curvature_list m))

(cl:ensure-generic-function 'long_solid_line_list-val :lambda-list '(m))
(cl:defmethod long_solid_line_list-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:long_solid_line_list-val is deprecated.  Use lane_navi_info_msgs-msg:long_solid_line_list instead.")
  (long_solid_line_list m))

(cl:ensure-generic-function 'bus_lane_info_list-val :lambda-list '(m))
(cl:defmethod bus_lane_info_list-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:bus_lane_info_list-val is deprecated.  Use lane_navi_info_msgs-msg:bus_lane_info_list instead.")
  (bus_lane_info_list m))

(cl:ensure-generic-function 'back_lane_list-val :lambda-list '(m))
(cl:defmethod back_lane_list-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:back_lane_list-val is deprecated.  Use lane_navi_info_msgs-msg:back_lane_list instead.")
  (back_lane_list m))

(cl:ensure-generic-function 'front_lane_list-val :lambda-list '(m))
(cl:defmethod front_lane_list-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:front_lane_list-val is deprecated.  Use lane_navi_info_msgs-msg:front_lane_list instead.")
  (front_lane_list m))

(cl:ensure-generic-function 'check_point_list-val :lambda-list '(m))
(cl:defmethod check_point_list-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:check_point_list-val is deprecated.  Use lane_navi_info_msgs-msg:check_point_list instead.")
  (check_point_list m))

(cl:ensure-generic-function 'ownership-val :lambda-list '(m))
(cl:defmethod ownership-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:ownership-val is deprecated.  Use lane_navi_info_msgs-msg:ownership instead.")
  (ownership m))

(cl:ensure-generic-function 'region_code-val :lambda-list '(m))
(cl:defmethod region_code-val ((m <SDRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:region_code-val is deprecated.  Use lane_navi_info_msgs-msg:region_code instead.")
  (region_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDRoadInfo>) ostream)
  "Serializes a message object of type '<SDRoadInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'f_angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 't_angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 't_angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_toll) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_traffic_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'history_average_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'history_average_speed)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'max_speed_limit_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'max_speed_limit_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'derived_speed_limit_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'derived_speed_limit_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'facility_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'facility_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'camera_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'camera_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arrow_marking_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'arrow_marking_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point_curvature_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'point_curvature_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'long_solid_line_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'long_solid_line_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bus_lane_info_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bus_lane_info_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'back_lane_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'back_lane_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'front_lane_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'front_lane_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'check_point_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'check_point_list))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ownership) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'region_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'region_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDRoadInfo>) istream)
  "Deserializes a message object of type '<SDRoadInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'f_angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 't_angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 't_angle)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'has_toll) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'has_traffic_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'history_average_speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'history_average_speed)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'max_speed_limit_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'max_speed_limit_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SpeedLimit))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'derived_speed_limit_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'derived_speed_limit_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SpeedLimit))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'facility_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'facility_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDFacility))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'camera_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'camera_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDCameraInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arrow_marking_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arrow_marking_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDArrowMarking))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point_curvature_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point_curvature_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDPointCurvature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'long_solid_line_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'long_solid_line_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDLongSolidLine))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bus_lane_info_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bus_lane_info_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDBusLaneInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'back_lane_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'back_lane_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDBackLaneInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'front_lane_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'front_lane_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDFrontLaneInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'check_point_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'check_point_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SDCheckPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ownership) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'region_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'region_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDRoadInfo>)))
  "Returns string type for a message object of type '<SDRoadInfo>"
  "lane_navi_info_msgs/SDRoadInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDRoadInfo)))
  "Returns string type for a message object of type 'SDRoadInfo"
  "lane_navi_info_msgs/SDRoadInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDRoadInfo>)))
  "Returns md5sum for a message object of type '<SDRoadInfo>"
  "d34c104b809605835e0b8447af0af4e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDRoadInfo)))
  "Returns md5sum for a message object of type 'SDRoadInfo"
  "d34c104b809605835e0b8447af0af4e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDRoadInfo>)))
  "Returns full string definition for message of type '<SDRoadInfo>"
  (cl:format cl:nil "uint16 f_angle~%uint16 t_angle~%bool has_toll~%bool has_traffic_light~%uint16 history_average_speed~%lane_navi_info_msgs/SpeedLimit[] max_speed_limit_list~%lane_navi_info_msgs/SpeedLimit[] derived_speed_limit_list~%lane_navi_info_msgs/SDFacility[] facility_list~%lane_navi_info_msgs/SDCameraInfo[] camera_list~%lane_navi_info_msgs/SDArrowMarking[] arrow_marking_list~%lane_navi_info_msgs/SDPointCurvature[] point_curvature_list~%lane_navi_info_msgs/SDLongSolidLine[] long_solid_line_list~%lane_navi_info_msgs/SDBusLaneInfo[] bus_lane_info_list~%lane_navi_info_msgs/SDBackLaneInfo[] back_lane_list~%lane_navi_info_msgs/SDFrontLaneInfo[] front_lane_list~%lane_navi_info_msgs/SDCheckPoint[] check_point_list~%lane_navi_info_msgs/SDOwnership ownership~%uint16 region_code~%~%================================================================================~%MSG: lane_navi_info_msgs/SpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFacility~%float32 offset~%lane_navi_info_msgs/SDFacilityType facility_type~%lane_navi_info_msgs/SDSpeedLimitType speed_limit_type~%uint16 speed_limit_value~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/WeatherRule weather_limit~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFacilityType~%uint8 FACILITY_LEFT_INTER_FLOW = 1~%uint8 FACILITY_RIGHT_INTER_FLOW = 2~%uint8 FACILITY_REVERSE_TURN = 4~%uint8 FACILITY_LINKING_TURN = 5~%uint8 FACILITY_ACCIDENT_AREA = 6~%uint8 FACILITY_RAILWAY_CROSS = 8~%uint8 FACILITY_SLIPPERY = 9~%uint8 FACILITY_MAX_SPEED_LIMIT = 10~%uint8 FACILITY_MIN_SPEED_LIMIT = 11~%uint8 FACILITY_VILLAGE = 12~%uint8 FACILITY_LEFT_NARROW = 13~%uint8 FACILITY_RIGHT_NARROW = 14~%uint8 FACILITY_DOUBLE_NARROW = 15~%uint8 FACILITY_CROSS_WIND_AREA = 16~%uint8 FACILITY_SCHOOL = 17~%uint8 FACILITY_NOPASSING = 18~%uint8 FACILITY_NARROW_BRIDGE = 19~%uint8 FACILITY_AROUND_THE_LINE = 20~%uint8 FACILITY_LEFT_BYPASS = 21~%uint8 FACILITY_RIGHT_BYPASS = 22~%uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23~%uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24~%uint8 FACILITY_ONSTEEPLOPE = 25~%uint8 FACILITY_UNDERSTEEPLOPE = 26~%uint8 FACILITY_OVER_WATER_ROAD = 27~%uint8 FACILITY_UNEVEN_ROAD = 28~%uint8 FACILITY_STROLL = 29~%uint8 FACILITY_ATTENTION_TO_DANGER = 30~%uint8 FACILITY_CROSSWALK = 31~%uint8 FACILITY_RIVER_BANK_LEFT = 33~%uint8 FACILITY_RIVER_BANK_RIGHT = 34~%uint8 FACILITY_CHILDREN = 35~%uint8 FACILITY_CYCLISTS = 36~%uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37~%uint8 FACILITY_GIVE_WAY = 38~%uint8 FACILITY_STOP = 39~%uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40~%uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41~%uint8 FACILITY_HUMPBACK_BRIDGE = 42~%uint8 FACILITY_END_OF_SPEED_LIMIT = 43~%uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44~%uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50~%uint8 FACILITY_RAILWAY_WITH_GATES = 51~%uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52~%uint8 FACILITY_VARIABLE_SPEED = 53~%uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54~%uint8 FACILITY_PEDESTRIANS = 56~%uint8 FACILITY_UNKNOWN = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDSpeedLimitType~%uint8 SPEED_LIMIT_TYPE_DEFAULT = 0~%uint8 SPEED_LIMIT_TYPE_RAMP = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRule~%lane_navi_info_msgs/WeatherRuleType[] weather_rule_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRuleType~%uint8 WEATHERTYPE_INVALID = 0~%uint8 WEATHERTYPE_SUNSHINE = 1~%uint8 WEATHERTYPE_RAINSNOW = 2~%uint8 WEATHERTYPE_ICE = 3~%uint8 WEATHERTYPE_FOG = 4~%uint8 WEATHERTYPE_WIND = 5~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDCameraInfo~%float32 offset~%lane_navi_info_msgs/ECameraType ecamera_type~%uint32 speed_limit_value~%~%================================================================================~%MSG: lane_navi_info_msgs/ECameraType~%uint8 ECAMERA_SPEED = 0~%uint8 ECAMERA_MONITOR = 1~%uint8 ECAMERA_TRAFIC_LIGHT = 2~%uint8 ECAMERA_RULE = 3~%uint8 ECAMERA_BUS = 4~%uint8 ECAMERA_EMERGENCY = 5~%uint8 ECAMERA_NON_MOTORIZED = 6~%uint8 ECAMERA_RANGE = 7~%uint8 ECAMERA_INTER_SPEED_START = 8~%uint8 ECAMERA_INTER_SPEED_END = 9~%uint8 ECAMERA_UNKNOWN = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowMarking~%uint8 ARROWMARKING_STRAIGHT = 0~%uint8 ARROWMARKING_LEFT = 1~%uint8 ARROWMARKING_STRAIGHT_LEFT = 2~%uint8 ARROWMARKING_RIGHT = 3~%uint8 ARROWMARKING_STRAIGHT_RIGHT = 4~%uint8 ARROWMARKING_LEFT_UTURN = 5~%uint8 ARROWMARKING_LEFT_RIGHT = 6~%uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7~%uint8 ARROWMARKING_RIGHT_UTURN = 8~%uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9~%uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10~%uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11~%uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12~%uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16~%uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17~%uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18~%uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19~%uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20~%uint8 ARROWMARKING_UNKNOWN = 255~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/SDPointCurvature~%float32 offset~%float32 value~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLongSolidLine~%landmark_msgs/TrackId[] effect_road_ids~%uint32[] valid_lanes~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/SDBusLaneInfo~%uint32 offset~%uint8[] on_lanes~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDBackLaneInfo~%int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneDirectType~%uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0~%uint8 SD_LANE_DIRECT_TYPE_BUS = 1~%uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2~%uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3~%uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneArrow~%lane_navi_info_msgs/SDArrowType[] arrow_types~%lane_navi_info_msgs/TimeRegulationRange[] time~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowType~%uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFrontLaneInfo~%landmark_msgs/TrackId to_road_id~%lane_navi_info_msgs/SDFrontLane[] lanes~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFrontLane~%int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDCheckPoint~%float32 offset~%~%================================================================================~%MSG: lane_navi_info_msgs/SDOwnership~%uint8 OWNERSHIP_PUBLIC = 0~%uint8 OWNERSHIP_INNER = 1~%uint8 OWNERSHIP_PRIVATE = 2~%uint8 OWNERSHIP_UNKNOWN = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDRoadInfo)))
  "Returns full string definition for message of type 'SDRoadInfo"
  (cl:format cl:nil "uint16 f_angle~%uint16 t_angle~%bool has_toll~%bool has_traffic_light~%uint16 history_average_speed~%lane_navi_info_msgs/SpeedLimit[] max_speed_limit_list~%lane_navi_info_msgs/SpeedLimit[] derived_speed_limit_list~%lane_navi_info_msgs/SDFacility[] facility_list~%lane_navi_info_msgs/SDCameraInfo[] camera_list~%lane_navi_info_msgs/SDArrowMarking[] arrow_marking_list~%lane_navi_info_msgs/SDPointCurvature[] point_curvature_list~%lane_navi_info_msgs/SDLongSolidLine[] long_solid_line_list~%lane_navi_info_msgs/SDBusLaneInfo[] bus_lane_info_list~%lane_navi_info_msgs/SDBackLaneInfo[] back_lane_list~%lane_navi_info_msgs/SDFrontLaneInfo[] front_lane_list~%lane_navi_info_msgs/SDCheckPoint[] check_point_list~%lane_navi_info_msgs/SDOwnership ownership~%uint16 region_code~%~%================================================================================~%MSG: lane_navi_info_msgs/SpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFacility~%float32 offset~%lane_navi_info_msgs/SDFacilityType facility_type~%lane_navi_info_msgs/SDSpeedLimitType speed_limit_type~%uint16 speed_limit_value~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/WeatherRule weather_limit~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFacilityType~%uint8 FACILITY_LEFT_INTER_FLOW = 1~%uint8 FACILITY_RIGHT_INTER_FLOW = 2~%uint8 FACILITY_REVERSE_TURN = 4~%uint8 FACILITY_LINKING_TURN = 5~%uint8 FACILITY_ACCIDENT_AREA = 6~%uint8 FACILITY_RAILWAY_CROSS = 8~%uint8 FACILITY_SLIPPERY = 9~%uint8 FACILITY_MAX_SPEED_LIMIT = 10~%uint8 FACILITY_MIN_SPEED_LIMIT = 11~%uint8 FACILITY_VILLAGE = 12~%uint8 FACILITY_LEFT_NARROW = 13~%uint8 FACILITY_RIGHT_NARROW = 14~%uint8 FACILITY_DOUBLE_NARROW = 15~%uint8 FACILITY_CROSS_WIND_AREA = 16~%uint8 FACILITY_SCHOOL = 17~%uint8 FACILITY_NOPASSING = 18~%uint8 FACILITY_NARROW_BRIDGE = 19~%uint8 FACILITY_AROUND_THE_LINE = 20~%uint8 FACILITY_LEFT_BYPASS = 21~%uint8 FACILITY_RIGHT_BYPASS = 22~%uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23~%uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24~%uint8 FACILITY_ONSTEEPLOPE = 25~%uint8 FACILITY_UNDERSTEEPLOPE = 26~%uint8 FACILITY_OVER_WATER_ROAD = 27~%uint8 FACILITY_UNEVEN_ROAD = 28~%uint8 FACILITY_STROLL = 29~%uint8 FACILITY_ATTENTION_TO_DANGER = 30~%uint8 FACILITY_CROSSWALK = 31~%uint8 FACILITY_RIVER_BANK_LEFT = 33~%uint8 FACILITY_RIVER_BANK_RIGHT = 34~%uint8 FACILITY_CHILDREN = 35~%uint8 FACILITY_CYCLISTS = 36~%uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37~%uint8 FACILITY_GIVE_WAY = 38~%uint8 FACILITY_STOP = 39~%uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40~%uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41~%uint8 FACILITY_HUMPBACK_BRIDGE = 42~%uint8 FACILITY_END_OF_SPEED_LIMIT = 43~%uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44~%uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50~%uint8 FACILITY_RAILWAY_WITH_GATES = 51~%uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52~%uint8 FACILITY_VARIABLE_SPEED = 53~%uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54~%uint8 FACILITY_PEDESTRIANS = 56~%uint8 FACILITY_UNKNOWN = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDSpeedLimitType~%uint8 SPEED_LIMIT_TYPE_DEFAULT = 0~%uint8 SPEED_LIMIT_TYPE_RAMP = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRule~%lane_navi_info_msgs/WeatherRuleType[] weather_rule_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRuleType~%uint8 WEATHERTYPE_INVALID = 0~%uint8 WEATHERTYPE_SUNSHINE = 1~%uint8 WEATHERTYPE_RAINSNOW = 2~%uint8 WEATHERTYPE_ICE = 3~%uint8 WEATHERTYPE_FOG = 4~%uint8 WEATHERTYPE_WIND = 5~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDCameraInfo~%float32 offset~%lane_navi_info_msgs/ECameraType ecamera_type~%uint32 speed_limit_value~%~%================================================================================~%MSG: lane_navi_info_msgs/ECameraType~%uint8 ECAMERA_SPEED = 0~%uint8 ECAMERA_MONITOR = 1~%uint8 ECAMERA_TRAFIC_LIGHT = 2~%uint8 ECAMERA_RULE = 3~%uint8 ECAMERA_BUS = 4~%uint8 ECAMERA_EMERGENCY = 5~%uint8 ECAMERA_NON_MOTORIZED = 6~%uint8 ECAMERA_RANGE = 7~%uint8 ECAMERA_INTER_SPEED_START = 8~%uint8 ECAMERA_INTER_SPEED_END = 9~%uint8 ECAMERA_UNKNOWN = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowMarking~%uint8 ARROWMARKING_STRAIGHT = 0~%uint8 ARROWMARKING_LEFT = 1~%uint8 ARROWMARKING_STRAIGHT_LEFT = 2~%uint8 ARROWMARKING_RIGHT = 3~%uint8 ARROWMARKING_STRAIGHT_RIGHT = 4~%uint8 ARROWMARKING_LEFT_UTURN = 5~%uint8 ARROWMARKING_LEFT_RIGHT = 6~%uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7~%uint8 ARROWMARKING_RIGHT_UTURN = 8~%uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9~%uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10~%uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11~%uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12~%uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16~%uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17~%uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18~%uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19~%uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20~%uint8 ARROWMARKING_UNKNOWN = 255~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/SDPointCurvature~%float32 offset~%float32 value~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLongSolidLine~%landmark_msgs/TrackId[] effect_road_ids~%uint32[] valid_lanes~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/SDBusLaneInfo~%uint32 offset~%uint8[] on_lanes~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDBackLaneInfo~%int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneDirectType~%uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0~%uint8 SD_LANE_DIRECT_TYPE_BUS = 1~%uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2~%uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3~%uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneArrow~%lane_navi_info_msgs/SDArrowType[] arrow_types~%lane_navi_info_msgs/TimeRegulationRange[] time~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowType~%uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFrontLaneInfo~%landmark_msgs/TrackId to_road_id~%lane_navi_info_msgs/SDFrontLane[] lanes~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFrontLane~%int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDCheckPoint~%float32 offset~%~%================================================================================~%MSG: lane_navi_info_msgs/SDOwnership~%uint8 OWNERSHIP_PUBLIC = 0~%uint8 OWNERSHIP_INNER = 1~%uint8 OWNERSHIP_PRIVATE = 2~%uint8 OWNERSHIP_UNKNOWN = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDRoadInfo>))
  (cl:+ 0
     2
     2
     1
     1
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'max_speed_limit_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'derived_speed_limit_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'facility_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'camera_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arrow_marking_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point_curvature_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'long_solid_line_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bus_lane_info_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'back_lane_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'front_lane_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'check_point_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ownership))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDRoadInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SDRoadInfo
    (cl:cons ':f_angle (f_angle msg))
    (cl:cons ':t_angle (t_angle msg))
    (cl:cons ':has_toll (has_toll msg))
    (cl:cons ':has_traffic_light (has_traffic_light msg))
    (cl:cons ':history_average_speed (history_average_speed msg))
    (cl:cons ':max_speed_limit_list (max_speed_limit_list msg))
    (cl:cons ':derived_speed_limit_list (derived_speed_limit_list msg))
    (cl:cons ':facility_list (facility_list msg))
    (cl:cons ':camera_list (camera_list msg))
    (cl:cons ':arrow_marking_list (arrow_marking_list msg))
    (cl:cons ':point_curvature_list (point_curvature_list msg))
    (cl:cons ':long_solid_line_list (long_solid_line_list msg))
    (cl:cons ':bus_lane_info_list (bus_lane_info_list msg))
    (cl:cons ':back_lane_list (back_lane_list msg))
    (cl:cons ':front_lane_list (front_lane_list msg))
    (cl:cons ':check_point_list (check_point_list msg))
    (cl:cons ':ownership (ownership msg))
    (cl:cons ':region_code (region_code msg))
))
