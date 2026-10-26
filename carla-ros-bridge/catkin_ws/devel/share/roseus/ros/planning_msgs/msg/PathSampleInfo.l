;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PathSampleInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PathSampleInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PATHSAMPLEINFO")
  (make-package "PLANNING_MSGS::PATHSAMPLEINFO"))

(in-package "ROS")
;;//! \htmlinclude PathSampleInfo.msg.html


(defclass planning_msgs::PathSampleInfo
  :super ros::object
  :slots (_sample_s _last_cart_traj _refline_info _speed_plan ))

(defmethod planning_msgs::PathSampleInfo
  (:init
   (&key
    ((:sample_s __sample_s) 0.0)
    ((:last_cart_traj __last_cart_traj) (instance planning_msgs::PathPoint :init))
    ((:refline_info __refline_info) (instance planning_msgs::RefPointInfo :init))
    ((:speed_plan __speed_plan) (instance planning_msgs::SpeedPlan :init))
    )
   (send-super :init)
   (setq _sample_s (float __sample_s))
   (setq _last_cart_traj __last_cart_traj)
   (setq _refline_info __refline_info)
   (setq _speed_plan __speed_plan)
   self)
  (:sample_s
   (&optional __sample_s)
   (if __sample_s (setq _sample_s __sample_s)) _sample_s)
  (:last_cart_traj
   (&rest __last_cart_traj)
   (if (keywordp (car __last_cart_traj))
       (send* _last_cart_traj __last_cart_traj)
     (progn
       (if __last_cart_traj (setq _last_cart_traj (car __last_cart_traj)))
       _last_cart_traj)))
  (:refline_info
   (&rest __refline_info)
   (if (keywordp (car __refline_info))
       (send* _refline_info __refline_info)
     (progn
       (if __refline_info (setq _refline_info (car __refline_info)))
       _refline_info)))
  (:speed_plan
   (&rest __speed_plan)
   (if (keywordp (car __speed_plan))
       (send* _speed_plan __speed_plan)
     (progn
       (if __speed_plan (setq _speed_plan (car __speed_plan)))
       _speed_plan)))
  (:serialization-length
   ()
   (+
    ;; float64 _sample_s
    8
    ;; planning_msgs/PathPoint _last_cart_traj
    (send _last_cart_traj :serialization-length)
    ;; planning_msgs/RefPointInfo _refline_info
    (send _refline_info :serialization-length)
    ;; planning_msgs/SpeedPlan _speed_plan
    (send _speed_plan :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _sample_s
       (sys::poke _sample_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; planning_msgs/PathPoint _last_cart_traj
       (send _last_cart_traj :serialize s)
     ;; planning_msgs/RefPointInfo _refline_info
       (send _refline_info :serialize s)
     ;; planning_msgs/SpeedPlan _speed_plan
       (send _speed_plan :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _sample_s
     (setq _sample_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; planning_msgs/PathPoint _last_cart_traj
     (send _last_cart_traj :deserialize buf ptr-) (incf ptr- (send _last_cart_traj :serialization-length))
   ;; planning_msgs/RefPointInfo _refline_info
     (send _refline_info :deserialize buf ptr-) (incf ptr- (send _refline_info :serialization-length))
   ;; planning_msgs/SpeedPlan _speed_plan
     (send _speed_plan :deserialize buf ptr-) (incf ptr- (send _speed_plan :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::PathSampleInfo :md5sum-) "2063c13a26cedde6f767a0f1338f0c52")
(setf (get planning_msgs::PathSampleInfo :datatype-) "planning_msgs/PathSampleInfo")
(setf (get planning_msgs::PathSampleInfo :definition-)
      "float64 sample_s
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
MSG: planning_msgs/SpeedPlan
float64 v
float64 a
float64 j

")



(provide :planning_msgs/PathSampleInfo "2063c13a26cedde6f767a0f1338f0c52")


