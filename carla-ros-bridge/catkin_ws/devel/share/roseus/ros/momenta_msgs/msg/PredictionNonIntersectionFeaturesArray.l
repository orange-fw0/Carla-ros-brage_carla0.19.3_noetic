;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::PredictionNonIntersectionFeaturesArray)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'PredictionNonIntersectionFeaturesArray (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PREDICTIONNONINTERSECTIONFEATURESARRAY")
  (make-package "MOMENTA_MSGS::PREDICTIONNONINTERSECTIONFEATURESARRAY"))

(in-package "ROS")
;;//! \htmlinclude PredictionNonIntersectionFeaturesArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::PredictionNonIntersectionFeaturesArray
  :super ros::object
  :slots (_header _non_intersection_features_array ))

(defmethod momenta_msgs::PredictionNonIntersectionFeaturesArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:non_intersection_features_array __non_intersection_features_array) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _non_intersection_features_array __non_intersection_features_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:non_intersection_features_array
   (&rest __non_intersection_features_array)
   (if (keywordp (car __non_intersection_features_array))
       (send* _non_intersection_features_array __non_intersection_features_array)
     (progn
       (if __non_intersection_features_array (setq _non_intersection_features_array (car __non_intersection_features_array)))
       _non_intersection_features_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/PredictionNonIntersectionFeatures[] _non_intersection_features_array
    (apply #'+ (send-all _non_intersection_features_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/PredictionNonIntersectionFeatures[] _non_intersection_features_array
     (write-long (length _non_intersection_features_array) s)
     (dolist (elem _non_intersection_features_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/PredictionNonIntersectionFeatures[] _non_intersection_features_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _non_intersection_features_array (let (r) (dotimes (i n) (push (instance momenta_msgs::PredictionNonIntersectionFeatures :init) r)) r))
     (dolist (elem- _non_intersection_features_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::PredictionNonIntersectionFeaturesArray :md5sum-) "447179f350de76a6185b1a5668d18ec7")
(setf (get momenta_msgs::PredictionNonIntersectionFeaturesArray :datatype-) "momenta_msgs/PredictionNonIntersectionFeaturesArray")
(setf (get momenta_msgs::PredictionNonIntersectionFeaturesArray :definition-)
      "std_msgs/Header header
momenta_msgs/PredictionNonIntersectionFeatures[] non_intersection_features_array

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
MSG: momenta_msgs/PredictionNonIntersectionFeatures
std_msgs/Header header
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
MSG: momenta_msgs/PredictionAroundCarFeature
float32 relative_s
float32 relative_r
float32 relative_v

")



(provide :momenta_msgs/PredictionNonIntersectionFeaturesArray "447179f350de76a6185b1a5668d18ec7")


