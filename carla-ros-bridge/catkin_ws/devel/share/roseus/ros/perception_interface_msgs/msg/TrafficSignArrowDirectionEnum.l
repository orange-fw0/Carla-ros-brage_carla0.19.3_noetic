;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficSignArrowDirectionEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficSignArrowDirectionEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignArrowDirectionEnum.msg.html


(intern "*TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM"))
(defconstant perception_interface_msgs::TrafficSignArrowDirectionEnum::*TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN* 0)
(intern "*TRAFFIC_SIGN_ARROW_DIRECTION_NONE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_ARROW_DIRECTION_NONE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM"))
(defconstant perception_interface_msgs::TrafficSignArrowDirectionEnum::*TRAFFIC_SIGN_ARROW_DIRECTION_NONE* 1)
(intern "*TRAFFIC_SIGN_ARROW_DIRECTION_LEFT*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_ARROW_DIRECTION_LEFT* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM"))
(defconstant perception_interface_msgs::TrafficSignArrowDirectionEnum::*TRAFFIC_SIGN_ARROW_DIRECTION_LEFT* 2)
(intern "*TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM"))
(defconstant perception_interface_msgs::TrafficSignArrowDirectionEnum::*TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE* 3)
(intern "*TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNARROWDIRECTIONENUM"))
(defconstant perception_interface_msgs::TrafficSignArrowDirectionEnum::*TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT* 4)

(defun perception_interface_msgs::TrafficSignArrowDirectionEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficSignArrowDirectionEnum::*TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::TrafficSignArrowDirectionEnum::*TRAFFIC_SIGN_ARROW_DIRECTION_NONE*)
        ((= const 2) 'perception_interface_msgs::TrafficSignArrowDirectionEnum::*TRAFFIC_SIGN_ARROW_DIRECTION_LEFT*)
        ((= const 3) 'perception_interface_msgs::TrafficSignArrowDirectionEnum::*TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE*)
        ((= const 4) 'perception_interface_msgs::TrafficSignArrowDirectionEnum::*TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT*)
        (t nil)))

(defclass perception_interface_msgs::TrafficSignArrowDirectionEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficSignArrowDirectionEnum
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

(setf (get perception_interface_msgs::TrafficSignArrowDirectionEnum :md5sum-) "6f83b18394e0195b968bad64c0f5a518")
(setf (get perception_interface_msgs::TrafficSignArrowDirectionEnum :datatype-) "perception_interface_msgs/TrafficSignArrowDirectionEnum")
(setf (get perception_interface_msgs::TrafficSignArrowDirectionEnum :definition-)
      "uint8 TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_NONE = 1
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_LEFT = 2
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE = 3
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT = 4
uint8 value

")



(provide :perception_interface_msgs/TrafficSignArrowDirectionEnum "6f83b18394e0195b968bad64c0f5a518")


