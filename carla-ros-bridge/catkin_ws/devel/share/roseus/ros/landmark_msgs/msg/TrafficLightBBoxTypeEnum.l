;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightBBoxTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightBBoxTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTBBOXTYPEENUM")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTBBOXTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightBBoxTypeEnum.msg.html


(intern "*LIGHT_GROUP*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTBBOXTYPEENUM"))
(shadow '*LIGHT_GROUP* (find-package "LANDMARK_MSGS::TRAFFICLIGHTBBOXTYPEENUM"))
(defconstant landmark_msgs::TrafficLightBBoxTypeEnum::*LIGHT_GROUP* 0)
(intern "*LIGHT_BULB*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTBBOXTYPEENUM"))
(shadow '*LIGHT_BULB* (find-package "LANDMARK_MSGS::TRAFFICLIGHTBBOXTYPEENUM"))
(defconstant landmark_msgs::TrafficLightBBoxTypeEnum::*LIGHT_BULB* 1)
(intern "*LIGHT_TYPE_GLIM_HALO*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTBBOXTYPEENUM"))
(shadow '*LIGHT_TYPE_GLIM_HALO* (find-package "LANDMARK_MSGS::TRAFFICLIGHTBBOXTYPEENUM"))
(defconstant landmark_msgs::TrafficLightBBoxTypeEnum::*LIGHT_TYPE_GLIM_HALO* 2)
(intern "*LIGHT_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTBBOXTYPEENUM"))
(shadow '*LIGHT_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICLIGHTBBOXTYPEENUM"))
(defconstant landmark_msgs::TrafficLightBBoxTypeEnum::*LIGHT_TYPE_UNKNOWN* 3)

(defun landmark_msgs::TrafficLightBBoxTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficLightBBoxTypeEnum::*LIGHT_GROUP*)
        ((= const 1) 'landmark_msgs::TrafficLightBBoxTypeEnum::*LIGHT_BULB*)
        ((= const 2) 'landmark_msgs::TrafficLightBBoxTypeEnum::*LIGHT_TYPE_GLIM_HALO*)
        ((= const 3) 'landmark_msgs::TrafficLightBBoxTypeEnum::*LIGHT_TYPE_UNKNOWN*)
        (t nil)))

(defclass landmark_msgs::TrafficLightBBoxTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficLightBBoxTypeEnum
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

(setf (get landmark_msgs::TrafficLightBBoxTypeEnum :md5sum-) "727cdaffb2750a9364ac9e16d806affb")
(setf (get landmark_msgs::TrafficLightBBoxTypeEnum :datatype-) "landmark_msgs/TrafficLightBBoxTypeEnum")
(setf (get landmark_msgs::TrafficLightBBoxTypeEnum :definition-)
      "uint8 LIGHT_GROUP = 0
uint8 LIGHT_BULB = 1
uint8 LIGHT_TYPE_GLIM_HALO = 2
uint8 LIGHT_TYPE_UNKNOWN = 3
uint8 value

")



(provide :landmark_msgs/TrafficLightBBoxTypeEnum "727cdaffb2750a9364ac9e16d806affb")


