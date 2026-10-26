;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::LaneActionEnum)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'LaneActionEnum (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::LANEACTIONENUM")
  (make-package "TBT_MSGS::LANEACTIONENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneActionEnum.msg.html


(intern "*LANEACTIONAHEAD*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONAHEAD* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONAHEAD* 0)
(intern "*LANEACTIONLEFT*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONLEFT* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONLEFT* 1)
(intern "*LANEACTIONAHEADLEFT*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONAHEADLEFT* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONAHEADLEFT* 2)
(intern "*LANEACTIONRIGHT*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONRIGHT* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONRIGHT* 3)
(intern "*LANEACTIONAHEADRIGHT*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONAHEADRIGHT* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONAHEADRIGHT* 4)
(intern "*LANEACTIONLUTURN*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONLUTURN* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONLUTURN* 5)
(intern "*LANEACTIONLEFTRIGH*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONLEFTRIGH* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONLEFTRIGH* 6)
(intern "*LANEACTIONAHEADLEFTRIGHT*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONAHEADLEFTRIGHT* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONAHEADLEFTRIGHT* 7)
(intern "*LANEACTIONRUTURN*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONRUTURN* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONRUTURN* 8)
(intern "*LANEACTIONAHEADLUTURN*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONAHEADLUTURN* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONAHEADLUTURN* 9)
(intern "*LANEACTIONAHEADRUTURN*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONAHEADRUTURN* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONAHEADRUTURN* 10)
(intern "*LANEACTIONLEFTLUTURN*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONLEFTLUTURN* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONLEFTLUTURN* 11)
(intern "*LANEACTIONRIGHTRUTURN*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONRIGHTRUTURN* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONRIGHTRUTURN* 12)
(intern "*LANEACTIONLEFTINAHEAD*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONLEFTINAHEAD* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONLEFTINAHEAD* 13)
(intern "*LANEACTIONLEFTLUTURNLEX*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONLEFTLUTURNLEX* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONLEFTLUTURNLEX* 14)
(intern "*LANEACTIONRESERVED*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONRESERVED* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONRESERVED* 15)
(intern "*LANEACTIONAHEADLEFTLUTURN*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONAHEADLEFTLUTURN* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONAHEADLEFTLUTURN* 16)
(intern "*LANEACTIONRIGHTLUTURN*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONRIGHTLUTURN* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONRIGHTLUTURN* 17)
(intern "*LANEACTIONLEFTRIGHTLUTURN*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONLEFTRIGHTLUTURN* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONLEFTRIGHTLUTURN* 18)
(intern "*LANEACTIONAHEADRIGHTLUTURN*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONAHEADRIGHTLUTURN* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONAHEADRIGHTLUTURN* 19)
(intern "*LANEACTIONLEFTRUTURN*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONLEFTRUTURN* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONLEFTRUTURN* 20)
(intern "*LANEACTIONBUS*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONBUS* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONBUS* 21)
(intern "*LANEACTIONEMPTY*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONEMPTY* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONEMPTY* 22)
(intern "*LANEACTIONVARIABLE*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONVARIABLE* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONVARIABLE* 23)
(intern "*LANEACTIONNULL*" (find-package "TBT_MSGS::LANEACTIONENUM"))
(shadow '*LANEACTIONNULL* (find-package "TBT_MSGS::LANEACTIONENUM"))
(defconstant tbt_msgs::LaneActionEnum::*LANEACTIONNULL* 255)

(defun tbt_msgs::LaneActionEnum-to-symbol (const)
  (cond
        ((= const 0) 'tbt_msgs::LaneActionEnum::*LaneActionAhead*)
        ((= const 1) 'tbt_msgs::LaneActionEnum::*LaneActionLeft*)
        ((= const 2) 'tbt_msgs::LaneActionEnum::*LaneActionAheadLeft*)
        ((= const 3) 'tbt_msgs::LaneActionEnum::*LaneActionRight*)
        ((= const 4) 'tbt_msgs::LaneActionEnum::*LaneActionAheadRight*)
        ((= const 5) 'tbt_msgs::LaneActionEnum::*LaneActionLUTurn*)
        ((= const 6) 'tbt_msgs::LaneActionEnum::*LaneActionLeftRigh*)
        ((= const 7) 'tbt_msgs::LaneActionEnum::*LaneActionAheadLeftRight*)
        ((= const 8) 'tbt_msgs::LaneActionEnum::*LaneActionRUTurn*)
        ((= const 9) 'tbt_msgs::LaneActionEnum::*LaneActionAheadLUTurn*)
        ((= const 10) 'tbt_msgs::LaneActionEnum::*LaneActionAheadRUTurn*)
        ((= const 11) 'tbt_msgs::LaneActionEnum::*LaneActionLeftLUTurn*)
        ((= const 12) 'tbt_msgs::LaneActionEnum::*LaneActionRightRUTurn*)
        ((= const 13) 'tbt_msgs::LaneActionEnum::*LaneActionLeftInAhead*)
        ((= const 14) 'tbt_msgs::LaneActionEnum::*LaneActionLeftLUTurnLEx*)
        ((= const 15) 'tbt_msgs::LaneActionEnum::*LaneActionReserved*)
        ((= const 16) 'tbt_msgs::LaneActionEnum::*LaneActionAheadLeftLUTurn*)
        ((= const 17) 'tbt_msgs::LaneActionEnum::*LaneActionRightLUTurn*)
        ((= const 18) 'tbt_msgs::LaneActionEnum::*LaneActionLeftRightLUTurn*)
        ((= const 19) 'tbt_msgs::LaneActionEnum::*LaneActionAheadRightLUTurn*)
        ((= const 20) 'tbt_msgs::LaneActionEnum::*LaneActionLeftRUTurn*)
        ((= const 21) 'tbt_msgs::LaneActionEnum::*LaneActionBus*)
        ((= const 22) 'tbt_msgs::LaneActionEnum::*LaneActionEmpty*)
        ((= const 23) 'tbt_msgs::LaneActionEnum::*LaneActionVariable*)
        ((= const 255) 'tbt_msgs::LaneActionEnum::*LaneActionNULL*)
        (t nil)))

(defclass tbt_msgs::LaneActionEnum
  :super ros::object
  :slots (_value ))

(defmethod tbt_msgs::LaneActionEnum
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

(setf (get tbt_msgs::LaneActionEnum :md5sum-) "382832d4819bfde2d55fca448b8bea7b")
(setf (get tbt_msgs::LaneActionEnum :datatype-) "tbt_msgs/LaneActionEnum")
(setf (get tbt_msgs::LaneActionEnum :definition-)
      "uint8 LaneActionAhead = 0
uint8 LaneActionLeft = 1
uint8 LaneActionAheadLeft = 2
uint8 LaneActionRight = 3
uint8 LaneActionAheadRight = 4
uint8 LaneActionLUTurn = 5
uint8 LaneActionLeftRigh = 6
uint8 LaneActionAheadLeftRight = 7
uint8 LaneActionRUTurn = 8
uint8 LaneActionAheadLUTurn = 9
uint8 LaneActionAheadRUTurn = 10
uint8 LaneActionLeftLUTurn = 11
uint8 LaneActionRightRUTurn = 12
uint8 LaneActionLeftInAhead = 13
uint8 LaneActionLeftLUTurnLEx = 14
uint8 LaneActionReserved = 15
uint8 LaneActionAheadLeftLUTurn = 16
uint8 LaneActionRightLUTurn = 17
uint8 LaneActionLeftRightLUTurn = 18
uint8 LaneActionAheadRightLUTurn = 19
uint8 LaneActionLeftRUTurn = 20
uint8 LaneActionBus = 21
uint8 LaneActionEmpty = 22
uint8 LaneActionVariable = 23
uint8 LaneActionNULL = 255
uint8 value

")



(provide :tbt_msgs/LaneActionEnum "382832d4819bfde2d55fca448b8bea7b")


