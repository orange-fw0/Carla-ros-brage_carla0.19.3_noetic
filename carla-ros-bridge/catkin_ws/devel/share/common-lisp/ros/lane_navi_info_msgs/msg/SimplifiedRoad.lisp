; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SimplifiedRoad.msg.html

(cl:defclass <SimplifiedRoad> (roslisp-msg-protocol:ros-message)
  ((road_id
    :reader road_id
    :initarg :road_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (speed_limits
    :reader speed_limits
    :initarg :speed_limits
    :type (cl:vector lane_navi_info_msgs-msg:SpeedLimit)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SpeedLimit :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SpeedLimit)))
   (curvatures
    :reader curvatures
    :initarg :curvatures
    :type (cl:vector lane_navi_info_msgs-msg:Curvature)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:Curvature :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:Curvature)))
   (slopes
    :reader slopes
    :initarg :slopes
    :type (cl:vector lane_navi_info_msgs-msg:Slope)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:Slope :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:Slope)))
   (road_class
    :reader road_class
    :initarg :road_class
    :type landmark_msgs-msg:RoadNodeRoadClassEnum
    :initform (cl:make-instance 'landmark_msgs-msg:RoadNodeRoadClassEnum))
   (formways
    :reader formways
    :initarg :formways
    :type (cl:vector landmark_msgs-msg:RoadNodeFormwayEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:RoadNodeFormwayEnum :initial-element (cl:make-instance 'landmark_msgs-msg:RoadNodeFormwayEnum)))
   (prev_roads
    :reader prev_roads
    :initarg :prev_roads
    :type (cl:vector landmark_msgs-msg:TrackId)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrackId :initial-element (cl:make-instance 'landmark_msgs-msg:TrackId)))
   (next_roads
    :reader next_roads
    :initarg :next_roads
    :type (cl:vector landmark_msgs-msg:TrackId)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrackId :initial-element (cl:make-instance 'landmark_msgs-msg:TrackId))))
)

(cl:defclass SimplifiedRoad (<SimplifiedRoad>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimplifiedRoad>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimplifiedRoad)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SimplifiedRoad> is deprecated: use lane_navi_info_msgs-msg:SimplifiedRoad instead.")))

(cl:ensure-generic-function 'road_id-val :lambda-list '(m))
(cl:defmethod road_id-val ((m <SimplifiedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:road_id-val is deprecated.  Use lane_navi_info_msgs-msg:road_id instead.")
  (road_id m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <SimplifiedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:length-val is deprecated.  Use lane_navi_info_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'speed_limits-val :lambda-list '(m))
(cl:defmethod speed_limits-val ((m <SimplifiedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:speed_limits-val is deprecated.  Use lane_navi_info_msgs-msg:speed_limits instead.")
  (speed_limits m))

(cl:ensure-generic-function 'curvatures-val :lambda-list '(m))
(cl:defmethod curvatures-val ((m <SimplifiedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:curvatures-val is deprecated.  Use lane_navi_info_msgs-msg:curvatures instead.")
  (curvatures m))

(cl:ensure-generic-function 'slopes-val :lambda-list '(m))
(cl:defmethod slopes-val ((m <SimplifiedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:slopes-val is deprecated.  Use lane_navi_info_msgs-msg:slopes instead.")
  (slopes m))

(cl:ensure-generic-function 'road_class-val :lambda-list '(m))
(cl:defmethod road_class-val ((m <SimplifiedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:road_class-val is deprecated.  Use lane_navi_info_msgs-msg:road_class instead.")
  (road_class m))

(cl:ensure-generic-function 'formways-val :lambda-list '(m))
(cl:defmethod formways-val ((m <SimplifiedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:formways-val is deprecated.  Use lane_navi_info_msgs-msg:formways instead.")
  (formways m))

(cl:ensure-generic-function 'prev_roads-val :lambda-list '(m))
(cl:defmethod prev_roads-val ((m <SimplifiedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:prev_roads-val is deprecated.  Use lane_navi_info_msgs-msg:prev_roads instead.")
  (prev_roads m))

(cl:ensure-generic-function 'next_roads-val :lambda-list '(m))
(cl:defmethod next_roads-val ((m <SimplifiedRoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:next_roads-val is deprecated.  Use lane_navi_info_msgs-msg:next_roads instead.")
  (next_roads m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimplifiedRoad>) ostream)
  "Serializes a message object of type '<SimplifiedRoad>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_id) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speed_limits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'speed_limits))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'curvatures))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'curvatures))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'slopes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'slopes))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_class) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'formways))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'formways))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'prev_roads))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'prev_roads))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'next_roads))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'next_roads))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimplifiedRoad>) istream)
  "Deserializes a message object of type '<SimplifiedRoad>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_id) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speed_limits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speed_limits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SpeedLimit))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'curvatures) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'curvatures)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:Curvature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'slopes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'slopes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:Slope))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_class) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'formways) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'formways)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:RoadNodeFormwayEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'prev_roads) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'prev_roads)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrackId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'next_roads) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'next_roads)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrackId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimplifiedRoad>)))
  "Returns string type for a message object of type '<SimplifiedRoad>"
  "lane_navi_info_msgs/SimplifiedRoad")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimplifiedRoad)))
  "Returns string type for a message object of type 'SimplifiedRoad"
  "lane_navi_info_msgs/SimplifiedRoad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimplifiedRoad>)))
  "Returns md5sum for a message object of type '<SimplifiedRoad>"
  "aef7b7ef92d6c0f4181b1f65bc9a8145")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimplifiedRoad)))
  "Returns md5sum for a message object of type 'SimplifiedRoad"
  "aef7b7ef92d6c0f4181b1f65bc9a8145")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimplifiedRoad>)))
  "Returns full string definition for message of type '<SimplifiedRoad>"
  (cl:format cl:nil "landmark_msgs/TrackId road_id~%float32 length~%lane_navi_info_msgs/SpeedLimit[] speed_limits~%lane_navi_info_msgs/Curvature[] curvatures~%lane_navi_info_msgs/Slope[] slopes~%landmark_msgs/RoadNodeRoadClassEnum road_class~%landmark_msgs/RoadNodeFormwayEnum[] formways~%landmark_msgs/TrackId[] prev_roads~%landmark_msgs/TrackId[] next_roads~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/SpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%================================================================================~%MSG: lane_navi_info_msgs/Curvature~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/Slope~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: landmark_msgs/RoadNodeRoadClassEnum~%uint8 ROAD_CLASS_UNKNOWN = 0~%uint8 HIGHWAY = 1~%uint8 URBAN = 2~%uint8 CITY_EXPRESSWAY = 3~%uint8 STATE_ROAD = 4~%uint8 PROVINCIAL_ROAD = 5~%uint8 MAIN_ROAD = 6~%uint8 SECONDARY_ROAD = 7~%uint8 NORMAL_ROAD = 8~%uint8 COUNTY_ROAD = 9~%uint8 COUNTRY_ROAD = 10~%uint8 INTERNAL_ROAD = 11~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeFormwayEnum~%uint8 FORMWAY_UNKNOWN = 0~%uint8 SINGLE_CARRIAGE_WAY = 1~%uint8 IC = 2~%uint8 JCT = 3~%uint8 SERVICE = 4~%uint8 TUNNEL = 5~%uint8 TOLL = 6~%uint8 SLIP_ROAD = 7~%uint8 SIDEROAD = 8~%uint8 ROUNDABOUT = 9~%uint8 RAMP_ENTRY = 10~%uint8 RAMP_EXIT = 11~%uint8 SAPA = 12~%uint8 PARKING_RAMP = 13~%uint8 PARKING_ROAD = 14~%uint8 U_TURN = 15~%uint8 TURN_RIGHT = 16~%uint8 TURN_LEFT = 17~%uint8 TURN_LEFT_RIGHT = 18~%uint8 CROSS_LINK = 19~%uint8 SERVICE_AND_SLIP_ROAD = 20~%uint8 SERVICE_AND_JCT = 21~%uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22~%uint8 MULTIPLE_CARRIAGE_WAY = 23~%uint8 CHECK_POINT = 24~%uint8 WALK_ROAD = 25~%uint8 PARALLED_ROAD = 26~%uint8 OTHERS = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimplifiedRoad)))
  "Returns full string definition for message of type 'SimplifiedRoad"
  (cl:format cl:nil "landmark_msgs/TrackId road_id~%float32 length~%lane_navi_info_msgs/SpeedLimit[] speed_limits~%lane_navi_info_msgs/Curvature[] curvatures~%lane_navi_info_msgs/Slope[] slopes~%landmark_msgs/RoadNodeRoadClassEnum road_class~%landmark_msgs/RoadNodeFormwayEnum[] formways~%landmark_msgs/TrackId[] prev_roads~%landmark_msgs/TrackId[] next_roads~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/SpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%================================================================================~%MSG: lane_navi_info_msgs/Curvature~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/Slope~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: landmark_msgs/RoadNodeRoadClassEnum~%uint8 ROAD_CLASS_UNKNOWN = 0~%uint8 HIGHWAY = 1~%uint8 URBAN = 2~%uint8 CITY_EXPRESSWAY = 3~%uint8 STATE_ROAD = 4~%uint8 PROVINCIAL_ROAD = 5~%uint8 MAIN_ROAD = 6~%uint8 SECONDARY_ROAD = 7~%uint8 NORMAL_ROAD = 8~%uint8 COUNTY_ROAD = 9~%uint8 COUNTRY_ROAD = 10~%uint8 INTERNAL_ROAD = 11~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeFormwayEnum~%uint8 FORMWAY_UNKNOWN = 0~%uint8 SINGLE_CARRIAGE_WAY = 1~%uint8 IC = 2~%uint8 JCT = 3~%uint8 SERVICE = 4~%uint8 TUNNEL = 5~%uint8 TOLL = 6~%uint8 SLIP_ROAD = 7~%uint8 SIDEROAD = 8~%uint8 ROUNDABOUT = 9~%uint8 RAMP_ENTRY = 10~%uint8 RAMP_EXIT = 11~%uint8 SAPA = 12~%uint8 PARKING_RAMP = 13~%uint8 PARKING_ROAD = 14~%uint8 U_TURN = 15~%uint8 TURN_RIGHT = 16~%uint8 TURN_LEFT = 17~%uint8 TURN_LEFT_RIGHT = 18~%uint8 CROSS_LINK = 19~%uint8 SERVICE_AND_SLIP_ROAD = 20~%uint8 SERVICE_AND_JCT = 21~%uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22~%uint8 MULTIPLE_CARRIAGE_WAY = 23~%uint8 CHECK_POINT = 24~%uint8 WALK_ROAD = 25~%uint8 PARALLED_ROAD = 26~%uint8 OTHERS = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimplifiedRoad>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_id))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speed_limits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'curvatures) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'slopes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_class))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'formways) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'prev_roads) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'next_roads) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimplifiedRoad>))
  "Converts a ROS message object to a list"
  (cl:list 'SimplifiedRoad
    (cl:cons ':road_id (road_id msg))
    (cl:cons ':length (length msg))
    (cl:cons ':speed_limits (speed_limits msg))
    (cl:cons ':curvatures (curvatures msg))
    (cl:cons ':slopes (slopes msg))
    (cl:cons ':road_class (road_class msg))
    (cl:cons ':formways (formways msg))
    (cl:cons ':prev_roads (prev_roads msg))
    (cl:cons ':next_roads (next_roads msg))
))
