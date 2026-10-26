;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::GroundLineTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'GroundLineTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude GroundLineTypeEnum.msg.html


(intern "*GROUND_LINE_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUND_LINE_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_UNKNOWN* 0)
(intern "*GROUND_LINE_TYPE_WALL*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUND_LINE_TYPE_WALL* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_WALL* 1)
(intern "*GROUND_LINE_TYPE_PILLAR*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUND_LINE_TYPE_PILLAR* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_PILLAR* 2)
(intern "*GROUND_LINE_TYPE_FENCE*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUND_LINE_TYPE_FENCE* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_FENCE* 3)
(intern "*GROUND_LINE_TYPE_STEP*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUND_LINE_TYPE_STEP* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_STEP* 4)
(intern "*GROUND_LINE_TYPE_SPECIAL*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUND_LINE_TYPE_SPECIAL* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_SPECIAL* 5)
(intern "*GROUND_LINE_TYPE_POLE*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUND_LINE_TYPE_POLE* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_POLE* 6)
(intern "*GROUND_LINE_TYPE_WHEELSTOP*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUND_LINE_TYPE_WHEELSTOP* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_WHEELSTOP* 7)
(intern "*GROUNDLINE_TYPE_BARRIER*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUNDLINE_TYPE_BARRIER* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUNDLINE_TYPE_BARRIER* 8)
(intern "*GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE* 9)
(intern "*GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE* 10)
(intern "*GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE* 11)
(intern "*GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(shadow '*GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINETYPEENUM"))
(defconstant perception_interface_msgs::GroundLineTypeEnum::*GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE* 12)

(defun perception_interface_msgs::GroundLineTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_WALL*)
        ((= const 2) 'perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_PILLAR*)
        ((= const 3) 'perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_FENCE*)
        ((= const 4) 'perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_STEP*)
        ((= const 5) 'perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_SPECIAL*)
        ((= const 6) 'perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_POLE*)
        ((= const 7) 'perception_interface_msgs::GroundLineTypeEnum::*GROUND_LINE_TYPE_WHEELSTOP*)
        ((= const 8) 'perception_interface_msgs::GroundLineTypeEnum::*GROUNDLINE_TYPE_BARRIER*)
        ((= const 9) 'perception_interface_msgs::GroundLineTypeEnum::*GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE*)
        ((= const 10) 'perception_interface_msgs::GroundLineTypeEnum::*GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE*)
        ((= const 11) 'perception_interface_msgs::GroundLineTypeEnum::*GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE*)
        ((= const 12) 'perception_interface_msgs::GroundLineTypeEnum::*GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE*)
        (t nil)))

(defclass perception_interface_msgs::GroundLineTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::GroundLineTypeEnum
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

(setf (get perception_interface_msgs::GroundLineTypeEnum :md5sum-) "171d775aedfea010466399b07d1420ca")
(setf (get perception_interface_msgs::GroundLineTypeEnum :datatype-) "perception_interface_msgs/GroundLineTypeEnum")
(setf (get perception_interface_msgs::GroundLineTypeEnum :definition-)
      "uint8 GROUND_LINE_TYPE_UNKNOWN = 0
uint8 GROUND_LINE_TYPE_WALL = 1
uint8 GROUND_LINE_TYPE_PILLAR = 2
uint8 GROUND_LINE_TYPE_FENCE = 3
uint8 GROUND_LINE_TYPE_STEP = 4
uint8 GROUND_LINE_TYPE_SPECIAL = 5
uint8 GROUND_LINE_TYPE_POLE = 6
uint8 GROUND_LINE_TYPE_WHEELSTOP = 7
uint8 GROUNDLINE_TYPE_BARRIER = 8
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12
uint8 value

")



(provide :perception_interface_msgs/GroundLineTypeEnum "171d775aedfea010466399b07d1420ca")


