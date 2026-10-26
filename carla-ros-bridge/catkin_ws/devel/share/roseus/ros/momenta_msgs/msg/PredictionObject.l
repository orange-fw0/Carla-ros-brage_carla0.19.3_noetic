;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::PredictionObject)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'PredictionObject (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PREDICTIONOBJECT")
  (make-package "MOMENTA_MSGS::PREDICTIONOBJECT"))

(in-package "ROS")
;;//! \htmlinclude PredictionObject.msg.html


(defclass momenta_msgs::PredictionObject
  :super ros::object
  :slots (_id _type _position_x _position_y _length _width _speed _yaw _velocity_x _velocity_y _acc _pos_x_sigma _pos_y_sigma _rel_position_x _rel_position_y _rel_speed_x _rel_speed_y _rel_theta _reserved _trajectory_array ))

(defmethod momenta_msgs::PredictionObject
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) 0)
    ((:position_x __position_x) 0.0)
    ((:position_y __position_y) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:speed __speed) 0.0)
    ((:yaw __yaw) 0.0)
    ((:velocity_x __velocity_x) 0.0)
    ((:velocity_y __velocity_y) 0.0)
    ((:acc __acc) 0.0)
    ((:pos_x_sigma __pos_x_sigma) 0.0)
    ((:pos_y_sigma __pos_y_sigma) 0.0)
    ((:rel_position_x __rel_position_x) 0.0)
    ((:rel_position_y __rel_position_y) 0.0)
    ((:rel_speed_x __rel_speed_x) 0.0)
    ((:rel_speed_y __rel_speed_y) 0.0)
    ((:rel_theta __rel_theta) 0.0)
    ((:reserved __reserved) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:trajectory_array __trajectory_array) ())
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _position_x (float __position_x))
   (setq _position_y (float __position_y))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _speed (float __speed))
   (setq _yaw (float __yaw))
   (setq _velocity_x (float __velocity_x))
   (setq _velocity_y (float __velocity_y))
   (setq _acc (float __acc))
   (setq _pos_x_sigma (float __pos_x_sigma))
   (setq _pos_y_sigma (float __pos_y_sigma))
   (setq _rel_position_x (float __rel_position_x))
   (setq _rel_position_y (float __rel_position_y))
   (setq _rel_speed_x (float __rel_speed_x))
   (setq _rel_speed_y (float __rel_speed_y))
   (setq _rel_theta (float __rel_theta))
   (setq _reserved __reserved)
   (setq _trajectory_array __trajectory_array)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:position_x
   (&optional __position_x)
   (if __position_x (setq _position_x __position_x)) _position_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:velocity_x
   (&optional __velocity_x)
   (if __velocity_x (setq _velocity_x __velocity_x)) _velocity_x)
  (:velocity_y
   (&optional __velocity_y)
   (if __velocity_y (setq _velocity_y __velocity_y)) _velocity_y)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:pos_x_sigma
   (&optional __pos_x_sigma)
   (if __pos_x_sigma (setq _pos_x_sigma __pos_x_sigma)) _pos_x_sigma)
  (:pos_y_sigma
   (&optional __pos_y_sigma)
   (if __pos_y_sigma (setq _pos_y_sigma __pos_y_sigma)) _pos_y_sigma)
  (:rel_position_x
   (&optional __rel_position_x)
   (if __rel_position_x (setq _rel_position_x __rel_position_x)) _rel_position_x)
  (:rel_position_y
   (&optional __rel_position_y)
   (if __rel_position_y (setq _rel_position_y __rel_position_y)) _rel_position_y)
  (:rel_speed_x
   (&optional __rel_speed_x)
   (if __rel_speed_x (setq _rel_speed_x __rel_speed_x)) _rel_speed_x)
  (:rel_speed_y
   (&optional __rel_speed_y)
   (if __rel_speed_y (setq _rel_speed_y __rel_speed_y)) _rel_speed_y)
  (:rel_theta
   (&optional __rel_theta)
   (if __rel_theta (setq _rel_theta __rel_theta)) _rel_theta)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:trajectory_array
   (&rest __trajectory_array)
   (if (keywordp (car __trajectory_array))
       (send* _trajectory_array __trajectory_array)
     (progn
       (if __trajectory_array (setq _trajectory_array (car __trajectory_array)))
       _trajectory_array)))
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; uint32 _type
    4
    ;; float32 _position_x
    4
    ;; float32 _position_y
    4
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; float32 _speed
    4
    ;; float32 _yaw
    4
    ;; float32 _velocity_x
    4
    ;; float32 _velocity_y
    4
    ;; float32 _acc
    4
    ;; float32 _pos_x_sigma
    4
    ;; float32 _pos_y_sigma
    4
    ;; float32 _rel_position_x
    4
    ;; float32 _rel_position_y
    4
    ;; float32 _rel_speed_x
    4
    ;; float32 _rel_speed_y
    4
    ;; float32 _rel_theta
    4
    ;; string[] _reserved
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _reserved)) 4
    ;; momenta_msgs/PredictionTrajectory[] _trajectory_array
    (apply #'+ (send-all _trajectory_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _type
       (write-long _type s)
     ;; float32 _position_x
       (sys::poke _position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_y
       (sys::poke _position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_x
       (sys::poke _velocity_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_y
       (sys::poke _velocity_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos_x_sigma
       (sys::poke _pos_x_sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos_y_sigma
       (sys::poke _pos_y_sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rel_position_x
       (sys::poke _rel_position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rel_position_y
       (sys::poke _rel_position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rel_speed_x
       (sys::poke _rel_speed_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rel_speed_y
       (sys::poke _rel_speed_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rel_theta
       (sys::poke _rel_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string[] _reserved
     (write-long (length _reserved) s)
     (dolist (elem _reserved)
       (write-long (length elem) s) (princ elem s)
       )
     ;; momenta_msgs/PredictionTrajectory[] _trajectory_array
     (write-long (length _trajectory_array) s)
     (dolist (elem _trajectory_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _position_x
     (setq _position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_y
     (setq _position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_x
     (setq _velocity_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_y
     (setq _velocity_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc
     (setq _acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_x_sigma
     (setq _pos_x_sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_y_sigma
     (setq _pos_y_sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rel_position_x
     (setq _rel_position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rel_position_y
     (setq _rel_position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rel_speed_x
     (setq _rel_speed_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rel_speed_y
     (setq _rel_speed_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rel_theta
     (setq _rel_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string[] _reserved
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _reserved i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; momenta_msgs/PredictionTrajectory[] _trajectory_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_array (let (r) (dotimes (i n) (push (instance momenta_msgs::PredictionTrajectory :init) r)) r))
     (dolist (elem- _trajectory_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::PredictionObject :md5sum-) "ab6b26726cc1b01e6222a827f96e7de7")
(setf (get momenta_msgs::PredictionObject :datatype-) "momenta_msgs/PredictionObject")
(setf (get momenta_msgs::PredictionObject :definition-)
      "uint32 id
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



(provide :momenta_msgs/PredictionObject "ab6b26726cc1b01e6222a827f96e7de7")


