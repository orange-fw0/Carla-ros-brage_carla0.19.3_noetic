; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficSign.msg.html

(cl:defclass <TrafficSign> (roslisp-msg-protocol:ros-message)
  ((camera_source
    :reader camera_source
    :initarg :camera_source
    :type perception_interface_msgs-msg:CameraSourceEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraSourceEnum))
   (camera_model
    :reader camera_model
    :initarg :camera_model
    :type perception_interface_msgs-msg:CameraModelEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraModelEnum))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (points_2d
    :reader points_2d
    :initarg :points_2d
    :type (cl:vector perception_interface_msgs-msg:TrafficSignPoint)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:TrafficSignPoint :initial-element (cl:make-instance 'perception_interface_msgs-msg:TrafficSignPoint)))
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (shape_info
    :reader shape_info
    :initarg :shape_info
    :type perception_interface_msgs-msg:TrafficSignShapeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficSignShapeEnum))
   (bounding_box_2d
    :reader bounding_box_2d
    :initarg :bounding_box_2d
    :type perception_interface_msgs-msg:Rect4f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Rect4f))
   (is_speed_sign
    :reader is_speed_sign
    :initarg :is_speed_sign
    :type cl:boolean
    :initform cl:nil)
   (speed_type
    :reader speed_type
    :initarg :speed_type
    :type perception_interface_msgs-msg:SpeedSignTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:SpeedSignTypeEnum))
   (speed_num
    :reader speed_num
    :initarg :speed_num
    :type perception_interface_msgs-msg:SpeedSignSpeedEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:SpeedSignSpeedEnum))
   (is_road_mark
    :reader is_road_mark
    :initarg :is_road_mark
    :type cl:boolean
    :initform cl:nil)
   (road_mark_type
    :reader road_mark_type
    :initarg :road_mark_type
    :type perception_interface_msgs-msg:RoadMarkTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:RoadMarkTypeEnum))
   (type_info
    :reader type_info
    :initarg :type_info
    :type perception_interface_msgs-msg:TrafficSignTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficSignTypeEnum))
   (speedsign_category
    :reader speedsign_category
    :initarg :speedsign_category
    :type perception_interface_msgs-msg:SpeedSignCategoryEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:SpeedSignCategoryEnum))
   (is_restriction_sign
    :reader is_restriction_sign
    :initarg :is_restriction_sign
    :type cl:boolean
    :initform cl:nil)
   (restriction_type
    :reader restriction_type
    :initarg :restriction_type
    :type perception_interface_msgs-msg:RestrictionSignTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:RestrictionSignTypeEnum))
   (restriction_value
    :reader restriction_value
    :initarg :restriction_value
    :type cl:float
    :initform 0.0)
   (reseved_parking_subtype
    :reader reseved_parking_subtype
    :initarg :reseved_parking_subtype
    :type perception_interface_msgs-msg:ReservedParkingSignSubtypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:ReservedParkingSignSubtypeEnum))
   (is_multi_cam
    :reader is_multi_cam
    :initarg :is_multi_cam
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (arrow_direction
    :reader arrow_direction
    :initarg :arrow_direction
    :type perception_interface_msgs-msg:TrafficSignArrowDirectionEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficSignArrowDirectionEnum))
   (region
    :reader region
    :initarg :region
    :type perception_interface_msgs-msg:TrafficSignRegionEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficSignRegionEnum))
   (is_condition_weather
    :reader is_condition_weather
    :initarg :is_condition_weather
    :type cl:boolean
    :initform cl:nil)
   (is_condition_arrow
    :reader is_condition_arrow
    :initarg :is_condition_arrow
    :type cl:boolean
    :initform cl:nil)
   (is_condition_period
    :reader is_condition_period
    :initarg :is_condition_period
    :type cl:boolean
    :initform cl:nil)
   (is_condition_ramp
    :reader is_condition_ramp
    :initarg :is_condition_ramp
    :type cl:boolean
    :initform cl:nil)
   (is_condition_exit
    :reader is_condition_exit
    :initarg :is_condition_exit
    :type cl:boolean
    :initform cl:nil)
   (is_condition_vehicle_type
    :reader is_condition_vehicle_type
    :initarg :is_condition_vehicle_type
    :type cl:boolean
    :initform cl:nil)
   (is_condition_school
    :reader is_condition_school
    :initarg :is_condition_school
    :type cl:boolean
    :initform cl:nil)
   (is_condition_arrow_left
    :reader is_condition_arrow_left
    :initarg :is_condition_arrow_left
    :type cl:boolean
    :initform cl:nil)
   (is_condition_arrow_right
    :reader is_condition_arrow_right
    :initarg :is_condition_arrow_right
    :type cl:boolean
    :initform cl:nil)
   (is_condition_arrow_front
    :reader is_condition_arrow_front
    :initarg :is_condition_arrow_front
    :type cl:boolean
    :initform cl:nil)
   (is_condition_regional
    :reader is_condition_regional
    :initarg :is_condition_regional
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrafficSign (<TrafficSign>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSign>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSign)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficSign> is deprecated: use perception_interface_msgs-msg:TrafficSign instead.")))

(cl:ensure-generic-function 'camera_source-val :lambda-list '(m))
(cl:defmethod camera_source-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_source-val is deprecated.  Use perception_interface_msgs-msg:camera_source instead.")
  (camera_source m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_model-val is deprecated.  Use perception_interface_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'points_2d-val :lambda-list '(m))
(cl:defmethod points_2d-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_2d-val is deprecated.  Use perception_interface_msgs-msg:points_2d instead.")
  (points_2d m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:track_id-val is deprecated.  Use perception_interface_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'shape_info-val :lambda-list '(m))
(cl:defmethod shape_info-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:shape_info-val is deprecated.  Use perception_interface_msgs-msg:shape_info instead.")
  (shape_info m))

(cl:ensure-generic-function 'bounding_box_2d-val :lambda-list '(m))
(cl:defmethod bounding_box_2d-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:bounding_box_2d-val is deprecated.  Use perception_interface_msgs-msg:bounding_box_2d instead.")
  (bounding_box_2d m))

(cl:ensure-generic-function 'is_speed_sign-val :lambda-list '(m))
(cl:defmethod is_speed_sign-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_speed_sign-val is deprecated.  Use perception_interface_msgs-msg:is_speed_sign instead.")
  (is_speed_sign m))

(cl:ensure-generic-function 'speed_type-val :lambda-list '(m))
(cl:defmethod speed_type-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:speed_type-val is deprecated.  Use perception_interface_msgs-msg:speed_type instead.")
  (speed_type m))

(cl:ensure-generic-function 'speed_num-val :lambda-list '(m))
(cl:defmethod speed_num-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:speed_num-val is deprecated.  Use perception_interface_msgs-msg:speed_num instead.")
  (speed_num m))

(cl:ensure-generic-function 'is_road_mark-val :lambda-list '(m))
(cl:defmethod is_road_mark-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_road_mark-val is deprecated.  Use perception_interface_msgs-msg:is_road_mark instead.")
  (is_road_mark m))

(cl:ensure-generic-function 'road_mark_type-val :lambda-list '(m))
(cl:defmethod road_mark_type-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:road_mark_type-val is deprecated.  Use perception_interface_msgs-msg:road_mark_type instead.")
  (road_mark_type m))

(cl:ensure-generic-function 'type_info-val :lambda-list '(m))
(cl:defmethod type_info-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type_info-val is deprecated.  Use perception_interface_msgs-msg:type_info instead.")
  (type_info m))

(cl:ensure-generic-function 'speedsign_category-val :lambda-list '(m))
(cl:defmethod speedsign_category-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:speedsign_category-val is deprecated.  Use perception_interface_msgs-msg:speedsign_category instead.")
  (speedsign_category m))

(cl:ensure-generic-function 'is_restriction_sign-val :lambda-list '(m))
(cl:defmethod is_restriction_sign-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_restriction_sign-val is deprecated.  Use perception_interface_msgs-msg:is_restriction_sign instead.")
  (is_restriction_sign m))

(cl:ensure-generic-function 'restriction_type-val :lambda-list '(m))
(cl:defmethod restriction_type-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:restriction_type-val is deprecated.  Use perception_interface_msgs-msg:restriction_type instead.")
  (restriction_type m))

(cl:ensure-generic-function 'restriction_value-val :lambda-list '(m))
(cl:defmethod restriction_value-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:restriction_value-val is deprecated.  Use perception_interface_msgs-msg:restriction_value instead.")
  (restriction_value m))

(cl:ensure-generic-function 'reseved_parking_subtype-val :lambda-list '(m))
(cl:defmethod reseved_parking_subtype-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reseved_parking_subtype-val is deprecated.  Use perception_interface_msgs-msg:reseved_parking_subtype instead.")
  (reseved_parking_subtype m))

(cl:ensure-generic-function 'is_multi_cam-val :lambda-list '(m))
(cl:defmethod is_multi_cam-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_multi_cam-val is deprecated.  Use perception_interface_msgs-msg:is_multi_cam instead.")
  (is_multi_cam m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:position-val is deprecated.  Use perception_interface_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'arrow_direction-val :lambda-list '(m))
(cl:defmethod arrow_direction-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:arrow_direction-val is deprecated.  Use perception_interface_msgs-msg:arrow_direction instead.")
  (arrow_direction m))

(cl:ensure-generic-function 'region-val :lambda-list '(m))
(cl:defmethod region-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:region-val is deprecated.  Use perception_interface_msgs-msg:region instead.")
  (region m))

(cl:ensure-generic-function 'is_condition_weather-val :lambda-list '(m))
(cl:defmethod is_condition_weather-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_condition_weather-val is deprecated.  Use perception_interface_msgs-msg:is_condition_weather instead.")
  (is_condition_weather m))

(cl:ensure-generic-function 'is_condition_arrow-val :lambda-list '(m))
(cl:defmethod is_condition_arrow-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_condition_arrow-val is deprecated.  Use perception_interface_msgs-msg:is_condition_arrow instead.")
  (is_condition_arrow m))

(cl:ensure-generic-function 'is_condition_period-val :lambda-list '(m))
(cl:defmethod is_condition_period-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_condition_period-val is deprecated.  Use perception_interface_msgs-msg:is_condition_period instead.")
  (is_condition_period m))

(cl:ensure-generic-function 'is_condition_ramp-val :lambda-list '(m))
(cl:defmethod is_condition_ramp-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_condition_ramp-val is deprecated.  Use perception_interface_msgs-msg:is_condition_ramp instead.")
  (is_condition_ramp m))

(cl:ensure-generic-function 'is_condition_exit-val :lambda-list '(m))
(cl:defmethod is_condition_exit-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_condition_exit-val is deprecated.  Use perception_interface_msgs-msg:is_condition_exit instead.")
  (is_condition_exit m))

(cl:ensure-generic-function 'is_condition_vehicle_type-val :lambda-list '(m))
(cl:defmethod is_condition_vehicle_type-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_condition_vehicle_type-val is deprecated.  Use perception_interface_msgs-msg:is_condition_vehicle_type instead.")
  (is_condition_vehicle_type m))

(cl:ensure-generic-function 'is_condition_school-val :lambda-list '(m))
(cl:defmethod is_condition_school-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_condition_school-val is deprecated.  Use perception_interface_msgs-msg:is_condition_school instead.")
  (is_condition_school m))

(cl:ensure-generic-function 'is_condition_arrow_left-val :lambda-list '(m))
(cl:defmethod is_condition_arrow_left-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_condition_arrow_left-val is deprecated.  Use perception_interface_msgs-msg:is_condition_arrow_left instead.")
  (is_condition_arrow_left m))

(cl:ensure-generic-function 'is_condition_arrow_right-val :lambda-list '(m))
(cl:defmethod is_condition_arrow_right-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_condition_arrow_right-val is deprecated.  Use perception_interface_msgs-msg:is_condition_arrow_right instead.")
  (is_condition_arrow_right m))

(cl:ensure-generic-function 'is_condition_arrow_front-val :lambda-list '(m))
(cl:defmethod is_condition_arrow_front-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_condition_arrow_front-val is deprecated.  Use perception_interface_msgs-msg:is_condition_arrow_front instead.")
  (is_condition_arrow_front m))

(cl:ensure-generic-function 'is_condition_regional-val :lambda-list '(m))
(cl:defmethod is_condition_regional-val ((m <TrafficSign>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_condition_regional-val is deprecated.  Use perception_interface_msgs-msg:is_condition_regional instead.")
  (is_condition_regional m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSign>) ostream)
  "Serializes a message object of type '<TrafficSign>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_2d))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_2d) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_speed_sign) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_num) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_road_mark) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_mark_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speedsign_category) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_restriction_sign) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'restriction_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'restriction_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reseved_parking_subtype) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_multi_cam) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arrow_direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'region) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_condition_weather) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_condition_arrow) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_condition_period) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_condition_ramp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_condition_exit) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_condition_vehicle_type) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_condition_school) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_condition_arrow_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_condition_arrow_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_condition_arrow_front) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_condition_regional) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSign>) istream)
  "Deserializes a message object of type '<TrafficSign>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_2d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_2d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:TrafficSignPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_2d) istream)
    (cl:setf (cl:slot-value msg 'is_speed_sign) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_num) istream)
    (cl:setf (cl:slot-value msg 'is_road_mark) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_mark_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speedsign_category) istream)
    (cl:setf (cl:slot-value msg 'is_restriction_sign) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'restriction_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'restriction_value) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reseved_parking_subtype) istream)
    (cl:setf (cl:slot-value msg 'is_multi_cam) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arrow_direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'region) istream)
    (cl:setf (cl:slot-value msg 'is_condition_weather) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_condition_arrow) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_condition_period) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_condition_ramp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_condition_exit) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_condition_vehicle_type) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_condition_school) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_condition_arrow_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_condition_arrow_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_condition_arrow_front) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_condition_regional) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSign>)))
  "Returns string type for a message object of type '<TrafficSign>"
  "perception_interface_msgs/TrafficSign")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSign)))
  "Returns string type for a message object of type 'TrafficSign"
  "perception_interface_msgs/TrafficSign")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSign>)))
  "Returns md5sum for a message object of type '<TrafficSign>"
  "b221ebe00b8ecd77beefa0c3305aa309")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSign)))
  "Returns md5sum for a message object of type 'TrafficSign"
  "b221ebe00b8ecd77beefa0c3305aa309")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSign>)))
  "Returns full string definition for message of type '<TrafficSign>"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficSignPoint[] points_2d~%uint32 track_id~%perception_interface_msgs/TrafficSignShapeEnum shape_info~%perception_interface_msgs/Rect4f bounding_box_2d~%bool is_speed_sign~%perception_interface_msgs/SpeedSignTypeEnum speed_type~%perception_interface_msgs/SpeedSignSpeedEnum speed_num~%bool is_road_mark~%perception_interface_msgs/RoadMarkTypeEnum road_mark_type~%perception_interface_msgs/TrafficSignTypeEnum type_info~%perception_interface_msgs/SpeedSignCategoryEnum speedsign_category~%bool is_restriction_sign~%perception_interface_msgs/RestrictionSignTypeEnum restriction_type~%float32 restriction_value~%perception_interface_msgs/ReservedParkingSignSubtypeEnum reseved_parking_subtype~%bool is_multi_cam~%perception_interface_msgs/Point3d position~%perception_interface_msgs/TrafficSignArrowDirectionEnum arrow_direction~%perception_interface_msgs/TrafficSignRegionEnum region~%bool is_condition_weather~%bool is_condition_arrow~%bool is_condition_period~%bool is_condition_ramp~%bool is_condition_exit~%bool is_condition_vehicle_type~%bool is_condition_school~%bool is_condition_arrow_left~%bool is_condition_arrow_right~%bool is_condition_arrow_front~%bool is_condition_regional~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficSignPoint~%perception_interface_msgs/Point2f position~%float32 visibility~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/TrafficSignShapeEnum~%uint8 TRAFFIC_SIGN_SHAPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_SHAPE_BACKGROUND = 1~%uint8 TRAFFIC_SIGN_SHAPE_HEXAGON = 2~%uint8 TRAFFIC_SIGN_SHAPE_DIAMOND = 3~%uint8 TRAFFIC_SIGN_SHAPE_RECTANGLE = 4~%uint8 TRAFFIC_SIGN_SHAPE_TRIANGLE = 5~%uint8 TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE = 6~%uint8 TRAFFIC_SIGN_SHAPE_POLYGON = 7~%uint8 TRAFFIC_SIGN_SHAPE_CIRCLE = 8~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%================================================================================~%MSG: perception_interface_msgs/SpeedSignTypeEnum~%uint8 SPEED_SIGN_TYPE_UNKNOWN = 0~%uint8 SPEED_SIGN_TYPE_HIGH_SPEED = 1~%uint8 SPEED_SIGN_TYPE_LOW_SPEED = 2~%uint8 SPEED_SIGN_TYPE_DESPEED = 3~%uint8 SPEED_SIGN_TYPE_RECOMMENDED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/SpeedSignSpeedEnum~%uint8 SPEED_SIGN_SPEED_UNKNOWN = 0~%uint8 SPEED_SIGN_SPEED_5 = 1~%uint8 SPEED_SIGN_SPEED_10 = 2~%uint8 SPEED_SIGN_SPEED_15 = 3~%uint8 SPEED_SIGN_SPEED_20 = 4~%uint8 SPEED_SIGN_SPEED_25 = 5~%uint8 SPEED_SIGN_SPEED_30 = 6~%uint8 SPEED_SIGN_SPEED_35 = 7~%uint8 SPEED_SIGN_SPEED_40 = 8~%uint8 SPEED_SIGN_SPEED_50 = 9~%uint8 SPEED_SIGN_SPEED_60 = 10~%uint8 SPEED_SIGN_SPEED_70 = 11~%uint8 SPEED_SIGN_SPEED_80 = 12~%uint8 SPEED_SIGN_SPEED_90 = 13~%uint8 SPEED_SIGN_SPEED_100 = 14~%uint8 SPEED_SIGN_SPEED_110 = 15~%uint8 SPEED_SIGN_SPEED_120 = 16~%uint8 SPEED_SIGN_SPEED_130 = 17~%uint8 SPEED_SIGN_SPEED_140 = 18~%uint8 SPEED_SIGN_SPEED_45 = 19~%uint8 SPEED_SIGN_SPEED_55 = 20~%uint8 SPEED_SIGN_SPEED_65 = 21~%uint8 SPEED_SIGN_SPEED_75 = 22~%uint8 SPEED_SIGN_SPEED_85 = 23~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/RoadMarkTypeEnum~%uint8 ROAD_MARK_TYPE_UNKNOWN = 0~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT = 1~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT = 2~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT = 3~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK = 4~%uint8 ROAD_MARK_TYPE_TURN_LEFT = 5~%uint8 ROAD_MARK_TYPE_TURN_RIGHT = 6~%uint8 ROAD_MARK_TYPE_TURN_BACK = 7~%uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK = 8~%uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT = 9~%uint8 ROAD_MARK_TYPE_LEFT_CONFLUENCE = 10~%uint8 ROAD_MARK_TYPE_RIGHT_CONFLUENCE = 11~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficSignTypeEnum~%uint8 TRAFFIC_SIGN_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_TYPE_OTHER = 1~%uint8 TRAFFIC_SIGN_TYPE_STOP = 2~%uint8 TRAFFIC_SIGN_TYPE_GIVE_WAY = 3~%uint8 TRAFFIC_SIGN_TYPE_NO_OVERTAKING = 4~%uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING = 5~%uint8 TRAFFIC_SIGN_TYPE_NO_ENTRANCE = 6~%uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE = 7~%uint8 TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS = 8~%uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE = 9~%uint8 TRAFFIC_SIGN_TYPE_RAMP = 10~%uint8 TRAFFIC_SIGN_TYPE_EXIT = 11~%uint8 TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING = 12~%uint8 TRAFFIC_SIGN_TYPE_TIME = 13~%uint8 TRAFFIC_SIGN_TYPE_NO_MINIBUSES = 14~%uint8 TRAFFIC_SIGN_TYPE_NO_LEFT_TURN = 15~%uint8 TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN = 16~%uint8 TRAFFIC_SIGN_TYPE_NO_U_TURN = 17~%uint8 TRAFFIC_SIGN_TYPE_NO_HONKING = 18~%uint8 TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD = 19~%uint8 TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING = 20~%uint8 TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING = 21~%uint8 TRAFFIC_SIGN_TYPE_ROAD_WORK = 22~%uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN = 23~%uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS = 24~%uint8 TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE = 25~%uint8 TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION = 26~%uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 27~%uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 28~%uint8 TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD = 29~%uint8 TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD = 30~%uint8 TRAFFIC_SIGN_TYPE_UPHILL_AHEAD = 31~%uint8 TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD = 32~%uint8 TRAFFIC_SIGN_TYPE_NO_PARKING = 33~%uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING = 34~%uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING = 35~%uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING = 36~%uint8 TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE = 37~%uint8 TRAFFIC_SIGN_TYPE_EXPWAY_EXIT = 38~%uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS = 39~%uint8 TRAFFIC_SIGN_TYPE_PARKING = 40~%uint8 TRAFFIC_SIGN_TYPE_RESERVED_PARKING = 41~%uint8 TRAFFIC_SIGN_TYPE_PAYMENT_PARKING = 42~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/SpeedSignCategoryEnum~%uint8 SPEED_SIGN_CATEGORY_UNKNOWN = 0~%uint8 SPEED_SIGN_CATEGORY_ORDINARY = 1~%uint8 SPEED_SIGN_CATEGORY_ELECTRONIC = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/RestrictionSignTypeEnum~%uint8 RESTRINCTION_SIGN_TYPE_UNKNOWN = 0~%uint8 RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT = 1~%uint8 RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT = 2~%uint8 RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ReservedParkingSignSubtypeEnum~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN = 0~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_OTHER = 1~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_TAXI = 2~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS = 3~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_BUS = 4~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_DISABLED = 5~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_FEMALE = 6~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_CHARGING = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficSignArrowDirectionEnum~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_LEFT = 2~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE = 3~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficSignRegionEnum~%uint8 TRAFFIC_SIGN_REGION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_REGION_CN = 1~%uint8 TRAFFIC_SIGN_REGION_EU = 2~%uint8 TRAFFIC_SIGN_REGION_US = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSign)))
  "Returns full string definition for message of type 'TrafficSign"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/TrafficSignPoint[] points_2d~%uint32 track_id~%perception_interface_msgs/TrafficSignShapeEnum shape_info~%perception_interface_msgs/Rect4f bounding_box_2d~%bool is_speed_sign~%perception_interface_msgs/SpeedSignTypeEnum speed_type~%perception_interface_msgs/SpeedSignSpeedEnum speed_num~%bool is_road_mark~%perception_interface_msgs/RoadMarkTypeEnum road_mark_type~%perception_interface_msgs/TrafficSignTypeEnum type_info~%perception_interface_msgs/SpeedSignCategoryEnum speedsign_category~%bool is_restriction_sign~%perception_interface_msgs/RestrictionSignTypeEnum restriction_type~%float32 restriction_value~%perception_interface_msgs/ReservedParkingSignSubtypeEnum reseved_parking_subtype~%bool is_multi_cam~%perception_interface_msgs/Point3d position~%perception_interface_msgs/TrafficSignArrowDirectionEnum arrow_direction~%perception_interface_msgs/TrafficSignRegionEnum region~%bool is_condition_weather~%bool is_condition_arrow~%bool is_condition_period~%bool is_condition_ramp~%bool is_condition_exit~%bool is_condition_vehicle_type~%bool is_condition_school~%bool is_condition_arrow_left~%bool is_condition_arrow_right~%bool is_condition_arrow_front~%bool is_condition_regional~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficSignPoint~%perception_interface_msgs/Point2f position~%float32 visibility~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/TrafficSignShapeEnum~%uint8 TRAFFIC_SIGN_SHAPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_SHAPE_BACKGROUND = 1~%uint8 TRAFFIC_SIGN_SHAPE_HEXAGON = 2~%uint8 TRAFFIC_SIGN_SHAPE_DIAMOND = 3~%uint8 TRAFFIC_SIGN_SHAPE_RECTANGLE = 4~%uint8 TRAFFIC_SIGN_SHAPE_TRIANGLE = 5~%uint8 TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE = 6~%uint8 TRAFFIC_SIGN_SHAPE_POLYGON = 7~%uint8 TRAFFIC_SIGN_SHAPE_CIRCLE = 8~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%================================================================================~%MSG: perception_interface_msgs/SpeedSignTypeEnum~%uint8 SPEED_SIGN_TYPE_UNKNOWN = 0~%uint8 SPEED_SIGN_TYPE_HIGH_SPEED = 1~%uint8 SPEED_SIGN_TYPE_LOW_SPEED = 2~%uint8 SPEED_SIGN_TYPE_DESPEED = 3~%uint8 SPEED_SIGN_TYPE_RECOMMENDED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/SpeedSignSpeedEnum~%uint8 SPEED_SIGN_SPEED_UNKNOWN = 0~%uint8 SPEED_SIGN_SPEED_5 = 1~%uint8 SPEED_SIGN_SPEED_10 = 2~%uint8 SPEED_SIGN_SPEED_15 = 3~%uint8 SPEED_SIGN_SPEED_20 = 4~%uint8 SPEED_SIGN_SPEED_25 = 5~%uint8 SPEED_SIGN_SPEED_30 = 6~%uint8 SPEED_SIGN_SPEED_35 = 7~%uint8 SPEED_SIGN_SPEED_40 = 8~%uint8 SPEED_SIGN_SPEED_50 = 9~%uint8 SPEED_SIGN_SPEED_60 = 10~%uint8 SPEED_SIGN_SPEED_70 = 11~%uint8 SPEED_SIGN_SPEED_80 = 12~%uint8 SPEED_SIGN_SPEED_90 = 13~%uint8 SPEED_SIGN_SPEED_100 = 14~%uint8 SPEED_SIGN_SPEED_110 = 15~%uint8 SPEED_SIGN_SPEED_120 = 16~%uint8 SPEED_SIGN_SPEED_130 = 17~%uint8 SPEED_SIGN_SPEED_140 = 18~%uint8 SPEED_SIGN_SPEED_45 = 19~%uint8 SPEED_SIGN_SPEED_55 = 20~%uint8 SPEED_SIGN_SPEED_65 = 21~%uint8 SPEED_SIGN_SPEED_75 = 22~%uint8 SPEED_SIGN_SPEED_85 = 23~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/RoadMarkTypeEnum~%uint8 ROAD_MARK_TYPE_UNKNOWN = 0~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT = 1~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT = 2~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT = 3~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK = 4~%uint8 ROAD_MARK_TYPE_TURN_LEFT = 5~%uint8 ROAD_MARK_TYPE_TURN_RIGHT = 6~%uint8 ROAD_MARK_TYPE_TURN_BACK = 7~%uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK = 8~%uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT = 9~%uint8 ROAD_MARK_TYPE_LEFT_CONFLUENCE = 10~%uint8 ROAD_MARK_TYPE_RIGHT_CONFLUENCE = 11~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficSignTypeEnum~%uint8 TRAFFIC_SIGN_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_TYPE_OTHER = 1~%uint8 TRAFFIC_SIGN_TYPE_STOP = 2~%uint8 TRAFFIC_SIGN_TYPE_GIVE_WAY = 3~%uint8 TRAFFIC_SIGN_TYPE_NO_OVERTAKING = 4~%uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING = 5~%uint8 TRAFFIC_SIGN_TYPE_NO_ENTRANCE = 6~%uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE = 7~%uint8 TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS = 8~%uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE = 9~%uint8 TRAFFIC_SIGN_TYPE_RAMP = 10~%uint8 TRAFFIC_SIGN_TYPE_EXIT = 11~%uint8 TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING = 12~%uint8 TRAFFIC_SIGN_TYPE_TIME = 13~%uint8 TRAFFIC_SIGN_TYPE_NO_MINIBUSES = 14~%uint8 TRAFFIC_SIGN_TYPE_NO_LEFT_TURN = 15~%uint8 TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN = 16~%uint8 TRAFFIC_SIGN_TYPE_NO_U_TURN = 17~%uint8 TRAFFIC_SIGN_TYPE_NO_HONKING = 18~%uint8 TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD = 19~%uint8 TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING = 20~%uint8 TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING = 21~%uint8 TRAFFIC_SIGN_TYPE_ROAD_WORK = 22~%uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN = 23~%uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS = 24~%uint8 TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE = 25~%uint8 TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION = 26~%uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 27~%uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 28~%uint8 TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD = 29~%uint8 TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD = 30~%uint8 TRAFFIC_SIGN_TYPE_UPHILL_AHEAD = 31~%uint8 TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD = 32~%uint8 TRAFFIC_SIGN_TYPE_NO_PARKING = 33~%uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING = 34~%uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING = 35~%uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING = 36~%uint8 TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE = 37~%uint8 TRAFFIC_SIGN_TYPE_EXPWAY_EXIT = 38~%uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS = 39~%uint8 TRAFFIC_SIGN_TYPE_PARKING = 40~%uint8 TRAFFIC_SIGN_TYPE_RESERVED_PARKING = 41~%uint8 TRAFFIC_SIGN_TYPE_PAYMENT_PARKING = 42~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/SpeedSignCategoryEnum~%uint8 SPEED_SIGN_CATEGORY_UNKNOWN = 0~%uint8 SPEED_SIGN_CATEGORY_ORDINARY = 1~%uint8 SPEED_SIGN_CATEGORY_ELECTRONIC = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/RestrictionSignTypeEnum~%uint8 RESTRINCTION_SIGN_TYPE_UNKNOWN = 0~%uint8 RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT = 1~%uint8 RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT = 2~%uint8 RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ReservedParkingSignSubtypeEnum~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN = 0~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_OTHER = 1~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_TAXI = 2~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS = 3~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_BUS = 4~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_DISABLED = 5~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_FEMALE = 6~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_CHARGING = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficSignArrowDirectionEnum~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_LEFT = 2~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE = 3~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficSignRegionEnum~%uint8 TRAFFIC_SIGN_REGION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_REGION_CN = 1~%uint8 TRAFFIC_SIGN_REGION_EU = 2~%uint8 TRAFFIC_SIGN_REGION_US = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSign>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_2d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_2d))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_num))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_mark_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speedsign_category))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'restriction_type))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reseved_parking_subtype))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arrow_direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'region))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSign>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSign
    (cl:cons ':camera_source (camera_source msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':score (score msg))
    (cl:cons ':points_2d (points_2d msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':shape_info (shape_info msg))
    (cl:cons ':bounding_box_2d (bounding_box_2d msg))
    (cl:cons ':is_speed_sign (is_speed_sign msg))
    (cl:cons ':speed_type (speed_type msg))
    (cl:cons ':speed_num (speed_num msg))
    (cl:cons ':is_road_mark (is_road_mark msg))
    (cl:cons ':road_mark_type (road_mark_type msg))
    (cl:cons ':type_info (type_info msg))
    (cl:cons ':speedsign_category (speedsign_category msg))
    (cl:cons ':is_restriction_sign (is_restriction_sign msg))
    (cl:cons ':restriction_type (restriction_type msg))
    (cl:cons ':restriction_value (restriction_value msg))
    (cl:cons ':reseved_parking_subtype (reseved_parking_subtype msg))
    (cl:cons ':is_multi_cam (is_multi_cam msg))
    (cl:cons ':position (position msg))
    (cl:cons ':arrow_direction (arrow_direction msg))
    (cl:cons ':region (region msg))
    (cl:cons ':is_condition_weather (is_condition_weather msg))
    (cl:cons ':is_condition_arrow (is_condition_arrow msg))
    (cl:cons ':is_condition_period (is_condition_period msg))
    (cl:cons ':is_condition_ramp (is_condition_ramp msg))
    (cl:cons ':is_condition_exit (is_condition_exit msg))
    (cl:cons ':is_condition_vehicle_type (is_condition_vehicle_type msg))
    (cl:cons ':is_condition_school (is_condition_school msg))
    (cl:cons ':is_condition_arrow_left (is_condition_arrow_left msg))
    (cl:cons ':is_condition_arrow_right (is_condition_arrow_right msg))
    (cl:cons ':is_condition_arrow_front (is_condition_arrow_front msg))
    (cl:cons ':is_condition_regional (is_condition_regional msg))
))
