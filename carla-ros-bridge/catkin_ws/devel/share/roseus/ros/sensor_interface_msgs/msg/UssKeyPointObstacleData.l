;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UssKeyPointObstacleData)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UssKeyPointObstacleData (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::USSKEYPOINTOBSTACLEDATA")
  (make-package "SENSOR_INTERFACE_MSGS::USSKEYPOINTOBSTACLEDATA"))

(in-package "ROS")
;;//! \htmlinclude UssKeyPointObstacleData.msg.html


(defclass sensor_interface_msgs::UssKeyPointObstacleData
  :super ros::object
  :slots (_uss_obstacle_posture _uss_obstacle_info ))

(defmethod sensor_interface_msgs::UssKeyPointObstacleData
  (:init
   (&key
    ((:uss_obstacle_posture __uss_obstacle_posture) (instance sensor_interface_msgs::UssObstaclePosture :init))
    ((:uss_obstacle_info __uss_obstacle_info) ())
    )
   (send-super :init)
   (setq _uss_obstacle_posture __uss_obstacle_posture)
   (setq _uss_obstacle_info __uss_obstacle_info)
   self)
  (:uss_obstacle_posture
   (&rest __uss_obstacle_posture)
   (if (keywordp (car __uss_obstacle_posture))
       (send* _uss_obstacle_posture __uss_obstacle_posture)
     (progn
       (if __uss_obstacle_posture (setq _uss_obstacle_posture (car __uss_obstacle_posture)))
       _uss_obstacle_posture)))
  (:uss_obstacle_info
   (&rest __uss_obstacle_info)
   (if (keywordp (car __uss_obstacle_info))
       (send* _uss_obstacle_info __uss_obstacle_info)
     (progn
       (if __uss_obstacle_info (setq _uss_obstacle_info (car __uss_obstacle_info)))
       _uss_obstacle_info)))
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/UssObstaclePosture _uss_obstacle_posture
    (send _uss_obstacle_posture :serialization-length)
    ;; sensor_interface_msgs/UltrasonicObstacleInfo[] _uss_obstacle_info
    (apply #'+ (send-all _uss_obstacle_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/UssObstaclePosture _uss_obstacle_posture
       (send _uss_obstacle_posture :serialize s)
     ;; sensor_interface_msgs/UltrasonicObstacleInfo[] _uss_obstacle_info
     (write-long (length _uss_obstacle_info) s)
     (dolist (elem _uss_obstacle_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/UssObstaclePosture _uss_obstacle_posture
     (send _uss_obstacle_posture :deserialize buf ptr-) (incf ptr- (send _uss_obstacle_posture :serialization-length))
   ;; sensor_interface_msgs/UltrasonicObstacleInfo[] _uss_obstacle_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_obstacle_info (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::UltrasonicObstacleInfo :init) r)) r))
     (dolist (elem- _uss_obstacle_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UssKeyPointObstacleData :md5sum-) "6abde67b182ad1617177e02d47c4fbc7")
(setf (get sensor_interface_msgs::UssKeyPointObstacleData :datatype-) "sensor_interface_msgs/UssKeyPointObstacleData")
(setf (get sensor_interface_msgs::UssKeyPointObstacleData :definition-)
      "sensor_interface_msgs/UssObstaclePosture uss_obstacle_posture
sensor_interface_msgs/UltrasonicObstacleInfo[] uss_obstacle_info

================================================================================
MSG: sensor_interface_msgs/UssObstaclePosture
uint64 timestamp
float32 posture_x
float32 posture_y
float32 posture_theta

================================================================================
MSG: sensor_interface_msgs/UltrasonicObstacleInfo
uint64 timestamp
float32 key_point_probability
sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data

================================================================================
MSG: sensor_interface_msgs/ObstacleKeyPointData
float32 point_x
float32 point_y

")



(provide :sensor_interface_msgs/UssKeyPointObstacleData "6abde67b182ad1617177e02d47c4fbc7")


