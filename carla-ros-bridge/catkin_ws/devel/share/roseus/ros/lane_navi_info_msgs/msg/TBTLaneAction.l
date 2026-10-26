;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::TBTLaneAction)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'TBTLaneAction (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION")
  (make-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))

(in-package "ROS")
;;//! \htmlinclude TBTLaneAction.msg.html


(intern "*LANE_ACTION_AHEAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_AHEAD* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD* 0)
(intern "*LANE_ACTION_LEFT*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_LEFT* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT* 1)
(intern "*LANE_ACTION_AHEAD_LEFT*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_AHEAD_LEFT* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_LEFT* 2)
(intern "*LANE_ACTION_RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_RIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_RIGHT* 3)
(intern "*LANE_ACTION_AHEAD_RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_AHEAD_RIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_RIGHT* 4)
(intern "*LANE_ACTION_LU_TURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_LU_TURN* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LU_TURN* 5)
(intern "*LANE_ACTION_LEFT_RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_LEFT_RIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_RIGHT* 6)
(intern "*LANE_ACTION_AHEAD_LEFT_RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_AHEAD_LEFT_RIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_LEFT_RIGHT* 7)
(intern "*LANE_ACTION_RU_TURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_RU_TURN* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_RU_TURN* 8)
(intern "*LANE_ACTION_AHEAD_LU_TURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_AHEAD_LU_TURN* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_LU_TURN* 9)
(intern "*LANE_ACTION_AHEAD_RU_TURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_AHEAD_RU_TURN* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_RU_TURN* 10)
(intern "*LANE_ACTION_LEFT_LU_TURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_LEFT_LU_TURN* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_LU_TURN* 11)
(intern "*LANE_ACTION_RIGHT_RU_TURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_RIGHT_RU_TURN* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_RIGHT_RU_TURN* 12)
(intern "*LANE_ACTION_LEFT_IN_AHEAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_LEFT_IN_AHEAD* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_IN_AHEAD* 13)
(intern "*LANE_ACTION_LEFT_LU_TURN_EX*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_LEFT_LU_TURN_EX* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_LU_TURN_EX* 14)
(intern "*LANE_ACTION_RESERVED*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_RESERVED* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_RESERVED* 15)
(intern "*LANE_ACTION_AHEAD_LEFT_LU_TURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_AHEAD_LEFT_LU_TURN* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_LEFT_LU_TURN* 16)
(intern "*LANE_ACTION_RIGHT_LU_TURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_RIGHT_LU_TURN* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_RIGHT_LU_TURN* 17)
(intern "*LANE_ACTION_LEFT_RIGHT_LU_TURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_LEFT_RIGHT_LU_TURN* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_RIGHT_LU_TURN* 18)
(intern "*LANE_ACTION_AHEAD_RIGHT_LU_TURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_AHEAD_RIGHT_LU_TURN* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_RIGHT_LU_TURN* 19)
(intern "*LANE_ACTION_LEFT_RU_TURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_LEFT_RU_TURN* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_RU_TURN* 20)
(intern "*LANE_ACTION_BUS*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_BUS* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_BUS* 21)
(intern "*LANE_ACTION_EMPTY*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_EMPTY* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_EMPTY* 22)
(intern "*LANE_ACTION_VARIABLE*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_VARIABLE* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_VARIABLE* 23)
(intern "*LANE_ACTION_DEDICATED*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_DEDICATED* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_DEDICATED* 24)
(intern "*LANE_ACTION_TIDAL*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_TIDAL* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_TIDAL* 25)
(intern "*LANE_ACTION_NULL*" (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(shadow '*LANE_ACTION_NULL* (find-package "LANE_NAVI_INFO_MSGS::TBTLANEACTION"))
(defconstant lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_NULL* 255)

(defun lane_navi_info_msgs::TBTLaneAction-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD*)
        ((= const 1) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT*)
        ((= const 2) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_LEFT*)
        ((= const 3) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_RIGHT*)
        ((= const 4) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_RIGHT*)
        ((= const 5) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LU_TURN*)
        ((= const 6) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_RIGHT*)
        ((= const 7) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_LEFT_RIGHT*)
        ((= const 8) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_RU_TURN*)
        ((= const 9) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_LU_TURN*)
        ((= const 10) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_RU_TURN*)
        ((= const 11) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_LU_TURN*)
        ((= const 12) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_RIGHT_RU_TURN*)
        ((= const 13) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_IN_AHEAD*)
        ((= const 14) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_LU_TURN_EX*)
        ((= const 15) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_RESERVED*)
        ((= const 16) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_LEFT_LU_TURN*)
        ((= const 17) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_RIGHT_LU_TURN*)
        ((= const 18) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_RIGHT_LU_TURN*)
        ((= const 19) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_AHEAD_RIGHT_LU_TURN*)
        ((= const 20) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_LEFT_RU_TURN*)
        ((= const 21) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_BUS*)
        ((= const 22) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_EMPTY*)
        ((= const 23) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_VARIABLE*)
        ((= const 24) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_DEDICATED*)
        ((= const 25) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_TIDAL*)
        ((= const 255) 'lane_navi_info_msgs::TBTLaneAction::*LANE_ACTION_NULL*)
        (t nil)))

(defclass lane_navi_info_msgs::TBTLaneAction
  :super ros::object
  :slots (_value ))

(defmethod lane_navi_info_msgs::TBTLaneAction
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

(setf (get lane_navi_info_msgs::TBTLaneAction :md5sum-) "d0ba199bb593aae807032ea729d94228")
(setf (get lane_navi_info_msgs::TBTLaneAction :datatype-) "lane_navi_info_msgs/TBTLaneAction")
(setf (get lane_navi_info_msgs::TBTLaneAction :definition-)
      "uint8 LANE_ACTION_AHEAD = 0
uint8 LANE_ACTION_LEFT = 1
uint8 LANE_ACTION_AHEAD_LEFT = 2
uint8 LANE_ACTION_RIGHT = 3
uint8 LANE_ACTION_AHEAD_RIGHT = 4
uint8 LANE_ACTION_LU_TURN = 5
uint8 LANE_ACTION_LEFT_RIGHT = 6
uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7
uint8 LANE_ACTION_RU_TURN = 8
uint8 LANE_ACTION_AHEAD_LU_TURN = 9
uint8 LANE_ACTION_AHEAD_RU_TURN = 10
uint8 LANE_ACTION_LEFT_LU_TURN = 11
uint8 LANE_ACTION_RIGHT_RU_TURN = 12
uint8 LANE_ACTION_LEFT_IN_AHEAD = 13
uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14
uint8 LANE_ACTION_RESERVED = 15
uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16
uint8 LANE_ACTION_RIGHT_LU_TURN = 17
uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18
uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19
uint8 LANE_ACTION_LEFT_RU_TURN = 20
uint8 LANE_ACTION_BUS = 21
uint8 LANE_ACTION_EMPTY = 22
uint8 LANE_ACTION_VARIABLE = 23
uint8 LANE_ACTION_DEDICATED = 24
uint8 LANE_ACTION_TIDAL = 25
uint8 LANE_ACTION_NULL = 255
uint8 value

")



(provide :lane_navi_info_msgs/TBTLaneAction "d0ba199bb593aae807032ea729d94228")


