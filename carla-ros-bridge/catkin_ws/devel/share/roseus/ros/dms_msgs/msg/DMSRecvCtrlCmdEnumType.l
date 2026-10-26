;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSRecvCtrlCmdEnumType)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSRecvCtrlCmdEnumType (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE")
  (make-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))

(in-package "ROS")
;;//! \htmlinclude DMSRecvCtrlCmdEnumType.msg.html


(intern "*DMS_DISTRACTION_RESET*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DISTRACTION_RESET* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_RESET* 1)
(intern "*DMS_DISTRACTION_PAUSE*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DISTRACTION_PAUSE* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_PAUSE* 2)
(intern "*DMS_DISTRACTION_NORMAL_SENSITIVITY*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DISTRACTION_NORMAL_SENSITIVITY* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_NORMAL_SENSITIVITY* 4)
(intern "*DMS_DISTRACTION_LOW_SENSITIVITY*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DISTRACTION_LOW_SENSITIVITY* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_LOW_SENSITIVITY* 5)
(intern "*DMS_DISTRACTION_HIGH_SENSITIVITY*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DISTRACTION_HIGH_SENSITIVITY* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_HIGH_SENSITIVITY* 6)
(intern "*DMS_DISTRACTION_RESERVED*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DISTRACTION_RESERVED* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_RESERVED* 7)
(intern "*DMS_DISTRACTION_RESERVED1*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DISTRACTION_RESERVED1* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_RESERVED1* 8)
(intern "*DMS_DROWSY_RESET*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DROWSY_RESET* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_RESET* 20)
(intern "*DMS_DROWSY_PAUSE*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DROWSY_PAUSE* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_PAUSE* 21)
(intern "*DMS_DROWSY_NORMAL_SENSITIVITY*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DROWSY_NORMAL_SENSITIVITY* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_NORMAL_SENSITIVITY* 22)
(intern "*DMS_DROWSY_LOW_SENSITIVITY*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DROWSY_LOW_SENSITIVITY* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_LOW_SENSITIVITY* 23)
(intern "*DMS_DROWSY_HIGH_SENSITIVITY*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DROWSY_HIGH_SENSITIVITY* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_HIGH_SENSITIVITY* 24)
(intern "*DMS_DROWSY_RESERVED*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DROWSY_RESERVED* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_RESERVED* 25)
(intern "*DMS_DROWSY_RESERVED1*" (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(shadow '*DMS_DROWSY_RESERVED1* (find-package "DMS_MSGS::DMSRECVCTRLCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_RESERVED1* 26)

(defun dms_msgs::DMSRecvCtrlCmdEnumType-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_RESET*)
        ((= const 2) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_PAUSE*)
        ((= const 4) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_NORMAL_SENSITIVITY*)
        ((= const 5) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_LOW_SENSITIVITY*)
        ((= const 6) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_HIGH_SENSITIVITY*)
        ((= const 7) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_RESERVED*)
        ((= const 8) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DISTRACTION_RESERVED1*)
        ((= const 20) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_RESET*)
        ((= const 21) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_PAUSE*)
        ((= const 22) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_NORMAL_SENSITIVITY*)
        ((= const 23) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_LOW_SENSITIVITY*)
        ((= const 24) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_HIGH_SENSITIVITY*)
        ((= const 25) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_RESERVED*)
        ((= const 26) 'dms_msgs::DMSRecvCtrlCmdEnumType::*DMS_DROWSY_RESERVED1*)
        (t nil)))

(defclass dms_msgs::DMSRecvCtrlCmdEnumType
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSRecvCtrlCmdEnumType
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

(setf (get dms_msgs::DMSRecvCtrlCmdEnumType :md5sum-) "372d237580a62eb1d13f8c0bdb848dc0")
(setf (get dms_msgs::DMSRecvCtrlCmdEnumType :datatype-) "dms_msgs/DMSRecvCtrlCmdEnumType")
(setf (get dms_msgs::DMSRecvCtrlCmdEnumType :definition-)
      "uint8 DMS_DISTRACTION_RESET = 1
uint8 DMS_DISTRACTION_PAUSE = 2
uint8 DMS_DISTRACTION_NORMAL_SENSITIVITY = 4
uint8 DMS_DISTRACTION_LOW_SENSITIVITY = 5
uint8 DMS_DISTRACTION_HIGH_SENSITIVITY = 6
uint8 DMS_DISTRACTION_RESERVED = 7
uint8 DMS_DISTRACTION_RESERVED1 = 8
uint8 DMS_DROWSY_RESET = 20
uint8 DMS_DROWSY_PAUSE = 21
uint8 DMS_DROWSY_NORMAL_SENSITIVITY = 22
uint8 DMS_DROWSY_LOW_SENSITIVITY = 23
uint8 DMS_DROWSY_HIGH_SENSITIVITY = 24
uint8 DMS_DROWSY_RESERVED = 25
uint8 DMS_DROWSY_RESERVED1 = 26
uint8 value

")



(provide :dms_msgs/DMSRecvCtrlCmdEnumType "372d237580a62eb1d13f8c0bdb848dc0")


