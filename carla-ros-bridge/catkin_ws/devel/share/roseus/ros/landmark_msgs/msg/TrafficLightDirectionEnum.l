;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightDirectionEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightDirectionEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightDirectionEnum.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficLightDirectionEnum::*UNKNOWN* 0)
(intern "*GO_STRAIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(shadow '*GO_STRAIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficLightDirectionEnum::*GO_STRAIGHT* 1)
(intern "*TURN_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(shadow '*TURN_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficLightDirectionEnum::*TURN_RIGHT* 2)
(intern "*TURN_LEFT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(shadow '*TURN_LEFT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficLightDirectionEnum::*TURN_LEFT* 3)
(intern "*U_TURN_LEFT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(shadow '*U_TURN_LEFT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficLightDirectionEnum::*U_TURN_LEFT* 4)
(intern "*U_TURN_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(shadow '*U_TURN_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficLightDirectionEnum::*U_TURN_RIGHT* 5)
(intern "*LEFT_CONFLUENCE*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(shadow '*LEFT_CONFLUENCE* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficLightDirectionEnum::*LEFT_CONFLUENCE* 6)
(intern "*RIGHT_CONFLUENCE*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(shadow '*RIGHT_CONFLUENCE* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficLightDirectionEnum::*RIGHT_CONFLUENCE* 7)

(defun landmark_msgs::TrafficLightDirectionEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficLightDirectionEnum::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::TrafficLightDirectionEnum::*GO_STRAIGHT*)
        ((= const 2) 'landmark_msgs::TrafficLightDirectionEnum::*TURN_RIGHT*)
        ((= const 3) 'landmark_msgs::TrafficLightDirectionEnum::*TURN_LEFT*)
        ((= const 4) 'landmark_msgs::TrafficLightDirectionEnum::*U_TURN_LEFT*)
        ((= const 5) 'landmark_msgs::TrafficLightDirectionEnum::*U_TURN_RIGHT*)
        ((= const 6) 'landmark_msgs::TrafficLightDirectionEnum::*LEFT_CONFLUENCE*)
        ((= const 7) 'landmark_msgs::TrafficLightDirectionEnum::*RIGHT_CONFLUENCE*)
        (t nil)))

(defclass landmark_msgs::TrafficLightDirectionEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficLightDirectionEnum
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

(setf (get landmark_msgs::TrafficLightDirectionEnum :md5sum-) "8f5b964fa477006f09a4b8ce540c0f2c")
(setf (get landmark_msgs::TrafficLightDirectionEnum :datatype-) "landmark_msgs/TrafficLightDirectionEnum")
(setf (get landmark_msgs::TrafficLightDirectionEnum :definition-)
      "uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 3
uint8 U_TURN_LEFT = 4
uint8 U_TURN_RIGHT = 5
uint8 LEFT_CONFLUENCE = 6
uint8 RIGHT_CONFLUENCE = 7
uint8 value

")



(provide :landmark_msgs/TrafficLightDirectionEnum "8f5b964fa477006f09a4b8ce540c0f2c")


