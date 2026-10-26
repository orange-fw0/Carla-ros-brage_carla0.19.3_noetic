;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xPhase)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xPhase (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XPHASE")
  (make-package "V2X_MSGS::V2XPHASE"))

(in-package "ROS")
;;//! \htmlinclude V2xPhase.msg.html


(defclass v2x_msgs::V2xPhase
  :super ros::object
  :slots (_phase_id _v2x_phase_state ))

(defmethod v2x_msgs::V2xPhase
  (:init
   (&key
    ((:phase_id __phase_id) 0)
    ((:v2x_phase_state __v2x_phase_state) (instance v2x_msgs::V2xPhaseState :init))
    )
   (send-super :init)
   (setq _phase_id (round __phase_id))
   (setq _v2x_phase_state __v2x_phase_state)
   self)
  (:phase_id
   (&optional __phase_id)
   (if __phase_id (setq _phase_id __phase_id)) _phase_id)
  (:v2x_phase_state
   (&rest __v2x_phase_state)
   (if (keywordp (car __v2x_phase_state))
       (send* _v2x_phase_state __v2x_phase_state)
     (progn
       (if __v2x_phase_state (setq _v2x_phase_state (car __v2x_phase_state)))
       _v2x_phase_state)))
  (:serialization-length
   ()
   (+
    ;; int32 _phase_id
    4
    ;; v2x_msgs/V2xPhaseState _v2x_phase_state
    (send _v2x_phase_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _phase_id
       (write-long _phase_id s)
     ;; v2x_msgs/V2xPhaseState _v2x_phase_state
       (send _v2x_phase_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _phase_id
     (setq _phase_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; v2x_msgs/V2xPhaseState _v2x_phase_state
     (send _v2x_phase_state :deserialize buf ptr-) (incf ptr- (send _v2x_phase_state :serialization-length))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xPhase :md5sum-) "742f1ef510e48f41e0c6b694531938fd")
(setf (get v2x_msgs::V2xPhase :datatype-) "v2x_msgs/V2xPhase")
(setf (get v2x_msgs::V2xPhase :definition-)
      "int32 phase_id
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



(provide :v2x_msgs/V2xPhase "742f1ef510e48f41e0c6b694531938fd")


