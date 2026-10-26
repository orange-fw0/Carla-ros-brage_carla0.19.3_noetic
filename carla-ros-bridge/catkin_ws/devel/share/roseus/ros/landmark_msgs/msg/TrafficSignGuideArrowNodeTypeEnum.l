;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignGuideArrowNodeTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignGuideArrowNodeTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignGuideArrowNodeTypeEnum.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(defconstant landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*UNKNOWN* 0)
(intern "*DIRECTIONAL_ARROW_POINTING_UP*" (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(shadow '*DIRECTIONAL_ARROW_POINTING_UP* (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(defconstant landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_UP* 1)
(intern "*DIRECTIONAL_ARROW_POINTING_BACK*" (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(shadow '*DIRECTIONAL_ARROW_POINTING_BACK* (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(defconstant landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_BACK* 2)
(intern "*DIRECTIONAL_ARROW_POINTING_LEFT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(shadow '*DIRECTIONAL_ARROW_POINTING_LEFT* (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(defconstant landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_LEFT* 3)
(intern "*DIRECTIONAL_ARROW_POINTING_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(shadow '*DIRECTIONAL_ARROW_POINTING_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(defconstant landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_RIGHT* 4)
(intern "*DIRECTIONAL_ARROW_POINTING_UP_LEFT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(shadow '*DIRECTIONAL_ARROW_POINTING_UP_LEFT* (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(defconstant landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_UP_LEFT* 5)
(intern "*DIRECTIONAL_ARROW_POINTING_UP_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(shadow '*DIRECTIONAL_ARROW_POINTING_UP_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODETYPEENUM"))
(defconstant landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_UP_RIGHT* 6)

(defun landmark_msgs::TrafficSignGuideArrowNodeTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_UP*)
        ((= const 2) 'landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_BACK*)
        ((= const 3) 'landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_LEFT*)
        ((= const 4) 'landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_RIGHT*)
        ((= const 5) 'landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_UP_LEFT*)
        ((= const 6) 'landmark_msgs::TrafficSignGuideArrowNodeTypeEnum::*DIRECTIONAL_ARROW_POINTING_UP_RIGHT*)
        (t nil)))

(defclass landmark_msgs::TrafficSignGuideArrowNodeTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignGuideArrowNodeTypeEnum
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

(setf (get landmark_msgs::TrafficSignGuideArrowNodeTypeEnum :md5sum-) "33f0645f5603126209602a4469db6328")
(setf (get landmark_msgs::TrafficSignGuideArrowNodeTypeEnum :datatype-) "landmark_msgs/TrafficSignGuideArrowNodeTypeEnum")
(setf (get landmark_msgs::TrafficSignGuideArrowNodeTypeEnum :definition-)
      "uint8 UNKNOWN = 0
uint8 DIRECTIONAL_ARROW_POINTING_UP = 1
uint8 DIRECTIONAL_ARROW_POINTING_BACK = 2
uint8 DIRECTIONAL_ARROW_POINTING_LEFT = 3
uint8 DIRECTIONAL_ARROW_POINTING_RIGHT = 4
uint8 DIRECTIONAL_ARROW_POINTING_UP_LEFT = 5
uint8 DIRECTIONAL_ARROW_POINTING_UP_RIGHT = 6
uint8 value

")



(provide :landmark_msgs/TrafficSignGuideArrowNodeTypeEnum "33f0645f5603126209602a4469db6328")


