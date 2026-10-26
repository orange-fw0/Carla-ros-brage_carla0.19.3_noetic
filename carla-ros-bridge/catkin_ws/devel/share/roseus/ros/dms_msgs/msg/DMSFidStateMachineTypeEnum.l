;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFidStateMachineTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFidStateMachineTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM")
  (make-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSFidStateMachineTypeEnum.msg.html


(intern "*OFF*" (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(shadow '*OFF* (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSFidStateMachineTypeEnum::*OFF* 0)
(intern "*PASSIVE*" (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(shadow '*PASSIVE* (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSFidStateMachineTypeEnum::*PASSIVE* 1)
(intern "*STANDBY*" (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(shadow '*STANDBY* (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSFidStateMachineTypeEnum::*STANDBY* 2)
(intern "*REGISTRATION*" (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(shadow '*REGISTRATION* (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSFidStateMachineTypeEnum::*REGISTRATION* 3)
(intern "*RECOGNITION*" (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(shadow '*RECOGNITION* (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSFidStateMachineTypeEnum::*RECOGNITION* 4)
(intern "*DELETE*" (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(shadow '*DELETE* (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSFidStateMachineTypeEnum::*DELETE* 5)
(intern "*FAILURE*" (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(shadow '*FAILURE* (find-package "DMS_MSGS::DMSFIDSTATEMACHINETYPEENUM"))
(defconstant dms_msgs::DMSFidStateMachineTypeEnum::*FAILURE* 6)

(defun dms_msgs::DMSFidStateMachineTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSFidStateMachineTypeEnum::*OFF*)
        ((= const 1) 'dms_msgs::DMSFidStateMachineTypeEnum::*PASSIVE*)
        ((= const 2) 'dms_msgs::DMSFidStateMachineTypeEnum::*STANDBY*)
        ((= const 3) 'dms_msgs::DMSFidStateMachineTypeEnum::*REGISTRATION*)
        ((= const 4) 'dms_msgs::DMSFidStateMachineTypeEnum::*RECOGNITION*)
        ((= const 5) 'dms_msgs::DMSFidStateMachineTypeEnum::*DELETE*)
        ((= const 6) 'dms_msgs::DMSFidStateMachineTypeEnum::*FAILURE*)
        (t nil)))

(defclass dms_msgs::DMSFidStateMachineTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSFidStateMachineTypeEnum
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

(setf (get dms_msgs::DMSFidStateMachineTypeEnum :md5sum-) "b5dc259366d7a8083430b143340e1de6")
(setf (get dms_msgs::DMSFidStateMachineTypeEnum :datatype-) "dms_msgs/DMSFidStateMachineTypeEnum")
(setf (get dms_msgs::DMSFidStateMachineTypeEnum :definition-)
      "uint8 OFF = 0
uint8 PASSIVE = 1
uint8 STANDBY = 2
uint8 REGISTRATION = 3
uint8 RECOGNITION = 4
uint8 DELETE = 5
uint8 FAILURE = 6
uint8 value

")



(provide :dms_msgs/DMSFidStateMachineTypeEnum "b5dc259366d7a8083430b143340e1de6")


