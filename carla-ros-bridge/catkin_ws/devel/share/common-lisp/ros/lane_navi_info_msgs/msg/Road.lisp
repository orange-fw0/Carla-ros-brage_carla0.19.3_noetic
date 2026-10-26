; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude Road.msg.html

(cl:defclass <Road> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:integer
    :initform 0)
   (road_id
    :reader road_id
    :initarg :road_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (attribute
    :reader attribute
    :initarg :attribute
    :type lane_navi_info_msgs-msg:RoadAttribute
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:RoadAttribute))
   (polyline
    :reader polyline
    :initarg :polyline
    :type lane_navi_info_msgs-msg:Polyline
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Polyline))
   (rb_left
    :reader rb_left
    :initarg :rb_left
    :type (cl:vector lane_navi_info_msgs-msg:RoadBoundaryInfo)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:RoadBoundaryInfo :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:RoadBoundaryInfo)))
   (rb_right
    :reader rb_right
    :initarg :rb_right
    :type (cl:vector lane_navi_info_msgs-msg:RoadBoundaryInfo)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:RoadBoundaryInfo :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:RoadBoundaryInfo)))
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
   (road_direction
    :reader road_direction
    :initarg :road_direction
    :type landmark_msgs-msg:RoadDirectionTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:RoadDirectionTypeEnum))
   (left_multi_digitized_road_ids
    :reader left_multi_digitized_road_ids
    :initarg :left_multi_digitized_road_ids
    :type (cl:vector lane_navi_info_msgs-msg:MultiDigitizedRoad)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:MultiDigitizedRoad :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:MultiDigitizedRoad)))
   (right_multi_digitized_road_ids
    :reader right_multi_digitized_road_ids
    :initarg :right_multi_digitized_road_ids
    :type (cl:vector lane_navi_info_msgs-msg:MultiDigitizedRoad)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:MultiDigitizedRoad :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:MultiDigitizedRoad)))
   (lane_groups
    :reader lane_groups
    :initarg :lane_groups
    :type (cl:vector lane_navi_info_msgs-msg:LaneGroupsOnRoad)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:LaneGroupsOnRoad :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:LaneGroupsOnRoad)))
   (linked_intersection_id
    :reader linked_intersection_id
    :initarg :linked_intersection_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (prev_roads
    :reader prev_roads
    :initarg :prev_roads
    :type (cl:vector landmark_msgs-msg:TrackId)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrackId :initial-element (cl:make-instance 'landmark_msgs-msg:TrackId)))
   (next_roads
    :reader next_roads
    :initarg :next_roads
    :type (cl:vector landmark_msgs-msg:TrackId)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrackId :initial-element (cl:make-instance 'landmark_msgs-msg:TrackId)))
   (lane_num_of_driving_dir
    :reader lane_num_of_driving_dir
    :initarg :lane_num_of_driving_dir
    :type cl:fixnum
    :initform 0)
   (lane_num_of_opposite_dir
    :reader lane_num_of_opposite_dir
    :initarg :lane_num_of_opposite_dir
    :type cl:fixnum
    :initform 0)
   (sd_road_info
    :reader sd_road_info
    :initarg :sd_road_info
    :type lane_navi_info_msgs-msg:SDRoadInfo
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:SDRoadInfo))
   (is_on_route
    :reader is_on_route
    :initarg :is_on_route
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Road (<Road>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Road>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Road)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<Road> is deprecated: use lane_navi_info_msgs-msg:Road instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:available-val is deprecated.  Use lane_navi_info_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'road_id-val :lambda-list '(m))
(cl:defmethod road_id-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:road_id-val is deprecated.  Use lane_navi_info_msgs-msg:road_id instead.")
  (road_id m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:length-val is deprecated.  Use lane_navi_info_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'attribute-val :lambda-list '(m))
(cl:defmethod attribute-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:attribute-val is deprecated.  Use lane_navi_info_msgs-msg:attribute instead.")
  (attribute m))

(cl:ensure-generic-function 'polyline-val :lambda-list '(m))
(cl:defmethod polyline-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:polyline-val is deprecated.  Use lane_navi_info_msgs-msg:polyline instead.")
  (polyline m))

(cl:ensure-generic-function 'rb_left-val :lambda-list '(m))
(cl:defmethod rb_left-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:rb_left-val is deprecated.  Use lane_navi_info_msgs-msg:rb_left instead.")
  (rb_left m))

(cl:ensure-generic-function 'rb_right-val :lambda-list '(m))
(cl:defmethod rb_right-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:rb_right-val is deprecated.  Use lane_navi_info_msgs-msg:rb_right instead.")
  (rb_right m))

(cl:ensure-generic-function 'road_class-val :lambda-list '(m))
(cl:defmethod road_class-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:road_class-val is deprecated.  Use lane_navi_info_msgs-msg:road_class instead.")
  (road_class m))

(cl:ensure-generic-function 'formways-val :lambda-list '(m))
(cl:defmethod formways-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:formways-val is deprecated.  Use lane_navi_info_msgs-msg:formways instead.")
  (formways m))

(cl:ensure-generic-function 'road_direction-val :lambda-list '(m))
(cl:defmethod road_direction-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:road_direction-val is deprecated.  Use lane_navi_info_msgs-msg:road_direction instead.")
  (road_direction m))

(cl:ensure-generic-function 'left_multi_digitized_road_ids-val :lambda-list '(m))
(cl:defmethod left_multi_digitized_road_ids-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:left_multi_digitized_road_ids-val is deprecated.  Use lane_navi_info_msgs-msg:left_multi_digitized_road_ids instead.")
  (left_multi_digitized_road_ids m))

(cl:ensure-generic-function 'right_multi_digitized_road_ids-val :lambda-list '(m))
(cl:defmethod right_multi_digitized_road_ids-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:right_multi_digitized_road_ids-val is deprecated.  Use lane_navi_info_msgs-msg:right_multi_digitized_road_ids instead.")
  (right_multi_digitized_road_ids m))

(cl:ensure-generic-function 'lane_groups-val :lambda-list '(m))
(cl:defmethod lane_groups-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_groups-val is deprecated.  Use lane_navi_info_msgs-msg:lane_groups instead.")
  (lane_groups m))

(cl:ensure-generic-function 'linked_intersection_id-val :lambda-list '(m))
(cl:defmethod linked_intersection_id-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:linked_intersection_id-val is deprecated.  Use lane_navi_info_msgs-msg:linked_intersection_id instead.")
  (linked_intersection_id m))

(cl:ensure-generic-function 'prev_roads-val :lambda-list '(m))
(cl:defmethod prev_roads-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:prev_roads-val is deprecated.  Use lane_navi_info_msgs-msg:prev_roads instead.")
  (prev_roads m))

(cl:ensure-generic-function 'next_roads-val :lambda-list '(m))
(cl:defmethod next_roads-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:next_roads-val is deprecated.  Use lane_navi_info_msgs-msg:next_roads instead.")
  (next_roads m))

(cl:ensure-generic-function 'lane_num_of_driving_dir-val :lambda-list '(m))
(cl:defmethod lane_num_of_driving_dir-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_num_of_driving_dir-val is deprecated.  Use lane_navi_info_msgs-msg:lane_num_of_driving_dir instead.")
  (lane_num_of_driving_dir m))

(cl:ensure-generic-function 'lane_num_of_opposite_dir-val :lambda-list '(m))
(cl:defmethod lane_num_of_opposite_dir-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_num_of_opposite_dir-val is deprecated.  Use lane_navi_info_msgs-msg:lane_num_of_opposite_dir instead.")
  (lane_num_of_opposite_dir m))

(cl:ensure-generic-function 'sd_road_info-val :lambda-list '(m))
(cl:defmethod sd_road_info-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:sd_road_info-val is deprecated.  Use lane_navi_info_msgs-msg:sd_road_info instead.")
  (sd_road_info m))

(cl:ensure-generic-function 'is_on_route-val :lambda-list '(m))
(cl:defmethod is_on_route-val ((m <Road>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:is_on_route-val is deprecated.  Use lane_navi_info_msgs-msg:is_on_route instead.")
  (is_on_route m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Road>)))
    "Constants for message type '<Road>"
  '((:ATTRIBUTE_VALID . 1)
    (:ROAD_CLASS_VALID . 2)
    (:FORMWAY_VALID . 4)
    (:ROAD_DIRECTION_VALID . 8)
    (:MULTI_DIGITIZED_ROADS_VALID . 16)
    (:LANE_GROUP_VALID . 32)
    (:LINKED_INTERSECTION_VALID . 64)
    (:TOPO_VALID . 128)
    (:LANE_NUM_OF_DRIVING_DIR_VALID . 256)
    (:LANE_NUM_OF_OPPOSITE_DIR_VALID . 512)
    (:SD_ROAD_INFO_VALID . 1024))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Road)))
    "Constants for message type 'Road"
  '((:ATTRIBUTE_VALID . 1)
    (:ROAD_CLASS_VALID . 2)
    (:FORMWAY_VALID . 4)
    (:ROAD_DIRECTION_VALID . 8)
    (:MULTI_DIGITIZED_ROADS_VALID . 16)
    (:LANE_GROUP_VALID . 32)
    (:LINKED_INTERSECTION_VALID . 64)
    (:TOPO_VALID . 128)
    (:LANE_NUM_OF_DRIVING_DIR_VALID . 256)
    (:LANE_NUM_OF_OPPOSITE_DIR_VALID . 512)
    (:SD_ROAD_INFO_VALID . 1024))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Road>) ostream)
  "Serializes a message object of type '<Road>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_id) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attribute) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polyline) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rb_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rb_left))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rb_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rb_right))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_class) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'formways))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'formways))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_direction) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_multi_digitized_road_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'left_multi_digitized_road_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_multi_digitized_road_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'right_multi_digitized_road_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_groups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_groups))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linked_intersection_id) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_num_of_driving_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_num_of_opposite_dir)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sd_road_info) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_on_route) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Road>) istream)
  "Deserializes a message object of type '<Road>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_id) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attribute) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polyline) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rb_left) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rb_left)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:RoadBoundaryInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rb_right) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rb_right)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:RoadBoundaryInfo))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_direction) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_multi_digitized_road_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_multi_digitized_road_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:MultiDigitizedRoad))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_multi_digitized_road_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_multi_digitized_road_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:MultiDigitizedRoad))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_groups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:LaneGroupsOnRoad))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linked_intersection_id) istream)
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_num_of_driving_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_num_of_opposite_dir)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sd_road_info) istream)
    (cl:setf (cl:slot-value msg 'is_on_route) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Road>)))
  "Returns string type for a message object of type '<Road>"
  "lane_navi_info_msgs/Road")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Road)))
  "Returns string type for a message object of type 'Road"
  "lane_navi_info_msgs/Road")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Road>)))
  "Returns md5sum for a message object of type '<Road>"
  "61ccbc70e285b1b12e534d69cc8daded")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Road)))
  "Returns md5sum for a message object of type 'Road"
  "61ccbc70e285b1b12e534d69cc8daded")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Road>)))
  "Returns full string definition for message of type '<Road>"
  (cl:format cl:nil "uint32 ATTRIBUTE_VALID = 1~%uint32 ROAD_CLASS_VALID = 2~%uint32 FORMWAY_VALID = 4~%uint32 ROAD_DIRECTION_VALID = 8~%uint32 MULTI_DIGITIZED_ROADS_VALID = 16~%uint32 LANE_GROUP_VALID = 32~%uint32 LINKED_INTERSECTION_VALID = 64~%uint32 TOPO_VALID = 128~%uint32 LANE_NUM_OF_DRIVING_DIR_VALID = 256~%uint32 LANE_NUM_OF_OPPOSITE_DIR_VALID = 512~%uint32 SD_ROAD_INFO_VALID = 1024~%uint32 available~%landmark_msgs/TrackId road_id~%float32 length~%lane_navi_info_msgs/RoadAttribute attribute~%lane_navi_info_msgs/Polyline polyline~%lane_navi_info_msgs/RoadBoundaryInfo[] rb_left~%lane_navi_info_msgs/RoadBoundaryInfo[] rb_right~%landmark_msgs/RoadNodeRoadClassEnum road_class~%landmark_msgs/RoadNodeFormwayEnum[] formways~%landmark_msgs/RoadDirectionTypeEnum road_direction~%lane_navi_info_msgs/MultiDigitizedRoad[] left_multi_digitized_road_ids~%lane_navi_info_msgs/MultiDigitizedRoad[] right_multi_digitized_road_ids~%lane_navi_info_msgs/LaneGroupsOnRoad[] lane_groups~%landmark_msgs/TrackId linked_intersection_id~%landmark_msgs/TrackId[] prev_roads~%landmark_msgs/TrackId[] next_roads~%uint8 lane_num_of_driving_dir~%uint8 lane_num_of_opposite_dir~%lane_navi_info_msgs/SDRoadInfo sd_road_info~%bool is_on_route~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/RoadAttribute~%lane_navi_info_msgs/SpeedLimit[] speed_limits~%lane_navi_info_msgs/ExperienceSpeedLimit[] experience_speed_limits~%lane_navi_info_msgs/Curvature[] curvatures~%lane_navi_info_msgs/Slope[] slopes~%landmark_msgs/SpecialSituation[] special_situation~%~%================================================================================~%MSG: lane_navi_info_msgs/SpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%================================================================================~%MSG: lane_navi_info_msgs/ExperienceSpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: lane_navi_info_msgs/Curvature~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/Slope~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: landmark_msgs/SpecialSituation~%uint32 UNKNOWN = 0~%uint32 TUNNEL_BEGIN = 1~%uint32 TUNNEL_END = 2~%uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3~%uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4~%uint32 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Polyline~%lane_navi_info_msgs/Point[] points~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lane_navi_info_msgs/RoadBoundaryInfo~%landmark_msgs/RoadBoundaryTypeEnum type~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/Polyline polyline~%~%================================================================================~%MSG: landmark_msgs/RoadBoundaryTypeEnum~%uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_TYPE_NONE = 1~%uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2~%uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3~%uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4~%uint8 ROAD_BOUNDARY_TYPE_CONE = 5~%uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6~%uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7~%uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8~%uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9~%uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10~%uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11~%uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12~%uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14~%uint8 ROAD_BOUNDARY_TYPE_CURB = 15~%uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16~%uint8 ROAD_BOUNDARY_TYPE_WALL = 17~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19~%uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeRoadClassEnum~%uint8 ROAD_CLASS_UNKNOWN = 0~%uint8 HIGHWAY = 1~%uint8 URBAN = 2~%uint8 CITY_EXPRESSWAY = 3~%uint8 STATE_ROAD = 4~%uint8 PROVINCIAL_ROAD = 5~%uint8 MAIN_ROAD = 6~%uint8 SECONDARY_ROAD = 7~%uint8 NORMAL_ROAD = 8~%uint8 COUNTY_ROAD = 9~%uint8 COUNTRY_ROAD = 10~%uint8 INTERNAL_ROAD = 11~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeFormwayEnum~%uint8 FORMWAY_UNKNOWN = 0~%uint8 SINGLE_CARRIAGE_WAY = 1~%uint8 IC = 2~%uint8 JCT = 3~%uint8 SERVICE = 4~%uint8 TUNNEL = 5~%uint8 TOLL = 6~%uint8 SLIP_ROAD = 7~%uint8 SIDEROAD = 8~%uint8 ROUNDABOUT = 9~%uint8 RAMP_ENTRY = 10~%uint8 RAMP_EXIT = 11~%uint8 SAPA = 12~%uint8 PARKING_RAMP = 13~%uint8 PARKING_ROAD = 14~%uint8 U_TURN = 15~%uint8 TURN_RIGHT = 16~%uint8 TURN_LEFT = 17~%uint8 TURN_LEFT_RIGHT = 18~%uint8 CROSS_LINK = 19~%uint8 SERVICE_AND_SLIP_ROAD = 20~%uint8 SERVICE_AND_JCT = 21~%uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22~%uint8 MULTIPLE_CARRIAGE_WAY = 23~%uint8 CHECK_POINT = 24~%uint8 WALK_ROAD = 25~%uint8 PARALLED_ROAD = 26~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadDirectionTypeEnum~%uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_DIRECTION_TYPE_NONE = 1~%uint8 ROAD_DIRECTION_TYPE_A_B = 2~%uint8 ROAD_DIRECTION_TYPE_B_A = 3~%uint8 ROAD_DIRECTION_TYPE_BOTH = 4~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/MultiDigitizedRoad~%landmark_msgs/TrackId muliti_digitized_road_id~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: lane_navi_info_msgs/LaneGroupsOnRoad~%landmark_msgs/TrackId lane_group_id~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: lane_navi_info_msgs/SDRoadInfo~%uint16 f_angle~%uint16 t_angle~%bool has_toll~%bool has_traffic_light~%uint16 history_average_speed~%lane_navi_info_msgs/SpeedLimit[] max_speed_limit_list~%lane_navi_info_msgs/SpeedLimit[] derived_speed_limit_list~%lane_navi_info_msgs/SDFacility[] facility_list~%lane_navi_info_msgs/SDCameraInfo[] camera_list~%lane_navi_info_msgs/SDArrowMarking[] arrow_marking_list~%lane_navi_info_msgs/SDPointCurvature[] point_curvature_list~%lane_navi_info_msgs/SDLongSolidLine[] long_solid_line_list~%lane_navi_info_msgs/SDBusLaneInfo[] bus_lane_info_list~%lane_navi_info_msgs/SDBackLaneInfo[] back_lane_list~%lane_navi_info_msgs/SDFrontLaneInfo[] front_lane_list~%lane_navi_info_msgs/SDCheckPoint[] check_point_list~%lane_navi_info_msgs/SDOwnership ownership~%uint16 region_code~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFacility~%float32 offset~%lane_navi_info_msgs/SDFacilityType facility_type~%lane_navi_info_msgs/SDSpeedLimitType speed_limit_type~%uint16 speed_limit_value~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/WeatherRule weather_limit~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFacilityType~%uint8 FACILITY_LEFT_INTER_FLOW = 1~%uint8 FACILITY_RIGHT_INTER_FLOW = 2~%uint8 FACILITY_REVERSE_TURN = 4~%uint8 FACILITY_LINKING_TURN = 5~%uint8 FACILITY_ACCIDENT_AREA = 6~%uint8 FACILITY_RAILWAY_CROSS = 8~%uint8 FACILITY_SLIPPERY = 9~%uint8 FACILITY_MAX_SPEED_LIMIT = 10~%uint8 FACILITY_MIN_SPEED_LIMIT = 11~%uint8 FACILITY_VILLAGE = 12~%uint8 FACILITY_LEFT_NARROW = 13~%uint8 FACILITY_RIGHT_NARROW = 14~%uint8 FACILITY_DOUBLE_NARROW = 15~%uint8 FACILITY_CROSS_WIND_AREA = 16~%uint8 FACILITY_SCHOOL = 17~%uint8 FACILITY_NOPASSING = 18~%uint8 FACILITY_NARROW_BRIDGE = 19~%uint8 FACILITY_AROUND_THE_LINE = 20~%uint8 FACILITY_LEFT_BYPASS = 21~%uint8 FACILITY_RIGHT_BYPASS = 22~%uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23~%uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24~%uint8 FACILITY_ONSTEEPLOPE = 25~%uint8 FACILITY_UNDERSTEEPLOPE = 26~%uint8 FACILITY_OVER_WATER_ROAD = 27~%uint8 FACILITY_UNEVEN_ROAD = 28~%uint8 FACILITY_STROLL = 29~%uint8 FACILITY_ATTENTION_TO_DANGER = 30~%uint8 FACILITY_CROSSWALK = 31~%uint8 FACILITY_RIVER_BANK_LEFT = 33~%uint8 FACILITY_RIVER_BANK_RIGHT = 34~%uint8 FACILITY_CHILDREN = 35~%uint8 FACILITY_CYCLISTS = 36~%uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37~%uint8 FACILITY_GIVE_WAY = 38~%uint8 FACILITY_STOP = 39~%uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40~%uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41~%uint8 FACILITY_HUMPBACK_BRIDGE = 42~%uint8 FACILITY_END_OF_SPEED_LIMIT = 43~%uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44~%uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50~%uint8 FACILITY_RAILWAY_WITH_GATES = 51~%uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52~%uint8 FACILITY_VARIABLE_SPEED = 53~%uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54~%uint8 FACILITY_PEDESTRIANS = 56~%uint8 FACILITY_UNKNOWN = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDSpeedLimitType~%uint8 SPEED_LIMIT_TYPE_DEFAULT = 0~%uint8 SPEED_LIMIT_TYPE_RAMP = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRule~%lane_navi_info_msgs/WeatherRuleType[] weather_rule_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRuleType~%uint8 WEATHERTYPE_INVALID = 0~%uint8 WEATHERTYPE_SUNSHINE = 1~%uint8 WEATHERTYPE_RAINSNOW = 2~%uint8 WEATHERTYPE_ICE = 3~%uint8 WEATHERTYPE_FOG = 4~%uint8 WEATHERTYPE_WIND = 5~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDCameraInfo~%float32 offset~%lane_navi_info_msgs/ECameraType ecamera_type~%uint32 speed_limit_value~%~%================================================================================~%MSG: lane_navi_info_msgs/ECameraType~%uint8 ECAMERA_SPEED = 0~%uint8 ECAMERA_MONITOR = 1~%uint8 ECAMERA_TRAFIC_LIGHT = 2~%uint8 ECAMERA_RULE = 3~%uint8 ECAMERA_BUS = 4~%uint8 ECAMERA_EMERGENCY = 5~%uint8 ECAMERA_NON_MOTORIZED = 6~%uint8 ECAMERA_RANGE = 7~%uint8 ECAMERA_INTER_SPEED_START = 8~%uint8 ECAMERA_INTER_SPEED_END = 9~%uint8 ECAMERA_UNKNOWN = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowMarking~%uint8 ARROWMARKING_STRAIGHT = 0~%uint8 ARROWMARKING_LEFT = 1~%uint8 ARROWMARKING_STRAIGHT_LEFT = 2~%uint8 ARROWMARKING_RIGHT = 3~%uint8 ARROWMARKING_STRAIGHT_RIGHT = 4~%uint8 ARROWMARKING_LEFT_UTURN = 5~%uint8 ARROWMARKING_LEFT_RIGHT = 6~%uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7~%uint8 ARROWMARKING_RIGHT_UTURN = 8~%uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9~%uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10~%uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11~%uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12~%uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16~%uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17~%uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18~%uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19~%uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20~%uint8 ARROWMARKING_UNKNOWN = 255~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/SDPointCurvature~%float32 offset~%float32 value~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLongSolidLine~%landmark_msgs/TrackId[] effect_road_ids~%uint32[] valid_lanes~%~%================================================================================~%MSG: lane_navi_info_msgs/SDBusLaneInfo~%uint32 offset~%uint8[] on_lanes~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDBackLaneInfo~%int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneDirectType~%uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0~%uint8 SD_LANE_DIRECT_TYPE_BUS = 1~%uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2~%uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3~%uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneArrow~%lane_navi_info_msgs/SDArrowType[] arrow_types~%lane_navi_info_msgs/TimeRegulationRange[] time~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowType~%uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFrontLaneInfo~%landmark_msgs/TrackId to_road_id~%lane_navi_info_msgs/SDFrontLane[] lanes~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFrontLane~%int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDCheckPoint~%float32 offset~%~%================================================================================~%MSG: lane_navi_info_msgs/SDOwnership~%uint8 OWNERSHIP_PUBLIC = 0~%uint8 OWNERSHIP_INNER = 1~%uint8 OWNERSHIP_PRIVATE = 2~%uint8 OWNERSHIP_UNKNOWN = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Road)))
  "Returns full string definition for message of type 'Road"
  (cl:format cl:nil "uint32 ATTRIBUTE_VALID = 1~%uint32 ROAD_CLASS_VALID = 2~%uint32 FORMWAY_VALID = 4~%uint32 ROAD_DIRECTION_VALID = 8~%uint32 MULTI_DIGITIZED_ROADS_VALID = 16~%uint32 LANE_GROUP_VALID = 32~%uint32 LINKED_INTERSECTION_VALID = 64~%uint32 TOPO_VALID = 128~%uint32 LANE_NUM_OF_DRIVING_DIR_VALID = 256~%uint32 LANE_NUM_OF_OPPOSITE_DIR_VALID = 512~%uint32 SD_ROAD_INFO_VALID = 1024~%uint32 available~%landmark_msgs/TrackId road_id~%float32 length~%lane_navi_info_msgs/RoadAttribute attribute~%lane_navi_info_msgs/Polyline polyline~%lane_navi_info_msgs/RoadBoundaryInfo[] rb_left~%lane_navi_info_msgs/RoadBoundaryInfo[] rb_right~%landmark_msgs/RoadNodeRoadClassEnum road_class~%landmark_msgs/RoadNodeFormwayEnum[] formways~%landmark_msgs/RoadDirectionTypeEnum road_direction~%lane_navi_info_msgs/MultiDigitizedRoad[] left_multi_digitized_road_ids~%lane_navi_info_msgs/MultiDigitizedRoad[] right_multi_digitized_road_ids~%lane_navi_info_msgs/LaneGroupsOnRoad[] lane_groups~%landmark_msgs/TrackId linked_intersection_id~%landmark_msgs/TrackId[] prev_roads~%landmark_msgs/TrackId[] next_roads~%uint8 lane_num_of_driving_dir~%uint8 lane_num_of_opposite_dir~%lane_navi_info_msgs/SDRoadInfo sd_road_info~%bool is_on_route~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/RoadAttribute~%lane_navi_info_msgs/SpeedLimit[] speed_limits~%lane_navi_info_msgs/ExperienceSpeedLimit[] experience_speed_limits~%lane_navi_info_msgs/Curvature[] curvatures~%lane_navi_info_msgs/Slope[] slopes~%landmark_msgs/SpecialSituation[] special_situation~%~%================================================================================~%MSG: lane_navi_info_msgs/SpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%================================================================================~%MSG: lane_navi_info_msgs/ExperienceSpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: lane_navi_info_msgs/Curvature~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/Slope~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: landmark_msgs/SpecialSituation~%uint32 UNKNOWN = 0~%uint32 TUNNEL_BEGIN = 1~%uint32 TUNNEL_END = 2~%uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3~%uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4~%uint32 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Polyline~%lane_navi_info_msgs/Point[] points~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lane_navi_info_msgs/RoadBoundaryInfo~%landmark_msgs/RoadBoundaryTypeEnum type~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/Polyline polyline~%~%================================================================================~%MSG: landmark_msgs/RoadBoundaryTypeEnum~%uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_TYPE_NONE = 1~%uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2~%uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3~%uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4~%uint8 ROAD_BOUNDARY_TYPE_CONE = 5~%uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6~%uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7~%uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8~%uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9~%uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10~%uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11~%uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12~%uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14~%uint8 ROAD_BOUNDARY_TYPE_CURB = 15~%uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16~%uint8 ROAD_BOUNDARY_TYPE_WALL = 17~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19~%uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeRoadClassEnum~%uint8 ROAD_CLASS_UNKNOWN = 0~%uint8 HIGHWAY = 1~%uint8 URBAN = 2~%uint8 CITY_EXPRESSWAY = 3~%uint8 STATE_ROAD = 4~%uint8 PROVINCIAL_ROAD = 5~%uint8 MAIN_ROAD = 6~%uint8 SECONDARY_ROAD = 7~%uint8 NORMAL_ROAD = 8~%uint8 COUNTY_ROAD = 9~%uint8 COUNTRY_ROAD = 10~%uint8 INTERNAL_ROAD = 11~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeFormwayEnum~%uint8 FORMWAY_UNKNOWN = 0~%uint8 SINGLE_CARRIAGE_WAY = 1~%uint8 IC = 2~%uint8 JCT = 3~%uint8 SERVICE = 4~%uint8 TUNNEL = 5~%uint8 TOLL = 6~%uint8 SLIP_ROAD = 7~%uint8 SIDEROAD = 8~%uint8 ROUNDABOUT = 9~%uint8 RAMP_ENTRY = 10~%uint8 RAMP_EXIT = 11~%uint8 SAPA = 12~%uint8 PARKING_RAMP = 13~%uint8 PARKING_ROAD = 14~%uint8 U_TURN = 15~%uint8 TURN_RIGHT = 16~%uint8 TURN_LEFT = 17~%uint8 TURN_LEFT_RIGHT = 18~%uint8 CROSS_LINK = 19~%uint8 SERVICE_AND_SLIP_ROAD = 20~%uint8 SERVICE_AND_JCT = 21~%uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22~%uint8 MULTIPLE_CARRIAGE_WAY = 23~%uint8 CHECK_POINT = 24~%uint8 WALK_ROAD = 25~%uint8 PARALLED_ROAD = 26~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadDirectionTypeEnum~%uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_DIRECTION_TYPE_NONE = 1~%uint8 ROAD_DIRECTION_TYPE_A_B = 2~%uint8 ROAD_DIRECTION_TYPE_B_A = 3~%uint8 ROAD_DIRECTION_TYPE_BOTH = 4~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/MultiDigitizedRoad~%landmark_msgs/TrackId muliti_digitized_road_id~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: lane_navi_info_msgs/LaneGroupsOnRoad~%landmark_msgs/TrackId lane_group_id~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: lane_navi_info_msgs/SDRoadInfo~%uint16 f_angle~%uint16 t_angle~%bool has_toll~%bool has_traffic_light~%uint16 history_average_speed~%lane_navi_info_msgs/SpeedLimit[] max_speed_limit_list~%lane_navi_info_msgs/SpeedLimit[] derived_speed_limit_list~%lane_navi_info_msgs/SDFacility[] facility_list~%lane_navi_info_msgs/SDCameraInfo[] camera_list~%lane_navi_info_msgs/SDArrowMarking[] arrow_marking_list~%lane_navi_info_msgs/SDPointCurvature[] point_curvature_list~%lane_navi_info_msgs/SDLongSolidLine[] long_solid_line_list~%lane_navi_info_msgs/SDBusLaneInfo[] bus_lane_info_list~%lane_navi_info_msgs/SDBackLaneInfo[] back_lane_list~%lane_navi_info_msgs/SDFrontLaneInfo[] front_lane_list~%lane_navi_info_msgs/SDCheckPoint[] check_point_list~%lane_navi_info_msgs/SDOwnership ownership~%uint16 region_code~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFacility~%float32 offset~%lane_navi_info_msgs/SDFacilityType facility_type~%lane_navi_info_msgs/SDSpeedLimitType speed_limit_type~%uint16 speed_limit_value~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/WeatherRule weather_limit~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFacilityType~%uint8 FACILITY_LEFT_INTER_FLOW = 1~%uint8 FACILITY_RIGHT_INTER_FLOW = 2~%uint8 FACILITY_REVERSE_TURN = 4~%uint8 FACILITY_LINKING_TURN = 5~%uint8 FACILITY_ACCIDENT_AREA = 6~%uint8 FACILITY_RAILWAY_CROSS = 8~%uint8 FACILITY_SLIPPERY = 9~%uint8 FACILITY_MAX_SPEED_LIMIT = 10~%uint8 FACILITY_MIN_SPEED_LIMIT = 11~%uint8 FACILITY_VILLAGE = 12~%uint8 FACILITY_LEFT_NARROW = 13~%uint8 FACILITY_RIGHT_NARROW = 14~%uint8 FACILITY_DOUBLE_NARROW = 15~%uint8 FACILITY_CROSS_WIND_AREA = 16~%uint8 FACILITY_SCHOOL = 17~%uint8 FACILITY_NOPASSING = 18~%uint8 FACILITY_NARROW_BRIDGE = 19~%uint8 FACILITY_AROUND_THE_LINE = 20~%uint8 FACILITY_LEFT_BYPASS = 21~%uint8 FACILITY_RIGHT_BYPASS = 22~%uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23~%uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24~%uint8 FACILITY_ONSTEEPLOPE = 25~%uint8 FACILITY_UNDERSTEEPLOPE = 26~%uint8 FACILITY_OVER_WATER_ROAD = 27~%uint8 FACILITY_UNEVEN_ROAD = 28~%uint8 FACILITY_STROLL = 29~%uint8 FACILITY_ATTENTION_TO_DANGER = 30~%uint8 FACILITY_CROSSWALK = 31~%uint8 FACILITY_RIVER_BANK_LEFT = 33~%uint8 FACILITY_RIVER_BANK_RIGHT = 34~%uint8 FACILITY_CHILDREN = 35~%uint8 FACILITY_CYCLISTS = 36~%uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37~%uint8 FACILITY_GIVE_WAY = 38~%uint8 FACILITY_STOP = 39~%uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40~%uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41~%uint8 FACILITY_HUMPBACK_BRIDGE = 42~%uint8 FACILITY_END_OF_SPEED_LIMIT = 43~%uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44~%uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50~%uint8 FACILITY_RAILWAY_WITH_GATES = 51~%uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52~%uint8 FACILITY_VARIABLE_SPEED = 53~%uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54~%uint8 FACILITY_PEDESTRIANS = 56~%uint8 FACILITY_UNKNOWN = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDSpeedLimitType~%uint8 SPEED_LIMIT_TYPE_DEFAULT = 0~%uint8 SPEED_LIMIT_TYPE_RAMP = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRule~%lane_navi_info_msgs/WeatherRuleType[] weather_rule_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRuleType~%uint8 WEATHERTYPE_INVALID = 0~%uint8 WEATHERTYPE_SUNSHINE = 1~%uint8 WEATHERTYPE_RAINSNOW = 2~%uint8 WEATHERTYPE_ICE = 3~%uint8 WEATHERTYPE_FOG = 4~%uint8 WEATHERTYPE_WIND = 5~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDCameraInfo~%float32 offset~%lane_navi_info_msgs/ECameraType ecamera_type~%uint32 speed_limit_value~%~%================================================================================~%MSG: lane_navi_info_msgs/ECameraType~%uint8 ECAMERA_SPEED = 0~%uint8 ECAMERA_MONITOR = 1~%uint8 ECAMERA_TRAFIC_LIGHT = 2~%uint8 ECAMERA_RULE = 3~%uint8 ECAMERA_BUS = 4~%uint8 ECAMERA_EMERGENCY = 5~%uint8 ECAMERA_NON_MOTORIZED = 6~%uint8 ECAMERA_RANGE = 7~%uint8 ECAMERA_INTER_SPEED_START = 8~%uint8 ECAMERA_INTER_SPEED_END = 9~%uint8 ECAMERA_UNKNOWN = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowMarking~%uint8 ARROWMARKING_STRAIGHT = 0~%uint8 ARROWMARKING_LEFT = 1~%uint8 ARROWMARKING_STRAIGHT_LEFT = 2~%uint8 ARROWMARKING_RIGHT = 3~%uint8 ARROWMARKING_STRAIGHT_RIGHT = 4~%uint8 ARROWMARKING_LEFT_UTURN = 5~%uint8 ARROWMARKING_LEFT_RIGHT = 6~%uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7~%uint8 ARROWMARKING_RIGHT_UTURN = 8~%uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9~%uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10~%uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11~%uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12~%uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16~%uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17~%uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18~%uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19~%uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20~%uint8 ARROWMARKING_UNKNOWN = 255~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/SDPointCurvature~%float32 offset~%float32 value~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLongSolidLine~%landmark_msgs/TrackId[] effect_road_ids~%uint32[] valid_lanes~%~%================================================================================~%MSG: lane_navi_info_msgs/SDBusLaneInfo~%uint32 offset~%uint8[] on_lanes~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/WorkHolidayType~%uint8 WORKHOLIDAYTYPE_NONE = 0~%uint8 WORKHOLIDAYTYPE_VALID = 1~%uint8 WORKHOLIDAYTYPE_INVALID = 2~%uint8 WORKHOLIDAYTYPE_WEEKEND = 3~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDBackLaneInfo~%int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneDirectType~%uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0~%uint8 SD_LANE_DIRECT_TYPE_BUS = 1~%uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2~%uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3~%uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDLaneArrow~%lane_navi_info_msgs/SDArrowType[] arrow_types~%lane_navi_info_msgs/TimeRegulationRange[] time~%lane_navi_info_msgs/HolidayType holiday~%lane_navi_info_msgs/WorkHolidayType work_holiday~%~%================================================================================~%MSG: lane_navi_info_msgs/SDArrowType~%uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFrontLaneInfo~%landmark_msgs/TrackId to_road_id~%lane_navi_info_msgs/SDFrontLane[] lanes~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFrontLane~%int32 number~%lane_navi_info_msgs/SDLaneDirectType lane_type~%lane_navi_info_msgs/SDLaneArrow[] arrows~%~%================================================================================~%MSG: lane_navi_info_msgs/SDCheckPoint~%float32 offset~%~%================================================================================~%MSG: lane_navi_info_msgs/SDOwnership~%uint8 OWNERSHIP_PUBLIC = 0~%uint8 OWNERSHIP_INNER = 1~%uint8 OWNERSHIP_PRIVATE = 2~%uint8 OWNERSHIP_UNKNOWN = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Road>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_id))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attribute))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polyline))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rb_left) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rb_right) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_class))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'formways) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_direction))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_multi_digitized_road_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_multi_digitized_road_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linked_intersection_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'prev_roads) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'next_roads) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sd_road_info))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Road>))
  "Converts a ROS message object to a list"
  (cl:list 'Road
    (cl:cons ':available (available msg))
    (cl:cons ':road_id (road_id msg))
    (cl:cons ':length (length msg))
    (cl:cons ':attribute (attribute msg))
    (cl:cons ':polyline (polyline msg))
    (cl:cons ':rb_left (rb_left msg))
    (cl:cons ':rb_right (rb_right msg))
    (cl:cons ':road_class (road_class msg))
    (cl:cons ':formways (formways msg))
    (cl:cons ':road_direction (road_direction msg))
    (cl:cons ':left_multi_digitized_road_ids (left_multi_digitized_road_ids msg))
    (cl:cons ':right_multi_digitized_road_ids (right_multi_digitized_road_ids msg))
    (cl:cons ':lane_groups (lane_groups msg))
    (cl:cons ':linked_intersection_id (linked_intersection_id msg))
    (cl:cons ':prev_roads (prev_roads msg))
    (cl:cons ':next_roads (next_roads msg))
    (cl:cons ':lane_num_of_driving_dir (lane_num_of_driving_dir msg))
    (cl:cons ':lane_num_of_opposite_dir (lane_num_of_opposite_dir msg))
    (cl:cons ':sd_road_info (sd_road_info msg))
    (cl:cons ':is_on_route (is_on_route msg))
))
