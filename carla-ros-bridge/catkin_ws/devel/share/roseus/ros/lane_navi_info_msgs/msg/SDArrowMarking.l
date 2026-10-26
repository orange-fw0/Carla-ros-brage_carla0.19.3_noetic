;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDArrowMarking)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDArrowMarking (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING")
  (make-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))

(in-package "ROS")
;;//! \htmlinclude SDArrowMarking.msg.html


(intern "*ARROWMARKING_STRAIGHT*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_STRAIGHT* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT* 0)
(intern "*ARROWMARKING_LEFT*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_LEFT* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT* 1)
(intern "*ARROWMARKING_STRAIGHT_LEFT*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_STRAIGHT_LEFT* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_LEFT* 2)
(intern "*ARROWMARKING_RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_RIGHT* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_RIGHT* 3)
(intern "*ARROWMARKING_STRAIGHT_RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_STRAIGHT_RIGHT* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_RIGHT* 4)
(intern "*ARROWMARKING_LEFT_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_LEFT_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_UTURN* 5)
(intern "*ARROWMARKING_LEFT_RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_LEFT_RIGHT* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_RIGHT* 6)
(intern "*ARROWMARKING_LEFT_RIGHT_STRAIGHT*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_LEFT_RIGHT_STRAIGHT* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_RIGHT_STRAIGHT* 7)
(intern "*ARROWMARKING_RIGHT_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_RIGHT_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_RIGHT_UTURN* 8)
(intern "*ARROWMARKING_STRAIGHT_LEFT_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_STRAIGHT_LEFT_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_LEFT_UTURN* 9)
(intern "*ARROWMARKING_STRAIGHT_RIGHT_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_STRAIGHT_RIGHT_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_RIGHT_UTURN* 10)
(intern "*ARROWMARKING_LEFT_LEFT_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_LEFT_LEFT_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_LEFT_UTURN* 11)
(intern "*ARROWMARKING_RIGHT_RIGHT_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_RIGHT_RIGHT_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_RIGHT_RIGHT_UTURN* 12)
(intern "*ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN* 16)
(intern "*ARROWMARKING_RIGHT_LEFT_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_RIGHT_LEFT_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_RIGHT_LEFT_UTURN* 17)
(intern "*ARROWMARKING_LEFT_RIGHT_LEFT_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_LEFT_RIGHT_LEFT_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_RIGHT_LEFT_UTURN* 18)
(intern "*ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN* 19)
(intern "*ARROWMARKING_LEFT_RIGHT_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_LEFT_RIGHT_UTURN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_RIGHT_UTURN* 20)
(intern "*ARROWMARKING_UNKNOWN*" (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(shadow '*ARROWMARKING_UNKNOWN* (find-package "LANE_NAVI_INFO_MSGS::SDARROWMARKING"))
(defconstant lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_UNKNOWN* 255)

(defun lane_navi_info_msgs::SDArrowMarking-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT*)
        ((= const 1) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT*)
        ((= const 2) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_LEFT*)
        ((= const 3) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_RIGHT*)
        ((= const 4) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_RIGHT*)
        ((= const 5) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_UTURN*)
        ((= const 6) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_RIGHT*)
        ((= const 7) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_RIGHT_STRAIGHT*)
        ((= const 8) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_RIGHT_UTURN*)
        ((= const 9) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_LEFT_UTURN*)
        ((= const 10) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_RIGHT_UTURN*)
        ((= const 11) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_LEFT_UTURN*)
        ((= const 12) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_RIGHT_RIGHT_UTURN*)
        ((= const 16) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN*)
        ((= const 17) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_RIGHT_LEFT_UTURN*)
        ((= const 18) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_RIGHT_LEFT_UTURN*)
        ((= const 19) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN*)
        ((= const 20) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_LEFT_RIGHT_UTURN*)
        ((= const 255) 'lane_navi_info_msgs::SDArrowMarking::*ARROWMARKING_UNKNOWN*)
        (t nil)))

(defclass lane_navi_info_msgs::SDArrowMarking
  :super ros::object
  :slots (_value ))

(defmethod lane_navi_info_msgs::SDArrowMarking
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

(setf (get lane_navi_info_msgs::SDArrowMarking :md5sum-) "a7bef5b294ac8fa89d7cc71649e01451")
(setf (get lane_navi_info_msgs::SDArrowMarking :datatype-) "lane_navi_info_msgs/SDArrowMarking")
(setf (get lane_navi_info_msgs::SDArrowMarking :definition-)
      "uint8 ARROWMARKING_STRAIGHT = 0
uint8 ARROWMARKING_LEFT = 1
uint8 ARROWMARKING_STRAIGHT_LEFT = 2
uint8 ARROWMARKING_RIGHT = 3
uint8 ARROWMARKING_STRAIGHT_RIGHT = 4
uint8 ARROWMARKING_LEFT_UTURN = 5
uint8 ARROWMARKING_LEFT_RIGHT = 6
uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7
uint8 ARROWMARKING_RIGHT_UTURN = 8
uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9
uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10
uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11
uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12
uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16
uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17
uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18
uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19
uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20
uint8 ARROWMARKING_UNKNOWN = 255
uint8 value

")



(provide :lane_navi_info_msgs/SDArrowMarking "a7bef5b294ac8fa89d7cc71649e01451")


