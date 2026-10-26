; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude PathSampleInfo.msg.html

(cl:defclass <PathSampleInfo> (roslisp-msg-protocol:ros-message)
  ((sample_s
    :reader sample_s
    :initarg :sample_s
    :type cl:float
    :initform 0.0)
   (last_cart_traj
    :reader last_cart_traj
    :initarg :last_cart_traj
    :type planning_msgs-msg:PathPoint
    :initform (cl:make-instance 'planning_msgs-msg:PathPoint))
   (refline_info
    :reader refline_info
    :initarg :refline_info
    :type planning_msgs-msg:RefPointInfo
    :initform (cl:make-instance 'planning_msgs-msg:RefPointInfo))
   (speed_plan
    :reader speed_plan
    :initarg :speed_plan
    :type planning_msgs-msg:SpeedPlan
    :initform (cl:make-instance 'planning_msgs-msg:SpeedPlan)))
)

(cl:defclass PathSampleInfo (<PathSampleInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathSampleInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathSampleInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<PathSampleInfo> is deprecated: use planning_msgs-msg:PathSampleInfo instead.")))

(cl:ensure-generic-function 'sample_s-val :lambda-list '(m))
(cl:defmethod sample_s-val ((m <PathSampleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:sample_s-val is deprecated.  Use planning_msgs-msg:sample_s instead.")
  (sample_s m))

(cl:ensure-generic-function 'last_cart_traj-val :lambda-list '(m))
(cl:defmethod last_cart_traj-val ((m <PathSampleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:last_cart_traj-val is deprecated.  Use planning_msgs-msg:last_cart_traj instead.")
  (last_cart_traj m))

(cl:ensure-generic-function 'refline_info-val :lambda-list '(m))
(cl:defmethod refline_info-val ((m <PathSampleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:refline_info-val is deprecated.  Use planning_msgs-msg:refline_info instead.")
  (refline_info m))

(cl:ensure-generic-function 'speed_plan-val :lambda-list '(m))
(cl:defmethod speed_plan-val ((m <PathSampleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:speed_plan-val is deprecated.  Use planning_msgs-msg:speed_plan instead.")
  (speed_plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathSampleInfo>) ostream)
  "Serializes a message object of type '<PathSampleInfo>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sample_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_cart_traj) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'refline_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathSampleInfo>) istream)
  "Deserializes a message object of type '<PathSampleInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sample_s) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_cart_traj) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'refline_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathSampleInfo>)))
  "Returns string type for a message object of type '<PathSampleInfo>"
  "planning_msgs/PathSampleInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathSampleInfo)))
  "Returns string type for a message object of type 'PathSampleInfo"
  "planning_msgs/PathSampleInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathSampleInfo>)))
  "Returns md5sum for a message object of type '<PathSampleInfo>"
  "2063c13a26cedde6f767a0f1338f0c52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathSampleInfo)))
  "Returns md5sum for a message object of type 'PathSampleInfo"
  "2063c13a26cedde6f767a0f1338f0c52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathSampleInfo>)))
  "Returns full string definition for message of type '<PathSampleInfo>"
  (cl:format cl:nil "float64 sample_s~%planning_msgs/PathPoint last_cart_traj~%planning_msgs/RefPointInfo refline_info~%planning_msgs/SpeedPlan speed_plan~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/RefPointInfo~%float64 time~%float64 x~%float64 y~%float64 curvature~%float64 current_lane_width~%float64 left_lane_width~%float64 right_lane_width~%float64 left_lane_border~%float64 right_lane_border~%float64 left_road_border~%float64 right_road_border~%float64 theta_ref~%float64 cos_theta_ref~%float64 sin_theta_ref~%int32 left_road_border_type~%int32 right_road_border_type~%int32 left_lane_border_type~%int32 right_lane_border_type~%~%================================================================================~%MSG: planning_msgs/SpeedPlan~%float64 v~%float64 a~%float64 j~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathSampleInfo)))
  "Returns full string definition for message of type 'PathSampleInfo"
  (cl:format cl:nil "float64 sample_s~%planning_msgs/PathPoint last_cart_traj~%planning_msgs/RefPointInfo refline_info~%planning_msgs/SpeedPlan speed_plan~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/RefPointInfo~%float64 time~%float64 x~%float64 y~%float64 curvature~%float64 current_lane_width~%float64 left_lane_width~%float64 right_lane_width~%float64 left_lane_border~%float64 right_lane_border~%float64 left_road_border~%float64 right_road_border~%float64 theta_ref~%float64 cos_theta_ref~%float64 sin_theta_ref~%int32 left_road_border_type~%int32 right_road_border_type~%int32 left_lane_border_type~%int32 right_lane_border_type~%~%================================================================================~%MSG: planning_msgs/SpeedPlan~%float64 v~%float64 a~%float64 j~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathSampleInfo>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_cart_traj))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'refline_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathSampleInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PathSampleInfo
    (cl:cons ':sample_s (sample_s msg))
    (cl:cons ':last_cart_traj (last_cart_traj msg))
    (cl:cons ':refline_info (refline_info msg))
    (cl:cons ':speed_plan (speed_plan msg))
))
