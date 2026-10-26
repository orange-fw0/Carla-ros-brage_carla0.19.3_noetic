;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::LocalLatMotionInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'LocalLatMotionInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::LOCALLATMOTIONINFO")
  (make-package "PLANNING_MSGS::LOCALLATMOTIONINFO"))

(in-package "ROS")
;;//! \htmlinclude LocalLatMotionInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass planning_msgs::LocalLatMotionInfo
  :super ros::object
  :slots (_header _is_replan _ego_x _ego_y _ego_dx_ds _ego_dy_ds _ego_s _ego_init_curvature _path_segments _path_tuning_params ))

(defmethod planning_msgs::LocalLatMotionInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_replan __is_replan) nil)
    ((:ego_x __ego_x) 0.0)
    ((:ego_y __ego_y) 0.0)
    ((:ego_dx_ds __ego_dx_ds) 0.0)
    ((:ego_dy_ds __ego_dy_ds) 0.0)
    ((:ego_s __ego_s) 0.0)
    ((:ego_init_curvature __ego_init_curvature) 0.0)
    ((:path_segments __path_segments) ())
    ((:path_tuning_params __path_tuning_params) (instance planning_msgs::PathTuningParams :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_replan __is_replan)
   (setq _ego_x (float __ego_x))
   (setq _ego_y (float __ego_y))
   (setq _ego_dx_ds (float __ego_dx_ds))
   (setq _ego_dy_ds (float __ego_dy_ds))
   (setq _ego_s (float __ego_s))
   (setq _ego_init_curvature (float __ego_init_curvature))
   (setq _path_segments __path_segments)
   (setq _path_tuning_params __path_tuning_params)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_replan
   (&optional (__is_replan :null))
   (if (not (eq __is_replan :null)) (setq _is_replan __is_replan)) _is_replan)
  (:ego_x
   (&optional __ego_x)
   (if __ego_x (setq _ego_x __ego_x)) _ego_x)
  (:ego_y
   (&optional __ego_y)
   (if __ego_y (setq _ego_y __ego_y)) _ego_y)
  (:ego_dx_ds
   (&optional __ego_dx_ds)
   (if __ego_dx_ds (setq _ego_dx_ds __ego_dx_ds)) _ego_dx_ds)
  (:ego_dy_ds
   (&optional __ego_dy_ds)
   (if __ego_dy_ds (setq _ego_dy_ds __ego_dy_ds)) _ego_dy_ds)
  (:ego_s
   (&optional __ego_s)
   (if __ego_s (setq _ego_s __ego_s)) _ego_s)
  (:ego_init_curvature
   (&optional __ego_init_curvature)
   (if __ego_init_curvature (setq _ego_init_curvature __ego_init_curvature)) _ego_init_curvature)
  (:path_segments
   (&rest __path_segments)
   (if (keywordp (car __path_segments))
       (send* _path_segments __path_segments)
     (progn
       (if __path_segments (setq _path_segments (car __path_segments)))
       _path_segments)))
  (:path_tuning_params
   (&rest __path_tuning_params)
   (if (keywordp (car __path_tuning_params))
       (send* _path_tuning_params __path_tuning_params)
     (progn
       (if __path_tuning_params (setq _path_tuning_params (car __path_tuning_params)))
       _path_tuning_params)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_replan
    1
    ;; float64 _ego_x
    8
    ;; float64 _ego_y
    8
    ;; float64 _ego_dx_ds
    8
    ;; float64 _ego_dy_ds
    8
    ;; float64 _ego_s
    8
    ;; float64 _ego_init_curvature
    8
    ;; planning_msgs/PathSegmentInfo[] _path_segments
    (apply #'+ (send-all _path_segments :serialization-length)) 4
    ;; planning_msgs/PathTuningParams _path_tuning_params
    (send _path_tuning_params :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_replan
       (if _is_replan (write-byte -1 s) (write-byte 0 s))
     ;; float64 _ego_x
       (sys::poke _ego_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_y
       (sys::poke _ego_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_dx_ds
       (sys::poke _ego_dx_ds (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_dy_ds
       (sys::poke _ego_dy_ds (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_s
       (sys::poke _ego_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_init_curvature
       (sys::poke _ego_init_curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; planning_msgs/PathSegmentInfo[] _path_segments
     (write-long (length _path_segments) s)
     (dolist (elem _path_segments)
       (send elem :serialize s)
       )
     ;; planning_msgs/PathTuningParams _path_tuning_params
       (send _path_tuning_params :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_replan
     (setq _is_replan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _ego_x
     (setq _ego_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_y
     (setq _ego_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_dx_ds
     (setq _ego_dx_ds (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_dy_ds
     (setq _ego_dy_ds (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_s
     (setq _ego_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_init_curvature
     (setq _ego_init_curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; planning_msgs/PathSegmentInfo[] _path_segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_segments (let (r) (dotimes (i n) (push (instance planning_msgs::PathSegmentInfo :init) r)) r))
     (dolist (elem- _path_segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; planning_msgs/PathTuningParams _path_tuning_params
     (send _path_tuning_params :deserialize buf ptr-) (incf ptr- (send _path_tuning_params :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::LocalLatMotionInfo :md5sum-) "0d8495540b24d445c9ad366cc3e24cd1")
(setf (get planning_msgs::LocalLatMotionInfo :datatype-) "planning_msgs/LocalLatMotionInfo")
(setf (get planning_msgs::LocalLatMotionInfo :definition-)
      "std_msgs/Header header
bool is_replan
float64 ego_x
float64 ego_y
float64 ego_dx_ds
float64 ego_dy_ds
float64 ego_s
float64 ego_init_curvature
planning_msgs/PathSegmentInfo[] path_segments
planning_msgs/PathTuningParams path_tuning_params

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: planning_msgs/PathSegmentInfo
float64 end_segment_control_point_s
planning_msgs/RefPointInfo end_segment_refline_info
planning_msgs/PathSampleInfo[] quad_point_info

================================================================================
MSG: planning_msgs/RefPointInfo
float64 time
float64 x
float64 y
float64 curvature
float64 current_lane_width
float64 left_lane_width
float64 right_lane_width
float64 left_lane_border
float64 right_lane_border
float64 left_road_border
float64 right_road_border
float64 theta_ref
float64 cos_theta_ref
float64 sin_theta_ref
int32 left_road_border_type
int32 right_road_border_type
int32 left_lane_border_type
int32 right_lane_border_type

================================================================================
MSG: planning_msgs/PathSampleInfo
float64 sample_s
planning_msgs/PathPoint last_cart_traj
planning_msgs/RefPointInfo refline_info
planning_msgs/SpeedPlan speed_plan

================================================================================
MSG: planning_msgs/PathPoint
planning_msgs/Point2d position_enu
float64 heading_yaw
float64 curvature
float64 path_follow_strength

================================================================================
MSG: planning_msgs/Point2d
float64 x
float64 y

================================================================================
MSG: planning_msgs/SpeedPlan
float64 v
float64 a
float64 j

================================================================================
MSG: planning_msgs/PathTuningParams
int32 max_num_iterations
float64 soft_boundary_scale
float64 hard_boundary_scale
float64 init_curvature_scale
float64 curvature_limit_scale
float64 lat_accel_scale
float64 lat_jerk_scale
float64 heading_scale
float64 ref_centering_scale
float64 prev_plan_centering_scale

")



(provide :planning_msgs/LocalLatMotionInfo "0d8495540b24d445c9ad366cc3e24cd1")


