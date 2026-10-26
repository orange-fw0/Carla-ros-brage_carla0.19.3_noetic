; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude NavigationInfo.msg.html

(cl:defclass <NavigationInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (current_road_info
    :reader current_road_info
    :initarg :current_road_info
    :type tbt_msgs-msg:CurrentRoadInfo
    :initform (cl:make-instance 'tbt_msgs-msg:CurrentRoadInfo))
   (next_intersection
    :reader next_intersection
    :initarg :next_intersection
    :type tbt_msgs-msg:NextIntersection
    :initform (cl:make-instance 'tbt_msgs-msg:NextIntersection))
   (road_curve
    :reader road_curve
    :initarg :road_curve
    :type tbt_msgs-msg:RoadCurve
    :initform (cl:make-instance 'tbt_msgs-msg:RoadCurve))
   (distance_to_next_guidance
    :reader distance_to_next_guidance
    :initarg :distance_to_next_guidance
    :type cl:fixnum
    :initform 0)
   (warning_sign_board
    :reader warning_sign_board
    :initarg :warning_sign_board
    :type tbt_msgs-msg:WarningSignBoard
    :initform (cl:make-instance 'tbt_msgs-msg:WarningSignBoard))
   (distance_to_toll_station
    :reader distance_to_toll_station
    :initarg :distance_to_toll_station
    :type cl:fixnum
    :initform 0)
   (distance_to_ramp
    :reader distance_to_ramp
    :initarg :distance_to_ramp
    :type cl:fixnum
    :initform 0)
   (traffic_jam
    :reader traffic_jam
    :initarg :traffic_jam
    :type tbt_msgs-msg:TrafficJam
    :initform (cl:make-instance 'tbt_msgs-msg:TrafficJam))
   (tunnel_reminder
    :reader tunnel_reminder
    :initarg :tunnel_reminder
    :type cl:fixnum
    :initform 0)
   (construction_site
    :reader construction_site
    :initarg :construction_site
    :type tbt_msgs-msg:ConstructionSite
    :initform (cl:make-instance 'tbt_msgs-msg:ConstructionSite))
   (current_location
    :reader current_location
    :initarg :current_location
    :type tbt_msgs-msg:CurrentLocation
    :initform (cl:make-instance 'tbt_msgs-msg:CurrentLocation))
   (relative_location_on_route
    :reader relative_location_on_route
    :initarg :relative_location_on_route
    :type tbt_msgs-msg:RelativeLocationOnRoute
    :initform (cl:make-instance 'tbt_msgs-msg:RelativeLocationOnRoute))
   (navi_status
    :reader navi_status
    :initarg :navi_status
    :type tbt_msgs-msg:NaviStatusEnum
    :initform (cl:make-instance 'tbt_msgs-msg:NaviStatusEnum))
   (speed_limit_camera
    :reader speed_limit_camera
    :initarg :speed_limit_camera
    :type tbt_msgs-msg:SpeedLimitCamera
    :initform (cl:make-instance 'tbt_msgs-msg:SpeedLimitCamera))
   (interval_camera
    :reader interval_camera
    :initarg :interval_camera
    :type tbt_msgs-msg:IntervalCamera
    :initform (cl:make-instance 'tbt_msgs-msg:IntervalCamera))
   (navi_road_traffic_light_sts
    :reader navi_road_traffic_light_sts
    :initarg :navi_road_traffic_light_sts
    :type tbt_msgs-msg:NaviRoadTrafficLightSts
    :initform (cl:make-instance 'tbt_msgs-msg:NaviRoadTrafficLightSts))
   (distance_to_destination
    :reader distance_to_destination
    :initarg :distance_to_destination
    :type cl:fixnum
    :initform 0)
   (guide_action
    :reader guide_action
    :initarg :guide_action
    :type tbt_msgs-msg:GuideActionEnum
    :initform (cl:make-instance 'tbt_msgs-msg:GuideActionEnum))
   (origin_icon_type
    :reader origin_icon_type
    :initarg :origin_icon_type
    :type cl:fixnum
    :initform 0)
   (traffic_lights_location
    :reader traffic_lights_location
    :initarg :traffic_lights_location
    :type (cl:vector tbt_msgs-msg:TrafficLightsLocation)
   :initform (cl:make-array 0 :element-type 'tbt_msgs-msg:TrafficLightsLocation :initial-element (cl:make-instance 'tbt_msgs-msg:TrafficLightsLocation)))
   (tts_text
    :reader tts_text
    :initarg :tts_text
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass NavigationInfo (<NavigationInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<NavigationInfo> is deprecated: use tbt_msgs-msg:NavigationInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:header-val is deprecated.  Use tbt_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'current_road_info-val :lambda-list '(m))
(cl:defmethod current_road_info-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:current_road_info-val is deprecated.  Use tbt_msgs-msg:current_road_info instead.")
  (current_road_info m))

(cl:ensure-generic-function 'next_intersection-val :lambda-list '(m))
(cl:defmethod next_intersection-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:next_intersection-val is deprecated.  Use tbt_msgs-msg:next_intersection instead.")
  (next_intersection m))

(cl:ensure-generic-function 'road_curve-val :lambda-list '(m))
(cl:defmethod road_curve-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:road_curve-val is deprecated.  Use tbt_msgs-msg:road_curve instead.")
  (road_curve m))

(cl:ensure-generic-function 'distance_to_next_guidance-val :lambda-list '(m))
(cl:defmethod distance_to_next_guidance-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:distance_to_next_guidance-val is deprecated.  Use tbt_msgs-msg:distance_to_next_guidance instead.")
  (distance_to_next_guidance m))

(cl:ensure-generic-function 'warning_sign_board-val :lambda-list '(m))
(cl:defmethod warning_sign_board-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:warning_sign_board-val is deprecated.  Use tbt_msgs-msg:warning_sign_board instead.")
  (warning_sign_board m))

(cl:ensure-generic-function 'distance_to_toll_station-val :lambda-list '(m))
(cl:defmethod distance_to_toll_station-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:distance_to_toll_station-val is deprecated.  Use tbt_msgs-msg:distance_to_toll_station instead.")
  (distance_to_toll_station m))

(cl:ensure-generic-function 'distance_to_ramp-val :lambda-list '(m))
(cl:defmethod distance_to_ramp-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:distance_to_ramp-val is deprecated.  Use tbt_msgs-msg:distance_to_ramp instead.")
  (distance_to_ramp m))

(cl:ensure-generic-function 'traffic_jam-val :lambda-list '(m))
(cl:defmethod traffic_jam-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:traffic_jam-val is deprecated.  Use tbt_msgs-msg:traffic_jam instead.")
  (traffic_jam m))

(cl:ensure-generic-function 'tunnel_reminder-val :lambda-list '(m))
(cl:defmethod tunnel_reminder-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:tunnel_reminder-val is deprecated.  Use tbt_msgs-msg:tunnel_reminder instead.")
  (tunnel_reminder m))

(cl:ensure-generic-function 'construction_site-val :lambda-list '(m))
(cl:defmethod construction_site-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:construction_site-val is deprecated.  Use tbt_msgs-msg:construction_site instead.")
  (construction_site m))

(cl:ensure-generic-function 'current_location-val :lambda-list '(m))
(cl:defmethod current_location-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:current_location-val is deprecated.  Use tbt_msgs-msg:current_location instead.")
  (current_location m))

(cl:ensure-generic-function 'relative_location_on_route-val :lambda-list '(m))
(cl:defmethod relative_location_on_route-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:relative_location_on_route-val is deprecated.  Use tbt_msgs-msg:relative_location_on_route instead.")
  (relative_location_on_route m))

(cl:ensure-generic-function 'navi_status-val :lambda-list '(m))
(cl:defmethod navi_status-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:navi_status-val is deprecated.  Use tbt_msgs-msg:navi_status instead.")
  (navi_status m))

(cl:ensure-generic-function 'speed_limit_camera-val :lambda-list '(m))
(cl:defmethod speed_limit_camera-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:speed_limit_camera-val is deprecated.  Use tbt_msgs-msg:speed_limit_camera instead.")
  (speed_limit_camera m))

(cl:ensure-generic-function 'interval_camera-val :lambda-list '(m))
(cl:defmethod interval_camera-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:interval_camera-val is deprecated.  Use tbt_msgs-msg:interval_camera instead.")
  (interval_camera m))

(cl:ensure-generic-function 'navi_road_traffic_light_sts-val :lambda-list '(m))
(cl:defmethod navi_road_traffic_light_sts-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:navi_road_traffic_light_sts-val is deprecated.  Use tbt_msgs-msg:navi_road_traffic_light_sts instead.")
  (navi_road_traffic_light_sts m))

(cl:ensure-generic-function 'distance_to_destination-val :lambda-list '(m))
(cl:defmethod distance_to_destination-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:distance_to_destination-val is deprecated.  Use tbt_msgs-msg:distance_to_destination instead.")
  (distance_to_destination m))

(cl:ensure-generic-function 'guide_action-val :lambda-list '(m))
(cl:defmethod guide_action-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:guide_action-val is deprecated.  Use tbt_msgs-msg:guide_action instead.")
  (guide_action m))

(cl:ensure-generic-function 'origin_icon_type-val :lambda-list '(m))
(cl:defmethod origin_icon_type-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:origin_icon_type-val is deprecated.  Use tbt_msgs-msg:origin_icon_type instead.")
  (origin_icon_type m))

(cl:ensure-generic-function 'traffic_lights_location-val :lambda-list '(m))
(cl:defmethod traffic_lights_location-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:traffic_lights_location-val is deprecated.  Use tbt_msgs-msg:traffic_lights_location instead.")
  (traffic_lights_location m))

(cl:ensure-generic-function 'tts_text-val :lambda-list '(m))
(cl:defmethod tts_text-val ((m <NavigationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:tts_text-val is deprecated.  Use tbt_msgs-msg:tts_text instead.")
  (tts_text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationInfo>) ostream)
  "Serializes a message object of type '<NavigationInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_road_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_intersection) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_curve) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_to_next_guidance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_to_next_guidance)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'warning_sign_board) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_to_toll_station)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_to_toll_station)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_to_ramp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_to_ramp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traffic_jam) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tunnel_reminder)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tunnel_reminder)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'construction_site) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_location) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_location_on_route) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navi_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_limit_camera) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'interval_camera) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navi_road_traffic_light_sts) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_to_destination)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_to_destination)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'guide_action) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_icon_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'origin_icon_type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_lights_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_lights_location))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tts_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'tts_text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationInfo>) istream)
  "Deserializes a message object of type '<NavigationInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_road_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_intersection) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_curve) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_to_next_guidance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_to_next_guidance)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'warning_sign_board) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_to_toll_station)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_to_toll_station)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_to_ramp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_to_ramp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traffic_jam) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tunnel_reminder)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tunnel_reminder)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'construction_site) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_location) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_location_on_route) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navi_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_limit_camera) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'interval_camera) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navi_road_traffic_light_sts) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance_to_destination)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance_to_destination)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'guide_action) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'origin_icon_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'origin_icon_type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_lights_location) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_lights_location)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tbt_msgs-msg:TrafficLightsLocation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tts_text) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tts_text)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationInfo>)))
  "Returns string type for a message object of type '<NavigationInfo>"
  "tbt_msgs/NavigationInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationInfo)))
  "Returns string type for a message object of type 'NavigationInfo"
  "tbt_msgs/NavigationInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationInfo>)))
  "Returns md5sum for a message object of type '<NavigationInfo>"
  "17e980566be3580dc3d3bf1dda4ecef6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationInfo)))
  "Returns md5sum for a message object of type 'NavigationInfo"
  "17e980566be3580dc3d3bf1dda4ecef6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationInfo>)))
  "Returns full string definition for message of type '<NavigationInfo>"
  (cl:format cl:nil "std_msgs/Header header~%tbt_msgs/CurrentRoadInfo current_road_info~%tbt_msgs/NextIntersection next_intersection~%tbt_msgs/RoadCurve road_curve~%uint16 distance_to_next_guidance~%tbt_msgs/WarningSignBoard warning_sign_board~%uint16 distance_to_toll_station~%uint16 distance_to_ramp~%tbt_msgs/TrafficJam traffic_jam~%uint16 tunnel_reminder~%tbt_msgs/ConstructionSite construction_site~%tbt_msgs/CurrentLocation current_location~%tbt_msgs/RelativeLocationOnRoute relative_location_on_route~%tbt_msgs/NaviStatusEnum navi_status~%tbt_msgs/SpeedLimitCamera speed_limit_camera~%tbt_msgs/IntervalCamera interval_camera~%tbt_msgs/NaviRoadTrafficLightSts navi_road_traffic_light_sts~%uint16 distance_to_destination~%tbt_msgs/GuideActionEnum guide_action~%uint16 origin_icon_type~%tbt_msgs/TrafficLightsLocation[] traffic_lights_location~%string[] tts_text~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tbt_msgs/CurrentRoadInfo~%tbt_msgs/RoadClassEnum road_class~%tbt_msgs/RoadFormEnum road_form~%tbt_msgs/RoadTypeEnum road_type~%tbt_msgs/MainSideRoadStatusEnum main_side_road_status~%uint8 current_speed_limit~%~%================================================================================~%MSG: tbt_msgs/RoadClassEnum~%uint8 RoadClassFreeway = 0~%uint8 RoadClassNationalRoad = 1~%uint8 RoadClassProvinceRoad = 2~%uint8 RoadClassCountyRoad = 3~%uint8 RoadClassRuralRoad = 4~%uint8 RoadClassInCountyRoad = 5~%uint8 RoadClassCitySpeedway = 6~%uint8 RoadClassMainRoad = 7~%uint8 RoadClassSecondaryRoad = 8~%uint8 RoadClassCommonRoad = 9~%uint8 RoadClassNonNaviRoad = 10~%uint8 RoadClassNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/RoadFormEnum~%uint8 FormwayDivisedLink = 1~%uint8 FormwayCrossLink = 2~%uint8 FormwayJCT = 3~%uint8 FormwayRoundCircle = 4~%uint8 FormwayServiceRoad = 5~%uint8 FormwaySlipRoad = 6~%uint8 FormwaySideRoad = 7~%uint8 FormwaySlipJCT = 8~%uint8 FormwayExitLink = 9~%uint8 FormwayEntranceLink = 10~%uint8 FormwayTurnRightLineA = 11~%uint8 FormwayTurnRightLineB = 12~%uint8 FormwayTurnLeftLineA = 13~%uint8 FormwayTurnLeftLineB = 14~%uint8 FormwayCommonLink = 15~%uint8 FormwayTurnLeftRightLine = 16~%uint8 FormwayServiceJCTRoad = 53~%uint8 FormwayServiceSlipRoad = 56~%uint8 FormwayServiceSlipJCTRoad = 58~%uint8 FormwayNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/RoadTypeEnum~%uint8 LinkTypeCommon = 0~%uint8 LinkTypeFerry = 1~%uint8 LinkTypeTunnel = 2~%uint8 LinkTypeBridge = 3~%uint8 LinkTypeElevatedRd = 4~%uint8 LinkTypeNull = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/MainSideRoadStatusEnum~%uint8 Default = 0~%uint8 MainRoad = 1~%uint8 SideRoad = 2~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/NextIntersection~%uint8 number_of_lanes~%tbt_msgs/LaneActionEnum[] lane_guidance_list~%tbt_msgs/HighLightLaneEnum[] highlight_lane_list~%tbt_msgs/LaneActionEnum[] origin_highlight_lane_list~%~%================================================================================~%MSG: tbt_msgs/LaneActionEnum~%uint8 LaneActionAhead = 0~%uint8 LaneActionLeft = 1~%uint8 LaneActionAheadLeft = 2~%uint8 LaneActionRight = 3~%uint8 LaneActionAheadRight = 4~%uint8 LaneActionLUTurn = 5~%uint8 LaneActionLeftRigh = 6~%uint8 LaneActionAheadLeftRight = 7~%uint8 LaneActionRUTurn = 8~%uint8 LaneActionAheadLUTurn = 9~%uint8 LaneActionAheadRUTurn = 10~%uint8 LaneActionLeftLUTurn = 11~%uint8 LaneActionRightRUTurn = 12~%uint8 LaneActionLeftInAhead = 13~%uint8 LaneActionLeftLUTurnLEx = 14~%uint8 LaneActionReserved = 15~%uint8 LaneActionAheadLeftLUTurn = 16~%uint8 LaneActionRightLUTurn = 17~%uint8 LaneActionLeftRightLUTurn = 18~%uint8 LaneActionAheadRightLUTurn = 19~%uint8 LaneActionLeftRUTurn = 20~%uint8 LaneActionBus = 21~%uint8 LaneActionEmpty = 22~%uint8 LaneActionVariable = 23~%uint8 LaneActionNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/HighLightLaneEnum~%uint8 Default = 0~%uint8 HighLight = 1~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/RoadCurve~%uint16[] curvature_list~%float64[] latitude_list~%float64[] longitude_list~%~%================================================================================~%MSG: tbt_msgs/WarningSignBoard~%tbt_msgs/SignTypeEnum[] sign_type_list~%uint16[] distance_to_sign_list~%uint8[] speed_limit_list~%~%================================================================================~%MSG: tbt_msgs/SignTypeEnum~%uint8 FacilityTypeNULL = 0~%uint8 FacilityTypeLeftInterflow = 1~%uint8 FacilityTypeRightInterflow = 2~%uint8 FacilityTypeSharpTurn = 3~%uint8 FacilityTypeReverseTurn = 4~%uint8 FacilityTypeLinkingTurn = 5~%uint8 FacilityTypeAccidentArea = 6~%uint8 FacilityTypeFallingRocks = 7~%uint8 FacilityTypeFailwayCross = 8~%uint8 FacilityTypeSlippery = 9~%uint8 FacilityTypeMaxSpeedLimit = 10~%uint8 FacilityTypeMinSpeedLimit = 11~%uint8 FacilityTypeVillage = 12~%uint8 FacilityTypeLeftNarrow = 13~%uint8 FacilityTypeRightNarrow = 14~%uint8 FacilityTypeDoubleNarrow = 15~%uint8 FacilityTypeCrosswindArea = 16~%uint8 FacilityTypeSchoolZone = 17~%uint8 FacilityTypeOvertakeForbid = 18~%uint8 FacilityTypeNarrowBridge = 19~%uint8 FacilityTypeDoubleDetour = 20~%uint8 FacilityTypeLeftDetour = 21~%uint8 FacilityTypeRightDetour = 22~%uint8 FacilityTypeLeftDangerous = 23~%uint8 FacilityTypeRightDangerous = 24~%uint8 FacilityTypeUpperSteep = 25~%uint8 FacilityTypeDownSteep = 26~%uint8 FacilityTypeWaterPavement = 27~%uint8 FacilityTypeIrregularityPavement = 28~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/TrafficJam~%tbt_msgs/TrafficJamStatusEnum status~%uint32 length~%uint32 distance_to_jam~%~%================================================================================~%MSG: tbt_msgs/TrafficJamStatusEnum~%uint8 Unkwon = 0~%uint8 TrafStsFast = 1~%uint8 TrafStsSlow = 2~%uint8 TrafStsJamed = 3~%uint8 TrafStsJamedBad = 4~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/ConstructionSite~%tbt_msgs/ConstructionSiteStatusEnum status~%float64[] latitude_list~%float64[] longitude_list~%~%================================================================================~%MSG: tbt_msgs/ConstructionSiteStatusEnum~%uint8 Unkwon = 0~%uint8 No = 1~%uint8 Yes = 2~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/CurrentLocation~%float64 latitude~%float64 longitude~%uint8 invalid~%~%================================================================================~%MSG: tbt_msgs/RelativeLocationOnRoute~%uint32 ori_cur_step_id~%uint32 ori_cur_link_id_in_step~%uint32 ori_link_offset~%uint32 link_index~%uint32 offset~%uint8 valid~%~%================================================================================~%MSG: tbt_msgs/NaviStatusEnum~%uint8 NavSts_0_invalid = 0~%uint8 NavSts_1_navigation = 1~%uint8 NavSts_2_routing = 2~%uint8 NavSts_3_Cruise = 3~%uint8 NavSts_4_yaw = 4~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/SpeedLimitCamera~%uint8 speed_limit~%uint32 distance~%~%================================================================================~%MSG: tbt_msgs/IntervalCamera~%uint8 speed_limit~%uint16 distance~%float64 start_lat~%float64 start_long~%float64 end_lat~%float64 end_long~%~%================================================================================~%MSG: tbt_msgs/NaviRoadTrafficLightSts~%uint8 status~%uint32 dist~%~%================================================================================~%MSG: tbt_msgs/GuideActionEnum~%uint8 NO_NAVI_ACTION = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 DRIVE_LEFT_FRONT = 3~%uint8 DRIVE_RIGHT_FRONT = 4~%uint8 DRIVE_LEFT_REAR = 5~%uint8 DRIVE_RIGHT_REAR = 6~%uint8 TURN_LEFT_TURN_AROUND = 7~%uint8 GO_STRAIGHT = 8~%uint8 FRONT_ROAD_ALONG_LEFT = 9~%uint8 FRONT_ROAD_ALONG_RIGHT = 10~%uint8 TRIFURCATION_ALONG_LEFT = 11~%uint8 TRIFURCATION_ALONG_MIDDLE = 12~%uint8 TRIFURCATION_ALONG_RIGHT = 13~%uint8 TWO_STRAIGHT_ALONG_LEFT = 14~%uint8 TWO_STRAIGHT_ALONG_RIGHT = 15~%uint8 THREE_STRAIGHT_ALONG_LEFT = 16~%uint8 THREE_STRAIGHT_ALONG_MIDDLE = 17~%uint8 THREE_STRAIGHT_ALONG_RIGHT = 18~%uint8 ENTRY_RING = 19~%uint8 DESTINATION = 20~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/TrafficLightsLocation~%float64 lat~%float64 lon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationInfo)))
  "Returns full string definition for message of type 'NavigationInfo"
  (cl:format cl:nil "std_msgs/Header header~%tbt_msgs/CurrentRoadInfo current_road_info~%tbt_msgs/NextIntersection next_intersection~%tbt_msgs/RoadCurve road_curve~%uint16 distance_to_next_guidance~%tbt_msgs/WarningSignBoard warning_sign_board~%uint16 distance_to_toll_station~%uint16 distance_to_ramp~%tbt_msgs/TrafficJam traffic_jam~%uint16 tunnel_reminder~%tbt_msgs/ConstructionSite construction_site~%tbt_msgs/CurrentLocation current_location~%tbt_msgs/RelativeLocationOnRoute relative_location_on_route~%tbt_msgs/NaviStatusEnum navi_status~%tbt_msgs/SpeedLimitCamera speed_limit_camera~%tbt_msgs/IntervalCamera interval_camera~%tbt_msgs/NaviRoadTrafficLightSts navi_road_traffic_light_sts~%uint16 distance_to_destination~%tbt_msgs/GuideActionEnum guide_action~%uint16 origin_icon_type~%tbt_msgs/TrafficLightsLocation[] traffic_lights_location~%string[] tts_text~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tbt_msgs/CurrentRoadInfo~%tbt_msgs/RoadClassEnum road_class~%tbt_msgs/RoadFormEnum road_form~%tbt_msgs/RoadTypeEnum road_type~%tbt_msgs/MainSideRoadStatusEnum main_side_road_status~%uint8 current_speed_limit~%~%================================================================================~%MSG: tbt_msgs/RoadClassEnum~%uint8 RoadClassFreeway = 0~%uint8 RoadClassNationalRoad = 1~%uint8 RoadClassProvinceRoad = 2~%uint8 RoadClassCountyRoad = 3~%uint8 RoadClassRuralRoad = 4~%uint8 RoadClassInCountyRoad = 5~%uint8 RoadClassCitySpeedway = 6~%uint8 RoadClassMainRoad = 7~%uint8 RoadClassSecondaryRoad = 8~%uint8 RoadClassCommonRoad = 9~%uint8 RoadClassNonNaviRoad = 10~%uint8 RoadClassNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/RoadFormEnum~%uint8 FormwayDivisedLink = 1~%uint8 FormwayCrossLink = 2~%uint8 FormwayJCT = 3~%uint8 FormwayRoundCircle = 4~%uint8 FormwayServiceRoad = 5~%uint8 FormwaySlipRoad = 6~%uint8 FormwaySideRoad = 7~%uint8 FormwaySlipJCT = 8~%uint8 FormwayExitLink = 9~%uint8 FormwayEntranceLink = 10~%uint8 FormwayTurnRightLineA = 11~%uint8 FormwayTurnRightLineB = 12~%uint8 FormwayTurnLeftLineA = 13~%uint8 FormwayTurnLeftLineB = 14~%uint8 FormwayCommonLink = 15~%uint8 FormwayTurnLeftRightLine = 16~%uint8 FormwayServiceJCTRoad = 53~%uint8 FormwayServiceSlipRoad = 56~%uint8 FormwayServiceSlipJCTRoad = 58~%uint8 FormwayNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/RoadTypeEnum~%uint8 LinkTypeCommon = 0~%uint8 LinkTypeFerry = 1~%uint8 LinkTypeTunnel = 2~%uint8 LinkTypeBridge = 3~%uint8 LinkTypeElevatedRd = 4~%uint8 LinkTypeNull = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/MainSideRoadStatusEnum~%uint8 Default = 0~%uint8 MainRoad = 1~%uint8 SideRoad = 2~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/NextIntersection~%uint8 number_of_lanes~%tbt_msgs/LaneActionEnum[] lane_guidance_list~%tbt_msgs/HighLightLaneEnum[] highlight_lane_list~%tbt_msgs/LaneActionEnum[] origin_highlight_lane_list~%~%================================================================================~%MSG: tbt_msgs/LaneActionEnum~%uint8 LaneActionAhead = 0~%uint8 LaneActionLeft = 1~%uint8 LaneActionAheadLeft = 2~%uint8 LaneActionRight = 3~%uint8 LaneActionAheadRight = 4~%uint8 LaneActionLUTurn = 5~%uint8 LaneActionLeftRigh = 6~%uint8 LaneActionAheadLeftRight = 7~%uint8 LaneActionRUTurn = 8~%uint8 LaneActionAheadLUTurn = 9~%uint8 LaneActionAheadRUTurn = 10~%uint8 LaneActionLeftLUTurn = 11~%uint8 LaneActionRightRUTurn = 12~%uint8 LaneActionLeftInAhead = 13~%uint8 LaneActionLeftLUTurnLEx = 14~%uint8 LaneActionReserved = 15~%uint8 LaneActionAheadLeftLUTurn = 16~%uint8 LaneActionRightLUTurn = 17~%uint8 LaneActionLeftRightLUTurn = 18~%uint8 LaneActionAheadRightLUTurn = 19~%uint8 LaneActionLeftRUTurn = 20~%uint8 LaneActionBus = 21~%uint8 LaneActionEmpty = 22~%uint8 LaneActionVariable = 23~%uint8 LaneActionNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/HighLightLaneEnum~%uint8 Default = 0~%uint8 HighLight = 1~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/RoadCurve~%uint16[] curvature_list~%float64[] latitude_list~%float64[] longitude_list~%~%================================================================================~%MSG: tbt_msgs/WarningSignBoard~%tbt_msgs/SignTypeEnum[] sign_type_list~%uint16[] distance_to_sign_list~%uint8[] speed_limit_list~%~%================================================================================~%MSG: tbt_msgs/SignTypeEnum~%uint8 FacilityTypeNULL = 0~%uint8 FacilityTypeLeftInterflow = 1~%uint8 FacilityTypeRightInterflow = 2~%uint8 FacilityTypeSharpTurn = 3~%uint8 FacilityTypeReverseTurn = 4~%uint8 FacilityTypeLinkingTurn = 5~%uint8 FacilityTypeAccidentArea = 6~%uint8 FacilityTypeFallingRocks = 7~%uint8 FacilityTypeFailwayCross = 8~%uint8 FacilityTypeSlippery = 9~%uint8 FacilityTypeMaxSpeedLimit = 10~%uint8 FacilityTypeMinSpeedLimit = 11~%uint8 FacilityTypeVillage = 12~%uint8 FacilityTypeLeftNarrow = 13~%uint8 FacilityTypeRightNarrow = 14~%uint8 FacilityTypeDoubleNarrow = 15~%uint8 FacilityTypeCrosswindArea = 16~%uint8 FacilityTypeSchoolZone = 17~%uint8 FacilityTypeOvertakeForbid = 18~%uint8 FacilityTypeNarrowBridge = 19~%uint8 FacilityTypeDoubleDetour = 20~%uint8 FacilityTypeLeftDetour = 21~%uint8 FacilityTypeRightDetour = 22~%uint8 FacilityTypeLeftDangerous = 23~%uint8 FacilityTypeRightDangerous = 24~%uint8 FacilityTypeUpperSteep = 25~%uint8 FacilityTypeDownSteep = 26~%uint8 FacilityTypeWaterPavement = 27~%uint8 FacilityTypeIrregularityPavement = 28~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/TrafficJam~%tbt_msgs/TrafficJamStatusEnum status~%uint32 length~%uint32 distance_to_jam~%~%================================================================================~%MSG: tbt_msgs/TrafficJamStatusEnum~%uint8 Unkwon = 0~%uint8 TrafStsFast = 1~%uint8 TrafStsSlow = 2~%uint8 TrafStsJamed = 3~%uint8 TrafStsJamedBad = 4~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/ConstructionSite~%tbt_msgs/ConstructionSiteStatusEnum status~%float64[] latitude_list~%float64[] longitude_list~%~%================================================================================~%MSG: tbt_msgs/ConstructionSiteStatusEnum~%uint8 Unkwon = 0~%uint8 No = 1~%uint8 Yes = 2~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/CurrentLocation~%float64 latitude~%float64 longitude~%uint8 invalid~%~%================================================================================~%MSG: tbt_msgs/RelativeLocationOnRoute~%uint32 ori_cur_step_id~%uint32 ori_cur_link_id_in_step~%uint32 ori_link_offset~%uint32 link_index~%uint32 offset~%uint8 valid~%~%================================================================================~%MSG: tbt_msgs/NaviStatusEnum~%uint8 NavSts_0_invalid = 0~%uint8 NavSts_1_navigation = 1~%uint8 NavSts_2_routing = 2~%uint8 NavSts_3_Cruise = 3~%uint8 NavSts_4_yaw = 4~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/SpeedLimitCamera~%uint8 speed_limit~%uint32 distance~%~%================================================================================~%MSG: tbt_msgs/IntervalCamera~%uint8 speed_limit~%uint16 distance~%float64 start_lat~%float64 start_long~%float64 end_lat~%float64 end_long~%~%================================================================================~%MSG: tbt_msgs/NaviRoadTrafficLightSts~%uint8 status~%uint32 dist~%~%================================================================================~%MSG: tbt_msgs/GuideActionEnum~%uint8 NO_NAVI_ACTION = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 DRIVE_LEFT_FRONT = 3~%uint8 DRIVE_RIGHT_FRONT = 4~%uint8 DRIVE_LEFT_REAR = 5~%uint8 DRIVE_RIGHT_REAR = 6~%uint8 TURN_LEFT_TURN_AROUND = 7~%uint8 GO_STRAIGHT = 8~%uint8 FRONT_ROAD_ALONG_LEFT = 9~%uint8 FRONT_ROAD_ALONG_RIGHT = 10~%uint8 TRIFURCATION_ALONG_LEFT = 11~%uint8 TRIFURCATION_ALONG_MIDDLE = 12~%uint8 TRIFURCATION_ALONG_RIGHT = 13~%uint8 TWO_STRAIGHT_ALONG_LEFT = 14~%uint8 TWO_STRAIGHT_ALONG_RIGHT = 15~%uint8 THREE_STRAIGHT_ALONG_LEFT = 16~%uint8 THREE_STRAIGHT_ALONG_MIDDLE = 17~%uint8 THREE_STRAIGHT_ALONG_RIGHT = 18~%uint8 ENTRY_RING = 19~%uint8 DESTINATION = 20~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/TrafficLightsLocation~%float64 lat~%float64 lon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_road_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_intersection))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_curve))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'warning_sign_board))
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traffic_jam))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'construction_site))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_location))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_location_on_route))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navi_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_limit_camera))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'interval_camera))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navi_road_traffic_light_sts))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'guide_action))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_lights_location) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tts_text) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationInfo
    (cl:cons ':header (header msg))
    (cl:cons ':current_road_info (current_road_info msg))
    (cl:cons ':next_intersection (next_intersection msg))
    (cl:cons ':road_curve (road_curve msg))
    (cl:cons ':distance_to_next_guidance (distance_to_next_guidance msg))
    (cl:cons ':warning_sign_board (warning_sign_board msg))
    (cl:cons ':distance_to_toll_station (distance_to_toll_station msg))
    (cl:cons ':distance_to_ramp (distance_to_ramp msg))
    (cl:cons ':traffic_jam (traffic_jam msg))
    (cl:cons ':tunnel_reminder (tunnel_reminder msg))
    (cl:cons ':construction_site (construction_site msg))
    (cl:cons ':current_location (current_location msg))
    (cl:cons ':relative_location_on_route (relative_location_on_route msg))
    (cl:cons ':navi_status (navi_status msg))
    (cl:cons ':speed_limit_camera (speed_limit_camera msg))
    (cl:cons ':interval_camera (interval_camera msg))
    (cl:cons ':navi_road_traffic_light_sts (navi_road_traffic_light_sts msg))
    (cl:cons ':distance_to_destination (distance_to_destination msg))
    (cl:cons ':guide_action (guide_action msg))
    (cl:cons ':origin_icon_type (origin_icon_type msg))
    (cl:cons ':traffic_lights_location (traffic_lights_location msg))
    (cl:cons ':tts_text (tts_text msg))
))
