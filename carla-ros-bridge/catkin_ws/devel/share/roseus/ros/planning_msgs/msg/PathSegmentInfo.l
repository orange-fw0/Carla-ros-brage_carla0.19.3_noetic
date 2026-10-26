;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PathSegmentInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PathSegmentInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PATHSEGMENTINFO")
  (make-package "PLANNING_MSGS::PATHSEGMENTINFO"))

(in-package "ROS")
;;//! \htmlinclude PathSegmentInfo.msg.html


(defclass planning_msgs::PathSegmentInfo
  :super ros::object
  :slots (_end_segment_control_point_s _end_segment_refline_info _quad_point_info ))

(defmethod planning_msgs::PathSegmentInfo
  (:init
   (&key
    ((:end_segment_control_point_s __end_segment_control_point_s) 0.0)
    ((:end_segment_refline_info __end_segment_refline_info) (instance planning_msgs::RefPointInfo :init))
    ((:quad_point_info __quad_point_info) ())
    )
   (send-super :init)
   (setq _end_segment_control_point_s (float __end_segment_control_point_s))
   (setq _end_segment_refline_info __end_segment_refline_info)
   (setq _quad_point_info __quad_point_info)
   self)
  (:end_segment_control_point_s
   (&optional __end_segment_control_point_s)
   (if __end_segment_control_point_s (setq _end_segment_control_point_s __end_segment_control_point_s)) _end_segment_control_point_s)
  (:end_segment_refline_info
   (&rest __end_segment_refline_info)
   (if (keywordp (car __end_segment_refline_info))
       (send* _end_segment_refline_info __end_segment_refline_info)
     (progn
       (if __end_segment_refline_info (setq _end_segment_refline_info (car __end_segment_refline_info)))
       _end_segment_refline_info)))
  (:quad_point_info
   (&rest __quad_point_info)
   (if (keywordp (car __quad_point_info))
       (send* _quad_point_info __quad_point_info)
     (progn
       (if __quad_point_info (setq _quad_point_info (car __quad_point_info)))
       _quad_point_info)))
  (:serialization-length
   ()
   (+
    ;; float64 _end_segment_control_point_s
    8
    ;; planning_msgs/RefPointInfo _end_segment_refline_info
    (send _end_segment_refline_info :serialization-length)
    ;; planning_msgs/PathSampleInfo[] _quad_point_info
    (apply #'+ (send-all _quad_point_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _end_segment_control_point_s
       (sys::poke _end_segment_control_point_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; planning_msgs/RefPointInfo _end_segment_refline_info
       (send _end_segment_refline_info :serialize s)
     ;; planning_msgs/PathSampleInfo[] _quad_point_info
     (write-long (length _quad_point_info) s)
     (dolist (elem _quad_point_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _end_segment_control_point_s
     (setq _end_segment_control_point_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; planning_msgs/RefPointInfo _end_segment_refline_info
     (send _end_segment_refline_info :deserialize buf ptr-) (incf ptr- (send _end_segment_refline_info :serialization-length))
   ;; planning_msgs/PathSampleInfo[] _quad_point_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _quad_point_info (let (r) (dotimes (i n) (push (instance planning_msgs::PathSampleInfo :init) r)) r))
     (dolist (elem- _quad_point_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planning_msgs::PathSegmentInfo :md5sum-) "1cb5f0175fbd945cb21a39cf08bca405")
(setf (get planning_msgs::PathSegmentInfo :datatype-) "planning_msgs/PathSegmentInfo")
(setf (get planning_msgs::PathSegmentInfo :definition-)
      "float64 end_segment_control_point_s
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

")



(provide :planning_msgs/PathSegmentInfo "1cb5f0175fbd945cb21a39cf08bca405")


