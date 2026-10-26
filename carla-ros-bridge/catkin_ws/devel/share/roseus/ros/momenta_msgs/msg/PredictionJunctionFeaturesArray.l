;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::PredictionJunctionFeaturesArray)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'PredictionJunctionFeaturesArray (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PREDICTIONJUNCTIONFEATURESARRAY")
  (make-package "MOMENTA_MSGS::PREDICTIONJUNCTIONFEATURESARRAY"))

(in-package "ROS")
;;//! \htmlinclude PredictionJunctionFeaturesArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::PredictionJunctionFeaturesArray
  :super ros::object
  :slots (_header _junction_features_array ))

(defmethod momenta_msgs::PredictionJunctionFeaturesArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:junction_features_array __junction_features_array) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _junction_features_array __junction_features_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:junction_features_array
   (&rest __junction_features_array)
   (if (keywordp (car __junction_features_array))
       (send* _junction_features_array __junction_features_array)
     (progn
       (if __junction_features_array (setq _junction_features_array (car __junction_features_array)))
       _junction_features_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/PredictionJunctionFeatures[] _junction_features_array
    (apply #'+ (send-all _junction_features_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/PredictionJunctionFeatures[] _junction_features_array
     (write-long (length _junction_features_array) s)
     (dolist (elem _junction_features_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/PredictionJunctionFeatures[] _junction_features_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _junction_features_array (let (r) (dotimes (i n) (push (instance momenta_msgs::PredictionJunctionFeatures :init) r)) r))
     (dolist (elem- _junction_features_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::PredictionJunctionFeaturesArray :md5sum-) "45a61059944be3063e9d9cfbb6781d0a")
(setf (get momenta_msgs::PredictionJunctionFeaturesArray :datatype-) "momenta_msgs/PredictionJunctionFeaturesArray")
(setf (get momenta_msgs::PredictionJunctionFeaturesArray :definition-)
      "std_msgs/Header header
momenta_msgs/PredictionJunctionFeatures[] junction_features_array

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
MSG: momenta_msgs/PredictionJunctionFeatures
std_msgs/Header header
bool is_feature_invalid
int32 id
int32 type
float32 x
float32 y
float32 yaw
float32 diff_theta_car_lane
float32 v
float32 v_x
float32 v_y
float32 acc
float32 acc_x
float32 acc_y
float32 diff_previous_yaw
float32 diff_latest_yaw
float32 diff_previous_x
float32 diff_previous_y
float32 diff_latest_x
float32 diff_latest_y
float32 diff_previous_v_x
float32 diff_previous_v_y
float32 diff_latest_v_x
float32 diff_latest_v_y

")



(provide :momenta_msgs/PredictionJunctionFeaturesArray "45a61059944be3063e9d9cfbb6781d0a")


