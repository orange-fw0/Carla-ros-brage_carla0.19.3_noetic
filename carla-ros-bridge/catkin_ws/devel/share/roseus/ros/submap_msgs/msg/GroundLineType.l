;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::GroundLineType)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'GroundLineType (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::GROUNDLINETYPE")
  (make-package "SUBMAP_MSGS::GROUNDLINETYPE"))

(in-package "ROS")
;;//! \htmlinclude GroundLineType.msg.html


(intern "*UNKNOWN*" (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(shadow '*UNKNOWN* (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(defconstant submap_msgs::GroundLineType::*UNKNOWN* 0)
(intern "*WALL*" (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(shadow '*WALL* (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(defconstant submap_msgs::GroundLineType::*WALL* 1)
(intern "*PILLAR*" (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(shadow '*PILLAR* (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(defconstant submap_msgs::GroundLineType::*PILLAR* 2)
(intern "*FENCE*" (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(shadow '*FENCE* (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(defconstant submap_msgs::GroundLineType::*FENCE* 3)
(intern "*STEP*" (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(shadow '*STEP* (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(defconstant submap_msgs::GroundLineType::*STEP* 4)
(intern "*SPECIAL*" (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(shadow '*SPECIAL* (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(defconstant submap_msgs::GroundLineType::*SPECIAL* 5)
(intern "*PARKING_GATE*" (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(shadow '*PARKING_GATE* (find-package "SUBMAP_MSGS::GROUNDLINETYPE"))
(defconstant submap_msgs::GroundLineType::*PARKING_GATE* 6)

(defun submap_msgs::GroundLineType-to-symbol (const)
  (cond
        ((= const 0) 'submap_msgs::GroundLineType::*UNKNOWN*)
        ((= const 1) 'submap_msgs::GroundLineType::*WALL*)
        ((= const 2) 'submap_msgs::GroundLineType::*PILLAR*)
        ((= const 3) 'submap_msgs::GroundLineType::*FENCE*)
        ((= const 4) 'submap_msgs::GroundLineType::*STEP*)
        ((= const 5) 'submap_msgs::GroundLineType::*SPECIAL*)
        ((= const 6) 'submap_msgs::GroundLineType::*PARKING_GATE*)
        (t nil)))

(defclass submap_msgs::GroundLineType
  :super ros::object
  :slots (_value ))

(defmethod submap_msgs::GroundLineType
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

(setf (get submap_msgs::GroundLineType :md5sum-) "94f048ee3cd713fd9880d35eea373e11")
(setf (get submap_msgs::GroundLineType :datatype-) "submap_msgs/GroundLineType")
(setf (get submap_msgs::GroundLineType :definition-)
      "uint8 UNKNOWN = 0
uint8 WALL = 1
uint8 PILLAR = 2
uint8 FENCE = 3
uint8 STEP = 4
uint8 SPECIAL = 5
uint8 PARKING_GATE = 6
uint8 value

")



(provide :submap_msgs/GroundLineType "94f048ee3cd713fd9880d35eea373e11")


