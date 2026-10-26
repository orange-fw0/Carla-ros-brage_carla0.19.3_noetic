;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::CancelResponseTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'CancelResponseTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::CANCELRESPONSETYPEENUM")
  (make-package "DMS_MSGS::CANCELRESPONSETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude CancelResponseTypeEnum.msg.html


(intern "*NO_ACTION*" (find-package "DMS_MSGS::CANCELRESPONSETYPEENUM"))
(shadow '*NO_ACTION* (find-package "DMS_MSGS::CANCELRESPONSETYPEENUM"))
(defconstant dms_msgs::CancelResponseTypeEnum::*NO_ACTION* 0)
(intern "*CANCEL_SUCCESS*" (find-package "DMS_MSGS::CANCELRESPONSETYPEENUM"))
(shadow '*CANCEL_SUCCESS* (find-package "DMS_MSGS::CANCELRESPONSETYPEENUM"))
(defconstant dms_msgs::CancelResponseTypeEnum::*CANCEL_SUCCESS* 1)
(intern "*CANCEL_FAIL*" (find-package "DMS_MSGS::CANCELRESPONSETYPEENUM"))
(shadow '*CANCEL_FAIL* (find-package "DMS_MSGS::CANCELRESPONSETYPEENUM"))
(defconstant dms_msgs::CancelResponseTypeEnum::*CANCEL_FAIL* 2)
(intern "*RESERVED*" (find-package "DMS_MSGS::CANCELRESPONSETYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::CANCELRESPONSETYPEENUM"))
(defconstant dms_msgs::CancelResponseTypeEnum::*RESERVED* 3)
(intern "*RESERVED1*" (find-package "DMS_MSGS::CANCELRESPONSETYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::CANCELRESPONSETYPEENUM"))
(defconstant dms_msgs::CancelResponseTypeEnum::*RESERVED1* 4)

(defun dms_msgs::CancelResponseTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::CancelResponseTypeEnum::*NO_ACTION*)
        ((= const 1) 'dms_msgs::CancelResponseTypeEnum::*CANCEL_SUCCESS*)
        ((= const 2) 'dms_msgs::CancelResponseTypeEnum::*CANCEL_FAIL*)
        ((= const 3) 'dms_msgs::CancelResponseTypeEnum::*RESERVED*)
        ((= const 4) 'dms_msgs::CancelResponseTypeEnum::*RESERVED1*)
        (t nil)))

(defclass dms_msgs::CancelResponseTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::CancelResponseTypeEnum
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

(setf (get dms_msgs::CancelResponseTypeEnum :md5sum-) "644beb39adfc5c68c1fa7e369e937747")
(setf (get dms_msgs::CancelResponseTypeEnum :datatype-) "dms_msgs/CancelResponseTypeEnum")
(setf (get dms_msgs::CancelResponseTypeEnum :definition-)
      "uint8 NO_ACTION = 0
uint8 CANCEL_SUCCESS = 1
uint8 CANCEL_FAIL = 2
uint8 RESERVED = 3
uint8 RESERVED1 = 4
uint8 value

")



(provide :dms_msgs/CancelResponseTypeEnum "644beb39adfc5c68c1fa7e369e937747")


