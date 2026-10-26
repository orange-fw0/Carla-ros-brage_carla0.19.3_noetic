;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::RoadMarkTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'RoadMarkTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadMarkTypeEnum.msg.html


(intern "*ROAD_MARK_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_UNKNOWN* 0)
(intern "*ROAD_MARK_TYPE_GO_STRAIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GO_STRAIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_GO_STRAIGHT* 1)
(intern "*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT* 2)
(intern "*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT* 3)
(intern "*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK* 4)
(intern "*ROAD_MARK_TYPE_TURN_LEFT*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_TURN_LEFT* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_TURN_LEFT* 5)
(intern "*ROAD_MARK_TYPE_TURN_RIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_TURN_RIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_TURN_RIGHT* 6)
(intern "*ROAD_MARK_TYPE_TURN_BACK*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_TURN_BACK* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_TURN_BACK* 7)
(intern "*ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK* 8)
(intern "*ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT* 9)
(intern "*ROAD_MARK_TYPE_LEFT_CONFLUENCE*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_LEFT_CONFLUENCE* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_LEFT_CONFLUENCE* 10)
(intern "*ROAD_MARK_TYPE_RIGHT_CONFLUENCE*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(shadow '*ROAD_MARK_TYPE_RIGHT_CONFLUENCE* (find-package "PERCEPTION_INTERFACE_MSGS::ROADMARKTYPEENUM"))
(defconstant perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_RIGHT_CONFLUENCE* 11)

(defun perception_interface_msgs::RoadMarkTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_GO_STRAIGHT*)
        ((= const 2) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT*)
        ((= const 3) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT*)
        ((= const 4) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK*)
        ((= const 5) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_TURN_LEFT*)
        ((= const 6) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_TURN_RIGHT*)
        ((= const 7) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_TURN_BACK*)
        ((= const 8) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK*)
        ((= const 9) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT*)
        ((= const 10) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_LEFT_CONFLUENCE*)
        ((= const 11) 'perception_interface_msgs::RoadMarkTypeEnum::*ROAD_MARK_TYPE_RIGHT_CONFLUENCE*)
        (t nil)))

(defclass perception_interface_msgs::RoadMarkTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::RoadMarkTypeEnum
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

(setf (get perception_interface_msgs::RoadMarkTypeEnum :md5sum-) "ac8a7bb2c0183076ba51a6627b1c2fe9")
(setf (get perception_interface_msgs::RoadMarkTypeEnum :datatype-) "perception_interface_msgs/RoadMarkTypeEnum")
(setf (get perception_interface_msgs::RoadMarkTypeEnum :definition-)
      "uint8 ROAD_MARK_TYPE_UNKNOWN = 0
uint8 ROAD_MARK_TYPE_GO_STRAIGHT = 1
uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT = 2
uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT = 3
uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK = 4
uint8 ROAD_MARK_TYPE_TURN_LEFT = 5
uint8 ROAD_MARK_TYPE_TURN_RIGHT = 6
uint8 ROAD_MARK_TYPE_TURN_BACK = 7
uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK = 8
uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT = 9
uint8 ROAD_MARK_TYPE_LEFT_CONFLUENCE = 10
uint8 ROAD_MARK_TYPE_RIGHT_CONFLUENCE = 11
uint8 value

")



(provide :perception_interface_msgs/RoadMarkTypeEnum "ac8a7bb2c0183076ba51a6627b1c2fe9")


