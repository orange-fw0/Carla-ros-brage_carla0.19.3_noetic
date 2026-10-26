;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::TrafficLightDecision)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'TrafficLightDecision (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::TRAFFICLIGHTDECISION")
  (make-package "PLANNING_MSGS::TRAFFICLIGHTDECISION"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightDecision.msg.html


(defclass planning_msgs::TrafficLightDecision
  :super ros::object
  :slots (_traffic_light_state _stop_reason _stop_flag _is_passed_stop_line _faster_pass ))

(defmethod planning_msgs::TrafficLightDecision
  (:init
   (&key
    ((:traffic_light_state __traffic_light_state) 0)
    ((:stop_reason __stop_reason) 0)
    ((:stop_flag __stop_flag) nil)
    ((:is_passed_stop_line __is_passed_stop_line) nil)
    ((:faster_pass __faster_pass) nil)
    )
   (send-super :init)
   (setq _traffic_light_state (round __traffic_light_state))
   (setq _stop_reason (round __stop_reason))
   (setq _stop_flag __stop_flag)
   (setq _is_passed_stop_line __is_passed_stop_line)
   (setq _faster_pass __faster_pass)
   self)
  (:traffic_light_state
   (&optional __traffic_light_state)
   (if __traffic_light_state (setq _traffic_light_state __traffic_light_state)) _traffic_light_state)
  (:stop_reason
   (&optional __stop_reason)
   (if __stop_reason (setq _stop_reason __stop_reason)) _stop_reason)
  (:stop_flag
   (&optional (__stop_flag :null))
   (if (not (eq __stop_flag :null)) (setq _stop_flag __stop_flag)) _stop_flag)
  (:is_passed_stop_line
   (&optional (__is_passed_stop_line :null))
   (if (not (eq __is_passed_stop_line :null)) (setq _is_passed_stop_line __is_passed_stop_line)) _is_passed_stop_line)
  (:faster_pass
   (&optional (__faster_pass :null))
   (if (not (eq __faster_pass :null)) (setq _faster_pass __faster_pass)) _faster_pass)
  (:serialization-length
   ()
   (+
    ;; int32 _traffic_light_state
    4
    ;; int32 _stop_reason
    4
    ;; bool _stop_flag
    1
    ;; bool _is_passed_stop_line
    1
    ;; bool _faster_pass
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _traffic_light_state
       (write-long _traffic_light_state s)
     ;; int32 _stop_reason
       (write-long _stop_reason s)
     ;; bool _stop_flag
       (if _stop_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_passed_stop_line
       (if _is_passed_stop_line (write-byte -1 s) (write-byte 0 s))
     ;; bool _faster_pass
       (if _faster_pass (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _traffic_light_state
     (setq _traffic_light_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _stop_reason
     (setq _stop_reason (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _stop_flag
     (setq _stop_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_passed_stop_line
     (setq _is_passed_stop_line (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _faster_pass
     (setq _faster_pass (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get planning_msgs::TrafficLightDecision :md5sum-) "d3b63bda515ee9c08bd539eb146789f5")
(setf (get planning_msgs::TrafficLightDecision :datatype-) "planning_msgs/TrafficLightDecision")
(setf (get planning_msgs::TrafficLightDecision :definition-)
      "int32 traffic_light_state
int32 stop_reason
bool stop_flag
bool is_passed_stop_line
bool faster_pass

")



(provide :planning_msgs/TrafficLightDecision "d3b63bda515ee9c08bd539eb146789f5")


