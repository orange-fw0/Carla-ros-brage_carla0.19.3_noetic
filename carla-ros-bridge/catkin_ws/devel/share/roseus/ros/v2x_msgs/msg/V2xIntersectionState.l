;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xIntersectionState)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xIntersectionState (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XINTERSECTIONSTATE")
  (make-package "V2X_MSGS::V2XINTERSECTIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude V2xIntersectionState.msg.html


(defclass v2x_msgs::V2xIntersectionState
  :super ros::object
  :slots (_intersection_id _v2x_phase ))

(defmethod v2x_msgs::V2xIntersectionState
  (:init
   (&key
    ((:intersection_id __intersection_id) 0)
    ((:v2x_phase __v2x_phase) ())
    )
   (send-super :init)
   (setq _intersection_id (round __intersection_id))
   (setq _v2x_phase __v2x_phase)
   self)
  (:intersection_id
   (&optional __intersection_id)
   (if __intersection_id (setq _intersection_id __intersection_id)) _intersection_id)
  (:v2x_phase
   (&rest __v2x_phase)
   (if (keywordp (car __v2x_phase))
       (send* _v2x_phase __v2x_phase)
     (progn
       (if __v2x_phase (setq _v2x_phase (car __v2x_phase)))
       _v2x_phase)))
  (:serialization-length
   ()
   (+
    ;; int32 _intersection_id
    4
    ;; v2x_msgs/V2xPhase[] _v2x_phase
    (apply #'+ (send-all _v2x_phase :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _intersection_id
       (write-long _intersection_id s)
     ;; v2x_msgs/V2xPhase[] _v2x_phase
     (write-long (length _v2x_phase) s)
     (dolist (elem _v2x_phase)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _intersection_id
     (setq _intersection_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; v2x_msgs/V2xPhase[] _v2x_phase
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v2x_phase (let (r) (dotimes (i n) (push (instance v2x_msgs::V2xPhase :init) r)) r))
     (dolist (elem- _v2x_phase)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xIntersectionState :md5sum-) "678dc7bfbee0a47d506f17354aae9a41")
(setf (get v2x_msgs::V2xIntersectionState :datatype-) "v2x_msgs/V2xIntersectionState")
(setf (get v2x_msgs::V2xIntersectionState :definition-)
      "int32 intersection_id
v2x_msgs/V2xPhase[] v2x_phase

================================================================================
MSG: v2x_msgs/V2xPhase
int32 phase_id
v2x_msgs/V2xPhaseState v2x_phase_state

================================================================================
MSG: v2x_msgs/V2xPhaseState
perception_interface_msgs/TrafficLightStatusEnum status
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



(provide :v2x_msgs/V2xIntersectionState "678dc7bfbee0a47d506f17354aae9a41")


