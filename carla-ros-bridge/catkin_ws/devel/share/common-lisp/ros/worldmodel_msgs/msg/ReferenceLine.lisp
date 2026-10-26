; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ReferenceLine.msg.html

(cl:defclass <ReferenceLine> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:boolean
    :initform cl:nil)
   (reference_line_points
    :reader reference_line_points
    :initarg :reference_line_points
    :type (cl:vector worldmodel_msgs-msg:ReferenceLinePoint)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:ReferenceLinePoint :initial-element (cl:make-instance 'worldmodel_msgs-msg:ReferenceLinePoint)))
   (reference_line_segments
    :reader reference_line_segments
    :initarg :reference_line_segments
    :type (cl:vector worldmodel_msgs-msg:ReferenceLineSegment)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:ReferenceLineSegment :initial-element (cl:make-instance 'worldmodel_msgs-msg:ReferenceLineSegment))))
)

(cl:defclass ReferenceLine (<ReferenceLine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReferenceLine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReferenceLine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ReferenceLine> is deprecated: use worldmodel_msgs-msg:ReferenceLine instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ReferenceLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available-val is deprecated.  Use worldmodel_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'reference_line_points-val :lambda-list '(m))
(cl:defmethod reference_line_points-val ((m <ReferenceLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:reference_line_points-val is deprecated.  Use worldmodel_msgs-msg:reference_line_points instead.")
  (reference_line_points m))

(cl:ensure-generic-function 'reference_line_segments-val :lambda-list '(m))
(cl:defmethod reference_line_segments-val ((m <ReferenceLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:reference_line_segments-val is deprecated.  Use worldmodel_msgs-msg:reference_line_segments instead.")
  (reference_line_segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReferenceLine>) ostream)
  "Serializes a message object of type '<ReferenceLine>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'available) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reference_line_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reference_line_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reference_line_segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reference_line_segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReferenceLine>) istream)
  "Deserializes a message object of type '<ReferenceLine>"
    (cl:setf (cl:slot-value msg 'available) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reference_line_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reference_line_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:ReferenceLinePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reference_line_segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reference_line_segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:ReferenceLineSegment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReferenceLine>)))
  "Returns string type for a message object of type '<ReferenceLine>"
  "worldmodel_msgs/ReferenceLine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceLine)))
  "Returns string type for a message object of type 'ReferenceLine"
  "worldmodel_msgs/ReferenceLine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReferenceLine>)))
  "Returns md5sum for a message object of type '<ReferenceLine>"
  "ec5d181b9af178835368c07dec38068e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReferenceLine)))
  "Returns md5sum for a message object of type 'ReferenceLine"
  "ec5d181b9af178835368c07dec38068e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReferenceLine>)))
  "Returns full string definition for message of type '<ReferenceLine>"
  (cl:format cl:nil "bool available~%worldmodel_msgs/ReferenceLinePoint[] reference_line_points~%worldmodel_msgs/ReferenceLineSegment[] reference_line_segments~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLinePoint~%perception_interface_msgs/Point3d enu_point~%float32 curvature~%float32 distance_to_left_road_border~%float32 distance_to_right_road_border~%float32 distance_to_left_lane_border~%float32 distance_to_right_lane_border~%float32 distance_to_left_obstacle~%float32 distance_to_right_obstacle~%float32 lane_width~%int32 max_velocity~%uint64 track_id~%bool is_experience_data~%worldmodel_msgs/LaneBoundaryType left_road_border_type~%worldmodel_msgs/LaneBoundaryType right_road_border_type~%bool on_route~%float64 longitudinal_slope~%float64 horizontal_slope~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLineSegment~%uint16 begin_index~%uint16 end_index~%worldmodel_msgs/LaneConnectDirection direction~%worldmodel_msgs/LaneType lane_type~%bool is_in_intersection~%bool is_in_route~%~%================================================================================~%MSG: worldmodel_msgs/LaneConnectDirection~%uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneType~%uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReferenceLine)))
  "Returns full string definition for message of type 'ReferenceLine"
  (cl:format cl:nil "bool available~%worldmodel_msgs/ReferenceLinePoint[] reference_line_points~%worldmodel_msgs/ReferenceLineSegment[] reference_line_segments~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLinePoint~%perception_interface_msgs/Point3d enu_point~%float32 curvature~%float32 distance_to_left_road_border~%float32 distance_to_right_road_border~%float32 distance_to_left_lane_border~%float32 distance_to_right_lane_border~%float32 distance_to_left_obstacle~%float32 distance_to_right_obstacle~%float32 lane_width~%int32 max_velocity~%uint64 track_id~%bool is_experience_data~%worldmodel_msgs/LaneBoundaryType left_road_border_type~%worldmodel_msgs/LaneBoundaryType right_road_border_type~%bool on_route~%float64 longitudinal_slope~%float64 horizontal_slope~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLineSegment~%uint16 begin_index~%uint16 end_index~%worldmodel_msgs/LaneConnectDirection direction~%worldmodel_msgs/LaneType lane_type~%bool is_in_intersection~%bool is_in_route~%~%================================================================================~%MSG: worldmodel_msgs/LaneConnectDirection~%uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneType~%uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReferenceLine>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reference_line_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reference_line_segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReferenceLine>))
  "Converts a ROS message object to a list"
  (cl:list 'ReferenceLine
    (cl:cons ':available (available msg))
    (cl:cons ':reference_line_points (reference_line_points msg))
    (cl:cons ':reference_line_segments (reference_line_segments msg))
))
