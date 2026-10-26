; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneCenterIntersectWithRoadBoundary.msg.html

(cl:defclass <LaneCenterIntersectWithRoadBoundary> (roslisp-msg-protocol:ros-message)
  ((lane_center
    :reader lane_center
    :initarg :lane_center
    :type landmark_msgs-msg:LaneRecordConfidence
    :initform (cl:make-instance 'landmark_msgs-msg:LaneRecordConfidence))
   (road_boundary
    :reader road_boundary
    :initarg :road_boundary
    :type landmark_msgs-msg:LaneRecordConfidence
    :initform (cl:make-instance 'landmark_msgs-msg:LaneRecordConfidence))
   (intersect_type
    :reader intersect_type
    :initarg :intersect_type
    :type landmark_msgs-msg:IntersectTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:IntersectTypeEnum))
   (min_distance
    :reader min_distance
    :initarg :min_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass LaneCenterIntersectWithRoadBoundary (<LaneCenterIntersectWithRoadBoundary>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneCenterIntersectWithRoadBoundary>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneCenterIntersectWithRoadBoundary)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneCenterIntersectWithRoadBoundary> is deprecated: use landmark_msgs-msg:LaneCenterIntersectWithRoadBoundary instead.")))

(cl:ensure-generic-function 'lane_center-val :lambda-list '(m))
(cl:defmethod lane_center-val ((m <LaneCenterIntersectWithRoadBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_center-val is deprecated.  Use landmark_msgs-msg:lane_center instead.")
  (lane_center m))

(cl:ensure-generic-function 'road_boundary-val :lambda-list '(m))
(cl:defmethod road_boundary-val ((m <LaneCenterIntersectWithRoadBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:road_boundary-val is deprecated.  Use landmark_msgs-msg:road_boundary instead.")
  (road_boundary m))

(cl:ensure-generic-function 'intersect_type-val :lambda-list '(m))
(cl:defmethod intersect_type-val ((m <LaneCenterIntersectWithRoadBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:intersect_type-val is deprecated.  Use landmark_msgs-msg:intersect_type instead.")
  (intersect_type m))

(cl:ensure-generic-function 'min_distance-val :lambda-list '(m))
(cl:defmethod min_distance-val ((m <LaneCenterIntersectWithRoadBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:min_distance-val is deprecated.  Use landmark_msgs-msg:min_distance instead.")
  (min_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneCenterIntersectWithRoadBoundary>) ostream)
  "Serializes a message object of type '<LaneCenterIntersectWithRoadBoundary>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_boundary) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'intersect_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneCenterIntersectWithRoadBoundary>) istream)
  "Deserializes a message object of type '<LaneCenterIntersectWithRoadBoundary>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_boundary) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'intersect_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneCenterIntersectWithRoadBoundary>)))
  "Returns string type for a message object of type '<LaneCenterIntersectWithRoadBoundary>"
  "landmark_msgs/LaneCenterIntersectWithRoadBoundary")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneCenterIntersectWithRoadBoundary)))
  "Returns string type for a message object of type 'LaneCenterIntersectWithRoadBoundary"
  "landmark_msgs/LaneCenterIntersectWithRoadBoundary")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneCenterIntersectWithRoadBoundary>)))
  "Returns md5sum for a message object of type '<LaneCenterIntersectWithRoadBoundary>"
  "7f0c6f3881f2d1ffb289ddb32dd95fb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneCenterIntersectWithRoadBoundary)))
  "Returns md5sum for a message object of type 'LaneCenterIntersectWithRoadBoundary"
  "7f0c6f3881f2d1ffb289ddb32dd95fb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneCenterIntersectWithRoadBoundary>)))
  "Returns full string definition for message of type '<LaneCenterIntersectWithRoadBoundary>"
  (cl:format cl:nil "landmark_msgs/LaneRecordConfidence lane_center~%landmark_msgs/LaneRecordConfidence road_boundary~%landmark_msgs/IntersectTypeEnum intersect_type~%float64 min_distance~%~%================================================================================~%MSG: landmark_msgs/LaneRecordConfidence~%uint64 track_id~%uint64 track_frames_count~%~%================================================================================~%MSG: landmark_msgs/IntersectTypeEnum~%uint8 UNKNOWN = 0~%uint8 CROSS = 1~%uint8 CLOSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneCenterIntersectWithRoadBoundary)))
  "Returns full string definition for message of type 'LaneCenterIntersectWithRoadBoundary"
  (cl:format cl:nil "landmark_msgs/LaneRecordConfidence lane_center~%landmark_msgs/LaneRecordConfidence road_boundary~%landmark_msgs/IntersectTypeEnum intersect_type~%float64 min_distance~%~%================================================================================~%MSG: landmark_msgs/LaneRecordConfidence~%uint64 track_id~%uint64 track_frames_count~%~%================================================================================~%MSG: landmark_msgs/IntersectTypeEnum~%uint8 UNKNOWN = 0~%uint8 CROSS = 1~%uint8 CLOSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneCenterIntersectWithRoadBoundary>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_boundary))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'intersect_type))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneCenterIntersectWithRoadBoundary>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneCenterIntersectWithRoadBoundary
    (cl:cons ':lane_center (lane_center msg))
    (cl:cons ':road_boundary (road_boundary msg))
    (cl:cons ':intersect_type (intersect_type msg))
    (cl:cons ':min_distance (min_distance msg))
))
