;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xTrafficLightInfo)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xTrafficLightInfo (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XTRAFFICLIGHTINFO")
  (make-package "V2X_MSGS::V2XTRAFFICLIGHTINFO"))

(in-package "ROS")
;;//! \htmlinclude V2xTrafficLightInfo.msg.html


(intern "*V2X_INTERSECTION_STATE*" (find-package "V2X_MSGS::V2XTRAFFICLIGHTINFO"))
(shadow '*V2X_INTERSECTION_STATE* (find-package "V2X_MSGS::V2XTRAFFICLIGHTINFO"))
(defconstant v2x_msgs::V2xTrafficLightInfo::*V2X_INTERSECTION_STATE* 1)

(defun v2x_msgs::V2xTrafficLightInfo-to-symbol (const)
  (cond
        ((= const 1) 'v2x_msgs::V2xTrafficLightInfo::*V2X_INTERSECTION_STATE*)
        (t nil)))

(defclass v2x_msgs::V2xTrafficLightInfo
  :super ros::object
  :slots (_available _v2x_intersection_state ))

(defmethod v2x_msgs::V2xTrafficLightInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:v2x_intersection_state __v2x_intersection_state) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _v2x_intersection_state __v2x_intersection_state)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:v2x_intersection_state
   (&rest __v2x_intersection_state)
   (if (keywordp (car __v2x_intersection_state))
       (send* _v2x_intersection_state __v2x_intersection_state)
     (progn
       (if __v2x_intersection_state (setq _v2x_intersection_state (car __v2x_intersection_state)))
       _v2x_intersection_state)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; v2x_msgs/V2xIntersectionState[] _v2x_intersection_state
    (apply #'+ (send-all _v2x_intersection_state :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; v2x_msgs/V2xIntersectionState[] _v2x_intersection_state
     (write-long (length _v2x_intersection_state) s)
     (dolist (elem _v2x_intersection_state)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; v2x_msgs/V2xIntersectionState[] _v2x_intersection_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v2x_intersection_state (let (r) (dotimes (i n) (push (instance v2x_msgs::V2xIntersectionState :init) r)) r))
     (dolist (elem- _v2x_intersection_state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xTrafficLightInfo :md5sum-) "626a56c32b9882f64677a70e62d28a68")
(setf (get v2x_msgs::V2xTrafficLightInfo :datatype-) "v2x_msgs/V2xTrafficLightInfo")
(setf (get v2x_msgs::V2xTrafficLightInfo :definition-)
      "uint8 V2X_INTERSECTION_STATE = 1
uint8 available
v2x_msgs/V2xIntersectionState[] v2x_intersection_state

================================================================================
MSG: v2x_msgs/V2xIntersectionState
int32 intersection_id
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



(provide :v2x_msgs/V2xTrafficLightInfo "626a56c32b9882f64677a70e62d28a68")


