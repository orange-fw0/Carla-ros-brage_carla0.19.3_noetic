;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSRecvWaringCmdEnumType)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSRecvWaringCmdEnumType (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE")
  (make-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))

(in-package "ROS")
;;//! \htmlinclude DMSRecvWaringCmdEnumType.msg.html


(intern "*DROWSINESS_WARING_OFF*" (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(shadow '*DROWSINESS_WARING_OFF* (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvWaringCmdEnumType::*DROWSINESS_WARING_OFF* 1)
(intern "*DROWSINESS_WARING_ON*" (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(shadow '*DROWSINESS_WARING_ON* (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvWaringCmdEnumType::*DROWSINESS_WARING_ON* 2)
(intern "*DISTRACTION_WARING_OFF*" (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(shadow '*DISTRACTION_WARING_OFF* (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvWaringCmdEnumType::*DISTRACTION_WARING_OFF* 4)
(intern "*DISTRACTION_WARING_ON*" (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(shadow '*DISTRACTION_WARING_ON* (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvWaringCmdEnumType::*DISTRACTION_WARING_ON* 8)
(intern "*ABNORMAL_BEHAVIOR_WARING_OFF*" (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(shadow '*ABNORMAL_BEHAVIOR_WARING_OFF* (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvWaringCmdEnumType::*ABNORMAL_BEHAVIOR_WARING_OFF* 16)
(intern "*ABNORMAL_BEHAVIOR_WARING_ON*" (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(shadow '*ABNORMAL_BEHAVIOR_WARING_ON* (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvWaringCmdEnumType::*ABNORMAL_BEHAVIOR_WARING_ON* 32)
(intern "*HEALTH_WARING_OFF*" (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(shadow '*HEALTH_WARING_OFF* (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvWaringCmdEnumType::*HEALTH_WARING_OFF* 64)
(intern "*HEALTH_WARING_ON*" (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(shadow '*HEALTH_WARING_ON* (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvWaringCmdEnumType::*HEALTH_WARING_ON* 128)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvWaringCmdEnumType::*RESERVED* 256)
(intern "*RESERVED1*" (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvWaringCmdEnumType::*RESERVED1* 512)
(intern "*RESERVED2*" (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(shadow '*RESERVED2* (find-package "DMS_MSGS::DMSRECVWARINGCMDENUMTYPE"))
(defconstant dms_msgs::DMSRecvWaringCmdEnumType::*RESERVED2* 1024)

(defun dms_msgs::DMSRecvWaringCmdEnumType-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSRecvWaringCmdEnumType::*DROWSINESS_WARING_OFF*)
        ((= const 2) 'dms_msgs::DMSRecvWaringCmdEnumType::*DROWSINESS_WARING_ON*)
        ((= const 4) 'dms_msgs::DMSRecvWaringCmdEnumType::*DISTRACTION_WARING_OFF*)
        ((= const 8) 'dms_msgs::DMSRecvWaringCmdEnumType::*DISTRACTION_WARING_ON*)
        ((= const 16) 'dms_msgs::DMSRecvWaringCmdEnumType::*ABNORMAL_BEHAVIOR_WARING_OFF*)
        ((= const 32) 'dms_msgs::DMSRecvWaringCmdEnumType::*ABNORMAL_BEHAVIOR_WARING_ON*)
        ((= const 64) 'dms_msgs::DMSRecvWaringCmdEnumType::*HEALTH_WARING_OFF*)
        ((= const 128) 'dms_msgs::DMSRecvWaringCmdEnumType::*HEALTH_WARING_ON*)
        ((= const 256) 'dms_msgs::DMSRecvWaringCmdEnumType::*RESERVED*)
        ((= const 512) 'dms_msgs::DMSRecvWaringCmdEnumType::*RESERVED1*)
        ((= const 1024) 'dms_msgs::DMSRecvWaringCmdEnumType::*RESERVED2*)
        (t nil)))

(defclass dms_msgs::DMSRecvWaringCmdEnumType
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSRecvWaringCmdEnumType
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

(setf (get dms_msgs::DMSRecvWaringCmdEnumType :md5sum-) "bac8085387035dfd71a6f096a0b1d8ed")
(setf (get dms_msgs::DMSRecvWaringCmdEnumType :datatype-) "dms_msgs/DMSRecvWaringCmdEnumType")
(setf (get dms_msgs::DMSRecvWaringCmdEnumType :definition-)
      "uint16 DROWSINESS_WARING_OFF = 1
uint16 DROWSINESS_WARING_ON = 2
uint16 DISTRACTION_WARING_OFF = 4
uint16 DISTRACTION_WARING_ON = 8
uint16 ABNORMAL_BEHAVIOR_WARING_OFF = 16
uint16 ABNORMAL_BEHAVIOR_WARING_ON = 32
uint16 HEALTH_WARING_OFF = 64
uint16 HEALTH_WARING_ON = 128
uint16 RESERVED = 256
uint16 RESERVED1 = 512
uint16 RESERVED2 = 1024
uint16 value

")



(provide :dms_msgs/DMSRecvWaringCmdEnumType "bac8085387035dfd71a6f096a0b1d8ed")


