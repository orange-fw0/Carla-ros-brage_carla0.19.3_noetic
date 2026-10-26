; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude LocalLatMotionInfo.msg.html

(cl:defclass <LocalLatMotionInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_replan
    :reader is_replan
    :initarg :is_replan
    :type cl:boolean
    :initform cl:nil)
   (ego_x
    :reader ego_x
    :initarg :ego_x
    :type cl:float
    :initform 0.0)
   (ego_y
    :reader ego_y
    :initarg :ego_y
    :type cl:float
    :initform 0.0)
   (ego_dx_ds
    :reader ego_dx_ds
    :initarg :ego_dx_ds
    :type cl:float
    :initform 0.0)
   (ego_dy_ds
    :reader ego_dy_ds
    :initarg :ego_dy_ds
    :type cl:float
    :initform 0.0)
   (ego_s
    :reader ego_s
    :initarg :ego_s
    :type cl:float
    :initform 0.0)
   (ego_init_curvature
    :reader ego_init_curvature
    :initarg :ego_init_curvature
    :type cl:float
    :initform 0.0)
   (path_segments
    :reader path_segments
    :initarg :path_segments
    :type (cl:vector planning_msgs-msg:PathSegmentInfo)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:PathSegmentInfo :initial-element (cl:make-instance 'planning_msgs-msg:PathSegmentInfo)))
   (path_tuning_params
    :reader path_tuning_params
    :initarg :path_tuning_params
    :type planning_msgs-msg:PathTuningParams
    :initform (cl:make-instance 'planning_msgs-msg:PathTuningParams)))
)

(cl:defclass LocalLatMotionInfo (<LocalLatMotionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalLatMotionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalLatMotionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<LocalLatMotionInfo> is deprecated: use planning_msgs-msg:LocalLatMotionInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LocalLatMotionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:header-val is deprecated.  Use planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_replan-val :lambda-list '(m))
(cl:defmethod is_replan-val ((m <LocalLatMotionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:is_replan-val is deprecated.  Use planning_msgs-msg:is_replan instead.")
  (is_replan m))

(cl:ensure-generic-function 'ego_x-val :lambda-list '(m))
(cl:defmethod ego_x-val ((m <LocalLatMotionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ego_x-val is deprecated.  Use planning_msgs-msg:ego_x instead.")
  (ego_x m))

(cl:ensure-generic-function 'ego_y-val :lambda-list '(m))
(cl:defmethod ego_y-val ((m <LocalLatMotionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ego_y-val is deprecated.  Use planning_msgs-msg:ego_y instead.")
  (ego_y m))

(cl:ensure-generic-function 'ego_dx_ds-val :lambda-list '(m))
(cl:defmethod ego_dx_ds-val ((m <LocalLatMotionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ego_dx_ds-val is deprecated.  Use planning_msgs-msg:ego_dx_ds instead.")
  (ego_dx_ds m))

(cl:ensure-generic-function 'ego_dy_ds-val :lambda-list '(m))
(cl:defmethod ego_dy_ds-val ((m <LocalLatMotionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ego_dy_ds-val is deprecated.  Use planning_msgs-msg:ego_dy_ds instead.")
  (ego_dy_ds m))

(cl:ensure-generic-function 'ego_s-val :lambda-list '(m))
(cl:defmethod ego_s-val ((m <LocalLatMotionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ego_s-val is deprecated.  Use planning_msgs-msg:ego_s instead.")
  (ego_s m))

(cl:ensure-generic-function 'ego_init_curvature-val :lambda-list '(m))
(cl:defmethod ego_init_curvature-val ((m <LocalLatMotionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ego_init_curvature-val is deprecated.  Use planning_msgs-msg:ego_init_curvature instead.")
  (ego_init_curvature m))

(cl:ensure-generic-function 'path_segments-val :lambda-list '(m))
(cl:defmethod path_segments-val ((m <LocalLatMotionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:path_segments-val is deprecated.  Use planning_msgs-msg:path_segments instead.")
  (path_segments m))

(cl:ensure-generic-function 'path_tuning_params-val :lambda-list '(m))
(cl:defmethod path_tuning_params-val ((m <LocalLatMotionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:path_tuning_params-val is deprecated.  Use planning_msgs-msg:path_tuning_params instead.")
  (path_tuning_params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalLatMotionInfo>) ostream)
  "Serializes a message object of type '<LocalLatMotionInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_replan) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ego_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ego_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ego_dx_ds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ego_dy_ds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ego_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ego_init_curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_segments))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_tuning_params) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalLatMotionInfo>) istream)
  "Deserializes a message object of type '<LocalLatMotionInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_replan) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_dx_ds) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_dy_ds) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_init_curvature) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:PathSegmentInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_tuning_params) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalLatMotionInfo>)))
  "Returns string type for a message object of type '<LocalLatMotionInfo>"
  "planning_msgs/LocalLatMotionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalLatMotionInfo)))
  "Returns string type for a message object of type 'LocalLatMotionInfo"
  "planning_msgs/LocalLatMotionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalLatMotionInfo>)))
  "Returns md5sum for a message object of type '<LocalLatMotionInfo>"
  "0d8495540b24d445c9ad366cc3e24cd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalLatMotionInfo)))
  "Returns md5sum for a message object of type 'LocalLatMotionInfo"
  "0d8495540b24d445c9ad366cc3e24cd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalLatMotionInfo>)))
  "Returns full string definition for message of type '<LocalLatMotionInfo>"
  (cl:format cl:nil "std_msgs/Header header~%bool is_replan~%float64 ego_x~%float64 ego_y~%float64 ego_dx_ds~%float64 ego_dy_ds~%float64 ego_s~%float64 ego_init_curvature~%planning_msgs/PathSegmentInfo[] path_segments~%planning_msgs/PathTuningParams path_tuning_params~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/PathSegmentInfo~%float64 end_segment_control_point_s~%planning_msgs/RefPointInfo end_segment_refline_info~%planning_msgs/PathSampleInfo[] quad_point_info~%~%================================================================================~%MSG: planning_msgs/RefPointInfo~%float64 time~%float64 x~%float64 y~%float64 curvature~%float64 current_lane_width~%float64 left_lane_width~%float64 right_lane_width~%float64 left_lane_border~%float64 right_lane_border~%float64 left_road_border~%float64 right_road_border~%float64 theta_ref~%float64 cos_theta_ref~%float64 sin_theta_ref~%int32 left_road_border_type~%int32 right_road_border_type~%int32 left_lane_border_type~%int32 right_lane_border_type~%~%================================================================================~%MSG: planning_msgs/PathSampleInfo~%float64 sample_s~%planning_msgs/PathPoint last_cart_traj~%planning_msgs/RefPointInfo refline_info~%planning_msgs/SpeedPlan speed_plan~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/SpeedPlan~%float64 v~%float64 a~%float64 j~%~%================================================================================~%MSG: planning_msgs/PathTuningParams~%int32 max_num_iterations~%float64 soft_boundary_scale~%float64 hard_boundary_scale~%float64 init_curvature_scale~%float64 curvature_limit_scale~%float64 lat_accel_scale~%float64 lat_jerk_scale~%float64 heading_scale~%float64 ref_centering_scale~%float64 prev_plan_centering_scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalLatMotionInfo)))
  "Returns full string definition for message of type 'LocalLatMotionInfo"
  (cl:format cl:nil "std_msgs/Header header~%bool is_replan~%float64 ego_x~%float64 ego_y~%float64 ego_dx_ds~%float64 ego_dy_ds~%float64 ego_s~%float64 ego_init_curvature~%planning_msgs/PathSegmentInfo[] path_segments~%planning_msgs/PathTuningParams path_tuning_params~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/PathSegmentInfo~%float64 end_segment_control_point_s~%planning_msgs/RefPointInfo end_segment_refline_info~%planning_msgs/PathSampleInfo[] quad_point_info~%~%================================================================================~%MSG: planning_msgs/RefPointInfo~%float64 time~%float64 x~%float64 y~%float64 curvature~%float64 current_lane_width~%float64 left_lane_width~%float64 right_lane_width~%float64 left_lane_border~%float64 right_lane_border~%float64 left_road_border~%float64 right_road_border~%float64 theta_ref~%float64 cos_theta_ref~%float64 sin_theta_ref~%int32 left_road_border_type~%int32 right_road_border_type~%int32 left_lane_border_type~%int32 right_lane_border_type~%~%================================================================================~%MSG: planning_msgs/PathSampleInfo~%float64 sample_s~%planning_msgs/PathPoint last_cart_traj~%planning_msgs/RefPointInfo refline_info~%planning_msgs/SpeedPlan speed_plan~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/SpeedPlan~%float64 v~%float64 a~%float64 j~%~%================================================================================~%MSG: planning_msgs/PathTuningParams~%int32 max_num_iterations~%float64 soft_boundary_scale~%float64 hard_boundary_scale~%float64 init_curvature_scale~%float64 curvature_limit_scale~%float64 lat_accel_scale~%float64 lat_jerk_scale~%float64 heading_scale~%float64 ref_centering_scale~%float64 prev_plan_centering_scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalLatMotionInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     8
     8
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_tuning_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalLatMotionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalLatMotionInfo
    (cl:cons ':header (header msg))
    (cl:cons ':is_replan (is_replan msg))
    (cl:cons ':ego_x (ego_x msg))
    (cl:cons ':ego_y (ego_y msg))
    (cl:cons ':ego_dx_ds (ego_dx_ds msg))
    (cl:cons ':ego_dy_ds (ego_dy_ds msg))
    (cl:cons ':ego_s (ego_s msg))
    (cl:cons ':ego_init_curvature (ego_init_curvature msg))
    (cl:cons ':path_segments (path_segments msg))
    (cl:cons ':path_tuning_params (path_tuning_params msg))
))
