;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xPhaseState)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xPhaseState (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XPHASESTATE")
  (make-package "V2X_MSGS::V2XPHASESTATE"))

(in-package "ROS")
;;//! \htmlinclude V2xPhaseState.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass v2x_msgs::V2xPhaseState
  :super ros::object
  :slots (_status _start_time _likely_end_time ))

(defmethod v2x_msgs::V2xPhaseState
  (:init
   (&key
    ((:status __status) (instance perception_interface_msgs::TrafficLightStatusEnum :init))
    ((:start_time __start_time) 0.0)
    ((:likely_end_time __likely_end_time) 0.0)
    )
   (send-super :init)
   (setq _status __status)
   (setq _start_time (float __start_time))
   (setq _likely_end_time (float __likely_end_time))
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:likely_end_time
   (&optional __likely_end_time)
   (if __likely_end_time (setq _likely_end_time __likely_end_time)) _likely_end_time)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/TrafficLightStatusEnum _status
    (send _status :serialization-length)
    ;; float64 _start_time
    8
    ;; float64 _likely_end_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/TrafficLightStatusEnum _status
       (send _status :serialize s)
     ;; float64 _start_time
       (sys::poke _start_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _likely_end_time
       (sys::poke _likely_end_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/TrafficLightStatusEnum _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; float64 _start_time
     (setq _start_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _likely_end_time
     (setq _likely_end_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get v2x_msgs::V2xPhaseState :md5sum-) "556fa6a805144e1ce137ff42b839324d")
(setf (get v2x_msgs::V2xPhaseState :datatype-) "v2x_msgs/V2xPhaseState")
(setf (get v2x_msgs::V2xPhaseState :definition-)
      "perception_interface_msgs/TrafficLightStatusEnum status
float64 start_time
float64 likely_end_time

================================================================================
MSG: perception_interface_msgs/TrafficLightStatusEnum
uint8 TRAFFIC_LIGHT_STATUS_RED = 0
uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
uint8 value

")



(provide :v2x_msgs/V2xPhaseState "556fa6a805144e1ce137ff42b839324d")


