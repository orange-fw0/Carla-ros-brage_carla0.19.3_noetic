;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::ECameraType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'ECameraType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE")
  (make-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))

(in-package "ROS")
;;//! \htmlinclude ECameraType.msg.html


(intern "*ECAMERA_SPEED*" (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(shadow '*ECAMERA_SPEED* (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(defconstant lane_navi_info_msgs::ECameraType::*ECAMERA_SPEED* 0)
(intern "*ECAMERA_MONITOR*" (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(shadow '*ECAMERA_MONITOR* (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(defconstant lane_navi_info_msgs::ECameraType::*ECAMERA_MONITOR* 1)
(intern "*ECAMERA_TRAFIC_LIGHT*" (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(shadow '*ECAMERA_TRAFIC_LIGHT* (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(defconstant lane_navi_info_msgs::ECameraType::*ECAMERA_TRAFIC_LIGHT* 2)
(intern "*ECAMERA_RULE*" (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(shadow '*ECAMERA_RULE* (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(defconstant lane_navi_info_msgs::ECameraType::*ECAMERA_RULE* 3)
(intern "*ECAMERA_BUS*" (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(shadow '*ECAMERA_BUS* (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(defconstant lane_navi_info_msgs::ECameraType::*ECAMERA_BUS* 4)
(intern "*ECAMERA_EMERGENCY*" (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(shadow '*ECAMERA_EMERGENCY* (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(defconstant lane_navi_info_msgs::ECameraType::*ECAMERA_EMERGENCY* 5)
(intern "*ECAMERA_NON_MOTORIZED*" (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(shadow '*ECAMERA_NON_MOTORIZED* (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(defconstant lane_navi_info_msgs::ECameraType::*ECAMERA_NON_MOTORIZED* 6)
(intern "*ECAMERA_RANGE*" (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(shadow '*ECAMERA_RANGE* (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(defconstant lane_navi_info_msgs::ECameraType::*ECAMERA_RANGE* 7)
(intern "*ECAMERA_INTER_SPEED_START*" (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(shadow '*ECAMERA_INTER_SPEED_START* (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(defconstant lane_navi_info_msgs::ECameraType::*ECAMERA_INTER_SPEED_START* 8)
(intern "*ECAMERA_INTER_SPEED_END*" (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(shadow '*ECAMERA_INTER_SPEED_END* (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(defconstant lane_navi_info_msgs::ECameraType::*ECAMERA_INTER_SPEED_END* 9)
(intern "*ECAMERA_UNKNOWN*" (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(shadow '*ECAMERA_UNKNOWN* (find-package "LANE_NAVI_INFO_MSGS::ECAMERATYPE"))
(defconstant lane_navi_info_msgs::ECameraType::*ECAMERA_UNKNOWN* 255)

(defun lane_navi_info_msgs::ECameraType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::ECameraType::*ECAMERA_SPEED*)
        ((= const 1) 'lane_navi_info_msgs::ECameraType::*ECAMERA_MONITOR*)
        ((= const 2) 'lane_navi_info_msgs::ECameraType::*ECAMERA_TRAFIC_LIGHT*)
        ((= const 3) 'lane_navi_info_msgs::ECameraType::*ECAMERA_RULE*)
        ((= const 4) 'lane_navi_info_msgs::ECameraType::*ECAMERA_BUS*)
        ((= const 5) 'lane_navi_info_msgs::ECameraType::*ECAMERA_EMERGENCY*)
        ((= const 6) 'lane_navi_info_msgs::ECameraType::*ECAMERA_NON_MOTORIZED*)
        ((= const 7) 'lane_navi_info_msgs::ECameraType::*ECAMERA_RANGE*)
        ((= const 8) 'lane_navi_info_msgs::ECameraType::*ECAMERA_INTER_SPEED_START*)
        ((= const 9) 'lane_navi_info_msgs::ECameraType::*ECAMERA_INTER_SPEED_END*)
        ((= const 255) 'lane_navi_info_msgs::ECameraType::*ECAMERA_UNKNOWN*)
        (t nil)))

(defclass lane_navi_info_msgs::ECameraType
  :super ros::object
  :slots (_type ))

(defmethod lane_navi_info_msgs::ECameraType
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::ECameraType :md5sum-) "3f9c792de18abf7ccc45063122f6085b")
(setf (get lane_navi_info_msgs::ECameraType :datatype-) "lane_navi_info_msgs/ECameraType")
(setf (get lane_navi_info_msgs::ECameraType :definition-)
      "uint8 ECAMERA_SPEED = 0
uint8 ECAMERA_MONITOR = 1
uint8 ECAMERA_TRAFIC_LIGHT = 2
uint8 ECAMERA_RULE = 3
uint8 ECAMERA_BUS = 4
uint8 ECAMERA_EMERGENCY = 5
uint8 ECAMERA_NON_MOTORIZED = 6
uint8 ECAMERA_RANGE = 7
uint8 ECAMERA_INTER_SPEED_START = 8
uint8 ECAMERA_INTER_SPEED_END = 9
uint8 ECAMERA_UNKNOWN = 255
uint8 type

")



(provide :lane_navi_info_msgs/ECameraType "3f9c792de18abf7ccc45063122f6085b")


