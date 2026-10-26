;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UssKeyPointObstacleResult)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UssKeyPointObstacleResult (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::USSKEYPOINTOBSTACLERESULT")
  (make-package "SENSOR_INTERFACE_MSGS::USSKEYPOINTOBSTACLERESULT"))

(in-package "ROS")
;;//! \htmlinclude UssKeyPointObstacleResult.msg.html


(defclass sensor_interface_msgs::UssKeyPointObstacleResult
  :super ros::object
  :slots (_meta _uss_obstacle_data _uss_rt_obstacle_pts ))

(defmethod sensor_interface_msgs::UssKeyPointObstacleResult
  (:init
   (&key
    ((:meta __meta) (instance sensor_interface_msgs::UltrasonicResultMeta :init))
    ((:uss_obstacle_data __uss_obstacle_data) (instance sensor_interface_msgs::UssKeyPointObstacleData :init))
    ((:uss_rt_obstacle_pts __uss_rt_obstacle_pts) (instance sensor_interface_msgs::UssRtObstaclePtsData :init))
    )
   (send-super :init)
   (setq _meta __meta)
   (setq _uss_obstacle_data __uss_obstacle_data)
   (setq _uss_rt_obstacle_pts __uss_rt_obstacle_pts)
   self)
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:uss_obstacle_data
   (&rest __uss_obstacle_data)
   (if (keywordp (car __uss_obstacle_data))
       (send* _uss_obstacle_data __uss_obstacle_data)
     (progn
       (if __uss_obstacle_data (setq _uss_obstacle_data (car __uss_obstacle_data)))
       _uss_obstacle_data)))
  (:uss_rt_obstacle_pts
   (&rest __uss_rt_obstacle_pts)
   (if (keywordp (car __uss_rt_obstacle_pts))
       (send* _uss_rt_obstacle_pts __uss_rt_obstacle_pts)
     (progn
       (if __uss_rt_obstacle_pts (setq _uss_rt_obstacle_pts (car __uss_rt_obstacle_pts)))
       _uss_rt_obstacle_pts)))
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/UltrasonicResultMeta _meta
    (send _meta :serialization-length)
    ;; sensor_interface_msgs/UssKeyPointObstacleData _uss_obstacle_data
    (send _uss_obstacle_data :serialization-length)
    ;; sensor_interface_msgs/UssRtObstaclePtsData _uss_rt_obstacle_pts
    (send _uss_rt_obstacle_pts :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/UltrasonicResultMeta _meta
       (send _meta :serialize s)
     ;; sensor_interface_msgs/UssKeyPointObstacleData _uss_obstacle_data
       (send _uss_obstacle_data :serialize s)
     ;; sensor_interface_msgs/UssRtObstaclePtsData _uss_rt_obstacle_pts
       (send _uss_rt_obstacle_pts :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/UltrasonicResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; sensor_interface_msgs/UssKeyPointObstacleData _uss_obstacle_data
     (send _uss_obstacle_data :deserialize buf ptr-) (incf ptr- (send _uss_obstacle_data :serialization-length))
   ;; sensor_interface_msgs/UssRtObstaclePtsData _uss_rt_obstacle_pts
     (send _uss_rt_obstacle_pts :deserialize buf ptr-) (incf ptr- (send _uss_rt_obstacle_pts :serialization-length))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UssKeyPointObstacleResult :md5sum-) "6dfc52429dd187995de32beb5bd29f07")
(setf (get sensor_interface_msgs::UssKeyPointObstacleResult :datatype-) "sensor_interface_msgs/UssKeyPointObstacleResult")
(setf (get sensor_interface_msgs::UssKeyPointObstacleResult :definition-)
      "sensor_interface_msgs/UltrasonicResultMeta meta
sensor_interface_msgs/UssKeyPointObstacleData uss_obstacle_data
sensor_interface_msgs/UssRtObstaclePtsData uss_rt_obstacle_pts

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: sensor_interface_msgs/UssKeyPointObstacleData
sensor_interface_msgs/UssObstaclePosture uss_obstacle_posture
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

================================================================================
MSG: sensor_interface_msgs/UssRtObstaclePtsData
sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture
sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data

")



(provide :sensor_interface_msgs/UssKeyPointObstacleResult "6dfc52429dd187995de32beb5bd29f07")


