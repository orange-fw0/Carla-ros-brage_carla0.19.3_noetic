;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::TBTMainAction)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'TBTMainAction (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION")
  (make-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))

(in-package "ROS")
;;//! \htmlinclude TBTMainAction.msg.html


(intern "*MAINACTIONNULL*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONNULL* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONNULL* 0)
(intern "*MAINACTIONTURNLEFT*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONTURNLEFT* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONTURNLEFT* 1)
(intern "*MAINACTIONTURNRIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONTURNRIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONTURNRIGHT* 2)
(intern "*MAINACTIONSLIGHTLEFT*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONSLIGHTLEFT* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONSLIGHTLEFT* 3)
(intern "*MAINACTIONSLIGHTRIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONSLIGHTRIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONSLIGHTRIGHT* 4)
(intern "*MAINACTIONTURNHARDLEFT*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONTURNHARDLEFT* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONTURNHARDLEFT* 5)
(intern "*MAINACTIONTURNHARDRIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONTURNHARDRIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONTURNHARDRIGHT* 6)
(intern "*MAINACTIONUTURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONUTURN* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONUTURN* 7)
(intern "*MAINACTIONCONTINUE*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONCONTINUE* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONCONTINUE* 8)
(intern "*MAINACTIONMERGELEFT*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONMERGELEFT* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONMERGELEFT* 9)
(intern "*MAINACTIONMERGERIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONMERGERIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONMERGERIGHT* 10)
(intern "*MAINACTIONENTRYRING*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONENTRYRING* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONENTRYRING* 11)
(intern "*MAINACTIONLEAVERING*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONLEAVERING* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONLEAVERING* 12)
(intern "*MAINACTIONSLOW*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONSLOW* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONSLOW* 13)
(intern "*MAINACTIONPLUGCONTINUE*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONPLUGCONTINUE* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONPLUGCONTINUE* 14)
(intern "*MAINACTIONENTERBUILDING*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONENTERBUILDING* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONENTERBUILDING* 65)
(intern "*MAINACTIONLEAVEBUILDING*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONLEAVEBUILDING* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONLEAVEBUILDING* 66)
(intern "*MAINACTIONBYELEVATOR*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONBYELEVATOR* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONBYELEVATOR* 67)
(intern "*MAINACTIONBYSTAIR*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONBYSTAIR* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONBYSTAIR* 68)
(intern "*MAINACTIONBYESCALATOR*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONBYESCALATOR* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONBYESCALATOR* 69)
(intern "*MAINACTIONCOUNT*" (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(shadow '*MAINACTIONCOUNT* (find-package "LANE_NAVI_INFO_MSGS::TBTMAINACTION"))
(defconstant lane_navi_info_msgs::TBTMainAction::*MAINACTIONCOUNT* 70)

(defun lane_navi_info_msgs::TBTMainAction-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::TBTMainAction::*MainActionNULL*)
        ((= const 1) 'lane_navi_info_msgs::TBTMainAction::*MainActionTurnLeft*)
        ((= const 2) 'lane_navi_info_msgs::TBTMainAction::*MainActionTurnRight*)
        ((= const 3) 'lane_navi_info_msgs::TBTMainAction::*MainActionSlightLeft*)
        ((= const 4) 'lane_navi_info_msgs::TBTMainAction::*MainActionSlightRight*)
        ((= const 5) 'lane_navi_info_msgs::TBTMainAction::*MainActionTurnHardLeft*)
        ((= const 6) 'lane_navi_info_msgs::TBTMainAction::*MainActionTurnHardRight*)
        ((= const 7) 'lane_navi_info_msgs::TBTMainAction::*MainActionUTurn*)
        ((= const 8) 'lane_navi_info_msgs::TBTMainAction::*MainActionContinue*)
        ((= const 9) 'lane_navi_info_msgs::TBTMainAction::*MainActionMergeLeft*)
        ((= const 10) 'lane_navi_info_msgs::TBTMainAction::*MainActionMergeRight*)
        ((= const 11) 'lane_navi_info_msgs::TBTMainAction::*MainActionEntryRing*)
        ((= const 12) 'lane_navi_info_msgs::TBTMainAction::*MainActionLeaveRing*)
        ((= const 13) 'lane_navi_info_msgs::TBTMainAction::*MainActionSlow*)
        ((= const 14) 'lane_navi_info_msgs::TBTMainAction::*MainActionPlugContinue*)
        ((= const 65) 'lane_navi_info_msgs::TBTMainAction::*MainActionEnterBuilding*)
        ((= const 66) 'lane_navi_info_msgs::TBTMainAction::*MainActionLeaveBuilding*)
        ((= const 67) 'lane_navi_info_msgs::TBTMainAction::*MainActionByElevator*)
        ((= const 68) 'lane_navi_info_msgs::TBTMainAction::*MainActionByStair*)
        ((= const 69) 'lane_navi_info_msgs::TBTMainAction::*MainActionByEscalator*)
        ((= const 70) 'lane_navi_info_msgs::TBTMainAction::*MainActionCount*)
        (t nil)))

(defclass lane_navi_info_msgs::TBTMainAction
  :super ros::object
  :slots (_value ))

(defmethod lane_navi_info_msgs::TBTMainAction
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
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::TBTMainAction :md5sum-) "131551752205e5e351b7ddb2d49fa66a")
(setf (get lane_navi_info_msgs::TBTMainAction :datatype-) "lane_navi_info_msgs/TBTMainAction")
(setf (get lane_navi_info_msgs::TBTMainAction :definition-)
      "uint16 MainActionNULL = 0
uint16 MainActionTurnLeft = 1
uint16 MainActionTurnRight = 2
uint16 MainActionSlightLeft = 3
uint16 MainActionSlightRight = 4
uint16 MainActionTurnHardLeft = 5
uint16 MainActionTurnHardRight = 6
uint16 MainActionUTurn = 7
uint16 MainActionContinue = 8
uint16 MainActionMergeLeft = 9
uint16 MainActionMergeRight = 10
uint16 MainActionEntryRing = 11
uint16 MainActionLeaveRing = 12
uint16 MainActionSlow = 13
uint16 MainActionPlugContinue = 14
uint16 MainActionEnterBuilding = 65
uint16 MainActionLeaveBuilding = 66
uint16 MainActionByElevator = 67
uint16 MainActionByStair = 68
uint16 MainActionByEscalator = 69
uint16 MainActionCount = 70
uint16 value

")



(provide :lane_navi_info_msgs/TBTMainAction "131551752205e5e351b7ddb2d49fa66a")


