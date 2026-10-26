; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude PerceptionConfidence.msg.html

(cl:defclass <PerceptionConfidence> (roslisp-msg-protocol:ros-message)
  ((reliable
    :reader reliable
    :initarg :reliable
    :type cl:boolean
    :initform cl:nil)
   (lane_center_offset_confidence
    :reader lane_center_offset_confidence
    :initarg :lane_center_offset_confidence
    :type landmark_msgs-msg:LaneCenterOffsetConfidence
    :initform (cl:make-instance 'landmark_msgs-msg:LaneCenterOffsetConfidence))
   (lane_center_disappearance_confidence
    :reader lane_center_disappearance_confidence
    :initarg :lane_center_disappearance_confidence
    :type landmark_msgs-msg:LaneCenterDisappearanceConfidence
    :initform (cl:make-instance 'landmark_msgs-msg:LaneCenterDisappearanceConfidence))
   (lane_center_intersect_with_road_boundary_confidence
    :reader lane_center_intersect_with_road_boundary_confidence
    :initarg :lane_center_intersect_with_road_boundary_confidence
    :type landmark_msgs-msg:LaneCenterIntersectWithRoadBoundaryConfidence
    :initform (cl:make-instance 'landmark_msgs-msg:LaneCenterIntersectWithRoadBoundaryConfidence))
   (no_motor_lanecenters
    :reader no_motor_lanecenters
    :initarg :no_motor_lanecenters
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (vanished_normal_lanecenters
    :reader vanished_normal_lanecenters
    :initarg :vanished_normal_lanecenters
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (too_close_to_laneboundary_lanecenters
    :reader too_close_to_laneboundary_lanecenters
    :initarg :too_close_to_laneboundary_lanecenters
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass PerceptionConfidence (<PerceptionConfidence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerceptionConfidence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerceptionConfidence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<PerceptionConfidence> is deprecated: use landmark_msgs-msg:PerceptionConfidence instead.")))

(cl:ensure-generic-function 'reliable-val :lambda-list '(m))
(cl:defmethod reliable-val ((m <PerceptionConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reliable-val is deprecated.  Use landmark_msgs-msg:reliable instead.")
  (reliable m))

(cl:ensure-generic-function 'lane_center_offset_confidence-val :lambda-list '(m))
(cl:defmethod lane_center_offset_confidence-val ((m <PerceptionConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_center_offset_confidence-val is deprecated.  Use landmark_msgs-msg:lane_center_offset_confidence instead.")
  (lane_center_offset_confidence m))

(cl:ensure-generic-function 'lane_center_disappearance_confidence-val :lambda-list '(m))
(cl:defmethod lane_center_disappearance_confidence-val ((m <PerceptionConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_center_disappearance_confidence-val is deprecated.  Use landmark_msgs-msg:lane_center_disappearance_confidence instead.")
  (lane_center_disappearance_confidence m))

(cl:ensure-generic-function 'lane_center_intersect_with_road_boundary_confidence-val :lambda-list '(m))
(cl:defmethod lane_center_intersect_with_road_boundary_confidence-val ((m <PerceptionConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_center_intersect_with_road_boundary_confidence-val is deprecated.  Use landmark_msgs-msg:lane_center_intersect_with_road_boundary_confidence instead.")
  (lane_center_intersect_with_road_boundary_confidence m))

(cl:ensure-generic-function 'no_motor_lanecenters-val :lambda-list '(m))
(cl:defmethod no_motor_lanecenters-val ((m <PerceptionConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:no_motor_lanecenters-val is deprecated.  Use landmark_msgs-msg:no_motor_lanecenters instead.")
  (no_motor_lanecenters m))

(cl:ensure-generic-function 'vanished_normal_lanecenters-val :lambda-list '(m))
(cl:defmethod vanished_normal_lanecenters-val ((m <PerceptionConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:vanished_normal_lanecenters-val is deprecated.  Use landmark_msgs-msg:vanished_normal_lanecenters instead.")
  (vanished_normal_lanecenters m))

(cl:ensure-generic-function 'too_close_to_laneboundary_lanecenters-val :lambda-list '(m))
(cl:defmethod too_close_to_laneboundary_lanecenters-val ((m <PerceptionConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:too_close_to_laneboundary_lanecenters-val is deprecated.  Use landmark_msgs-msg:too_close_to_laneboundary_lanecenters instead.")
  (too_close_to_laneboundary_lanecenters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerceptionConfidence>) ostream)
  "Serializes a message object of type '<PerceptionConfidence>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reliable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_center_offset_confidence) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_center_disappearance_confidence) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_center_intersect_with_road_boundary_confidence) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'no_motor_lanecenters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'no_motor_lanecenters))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vanished_normal_lanecenters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'vanished_normal_lanecenters))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'too_close_to_laneboundary_lanecenters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'too_close_to_laneboundary_lanecenters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerceptionConfidence>) istream)
  "Deserializes a message object of type '<PerceptionConfidence>"
    (cl:setf (cl:slot-value msg 'reliable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_center_offset_confidence) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_center_disappearance_confidence) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_center_intersect_with_road_boundary_confidence) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'no_motor_lanecenters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'no_motor_lanecenters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vanished_normal_lanecenters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vanished_normal_lanecenters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'too_close_to_laneboundary_lanecenters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'too_close_to_laneboundary_lanecenters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerceptionConfidence>)))
  "Returns string type for a message object of type '<PerceptionConfidence>"
  "landmark_msgs/PerceptionConfidence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceptionConfidence)))
  "Returns string type for a message object of type 'PerceptionConfidence"
  "landmark_msgs/PerceptionConfidence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerceptionConfidence>)))
  "Returns md5sum for a message object of type '<PerceptionConfidence>"
  "8f6912cd46f6fbec8e732a23e3f51bcd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerceptionConfidence)))
  "Returns md5sum for a message object of type 'PerceptionConfidence"
  "8f6912cd46f6fbec8e732a23e3f51bcd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerceptionConfidence>)))
  "Returns full string definition for message of type '<PerceptionConfidence>"
  (cl:format cl:nil "bool reliable~%landmark_msgs/LaneCenterOffsetConfidence lane_center_offset_confidence~%landmark_msgs/LaneCenterDisappearanceConfidence lane_center_disappearance_confidence~%landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence lane_center_intersect_with_road_boundary_confidence~%uint64[] no_motor_lanecenters~%uint64[] vanished_normal_lanecenters~%uint64[] too_close_to_laneboundary_lanecenters~%~%================================================================================~%MSG: landmark_msgs/LaneCenterOffsetConfidence~%bool reliable~%landmark_msgs/LaneCenterOffset[] lane_center_offsets~%~%================================================================================~%MSG: landmark_msgs/LaneCenterOffset~%uint64 track_id~%uint64 track_frames_count~%float32 accumulative_offset~%float32 relative_offset~%~%================================================================================~%MSG: landmark_msgs/LaneCenterDisappearanceConfidence~%bool reliable~%landmark_msgs/LaneCenterDisappearance[] lane_center_disappearances~%~%================================================================================~%MSG: landmark_msgs/LaneCenterDisappearance~%landmark_msgs/LaneRecordConfidence left_lane_boundary~%landmark_msgs/LaneRecordConfidence right_lane_boundary~%~%================================================================================~%MSG: landmark_msgs/LaneRecordConfidence~%uint64 track_id~%uint64 track_frames_count~%~%================================================================================~%MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence~%bool reliable~%landmark_msgs/LaneCenterIntersectWithRoadBoundary[] lane_center_intersect_with_road_boundaries~%~%================================================================================~%MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundary~%landmark_msgs/LaneRecordConfidence lane_center~%landmark_msgs/LaneRecordConfidence road_boundary~%landmark_msgs/IntersectTypeEnum intersect_type~%float64 min_distance~%~%================================================================================~%MSG: landmark_msgs/IntersectTypeEnum~%uint8 UNKNOWN = 0~%uint8 CROSS = 1~%uint8 CLOSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerceptionConfidence)))
  "Returns full string definition for message of type 'PerceptionConfidence"
  (cl:format cl:nil "bool reliable~%landmark_msgs/LaneCenterOffsetConfidence lane_center_offset_confidence~%landmark_msgs/LaneCenterDisappearanceConfidence lane_center_disappearance_confidence~%landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence lane_center_intersect_with_road_boundary_confidence~%uint64[] no_motor_lanecenters~%uint64[] vanished_normal_lanecenters~%uint64[] too_close_to_laneboundary_lanecenters~%~%================================================================================~%MSG: landmark_msgs/LaneCenterOffsetConfidence~%bool reliable~%landmark_msgs/LaneCenterOffset[] lane_center_offsets~%~%================================================================================~%MSG: landmark_msgs/LaneCenterOffset~%uint64 track_id~%uint64 track_frames_count~%float32 accumulative_offset~%float32 relative_offset~%~%================================================================================~%MSG: landmark_msgs/LaneCenterDisappearanceConfidence~%bool reliable~%landmark_msgs/LaneCenterDisappearance[] lane_center_disappearances~%~%================================================================================~%MSG: landmark_msgs/LaneCenterDisappearance~%landmark_msgs/LaneRecordConfidence left_lane_boundary~%landmark_msgs/LaneRecordConfidence right_lane_boundary~%~%================================================================================~%MSG: landmark_msgs/LaneRecordConfidence~%uint64 track_id~%uint64 track_frames_count~%~%================================================================================~%MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence~%bool reliable~%landmark_msgs/LaneCenterIntersectWithRoadBoundary[] lane_center_intersect_with_road_boundaries~%~%================================================================================~%MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundary~%landmark_msgs/LaneRecordConfidence lane_center~%landmark_msgs/LaneRecordConfidence road_boundary~%landmark_msgs/IntersectTypeEnum intersect_type~%float64 min_distance~%~%================================================================================~%MSG: landmark_msgs/IntersectTypeEnum~%uint8 UNKNOWN = 0~%uint8 CROSS = 1~%uint8 CLOSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerceptionConfidence>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_center_offset_confidence))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_center_disappearance_confidence))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_center_intersect_with_road_boundary_confidence))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'no_motor_lanecenters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vanished_normal_lanecenters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'too_close_to_laneboundary_lanecenters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerceptionConfidence>))
  "Converts a ROS message object to a list"
  (cl:list 'PerceptionConfidence
    (cl:cons ':reliable (reliable msg))
    (cl:cons ':lane_center_offset_confidence (lane_center_offset_confidence msg))
    (cl:cons ':lane_center_disappearance_confidence (lane_center_disappearance_confidence msg))
    (cl:cons ':lane_center_intersect_with_road_boundary_confidence (lane_center_intersect_with_road_boundary_confidence msg))
    (cl:cons ':no_motor_lanecenters (no_motor_lanecenters msg))
    (cl:cons ':vanished_normal_lanecenters (vanished_normal_lanecenters msg))
    (cl:cons ':too_close_to_laneboundary_lanecenters (too_close_to_laneboundary_lanecenters msg))
))
