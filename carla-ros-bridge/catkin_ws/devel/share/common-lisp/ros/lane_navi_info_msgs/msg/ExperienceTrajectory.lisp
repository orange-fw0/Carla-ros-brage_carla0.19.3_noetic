; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude ExperienceTrajectory.msg.html

(cl:defclass <ExperienceTrajectory> (roslisp-msg-protocol:ros-message)
  ((polyline
    :reader polyline
    :initarg :polyline
    :type lane_navi_info_msgs-msg:Polyline
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Polyline))
   (related_lane_id
    :reader related_lane_id
    :initarg :related_lane_id
    :type (cl:vector landmark_msgs-msg:TrackId)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrackId :initial-element (cl:make-instance 'landmark_msgs-msg:TrackId)))
   (start_lane
    :reader start_lane
    :initarg :start_lane
    :type lane_navi_info_msgs-msg:Lane_Cursor
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Lane_Cursor))
   (end_lane
    :reader end_lane
    :initarg :end_lane
    :type lane_navi_info_msgs-msg:Lane_Cursor
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Lane_Cursor)))
)

(cl:defclass ExperienceTrajectory (<ExperienceTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExperienceTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExperienceTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<ExperienceTrajectory> is deprecated: use lane_navi_info_msgs-msg:ExperienceTrajectory instead.")))

(cl:ensure-generic-function 'polyline-val :lambda-list '(m))
(cl:defmethod polyline-val ((m <ExperienceTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:polyline-val is deprecated.  Use lane_navi_info_msgs-msg:polyline instead.")
  (polyline m))

(cl:ensure-generic-function 'related_lane_id-val :lambda-list '(m))
(cl:defmethod related_lane_id-val ((m <ExperienceTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:related_lane_id-val is deprecated.  Use lane_navi_info_msgs-msg:related_lane_id instead.")
  (related_lane_id m))

(cl:ensure-generic-function 'start_lane-val :lambda-list '(m))
(cl:defmethod start_lane-val ((m <ExperienceTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:start_lane-val is deprecated.  Use lane_navi_info_msgs-msg:start_lane instead.")
  (start_lane m))

(cl:ensure-generic-function 'end_lane-val :lambda-list '(m))
(cl:defmethod end_lane-val ((m <ExperienceTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:end_lane-val is deprecated.  Use lane_navi_info_msgs-msg:end_lane instead.")
  (end_lane m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExperienceTrajectory>) ostream)
  "Serializes a message object of type '<ExperienceTrajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polyline) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'related_lane_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'related_lane_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_lane) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_lane) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExperienceTrajectory>) istream)
  "Deserializes a message object of type '<ExperienceTrajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polyline) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'related_lane_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'related_lane_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrackId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_lane) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_lane) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExperienceTrajectory>)))
  "Returns string type for a message object of type '<ExperienceTrajectory>"
  "lane_navi_info_msgs/ExperienceTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExperienceTrajectory)))
  "Returns string type for a message object of type 'ExperienceTrajectory"
  "lane_navi_info_msgs/ExperienceTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExperienceTrajectory>)))
  "Returns md5sum for a message object of type '<ExperienceTrajectory>"
  "45b1b4350457a5db2a1e546375062dbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExperienceTrajectory)))
  "Returns md5sum for a message object of type 'ExperienceTrajectory"
  "45b1b4350457a5db2a1e546375062dbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExperienceTrajectory>)))
  "Returns full string definition for message of type '<ExperienceTrajectory>"
  (cl:format cl:nil "lane_navi_info_msgs/Polyline polyline~%landmark_msgs/TrackId[] related_lane_id~%lane_navi_info_msgs/Lane_Cursor start_lane~%lane_navi_info_msgs/Lane_Cursor end_lane~%~%================================================================================~%MSG: lane_navi_info_msgs/Polyline~%lane_navi_info_msgs/Point[] points~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Lane_Cursor~%landmark_msgs/TrackId lane_id~%float32 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExperienceTrajectory)))
  "Returns full string definition for message of type 'ExperienceTrajectory"
  (cl:format cl:nil "lane_navi_info_msgs/Polyline polyline~%landmark_msgs/TrackId[] related_lane_id~%lane_navi_info_msgs/Lane_Cursor start_lane~%lane_navi_info_msgs/Lane_Cursor end_lane~%~%================================================================================~%MSG: lane_navi_info_msgs/Polyline~%lane_navi_info_msgs/Point[] points~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Lane_Cursor~%landmark_msgs/TrackId lane_id~%float32 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExperienceTrajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polyline))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'related_lane_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_lane))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_lane))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExperienceTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'ExperienceTrajectory
    (cl:cons ':polyline (polyline msg))
    (cl:cons ':related_lane_id (related_lane_id msg))
    (cl:cons ':start_lane (start_lane msg))
    (cl:cons ':end_lane (end_lane msg))
))
