;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::PredictionNonIntersectionFeatures)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'PredictionNonIntersectionFeatures (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PREDICTIONNONINTERSECTIONFEATURES")
  (make-package "MOMENTA_MSGS::PREDICTIONNONINTERSECTIONFEATURES"))

(in-package "ROS")
;;//! \htmlinclude PredictionNonIntersectionFeatures.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::PredictionNonIntersectionFeatures
  :super ros::object
  :slots (_header _is_feature_invalid _id _type _x _y _s _r _yaw _diff_theta_car_lane _v _v_s _v_r _acc _acc_s _acc_r _lane_index _lane_width _distance_left_lane _distance_right_lane _distance_mid_lane _distance_left_road _distance_right_road _is_left_lane_solid _is_right_lane_solid _is_most_left_lane _is_most_right_lane _around_car_feature _diff_prev_yaw _diff_prev_velocity _diff_prev_velocity_s _diff_prev_velocity_r _diff_prev_acc _diff_prev_acc_s _diff_prev_acc_r _diff_prev_distance_mid_lane _diff_prev_multi_yaw _diff_prev_multi_velocity _diff_prev_multi_velocity_s _diff_prev_multi_velocity_r _diff_prev_multi_acc _diff_prev_multi_acc_s _diff_prev_multi_acc_r _diff_prev_multi_distance_mid_lane _is_left_half_lane _is_right_half_lane _previous_intention ))

(defmethod momenta_msgs::PredictionNonIntersectionFeatures
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_feature_invalid __is_feature_invalid) nil)
    ((:id __id) 0)
    ((:type __type) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:s __s) 0.0)
    ((:r __r) 0.0)
    ((:yaw __yaw) 0.0)
    ((:diff_theta_car_lane __diff_theta_car_lane) 0.0)
    ((:v __v) 0.0)
    ((:v_s __v_s) 0.0)
    ((:v_r __v_r) 0.0)
    ((:acc __acc) 0.0)
    ((:acc_s __acc_s) 0.0)
    ((:acc_r __acc_r) 0.0)
    ((:lane_index __lane_index) 0)
    ((:lane_width __lane_width) 0.0)
    ((:distance_left_lane __distance_left_lane) 0.0)
    ((:distance_right_lane __distance_right_lane) 0.0)
    ((:distance_mid_lane __distance_mid_lane) 0.0)
    ((:distance_left_road __distance_left_road) 0.0)
    ((:distance_right_road __distance_right_road) 0.0)
    ((:is_left_lane_solid __is_left_lane_solid) 0.0)
    ((:is_right_lane_solid __is_right_lane_solid) 0.0)
    ((:is_most_left_lane __is_most_left_lane) 0.0)
    ((:is_most_right_lane __is_most_right_lane) 0.0)
    ((:around_car_feature __around_car_feature) ())
    ((:diff_prev_yaw __diff_prev_yaw) 0.0)
    ((:diff_prev_velocity __diff_prev_velocity) 0.0)
    ((:diff_prev_velocity_s __diff_prev_velocity_s) 0.0)
    ((:diff_prev_velocity_r __diff_prev_velocity_r) 0.0)
    ((:diff_prev_acc __diff_prev_acc) 0.0)
    ((:diff_prev_acc_s __diff_prev_acc_s) 0.0)
    ((:diff_prev_acc_r __diff_prev_acc_r) 0.0)
    ((:diff_prev_distance_mid_lane __diff_prev_distance_mid_lane) 0.0)
    ((:diff_prev_multi_yaw __diff_prev_multi_yaw) 0.0)
    ((:diff_prev_multi_velocity __diff_prev_multi_velocity) 0.0)
    ((:diff_prev_multi_velocity_s __diff_prev_multi_velocity_s) 0.0)
    ((:diff_prev_multi_velocity_r __diff_prev_multi_velocity_r) 0.0)
    ((:diff_prev_multi_acc __diff_prev_multi_acc) 0.0)
    ((:diff_prev_multi_acc_s __diff_prev_multi_acc_s) 0.0)
    ((:diff_prev_multi_acc_r __diff_prev_multi_acc_r) 0.0)
    ((:diff_prev_multi_distance_mid_lane __diff_prev_multi_distance_mid_lane) 0.0)
    ((:is_left_half_lane __is_left_half_lane) 0.0)
    ((:is_right_half_lane __is_right_half_lane) 0.0)
    ((:previous_intention __previous_intention) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_feature_invalid __is_feature_invalid)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _s (float __s))
   (setq _r (float __r))
   (setq _yaw (float __yaw))
   (setq _diff_theta_car_lane (float __diff_theta_car_lane))
   (setq _v (float __v))
   (setq _v_s (float __v_s))
   (setq _v_r (float __v_r))
   (setq _acc (float __acc))
   (setq _acc_s (float __acc_s))
   (setq _acc_r (float __acc_r))
   (setq _lane_index (round __lane_index))
   (setq _lane_width (float __lane_width))
   (setq _distance_left_lane (float __distance_left_lane))
   (setq _distance_right_lane (float __distance_right_lane))
   (setq _distance_mid_lane (float __distance_mid_lane))
   (setq _distance_left_road (float __distance_left_road))
   (setq _distance_right_road (float __distance_right_road))
   (setq _is_left_lane_solid (float __is_left_lane_solid))
   (setq _is_right_lane_solid (float __is_right_lane_solid))
   (setq _is_most_left_lane (float __is_most_left_lane))
   (setq _is_most_right_lane (float __is_most_right_lane))
   (setq _around_car_feature __around_car_feature)
   (setq _diff_prev_yaw (float __diff_prev_yaw))
   (setq _diff_prev_velocity (float __diff_prev_velocity))
   (setq _diff_prev_velocity_s (float __diff_prev_velocity_s))
   (setq _diff_prev_velocity_r (float __diff_prev_velocity_r))
   (setq _diff_prev_acc (float __diff_prev_acc))
   (setq _diff_prev_acc_s (float __diff_prev_acc_s))
   (setq _diff_prev_acc_r (float __diff_prev_acc_r))
   (setq _diff_prev_distance_mid_lane (float __diff_prev_distance_mid_lane))
   (setq _diff_prev_multi_yaw (float __diff_prev_multi_yaw))
   (setq _diff_prev_multi_velocity (float __diff_prev_multi_velocity))
   (setq _diff_prev_multi_velocity_s (float __diff_prev_multi_velocity_s))
   (setq _diff_prev_multi_velocity_r (float __diff_prev_multi_velocity_r))
   (setq _diff_prev_multi_acc (float __diff_prev_multi_acc))
   (setq _diff_prev_multi_acc_s (float __diff_prev_multi_acc_s))
   (setq _diff_prev_multi_acc_r (float __diff_prev_multi_acc_r))
   (setq _diff_prev_multi_distance_mid_lane (float __diff_prev_multi_distance_mid_lane))
   (setq _is_left_half_lane (float __is_left_half_lane))
   (setq _is_right_half_lane (float __is_right_half_lane))
   (setq _previous_intention (float __previous_intention))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_feature_invalid
   (&optional (__is_feature_invalid :null))
   (if (not (eq __is_feature_invalid :null)) (setq _is_feature_invalid __is_feature_invalid)) _is_feature_invalid)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:diff_theta_car_lane
   (&optional __diff_theta_car_lane)
   (if __diff_theta_car_lane (setq _diff_theta_car_lane __diff_theta_car_lane)) _diff_theta_car_lane)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:v_s
   (&optional __v_s)
   (if __v_s (setq _v_s __v_s)) _v_s)
  (:v_r
   (&optional __v_r)
   (if __v_r (setq _v_r __v_r)) _v_r)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:acc_s
   (&optional __acc_s)
   (if __acc_s (setq _acc_s __acc_s)) _acc_s)
  (:acc_r
   (&optional __acc_r)
   (if __acc_r (setq _acc_r __acc_r)) _acc_r)
  (:lane_index
   (&optional __lane_index)
   (if __lane_index (setq _lane_index __lane_index)) _lane_index)
  (:lane_width
   (&optional __lane_width)
   (if __lane_width (setq _lane_width __lane_width)) _lane_width)
  (:distance_left_lane
   (&optional __distance_left_lane)
   (if __distance_left_lane (setq _distance_left_lane __distance_left_lane)) _distance_left_lane)
  (:distance_right_lane
   (&optional __distance_right_lane)
   (if __distance_right_lane (setq _distance_right_lane __distance_right_lane)) _distance_right_lane)
  (:distance_mid_lane
   (&optional __distance_mid_lane)
   (if __distance_mid_lane (setq _distance_mid_lane __distance_mid_lane)) _distance_mid_lane)
  (:distance_left_road
   (&optional __distance_left_road)
   (if __distance_left_road (setq _distance_left_road __distance_left_road)) _distance_left_road)
  (:distance_right_road
   (&optional __distance_right_road)
   (if __distance_right_road (setq _distance_right_road __distance_right_road)) _distance_right_road)
  (:is_left_lane_solid
   (&optional __is_left_lane_solid)
   (if __is_left_lane_solid (setq _is_left_lane_solid __is_left_lane_solid)) _is_left_lane_solid)
  (:is_right_lane_solid
   (&optional __is_right_lane_solid)
   (if __is_right_lane_solid (setq _is_right_lane_solid __is_right_lane_solid)) _is_right_lane_solid)
  (:is_most_left_lane
   (&optional __is_most_left_lane)
   (if __is_most_left_lane (setq _is_most_left_lane __is_most_left_lane)) _is_most_left_lane)
  (:is_most_right_lane
   (&optional __is_most_right_lane)
   (if __is_most_right_lane (setq _is_most_right_lane __is_most_right_lane)) _is_most_right_lane)
  (:around_car_feature
   (&rest __around_car_feature)
   (if (keywordp (car __around_car_feature))
       (send* _around_car_feature __around_car_feature)
     (progn
       (if __around_car_feature (setq _around_car_feature (car __around_car_feature)))
       _around_car_feature)))
  (:diff_prev_yaw
   (&optional __diff_prev_yaw)
   (if __diff_prev_yaw (setq _diff_prev_yaw __diff_prev_yaw)) _diff_prev_yaw)
  (:diff_prev_velocity
   (&optional __diff_prev_velocity)
   (if __diff_prev_velocity (setq _diff_prev_velocity __diff_prev_velocity)) _diff_prev_velocity)
  (:diff_prev_velocity_s
   (&optional __diff_prev_velocity_s)
   (if __diff_prev_velocity_s (setq _diff_prev_velocity_s __diff_prev_velocity_s)) _diff_prev_velocity_s)
  (:diff_prev_velocity_r
   (&optional __diff_prev_velocity_r)
   (if __diff_prev_velocity_r (setq _diff_prev_velocity_r __diff_prev_velocity_r)) _diff_prev_velocity_r)
  (:diff_prev_acc
   (&optional __diff_prev_acc)
   (if __diff_prev_acc (setq _diff_prev_acc __diff_prev_acc)) _diff_prev_acc)
  (:diff_prev_acc_s
   (&optional __diff_prev_acc_s)
   (if __diff_prev_acc_s (setq _diff_prev_acc_s __diff_prev_acc_s)) _diff_prev_acc_s)
  (:diff_prev_acc_r
   (&optional __diff_prev_acc_r)
   (if __diff_prev_acc_r (setq _diff_prev_acc_r __diff_prev_acc_r)) _diff_prev_acc_r)
  (:diff_prev_distance_mid_lane
   (&optional __diff_prev_distance_mid_lane)
   (if __diff_prev_distance_mid_lane (setq _diff_prev_distance_mid_lane __diff_prev_distance_mid_lane)) _diff_prev_distance_mid_lane)
  (:diff_prev_multi_yaw
   (&optional __diff_prev_multi_yaw)
   (if __diff_prev_multi_yaw (setq _diff_prev_multi_yaw __diff_prev_multi_yaw)) _diff_prev_multi_yaw)
  (:diff_prev_multi_velocity
   (&optional __diff_prev_multi_velocity)
   (if __diff_prev_multi_velocity (setq _diff_prev_multi_velocity __diff_prev_multi_velocity)) _diff_prev_multi_velocity)
  (:diff_prev_multi_velocity_s
   (&optional __diff_prev_multi_velocity_s)
   (if __diff_prev_multi_velocity_s (setq _diff_prev_multi_velocity_s __diff_prev_multi_velocity_s)) _diff_prev_multi_velocity_s)
  (:diff_prev_multi_velocity_r
   (&optional __diff_prev_multi_velocity_r)
   (if __diff_prev_multi_velocity_r (setq _diff_prev_multi_velocity_r __diff_prev_multi_velocity_r)) _diff_prev_multi_velocity_r)
  (:diff_prev_multi_acc
   (&optional __diff_prev_multi_acc)
   (if __diff_prev_multi_acc (setq _diff_prev_multi_acc __diff_prev_multi_acc)) _diff_prev_multi_acc)
  (:diff_prev_multi_acc_s
   (&optional __diff_prev_multi_acc_s)
   (if __diff_prev_multi_acc_s (setq _diff_prev_multi_acc_s __diff_prev_multi_acc_s)) _diff_prev_multi_acc_s)
  (:diff_prev_multi_acc_r
   (&optional __diff_prev_multi_acc_r)
   (if __diff_prev_multi_acc_r (setq _diff_prev_multi_acc_r __diff_prev_multi_acc_r)) _diff_prev_multi_acc_r)
  (:diff_prev_multi_distance_mid_lane
   (&optional __diff_prev_multi_distance_mid_lane)
   (if __diff_prev_multi_distance_mid_lane (setq _diff_prev_multi_distance_mid_lane __diff_prev_multi_distance_mid_lane)) _diff_prev_multi_distance_mid_lane)
  (:is_left_half_lane
   (&optional __is_left_half_lane)
   (if __is_left_half_lane (setq _is_left_half_lane __is_left_half_lane)) _is_left_half_lane)
  (:is_right_half_lane
   (&optional __is_right_half_lane)
   (if __is_right_half_lane (setq _is_right_half_lane __is_right_half_lane)) _is_right_half_lane)
  (:previous_intention
   (&optional __previous_intention)
   (if __previous_intention (setq _previous_intention __previous_intention)) _previous_intention)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_feature_invalid
    1
    ;; int32 _id
    4
    ;; int32 _type
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _s
    4
    ;; float32 _r
    4
    ;; float32 _yaw
    4
    ;; float32 _diff_theta_car_lane
    4
    ;; float32 _v
    4
    ;; float32 _v_s
    4
    ;; float32 _v_r
    4
    ;; float32 _acc
    4
    ;; float32 _acc_s
    4
    ;; float32 _acc_r
    4
    ;; int32 _lane_index
    4
    ;; float32 _lane_width
    4
    ;; float32 _distance_left_lane
    4
    ;; float32 _distance_right_lane
    4
    ;; float32 _distance_mid_lane
    4
    ;; float32 _distance_left_road
    4
    ;; float32 _distance_right_road
    4
    ;; float32 _is_left_lane_solid
    4
    ;; float32 _is_right_lane_solid
    4
    ;; float32 _is_most_left_lane
    4
    ;; float32 _is_most_right_lane
    4
    ;; momenta_msgs/PredictionAroundCarFeature[] _around_car_feature
    (apply #'+ (send-all _around_car_feature :serialization-length)) 4
    ;; float32 _diff_prev_yaw
    4
    ;; float32 _diff_prev_velocity
    4
    ;; float32 _diff_prev_velocity_s
    4
    ;; float32 _diff_prev_velocity_r
    4
    ;; float32 _diff_prev_acc
    4
    ;; float32 _diff_prev_acc_s
    4
    ;; float32 _diff_prev_acc_r
    4
    ;; float32 _diff_prev_distance_mid_lane
    4
    ;; float32 _diff_prev_multi_yaw
    4
    ;; float32 _diff_prev_multi_velocity
    4
    ;; float32 _diff_prev_multi_velocity_s
    4
    ;; float32 _diff_prev_multi_velocity_r
    4
    ;; float32 _diff_prev_multi_acc
    4
    ;; float32 _diff_prev_multi_acc_s
    4
    ;; float32 _diff_prev_multi_acc_r
    4
    ;; float32 _diff_prev_multi_distance_mid_lane
    4
    ;; float32 _is_left_half_lane
    4
    ;; float32 _is_right_half_lane
    4
    ;; float32 _previous_intention
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_feature_invalid
       (if _is_feature_invalid (write-byte -1 s) (write-byte 0 s))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _type
       (write-long _type s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r
       (sys::poke _r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_theta_car_lane
       (sys::poke _diff_theta_car_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_s
       (sys::poke _v_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_r
       (sys::poke _v_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_s
       (sys::poke _acc_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_r
       (sys::poke _acc_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _lane_index
       (write-long _lane_index s)
     ;; float32 _lane_width
       (sys::poke _lane_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_left_lane
       (sys::poke _distance_left_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_right_lane
       (sys::poke _distance_right_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_mid_lane
       (sys::poke _distance_mid_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_left_road
       (sys::poke _distance_left_road (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_right_road
       (sys::poke _distance_right_road (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _is_left_lane_solid
       (sys::poke _is_left_lane_solid (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _is_right_lane_solid
       (sys::poke _is_right_lane_solid (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _is_most_left_lane
       (sys::poke _is_most_left_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _is_most_right_lane
       (sys::poke _is_most_right_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; momenta_msgs/PredictionAroundCarFeature[] _around_car_feature
     (write-long (length _around_car_feature) s)
     (dolist (elem _around_car_feature)
       (send elem :serialize s)
       )
     ;; float32 _diff_prev_yaw
       (sys::poke _diff_prev_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_velocity
       (sys::poke _diff_prev_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_velocity_s
       (sys::poke _diff_prev_velocity_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_velocity_r
       (sys::poke _diff_prev_velocity_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_acc
       (sys::poke _diff_prev_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_acc_s
       (sys::poke _diff_prev_acc_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_acc_r
       (sys::poke _diff_prev_acc_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_distance_mid_lane
       (sys::poke _diff_prev_distance_mid_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_multi_yaw
       (sys::poke _diff_prev_multi_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_multi_velocity
       (sys::poke _diff_prev_multi_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_multi_velocity_s
       (sys::poke _diff_prev_multi_velocity_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_multi_velocity_r
       (sys::poke _diff_prev_multi_velocity_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_multi_acc
       (sys::poke _diff_prev_multi_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_multi_acc_s
       (sys::poke _diff_prev_multi_acc_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_multi_acc_r
       (sys::poke _diff_prev_multi_acc_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_prev_multi_distance_mid_lane
       (sys::poke _diff_prev_multi_distance_mid_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _is_left_half_lane
       (sys::poke _is_left_half_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _is_right_half_lane
       (sys::poke _is_right_half_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _previous_intention
       (sys::poke _previous_intention (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_feature_invalid
     (setq _is_feature_invalid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r
     (setq _r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_theta_car_lane
     (setq _diff_theta_car_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_s
     (setq _v_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_r
     (setq _v_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc
     (setq _acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_s
     (setq _acc_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_r
     (setq _acc_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _lane_index
     (setq _lane_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _lane_width
     (setq _lane_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_left_lane
     (setq _distance_left_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_right_lane
     (setq _distance_right_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_mid_lane
     (setq _distance_mid_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_left_road
     (setq _distance_left_road (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_right_road
     (setq _distance_right_road (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _is_left_lane_solid
     (setq _is_left_lane_solid (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _is_right_lane_solid
     (setq _is_right_lane_solid (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _is_most_left_lane
     (setq _is_most_left_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _is_most_right_lane
     (setq _is_most_right_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; momenta_msgs/PredictionAroundCarFeature[] _around_car_feature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _around_car_feature (let (r) (dotimes (i n) (push (instance momenta_msgs::PredictionAroundCarFeature :init) r)) r))
     (dolist (elem- _around_car_feature)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _diff_prev_yaw
     (setq _diff_prev_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_velocity
     (setq _diff_prev_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_velocity_s
     (setq _diff_prev_velocity_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_velocity_r
     (setq _diff_prev_velocity_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_acc
     (setq _diff_prev_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_acc_s
     (setq _diff_prev_acc_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_acc_r
     (setq _diff_prev_acc_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_distance_mid_lane
     (setq _diff_prev_distance_mid_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_multi_yaw
     (setq _diff_prev_multi_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_multi_velocity
     (setq _diff_prev_multi_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_multi_velocity_s
     (setq _diff_prev_multi_velocity_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_multi_velocity_r
     (setq _diff_prev_multi_velocity_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_multi_acc
     (setq _diff_prev_multi_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_multi_acc_s
     (setq _diff_prev_multi_acc_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_multi_acc_r
     (setq _diff_prev_multi_acc_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_prev_multi_distance_mid_lane
     (setq _diff_prev_multi_distance_mid_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _is_left_half_lane
     (setq _is_left_half_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _is_right_half_lane
     (setq _is_right_half_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _previous_intention
     (setq _previous_intention (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::PredictionNonIntersectionFeatures :md5sum-) "374e23c9d77289d0e02b99d5dd2492a7")
(setf (get momenta_msgs::PredictionNonIntersectionFeatures :datatype-) "momenta_msgs/PredictionNonIntersectionFeatures")
(setf (get momenta_msgs::PredictionNonIntersectionFeatures :definition-)
      "std_msgs/Header header
bool is_feature_invalid
int32 id
int32 type
float32 x
float32 y
float32 s
float32 r
float32 yaw
float32 diff_theta_car_lane
float32 v
float32 v_s
float32 v_r
float32 acc
float32 acc_s
float32 acc_r
int32 lane_index
float32 lane_width
float32 distance_left_lane
float32 distance_right_lane
float32 distance_mid_lane
float32 distance_left_road
float32 distance_right_road
float32 is_left_lane_solid
float32 is_right_lane_solid
float32 is_most_left_lane
float32 is_most_right_lane
momenta_msgs/PredictionAroundCarFeature[] around_car_feature
float32 diff_prev_yaw
float32 diff_prev_velocity
float32 diff_prev_velocity_s
float32 diff_prev_velocity_r
float32 diff_prev_acc
float32 diff_prev_acc_s
float32 diff_prev_acc_r
float32 diff_prev_distance_mid_lane
float32 diff_prev_multi_yaw
float32 diff_prev_multi_velocity
float32 diff_prev_multi_velocity_s
float32 diff_prev_multi_velocity_r
float32 diff_prev_multi_acc
float32 diff_prev_multi_acc_s
float32 diff_prev_multi_acc_r
float32 diff_prev_multi_distance_mid_lane
float32 is_left_half_lane
float32 is_right_half_lane
float32 previous_intention

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
MSG: momenta_msgs/PredictionAroundCarFeature
float32 relative_s
float32 relative_r
float32 relative_v

")



(provide :momenta_msgs/PredictionNonIntersectionFeatures "374e23c9d77289d0e02b99d5dd2492a7")


