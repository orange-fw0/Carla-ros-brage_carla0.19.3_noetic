;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::PredictionTrajectoryPoint)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'PredictionTrajectoryPoint (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::PREDICTIONTRAJECTORYPOINT")
  (make-package "WORLDMODEL_MSGS::PREDICTIONTRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude PredictionTrajectoryPoint.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::PredictionTrajectoryPoint
  :super ros::object
  :slots (_position _yaw _theta _velocity _confidence _covariance_xy ))

(defmethod worldmodel_msgs::PredictionTrajectoryPoint
  (:init
   (&key
    ((:position __position) (instance perception_interface_msgs::Point2f :init))
    ((:yaw __yaw) 0.0)
    ((:theta __theta) 0.0)
    ((:velocity __velocity) 0.0)
    ((:confidence __confidence) 0.0)
    ((:covariance_xy __covariance_xy) (instance worldmodel_msgs::Matrix2f :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _yaw (float __yaw))
   (setq _theta (float __theta))
   (setq _velocity (float __velocity))
   (setq _confidence (float __confidence))
   (setq _covariance_xy __covariance_xy)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:covariance_xy
   (&rest __covariance_xy)
   (if (keywordp (car __covariance_xy))
       (send* _covariance_xy __covariance_xy)
     (progn
       (if __covariance_xy (setq _covariance_xy (car __covariance_xy)))
       _covariance_xy)))
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/Point2f _position
    (send _position :serialization-length)
    ;; float32 _yaw
    4
    ;; float32 _theta
    4
    ;; float32 _velocity
    4
    ;; float32 _confidence
    4
    ;; worldmodel_msgs/Matrix2f _covariance_xy
    (send _covariance_xy :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/Point2f _position
       (send _position :serialize s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; worldmodel_msgs/Matrix2f _covariance_xy
       (send _covariance_xy :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/Point2f _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; worldmodel_msgs/Matrix2f _covariance_xy
     (send _covariance_xy :deserialize buf ptr-) (incf ptr- (send _covariance_xy :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::PredictionTrajectoryPoint :md5sum-) "6b02495f1700065fded003076080d160")
(setf (get worldmodel_msgs::PredictionTrajectoryPoint :datatype-) "worldmodel_msgs/PredictionTrajectoryPoint")
(setf (get worldmodel_msgs::PredictionTrajectoryPoint :definition-)
      "perception_interface_msgs/Point2f position
float32 yaw
float32 theta
float32 velocity
float32 confidence
worldmodel_msgs/Matrix2f covariance_xy

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: worldmodel_msgs/Matrix2f
float32 x00
float32 x01
float32 x10
float32 x11

")



(provide :worldmodel_msgs/PredictionTrajectoryPoint "6b02495f1700065fded003076080d160")


