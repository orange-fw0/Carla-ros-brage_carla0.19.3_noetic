;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::PredictionTrajectory)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'PredictionTrajectory (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PREDICTIONTRAJECTORY")
  (make-package "MOMENTA_MSGS::PREDICTIONTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude PredictionTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::PredictionTrajectory
  :super ros::object
  :slots (_header _prob _prediction_interval _num_of_points _intention _source _reserved _const_vel_prob _const_acc_prob _still_prob _coord_turn_prob _trajectory ))

(defmethod momenta_msgs::PredictionTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:prob __prob) 0.0)
    ((:prediction_interval __prediction_interval) 0.0)
    ((:num_of_points __num_of_points) 0)
    ((:intention __intention) "")
    ((:source __source) "")
    ((:reserved __reserved) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:const_vel_prob __const_vel_prob) 0.0)
    ((:const_acc_prob __const_acc_prob) 0.0)
    ((:still_prob __still_prob) 0.0)
    ((:coord_turn_prob __coord_turn_prob) 0.0)
    ((:trajectory __trajectory) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _prob (float __prob))
   (setq _prediction_interval (float __prediction_interval))
   (setq _num_of_points (round __num_of_points))
   (setq _intention (string __intention))
   (setq _source (string __source))
   (setq _reserved __reserved)
   (setq _const_vel_prob (float __const_vel_prob))
   (setq _const_acc_prob (float __const_acc_prob))
   (setq _still_prob (float __still_prob))
   (setq _coord_turn_prob (float __coord_turn_prob))
   (setq _trajectory __trajectory)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:prediction_interval
   (&optional __prediction_interval)
   (if __prediction_interval (setq _prediction_interval __prediction_interval)) _prediction_interval)
  (:num_of_points
   (&optional __num_of_points)
   (if __num_of_points (setq _num_of_points __num_of_points)) _num_of_points)
  (:intention
   (&optional __intention)
   (if __intention (setq _intention __intention)) _intention)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:const_vel_prob
   (&optional __const_vel_prob)
   (if __const_vel_prob (setq _const_vel_prob __const_vel_prob)) _const_vel_prob)
  (:const_acc_prob
   (&optional __const_acc_prob)
   (if __const_acc_prob (setq _const_acc_prob __const_acc_prob)) _const_acc_prob)
  (:still_prob
   (&optional __still_prob)
   (if __still_prob (setq _still_prob __still_prob)) _still_prob)
  (:coord_turn_prob
   (&optional __coord_turn_prob)
   (if __coord_turn_prob (setq _coord_turn_prob __coord_turn_prob)) _coord_turn_prob)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _prob
    4
    ;; float32 _prediction_interval
    4
    ;; uint16 _num_of_points
    2
    ;; string _intention
    4 (length _intention)
    ;; string _source
    4 (length _source)
    ;; string[] _reserved
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _reserved)) 4
    ;; float32 _const_vel_prob
    4
    ;; float32 _const_acc_prob
    4
    ;; float32 _still_prob
    4
    ;; float32 _coord_turn_prob
    4
    ;; momenta_msgs/PredictionTrajectoryPoint[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _prob
       (sys::poke _prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _prediction_interval
       (sys::poke _prediction_interval (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _num_of_points
       (write-word _num_of_points s)
     ;; string _intention
       (write-long (length _intention) s) (princ _intention s)
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;; string[] _reserved
     (write-long (length _reserved) s)
     (dolist (elem _reserved)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32 _const_vel_prob
       (sys::poke _const_vel_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _const_acc_prob
       (sys::poke _const_acc_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _still_prob
       (sys::poke _still_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _coord_turn_prob
       (sys::poke _coord_turn_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; momenta_msgs/PredictionTrajectoryPoint[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _prob
     (setq _prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _prediction_interval
     (setq _prediction_interval (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _num_of_points
     (setq _num_of_points (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _intention
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _intention (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _reserved
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _reserved i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32 _const_vel_prob
     (setq _const_vel_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _const_acc_prob
     (setq _const_acc_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _still_prob
     (setq _still_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _coord_turn_prob
     (setq _coord_turn_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; momenta_msgs/PredictionTrajectoryPoint[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance momenta_msgs::PredictionTrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::PredictionTrajectory :md5sum-) "f6bca14c6fc79696f3f0073e9c34da17")
(setf (get momenta_msgs::PredictionTrajectory :datatype-) "momenta_msgs/PredictionTrajectory")
(setf (get momenta_msgs::PredictionTrajectory :definition-)
      "std_msgs/Header header
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



(provide :momenta_msgs/PredictionTrajectory "f6bca14c6fc79696f3f0073e9c34da17")


