; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude Refline.msg.html

(cl:defclass <Refline> (roslisp-msg-protocol:ros-message)
  ((segments
    :reader segments
    :initarg :segments
    :type (cl:vector momenta_msgs-msg:Segment)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:Segment :initial-element (cl:make-instance 'momenta_msgs-msg:Segment)))
   (points
    :reader points
    :initarg :points
    :type (cl:vector momenta_msgs-msg:RefLinePoint)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:RefLinePoint :initial-element (cl:make-instance 'momenta_msgs-msg:RefLinePoint))))
)

(cl:defclass Refline (<Refline>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Refline>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Refline)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<Refline> is deprecated: use momenta_msgs-msg:Refline instead.")))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <Refline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:segments-val is deprecated.  Use momenta_msgs-msg:segments instead.")
  (segments m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Refline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:points-val is deprecated.  Use momenta_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Refline>) ostream)
  "Serializes a message object of type '<Refline>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Refline>) istream)
  "Deserializes a message object of type '<Refline>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:Segment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:RefLinePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Refline>)))
  "Returns string type for a message object of type '<Refline>"
  "momenta_msgs/Refline")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Refline)))
  "Returns string type for a message object of type 'Refline"
  "momenta_msgs/Refline")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Refline>)))
  "Returns md5sum for a message object of type '<Refline>"
  "1628fa29afb536fdfe69a9d590e417ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Refline)))
  "Returns md5sum for a message object of type 'Refline"
  "1628fa29afb536fdfe69a9d590e417ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Refline>)))
  "Returns full string definition for message of type '<Refline>"
  (cl:format cl:nil "momenta_msgs/Segment[] segments~%momenta_msgs/RefLinePoint[] points~%~%================================================================================~%MSG: momenta_msgs/Segment~%uint16 begin_index~%uint16 end_index~%uint8 connection_type~%uint8 direction~%uint8 lane_type~%int64 lane_original_id~%bool is_in_intersection~%bool is_on_route~%~%================================================================================~%MSG: momenta_msgs/RefLinePoint~%float64 x~%float64 y~%float64 z~%float64 curvature~%float64 yaw~%float64 left_road_border_distance~%float64 right_road_border_distance~%float64 left_lane_border_distance~%float64 right_lane_border_distance~%float64 left_obstacle_distance~%float64 right_obstacle_distance~%float64 lane_width~%float64 speed_limit~%string track_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Refline)))
  "Returns full string definition for message of type 'Refline"
  (cl:format cl:nil "momenta_msgs/Segment[] segments~%momenta_msgs/RefLinePoint[] points~%~%================================================================================~%MSG: momenta_msgs/Segment~%uint16 begin_index~%uint16 end_index~%uint8 connection_type~%uint8 direction~%uint8 lane_type~%int64 lane_original_id~%bool is_in_intersection~%bool is_on_route~%~%================================================================================~%MSG: momenta_msgs/RefLinePoint~%float64 x~%float64 y~%float64 z~%float64 curvature~%float64 yaw~%float64 left_road_border_distance~%float64 right_road_border_distance~%float64 left_lane_border_distance~%float64 right_lane_border_distance~%float64 left_obstacle_distance~%float64 right_obstacle_distance~%float64 lane_width~%float64 speed_limit~%string track_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Refline>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Refline>))
  "Converts a ROS message object to a list"
  (cl:list 'Refline
    (cl:cons ':segments (segments msg))
    (cl:cons ':points (points msg))
))
