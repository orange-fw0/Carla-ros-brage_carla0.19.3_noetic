;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UssRtObstaclePtsData)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UssRtObstaclePtsData (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::USSRTOBSTACLEPTSDATA")
  (make-package "SENSOR_INTERFACE_MSGS::USSRTOBSTACLEPTSDATA"))

(in-package "ROS")
;;//! \htmlinclude UssRtObstaclePtsData.msg.html


(defclass sensor_interface_msgs::UssRtObstaclePtsData
  :super ros::object
  :slots (_uss_obstacle_pts_posture _uss_rt_obstacle_pts_data ))

(defmethod sensor_interface_msgs::UssRtObstaclePtsData
  (:init
   (&key
    ((:uss_obstacle_pts_posture __uss_obstacle_pts_posture) (instance sensor_interface_msgs::UssObstaclePosture :init))
    ((:uss_rt_obstacle_pts_data __uss_rt_obstacle_pts_data) ())
    )
   (send-super :init)
   (setq _uss_obstacle_pts_posture __uss_obstacle_pts_posture)
   (setq _uss_rt_obstacle_pts_data __uss_rt_obstacle_pts_data)
   self)
  (:uss_obstacle_pts_posture
   (&rest __uss_obstacle_pts_posture)
   (if (keywordp (car __uss_obstacle_pts_posture))
       (send* _uss_obstacle_pts_posture __uss_obstacle_pts_posture)
     (progn
       (if __uss_obstacle_pts_posture (setq _uss_obstacle_pts_posture (car __uss_obstacle_pts_posture)))
       _uss_obstacle_pts_posture)))
  (:uss_rt_obstacle_pts_data
   (&rest __uss_rt_obstacle_pts_data)
   (if (keywordp (car __uss_rt_obstacle_pts_data))
       (send* _uss_rt_obstacle_pts_data __uss_rt_obstacle_pts_data)
     (progn
       (if __uss_rt_obstacle_pts_data (setq _uss_rt_obstacle_pts_data (car __uss_rt_obstacle_pts_data)))
       _uss_rt_obstacle_pts_data)))
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/UssObstaclePosture _uss_obstacle_pts_posture
    (send _uss_obstacle_pts_posture :serialization-length)
    ;; sensor_interface_msgs/ObstacleKeyPointData[] _uss_rt_obstacle_pts_data
    (apply #'+ (send-all _uss_rt_obstacle_pts_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/UssObstaclePosture _uss_obstacle_pts_posture
       (send _uss_obstacle_pts_posture :serialize s)
     ;; sensor_interface_msgs/ObstacleKeyPointData[] _uss_rt_obstacle_pts_data
     (write-long (length _uss_rt_obstacle_pts_data) s)
     (dolist (elem _uss_rt_obstacle_pts_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/UssObstaclePosture _uss_obstacle_pts_posture
     (send _uss_obstacle_pts_posture :deserialize buf ptr-) (incf ptr- (send _uss_obstacle_pts_posture :serialization-length))
   ;; sensor_interface_msgs/ObstacleKeyPointData[] _uss_rt_obstacle_pts_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_rt_obstacle_pts_data (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::ObstacleKeyPointData :init) r)) r))
     (dolist (elem- _uss_rt_obstacle_pts_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UssRtObstaclePtsData :md5sum-) "b762c1c7a7f39a8ffe865a5830d0adf1")
(setf (get sensor_interface_msgs::UssRtObstaclePtsData :datatype-) "sensor_interface_msgs/UssRtObstaclePtsData")
(setf (get sensor_interface_msgs::UssRtObstaclePtsData :definition-)
      "sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture
sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data

================================================================================
MSG: sensor_interface_msgs/UssObstaclePosture
uint64 timestamp
float32 posture_x
float32 posture_y
float32 posture_theta

================================================================================
MSG: sensor_interface_msgs/ObstacleKeyPointData
float32 point_x
float32 point_y

")



(provide :sensor_interface_msgs/UssRtObstaclePtsData "b762c1c7a7f39a8ffe865a5830d0adf1")


