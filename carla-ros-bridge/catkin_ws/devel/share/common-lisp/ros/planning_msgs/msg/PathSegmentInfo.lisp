; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude PathSegmentInfo.msg.html

(cl:defclass <PathSegmentInfo> (roslisp-msg-protocol:ros-message)
  ((end_segment_control_point_s
    :reader end_segment_control_point_s
    :initarg :end_segment_control_point_s
    :type cl:float
    :initform 0.0)
   (end_segment_refline_info
    :reader end_segment_refline_info
    :initarg :end_segment_refline_info
    :type planning_msgs-msg:RefPointInfo
    :initform (cl:make-instance 'planning_msgs-msg:RefPointInfo))
   (quad_point_info
    :reader quad_point_info
    :initarg :quad_point_info
    :type (cl:vector planning_msgs-msg:PathSampleInfo)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:PathSampleInfo :initial-element (cl:make-instance 'planning_msgs-msg:PathSampleInfo))))
)

(cl:defclass PathSegmentInfo (<PathSegmentInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathSegmentInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathSegmentInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<PathSegmentInfo> is deprecated: use planning_msgs-msg:PathSegmentInfo instead.")))

(cl:ensure-generic-function 'end_segment_control_point_s-val :lambda-list '(m))
(cl:defmethod end_segment_control_point_s-val ((m <PathSegmentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:end_segment_control_point_s-val is deprecated.  Use planning_msgs-msg:end_segment_control_point_s instead.")
  (end_segment_control_point_s m))

(cl:ensure-generic-function 'end_segment_refline_info-val :lambda-list '(m))
(cl:defmethod end_segment_refline_info-val ((m <PathSegmentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:end_segment_refline_info-val is deprecated.  Use planning_msgs-msg:end_segment_refline_info instead.")
  (end_segment_refline_info m))

(cl:ensure-generic-function 'quad_point_info-val :lambda-list '(m))
(cl:defmethod quad_point_info-val ((m <PathSegmentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:quad_point_info-val is deprecated.  Use planning_msgs-msg:quad_point_info instead.")
  (quad_point_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathSegmentInfo>) ostream)
  "Serializes a message object of type '<PathSegmentInfo>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_segment_control_point_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_segment_refline_info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'quad_point_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'quad_point_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathSegmentInfo>) istream)
  "Deserializes a message object of type '<PathSegmentInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_segment_control_point_s) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_segment_refline_info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'quad_point_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'quad_point_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:PathSampleInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathSegmentInfo>)))
  "Returns string type for a message object of type '<PathSegmentInfo>"
  "planning_msgs/PathSegmentInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathSegmentInfo)))
  "Returns string type for a message object of type 'PathSegmentInfo"
  "planning_msgs/PathSegmentInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathSegmentInfo>)))
  "Returns md5sum for a message object of type '<PathSegmentInfo>"
  "1cb5f0175fbd945cb21a39cf08bca405")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathSegmentInfo)))
  "Returns md5sum for a message object of type 'PathSegmentInfo"
  "1cb5f0175fbd945cb21a39cf08bca405")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathSegmentInfo>)))
  "Returns full string definition for message of type '<PathSegmentInfo>"
  (cl:format cl:nil "float64 end_segment_control_point_s~%planning_msgs/RefPointInfo end_segment_refline_info~%planning_msgs/PathSampleInfo[] quad_point_info~%~%================================================================================~%MSG: planning_msgs/RefPointInfo~%float64 time~%float64 x~%float64 y~%float64 curvature~%float64 current_lane_width~%float64 left_lane_width~%float64 right_lane_width~%float64 left_lane_border~%float64 right_lane_border~%float64 left_road_border~%float64 right_road_border~%float64 theta_ref~%float64 cos_theta_ref~%float64 sin_theta_ref~%int32 left_road_border_type~%int32 right_road_border_type~%int32 left_lane_border_type~%int32 right_lane_border_type~%~%================================================================================~%MSG: planning_msgs/PathSampleInfo~%float64 sample_s~%planning_msgs/PathPoint last_cart_traj~%planning_msgs/RefPointInfo refline_info~%planning_msgs/SpeedPlan speed_plan~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/SpeedPlan~%float64 v~%float64 a~%float64 j~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathSegmentInfo)))
  "Returns full string definition for message of type 'PathSegmentInfo"
  (cl:format cl:nil "float64 end_segment_control_point_s~%planning_msgs/RefPointInfo end_segment_refline_info~%planning_msgs/PathSampleInfo[] quad_point_info~%~%================================================================================~%MSG: planning_msgs/RefPointInfo~%float64 time~%float64 x~%float64 y~%float64 curvature~%float64 current_lane_width~%float64 left_lane_width~%float64 right_lane_width~%float64 left_lane_border~%float64 right_lane_border~%float64 left_road_border~%float64 right_road_border~%float64 theta_ref~%float64 cos_theta_ref~%float64 sin_theta_ref~%int32 left_road_border_type~%int32 right_road_border_type~%int32 left_lane_border_type~%int32 right_lane_border_type~%~%================================================================================~%MSG: planning_msgs/PathSampleInfo~%float64 sample_s~%planning_msgs/PathPoint last_cart_traj~%planning_msgs/RefPointInfo refline_info~%planning_msgs/SpeedPlan speed_plan~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/SpeedPlan~%float64 v~%float64 a~%float64 j~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathSegmentInfo>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_segment_refline_info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'quad_point_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathSegmentInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PathSegmentInfo
    (cl:cons ':end_segment_control_point_s (end_segment_control_point_s msg))
    (cl:cons ':end_segment_refline_info (end_segment_refline_info msg))
    (cl:cons ':quad_point_info (quad_point_info msg))
))
