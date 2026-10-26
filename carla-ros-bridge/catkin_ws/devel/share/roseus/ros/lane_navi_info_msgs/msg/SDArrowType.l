;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDArrowType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDArrowType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))

(in-package "ROS")
;;//! \htmlinclude SDArrowType.msg.html


(intern "*SD_ARROW_TYPE_LEFTUTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_LEFTUTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_LEFTUTURN* 0)
(intern "*SD_ARROW_TYPE_TURNLEFT*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_TURNLEFT* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_TURNLEFT* 1)
(intern "*SD_ARROW_TYPE_STRAIGHT*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_STRAIGHT* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_STRAIGHT* 2)
(intern "*SD_ARROW_TYPE_TURNRIGHT*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_TURNRIGHT* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_TURNRIGHT* 3)
(intern "*SD_ARROW_TYPE_RIGHTUTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_RIGHTUTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_RIGHTUTURN* 4)
(intern "*SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE* 5)
(intern "*SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE* 6)
(intern "*SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN* 7)
(intern "*SD_ARROW_TYPE_LEFT_CURVATURE*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_LEFT_CURVATURE* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_LEFT_CURVATURE* 8)
(intern "*SD_ARROW_TYPE_RIGHT_CURVATURE*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_RIGHT_CURVATURE* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_RIGHT_CURVATURE* 9)
(intern "*SD_ARROW_TYPE_EMPTY_LANE*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_EMPTY_LANE* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_EMPTY_LANE* 10)
(intern "*SD_ARROW_TYPE_INVALID*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(shadow '*SD_ARROW_TYPE_INVALID* (find-package "LANE_NAVI_INFO_MSGS::SDARROWTYPE"))
(defconstant lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_INVALID* 255)

(defun lane_navi_info_msgs::SDArrowType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_LEFTUTURN*)
        ((= const 1) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_TURNLEFT*)
        ((= const 2) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_STRAIGHT*)
        ((= const 3) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_TURNRIGHT*)
        ((= const 4) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_RIGHTUTURN*)
        ((= const 5) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE*)
        ((= const 6) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE*)
        ((= const 7) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN*)
        ((= const 8) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_LEFT_CURVATURE*)
        ((= const 9) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_RIGHT_CURVATURE*)
        ((= const 10) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_EMPTY_LANE*)
        ((= const 255) 'lane_navi_info_msgs::SDArrowType::*SD_ARROW_TYPE_INVALID*)
        (t nil)))

(defclass lane_navi_info_msgs::SDArrowType
  :super ros::object
  :slots (_type ))

(defmethod lane_navi_info_msgs::SDArrowType
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

(setf (get lane_navi_info_msgs::SDArrowType :md5sum-) "f3168dcc7bd862efec8c96b55d9de149")
(setf (get lane_navi_info_msgs::SDArrowType :datatype-) "lane_navi_info_msgs/SDArrowType")
(setf (get lane_navi_info_msgs::SDArrowType :definition-)
      "uint8 SD_ARROW_TYPE_LEFTUTURN = 0
uint8 SD_ARROW_TYPE_TURNLEFT = 1
uint8 SD_ARROW_TYPE_STRAIGHT = 2
uint8 SD_ARROW_TYPE_TURNRIGHT = 3
uint8 SD_ARROW_TYPE_RIGHTUTURN = 4
uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5
uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6
uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7
uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8
uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9
uint8 SD_ARROW_TYPE_EMPTY_LANE = 10
uint8 SD_ARROW_TYPE_INVALID = 255
uint8 type

")



(provide :lane_navi_info_msgs/SDArrowType "f3168dcc7bd862efec8c96b55d9de149")


