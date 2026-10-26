; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneCenterIntersectWithRoadBoundaryConfidence.msg.html

(cl:defclass <LaneCenterIntersectWithRoadBoundaryConfidence> (roslisp-msg-protocol:ros-message)
  ((reliable
    :reader reliable
    :initarg :reliable
    :type cl:boolean
    :initform cl:nil)
   (lane_center_intersect_with_road_boundaries
    :reader lane_center_intersect_with_road_boundaries
    :initarg :lane_center_intersect_with_road_boundaries
    :type (cl:vector landmark_msgs-msg:LaneCenterIntersectWithRoadBoundary)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:LaneCenterIntersectWithRoadBoundary :initial-element (cl:make-instance 'landmark_msgs-msg:LaneCenterIntersectWithRoadBoundary))))
)

(cl:defclass LaneCenterIntersectWithRoadBoundaryConfidence (<LaneCenterIntersectWithRoadBoundaryConfidence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneCenterIntersectWithRoadBoundaryConfidence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneCenterIntersectWithRoadBoundaryConfidence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneCenterIntersectWithRoadBoundaryConfidence> is deprecated: use landmark_msgs-msg:LaneCenterIntersectWithRoadBoundaryConfidence instead.")))

(cl:ensure-generic-function 'reliable-val :lambda-list '(m))
(cl:defmethod reliable-val ((m <LaneCenterIntersectWithRoadBoundaryConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reliable-val is deprecated.  Use landmark_msgs-msg:reliable instead.")
  (reliable m))

(cl:ensure-generic-function 'lane_center_intersect_with_road_boundaries-val :lambda-list '(m))
(cl:defmethod lane_center_intersect_with_road_boundaries-val ((m <LaneCenterIntersectWithRoadBoundaryConfidence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_center_intersect_with_road_boundaries-val is deprecated.  Use landmark_msgs-msg:lane_center_intersect_with_road_boundaries instead.")
  (lane_center_intersect_with_road_boundaries m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneCenterIntersectWithRoadBoundaryConfidence>) ostream)
  "Serializes a message object of type '<LaneCenterIntersectWithRoadBoundaryConfidence>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reliable) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_center_intersect_with_road_boundaries))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_center_intersect_with_road_boundaries))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneCenterIntersectWithRoadBoundaryConfidence>) istream)
  "Deserializes a message object of type '<LaneCenterIntersectWithRoadBoundaryConfidence>"
    (cl:setf (cl:slot-value msg 'reliable) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_center_intersect_with_road_boundaries) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_center_intersect_with_road_boundaries)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:LaneCenterIntersectWithRoadBoundary))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneCenterIntersectWithRoadBoundaryConfidence>)))
  "Returns string type for a message object of type '<LaneCenterIntersectWithRoadBoundaryConfidence>"
  "landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneCenterIntersectWithRoadBoundaryConfidence)))
  "Returns string type for a message object of type 'LaneCenterIntersectWithRoadBoundaryConfidence"
  "landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneCenterIntersectWithRoadBoundaryConfidence>)))
  "Returns md5sum for a message object of type '<LaneCenterIntersectWithRoadBoundaryConfidence>"
  "87761ae09e23c0a81c895a690f91fbac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneCenterIntersectWithRoadBoundaryConfidence)))
  "Returns md5sum for a message object of type 'LaneCenterIntersectWithRoadBoundaryConfidence"
  "87761ae09e23c0a81c895a690f91fbac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneCenterIntersectWithRoadBoundaryConfidence>)))
  "Returns full string definition for message of type '<LaneCenterIntersectWithRoadBoundaryConfidence>"
  (cl:format cl:nil "bool reliable~%landmark_msgs/LaneCenterIntersectWithRoadBoundary[] lane_center_intersect_with_road_boundaries~%~%================================================================================~%MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundary~%landmark_msgs/LaneRecordConfidence lane_center~%landmark_msgs/LaneRecordConfidence road_boundary~%landmark_msgs/IntersectTypeEnum intersect_type~%float64 min_distance~%~%================================================================================~%MSG: landmark_msgs/LaneRecordConfidence~%uint64 track_id~%uint64 track_frames_count~%~%================================================================================~%MSG: landmark_msgs/IntersectTypeEnum~%uint8 UNKNOWN = 0~%uint8 CROSS = 1~%uint8 CLOSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneCenterIntersectWithRoadBoundaryConfidence)))
  "Returns full string definition for message of type 'LaneCenterIntersectWithRoadBoundaryConfidence"
  (cl:format cl:nil "bool reliable~%landmark_msgs/LaneCenterIntersectWithRoadBoundary[] lane_center_intersect_with_road_boundaries~%~%================================================================================~%MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundary~%landmark_msgs/LaneRecordConfidence lane_center~%landmark_msgs/LaneRecordConfidence road_boundary~%landmark_msgs/IntersectTypeEnum intersect_type~%float64 min_distance~%~%================================================================================~%MSG: landmark_msgs/LaneRecordConfidence~%uint64 track_id~%uint64 track_frames_count~%~%================================================================================~%MSG: landmark_msgs/IntersectTypeEnum~%uint8 UNKNOWN = 0~%uint8 CROSS = 1~%uint8 CLOSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneCenterIntersectWithRoadBoundaryConfidence>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_center_intersect_with_road_boundaries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneCenterIntersectWithRoadBoundaryConfidence>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneCenterIntersectWithRoadBoundaryConfidence
    (cl:cons ':reliable (reliable msg))
    (cl:cons ':lane_center_intersect_with_road_boundaries (lane_center_intersect_with_road_boundaries msg))
))
