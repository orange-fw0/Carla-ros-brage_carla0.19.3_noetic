;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficLightInFov)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficLightInFov (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightInFov.msg.html


(intern "*TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV"))
(shadow '*TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV"))
(defconstant perception_interface_msgs::TrafficLightInFov::*TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN* 1)
(intern "*TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV"))
(shadow '*TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV"))
(defconstant perception_interface_msgs::TrafficLightInFov::*TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW* 2)
(intern "*TRAFFIC_LIGHT_IN_FOV_UP_ARROW*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV"))
(shadow '*TRAFFIC_LIGHT_IN_FOV_UP_ARROW* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV"))
(defconstant perception_interface_msgs::TrafficLightInFov::*TRAFFIC_LIGHT_IN_FOV_UP_ARROW* 4)
(intern "*TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV"))
(shadow '*TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV"))
(defconstant perception_interface_msgs::TrafficLightInFov::*TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW* 8)
(intern "*TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV"))
(shadow '*TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINFOV"))
(defconstant perception_interface_msgs::TrafficLightInFov::*TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN* 16)

(defun perception_interface_msgs::TrafficLightInFov-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::TrafficLightInFov::*TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN*)
        ((= const 2) 'perception_interface_msgs::TrafficLightInFov::*TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW*)
        ((= const 4) 'perception_interface_msgs::TrafficLightInFov::*TRAFFIC_LIGHT_IN_FOV_UP_ARROW*)
        ((= const 8) 'perception_interface_msgs::TrafficLightInFov::*TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW*)
        ((= const 16) 'perception_interface_msgs::TrafficLightInFov::*TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN*)
        (t nil)))

(defclass perception_interface_msgs::TrafficLightInFov
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficLightInFov
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get perception_interface_msgs::TrafficLightInFov :md5sum-) "8bd3ed24862fdff9279b7619796b701d")
(setf (get perception_interface_msgs::TrafficLightInFov :datatype-) "perception_interface_msgs/TrafficLightInFov")
(setf (get perception_interface_msgs::TrafficLightInFov :definition-)
      "uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN = 1
uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW = 2
uint8 TRAFFIC_LIGHT_IN_FOV_UP_ARROW = 4
uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW = 8
uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN = 16
uint8 value

")



(provide :perception_interface_msgs/TrafficLightInFov "8bd3ed24862fdff9279b7619796b701d")


