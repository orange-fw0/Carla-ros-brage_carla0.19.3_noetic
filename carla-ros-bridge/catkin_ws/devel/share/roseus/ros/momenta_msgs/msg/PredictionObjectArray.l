;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::PredictionObjectArray)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'PredictionObjectArray (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PREDICTIONOBJECTARRAY")
  (make-package "MOMENTA_MSGS::PREDICTIONOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude PredictionObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::PredictionObjectArray
  :super ros::object
  :slots (_header _object_prediction_array ))

(defmethod momenta_msgs::PredictionObjectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:object_prediction_array __object_prediction_array) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _object_prediction_array __object_prediction_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:object_prediction_array
   (&rest __object_prediction_array)
   (if (keywordp (car __object_prediction_array))
       (send* _object_prediction_array __object_prediction_array)
     (progn
       (if __object_prediction_array (setq _object_prediction_array (car __object_prediction_array)))
       _object_prediction_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/PredictionObject[] _object_prediction_array
    (apply #'+ (send-all _object_prediction_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/PredictionObject[] _object_prediction_array
     (write-long (length _object_prediction_array) s)
     (dolist (elem _object_prediction_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/PredictionObject[] _object_prediction_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_prediction_array (let (r) (dotimes (i n) (push (instance momenta_msgs::PredictionObject :init) r)) r))
     (dolist (elem- _object_prediction_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::PredictionObjectArray :md5sum-) "15213f9d3c29a40f0c1d740e6ae88be1")
(setf (get momenta_msgs::PredictionObjectArray :datatype-) "momenta_msgs/PredictionObjectArray")
(setf (get momenta_msgs::PredictionObjectArray :definition-)
      "std_msgs/Header header
momenta_msgs/PredictionObject[] object_prediction_array

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
MSG: momenta_msgs/PredictionObject
uint32 id
uint32 type
float32 position_x
float32 position_y
float32 length
float32 width
float32 speed
float32 yaw
float32 velocity_x
float32 velocity_y
float32 acc
float32 pos_x_sigma
float32 pos_y_sigma
float32 rel_position_x
float32 rel_position_y
float32 rel_speed_x
float32 rel_speed_y
float32 rel_theta
string[] reserved
momenta_msgs/PredictionTrajectory[] trajectory_array

================================================================================
MSG: momenta_msgs/PredictionTrajectory
std_msgs/Header header
float32 prob
float32 prediction_interval
uint16 num_of_points
string intention
string source
string[] reserved
float32 const_vel_prob
float32 const_acc_prob
float32 still_prob
float32 coord_turn_prob
momenta_msgs/PredictionTrajectoryPoint[] trajectory

================================================================================
MSG: momenta_msgs/PredictionTrajectoryPoint
float32 x
float32 y
float32 yaw
float32 theta
float32 speed
float32 prob
float32 std_dev_x
float32 std_dev_y
float32 sigma_xy
float32 std_dev_yaw
float32 std_dev_speed
float32 relative_ego_x
float32 relative_ego_y
float32 relative_ego_yaw
float32 relative_ego_speed
float32 relative_ego_std_dev_x
float32 relative_ego_std_dev_y
float32 relative_ego_std_dev_yaw
float32 relative_ego_std_dev_speed

")



(provide :momenta_msgs/PredictionObjectArray "15213f9d3c29a40f0c1d740e6ae88be1")


