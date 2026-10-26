;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UssCommonObstacleResult)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UssCommonObstacleResult (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::USSCOMMONOBSTACLERESULT")
  (make-package "SENSOR_INTERFACE_MSGS::USSCOMMONOBSTACLERESULT"))

(in-package "ROS")
;;//! \htmlinclude UssCommonObstacleResult.msg.html


(defclass sensor_interface_msgs::UssCommonObstacleResult
  :super ros::object
  :slots (_uss_obstacle_data ))

(defmethod sensor_interface_msgs::UssCommonObstacleResult
  (:init
   (&key
    ((:uss_obstacle_data __uss_obstacle_data) ())
    )
   (send-super :init)
   (setq _uss_obstacle_data __uss_obstacle_data)
   self)
  (:uss_obstacle_data
   (&rest __uss_obstacle_data)
   (if (keywordp (car __uss_obstacle_data))
       (send* _uss_obstacle_data __uss_obstacle_data)
     (progn
       (if __uss_obstacle_data (setq _uss_obstacle_data (car __uss_obstacle_data)))
       _uss_obstacle_data)))
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/CommonUltrasonicObstacleData[] _uss_obstacle_data
    (apply #'+ (send-all _uss_obstacle_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/CommonUltrasonicObstacleData[] _uss_obstacle_data
     (write-long (length _uss_obstacle_data) s)
     (dolist (elem _uss_obstacle_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/CommonUltrasonicObstacleData[] _uss_obstacle_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_obstacle_data (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::CommonUltrasonicObstacleData :init) r)) r))
     (dolist (elem- _uss_obstacle_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UssCommonObstacleResult :md5sum-) "36ee27dbfe13421216dc2ea48c895d50")
(setf (get sensor_interface_msgs::UssCommonObstacleResult :datatype-) "sensor_interface_msgs/UssCommonObstacleResult")
(setf (get sensor_interface_msgs::UssCommonObstacleResult :definition-)
      "sensor_interface_msgs/CommonUltrasonicObstacleData[] uss_obstacle_data

================================================================================
MSG: sensor_interface_msgs/CommonUltrasonicObstacleData
uint8 available
sensor_interface_msgs/UltrasonicResultMeta meta
sensor_interface_msgs/UltrasonicObjectType obj_type
sensor_interface_msgs/UltrasonicObjectHeiType obj_height
float32 obj_height_probability
float32 obj_probability
float32 obj_start_X
float32 obj_start_Y
float32 obj_end_X
float32 obj_end_Y
float32 obj_height_value
float32 major_axis_error
float32 minor_axis_variance
float32 ellipse_theta_variance
string reserved_info

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: sensor_interface_msgs/UltrasonicObjectType
uint8 NONE = 0
uint8 POINT = 1
uint8 STRAIGHT_LINE = 2
uint8 RAYS = 3
uint8 LINE_SEGMENT = 5
uint8 SNA = 7
uint8 RESERVED_INFO = 8
uint8 value

================================================================================
MSG: sensor_interface_msgs/UltrasonicObjectHeiType
uint8 LOW = 0
uint8 HIGH = 1
uint8 TRAVERSIBLE = 2
uint8 UNKONOWN = 3
uint8 value

")



(provide :sensor_interface_msgs/UssCommonObstacleResult "36ee27dbfe13421216dc2ea48c895d50")


