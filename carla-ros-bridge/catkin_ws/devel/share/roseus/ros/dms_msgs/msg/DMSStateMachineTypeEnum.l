;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSStateMachineTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSStateMachineTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM")
  (make-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSStateMachineTypeEnum.msg.html


(intern "*OFF*" (find-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM"))
(shadow '*OFF* (find-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSStateMachineTypeEnum::*OFF* 0)
(intern "*STANDBY*" (find-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM"))
(shadow '*STANDBY* (find-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSStateMachineTypeEnum::*STANDBY* 1)
(intern "*ACTIVE*" (find-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM"))
(shadow '*ACTIVE* (find-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSStateMachineTypeEnum::*ACTIVE* 2)
(intern "*FAILURE*" (find-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM"))
(shadow '*FAILURE* (find-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSStateMachineTypeEnum::*FAILURE* 3)
(intern "*UNKNOWN*" (find-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM"))
(shadow '*UNKNOWN* (find-package "DMS_MSGS::DMSSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSStateMachineTypeEnum::*UNKNOWN* 4)

(defun dms_msgs::DMSStateMachineTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSStateMachineTypeEnum::*OFF*)
        ((= const 1) 'dms_msgs::DMSStateMachineTypeEnum::*STANDBY*)
        ((= const 2) 'dms_msgs::DMSStateMachineTypeEnum::*ACTIVE*)
        ((= const 3) 'dms_msgs::DMSStateMachineTypeEnum::*FAILURE*)
        ((= const 4) 'dms_msgs::DMSStateMachineTypeEnum::*UNKNOWN*)
        (t nil)))

(defclass dms_msgs::DMSStateMachineTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSStateMachineTypeEnum
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

(setf (get dms_msgs::DMSStateMachineTypeEnum :md5sum-) "adf46f3d8a5ac9c98b9018c3b2fe794b")
(setf (get dms_msgs::DMSStateMachineTypeEnum :datatype-) "dms_msgs/DMSStateMachineTypeEnum")
(setf (get dms_msgs::DMSStateMachineTypeEnum :definition-)
      "uint8 OFF = 0
uint8 STANDBY = 1
uint8 ACTIVE = 2
uint8 FAILURE = 3
uint8 UNKNOWN = 4
uint8 value

")



(provide :dms_msgs/DMSStateMachineTypeEnum "adf46f3d8a5ac9c98b9018c3b2fe794b")


