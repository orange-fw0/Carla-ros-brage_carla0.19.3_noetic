;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PathTuningParams)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PathTuningParams (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PATHTUNINGPARAMS")
  (make-package "PLANNING_MSGS::PATHTUNINGPARAMS"))

(in-package "ROS")
;;//! \htmlinclude PathTuningParams.msg.html


(defclass planning_msgs::PathTuningParams
  :super ros::object
  :slots (_max_num_iterations _soft_boundary_scale _hard_boundary_scale _init_curvature_scale _curvature_limit_scale _lat_accel_scale _lat_jerk_scale _heading_scale _ref_centering_scale _prev_plan_centering_scale ))

(defmethod planning_msgs::PathTuningParams
  (:init
   (&key
    ((:max_num_iterations __max_num_iterations) 0)
    ((:soft_boundary_scale __soft_boundary_scale) 0.0)
    ((:hard_boundary_scale __hard_boundary_scale) 0.0)
    ((:init_curvature_scale __init_curvature_scale) 0.0)
    ((:curvature_limit_scale __curvature_limit_scale) 0.0)
    ((:lat_accel_scale __lat_accel_scale) 0.0)
    ((:lat_jerk_scale __lat_jerk_scale) 0.0)
    ((:heading_scale __heading_scale) 0.0)
    ((:ref_centering_scale __ref_centering_scale) 0.0)
    ((:prev_plan_centering_scale __prev_plan_centering_scale) 0.0)
    )
   (send-super :init)
   (setq _max_num_iterations (round __max_num_iterations))
   (setq _soft_boundary_scale (float __soft_boundary_scale))
   (setq _hard_boundary_scale (float __hard_boundary_scale))
   (setq _init_curvature_scale (float __init_curvature_scale))
   (setq _curvature_limit_scale (float __curvature_limit_scale))
   (setq _lat_accel_scale (float __lat_accel_scale))
   (setq _lat_jerk_scale (float __lat_jerk_scale))
   (setq _heading_scale (float __heading_scale))
   (setq _ref_centering_scale (float __ref_centering_scale))
   (setq _prev_plan_centering_scale (float __prev_plan_centering_scale))
   self)
  (:max_num_iterations
   (&optional __max_num_iterations)
   (if __max_num_iterations (setq _max_num_iterations __max_num_iterations)) _max_num_iterations)
  (:soft_boundary_scale
   (&optional __soft_boundary_scale)
   (if __soft_boundary_scale (setq _soft_boundary_scale __soft_boundary_scale)) _soft_boundary_scale)
  (:hard_boundary_scale
   (&optional __hard_boundary_scale)
   (if __hard_boundary_scale (setq _hard_boundary_scale __hard_boundary_scale)) _hard_boundary_scale)
  (:init_curvature_scale
   (&optional __init_curvature_scale)
   (if __init_curvature_scale (setq _init_curvature_scale __init_curvature_scale)) _init_curvature_scale)
  (:curvature_limit_scale
   (&optional __curvature_limit_scale)
   (if __curvature_limit_scale (setq _curvature_limit_scale __curvature_limit_scale)) _curvature_limit_scale)
  (:lat_accel_scale
   (&optional __lat_accel_scale)
   (if __lat_accel_scale (setq _lat_accel_scale __lat_accel_scale)) _lat_accel_scale)
  (:lat_jerk_scale
   (&optional __lat_jerk_scale)
   (if __lat_jerk_scale (setq _lat_jerk_scale __lat_jerk_scale)) _lat_jerk_scale)
  (:heading_scale
   (&optional __heading_scale)
   (if __heading_scale (setq _heading_scale __heading_scale)) _heading_scale)
  (:ref_centering_scale
   (&optional __ref_centering_scale)
   (if __ref_centering_scale (setq _ref_centering_scale __ref_centering_scale)) _ref_centering_scale)
  (:prev_plan_centering_scale
   (&optional __prev_plan_centering_scale)
   (if __prev_plan_centering_scale (setq _prev_plan_centering_scale __prev_plan_centering_scale)) _prev_plan_centering_scale)
  (:serialization-length
   ()
   (+
    ;; int32 _max_num_iterations
    4
    ;; float64 _soft_boundary_scale
    8
    ;; float64 _hard_boundary_scale
    8
    ;; float64 _init_curvature_scale
    8
    ;; float64 _curvature_limit_scale
    8
    ;; float64 _lat_accel_scale
    8
    ;; float64 _lat_jerk_scale
    8
    ;; float64 _heading_scale
    8
    ;; float64 _ref_centering_scale
    8
    ;; float64 _prev_plan_centering_scale
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _max_num_iterations
       (write-long _max_num_iterations s)
     ;; float64 _soft_boundary_scale
       (sys::poke _soft_boundary_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hard_boundary_scale
       (sys::poke _hard_boundary_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _init_curvature_scale
       (sys::poke _init_curvature_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _curvature_limit_scale
       (sys::poke _curvature_limit_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat_accel_scale
       (sys::poke _lat_accel_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat_jerk_scale
       (sys::poke _lat_jerk_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_scale
       (sys::poke _heading_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_centering_scale
       (sys::poke _ref_centering_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _prev_plan_centering_scale
       (sys::poke _prev_plan_centering_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _max_num_iterations
     (setq _max_num_iterations (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _soft_boundary_scale
     (setq _soft_boundary_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hard_boundary_scale
     (setq _hard_boundary_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _init_curvature_scale
     (setq _init_curvature_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _curvature_limit_scale
     (setq _curvature_limit_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat_accel_scale
     (setq _lat_accel_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat_jerk_scale
     (setq _lat_jerk_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_scale
     (setq _heading_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_centering_scale
     (setq _ref_centering_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _prev_plan_centering_scale
     (setq _prev_plan_centering_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::PathTuningParams :md5sum-) "4cf25fa9dc37ad1ef3bea3f90eac2d2a")
(setf (get planning_msgs::PathTuningParams :datatype-) "planning_msgs/PathTuningParams")
(setf (get planning_msgs::PathTuningParams :definition-)
      "int32 max_num_iterations
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



(provide :planning_msgs/PathTuningParams "4cf25fa9dc37ad1ef3bea3f90eac2d2a")


