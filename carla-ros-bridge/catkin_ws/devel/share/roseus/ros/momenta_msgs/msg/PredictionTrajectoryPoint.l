;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::PredictionTrajectoryPoint)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'PredictionTrajectoryPoint (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PREDICTIONTRAJECTORYPOINT")
  (make-package "MOMENTA_MSGS::PREDICTIONTRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude PredictionTrajectoryPoint.msg.html


(defclass momenta_msgs::PredictionTrajectoryPoint
  :super ros::object
  :slots (_x _y _yaw _theta _speed _prob _std_dev_x _std_dev_y _sigma_xy _std_dev_yaw _std_dev_speed _relative_ego_x _relative_ego_y _relative_ego_yaw _relative_ego_speed _relative_ego_std_dev_x _relative_ego_std_dev_y _relative_ego_std_dev_yaw _relative_ego_std_dev_speed ))

(defmethod momenta_msgs::PredictionTrajectoryPoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    ((:theta __theta) 0.0)
    ((:speed __speed) 0.0)
    ((:prob __prob) 0.0)
    ((:std_dev_x __std_dev_x) 0.0)
    ((:std_dev_y __std_dev_y) 0.0)
    ((:sigma_xy __sigma_xy) 0.0)
    ((:std_dev_yaw __std_dev_yaw) 0.0)
    ((:std_dev_speed __std_dev_speed) 0.0)
    ((:relative_ego_x __relative_ego_x) 0.0)
    ((:relative_ego_y __relative_ego_y) 0.0)
    ((:relative_ego_yaw __relative_ego_yaw) 0.0)
    ((:relative_ego_speed __relative_ego_speed) 0.0)
    ((:relative_ego_std_dev_x __relative_ego_std_dev_x) 0.0)
    ((:relative_ego_std_dev_y __relative_ego_std_dev_y) 0.0)
    ((:relative_ego_std_dev_yaw __relative_ego_std_dev_yaw) 0.0)
    ((:relative_ego_std_dev_speed __relative_ego_std_dev_speed) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   (setq _theta (float __theta))
   (setq _speed (float __speed))
   (setq _prob (float __prob))
   (setq _std_dev_x (float __std_dev_x))
   (setq _std_dev_y (float __std_dev_y))
   (setq _sigma_xy (float __sigma_xy))
   (setq _std_dev_yaw (float __std_dev_yaw))
   (setq _std_dev_speed (float __std_dev_speed))
   (setq _relative_ego_x (float __relative_ego_x))
   (setq _relative_ego_y (float __relative_ego_y))
   (setq _relative_ego_yaw (float __relative_ego_yaw))
   (setq _relative_ego_speed (float __relative_ego_speed))
   (setq _relative_ego_std_dev_x (float __relative_ego_std_dev_x))
   (setq _relative_ego_std_dev_y (float __relative_ego_std_dev_y))
   (setq _relative_ego_std_dev_yaw (float __relative_ego_std_dev_yaw))
   (setq _relative_ego_std_dev_speed (float __relative_ego_std_dev_speed))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:std_dev_x
   (&optional __std_dev_x)
   (if __std_dev_x (setq _std_dev_x __std_dev_x)) _std_dev_x)
  (:std_dev_y
   (&optional __std_dev_y)
   (if __std_dev_y (setq _std_dev_y __std_dev_y)) _std_dev_y)
  (:sigma_xy
   (&optional __sigma_xy)
   (if __sigma_xy (setq _sigma_xy __sigma_xy)) _sigma_xy)
  (:std_dev_yaw
   (&optional __std_dev_yaw)
   (if __std_dev_yaw (setq _std_dev_yaw __std_dev_yaw)) _std_dev_yaw)
  (:std_dev_speed
   (&optional __std_dev_speed)
   (if __std_dev_speed (setq _std_dev_speed __std_dev_speed)) _std_dev_speed)
  (:relative_ego_x
   (&optional __relative_ego_x)
   (if __relative_ego_x (setq _relative_ego_x __relative_ego_x)) _relative_ego_x)
  (:relative_ego_y
   (&optional __relative_ego_y)
   (if __relative_ego_y (setq _relative_ego_y __relative_ego_y)) _relative_ego_y)
  (:relative_ego_yaw
   (&optional __relative_ego_yaw)
   (if __relative_ego_yaw (setq _relative_ego_yaw __relative_ego_yaw)) _relative_ego_yaw)
  (:relative_ego_speed
   (&optional __relative_ego_speed)
   (if __relative_ego_speed (setq _relative_ego_speed __relative_ego_speed)) _relative_ego_speed)
  (:relative_ego_std_dev_x
   (&optional __relative_ego_std_dev_x)
   (if __relative_ego_std_dev_x (setq _relative_ego_std_dev_x __relative_ego_std_dev_x)) _relative_ego_std_dev_x)
  (:relative_ego_std_dev_y
   (&optional __relative_ego_std_dev_y)
   (if __relative_ego_std_dev_y (setq _relative_ego_std_dev_y __relative_ego_std_dev_y)) _relative_ego_std_dev_y)
  (:relative_ego_std_dev_yaw
   (&optional __relative_ego_std_dev_yaw)
   (if __relative_ego_std_dev_yaw (setq _relative_ego_std_dev_yaw __relative_ego_std_dev_yaw)) _relative_ego_std_dev_yaw)
  (:relative_ego_std_dev_speed
   (&optional __relative_ego_std_dev_speed)
   (if __relative_ego_std_dev_speed (setq _relative_ego_std_dev_speed __relative_ego_std_dev_speed)) _relative_ego_std_dev_speed)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _yaw
    4
    ;; float32 _theta
    4
    ;; float32 _speed
    4
    ;; float32 _prob
    4
    ;; float32 _std_dev_x
    4
    ;; float32 _std_dev_y
    4
    ;; float32 _sigma_xy
    4
    ;; float32 _std_dev_yaw
    4
    ;; float32 _std_dev_speed
    4
    ;; float32 _relative_ego_x
    4
    ;; float32 _relative_ego_y
    4
    ;; float32 _relative_ego_yaw
    4
    ;; float32 _relative_ego_speed
    4
    ;; float32 _relative_ego_std_dev_x
    4
    ;; float32 _relative_ego_std_dev_y
    4
    ;; float32 _relative_ego_std_dev_yaw
    4
    ;; float32 _relative_ego_std_dev_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _prob
       (sys::poke _prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _std_dev_x
       (sys::poke _std_dev_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _std_dev_y
       (sys::poke _std_dev_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sigma_xy
       (sys::poke _sigma_xy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _std_dev_yaw
       (sys::poke _std_dev_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _std_dev_speed
       (sys::poke _std_dev_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_ego_x
       (sys::poke _relative_ego_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_ego_y
       (sys::poke _relative_ego_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_ego_yaw
       (sys::poke _relative_ego_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_ego_speed
       (sys::poke _relative_ego_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_ego_std_dev_x
       (sys::poke _relative_ego_std_dev_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_ego_std_dev_y
       (sys::poke _relative_ego_std_dev_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_ego_std_dev_yaw
       (sys::poke _relative_ego_std_dev_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_ego_std_dev_speed
       (sys::poke _relative_ego_std_dev_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _prob
     (setq _prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _std_dev_x
     (setq _std_dev_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _std_dev_y
     (setq _std_dev_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sigma_xy
     (setq _sigma_xy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _std_dev_yaw
     (setq _std_dev_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _std_dev_speed
     (setq _std_dev_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_ego_x
     (setq _relative_ego_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_ego_y
     (setq _relative_ego_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_ego_yaw
     (setq _relative_ego_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_ego_speed
     (setq _relative_ego_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_ego_std_dev_x
     (setq _relative_ego_std_dev_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_ego_std_dev_y
     (setq _relative_ego_std_dev_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_ego_std_dev_yaw
     (setq _relative_ego_std_dev_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_ego_std_dev_speed
     (setq _relative_ego_std_dev_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::PredictionTrajectoryPoint :md5sum-) "23e1a168b285327e8067dea64564ddb9")
(setf (get momenta_msgs::PredictionTrajectoryPoint :datatype-) "momenta_msgs/PredictionTrajectoryPoint")
(setf (get momenta_msgs::PredictionTrajectoryPoint :definition-)
      "float32 x
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



(provide :momenta_msgs/PredictionTrajectoryPoint "23e1a168b285327e8067dea64564ddb9")


