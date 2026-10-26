;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFunctionLimitedTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFunctionLimitedTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFUNCTIONLIMITEDTYPEENUM")
  (make-package "DMS_MSGS::DMSFUNCTIONLIMITEDTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSFunctionLimitedTypeEnum.msg.html


(intern "*DMS_NORMAL_FUNCTION_STATE*" (find-package "DMS_MSGS::DMSFUNCTIONLIMITEDTYPEENUM"))
(shadow '*DMS_NORMAL_FUNCTION_STATE* (find-package "DMS_MSGS::DMSFUNCTIONLIMITEDTYPEENUM"))
(defconstant dms_msgs::DMSFunctionLimitedTypeEnum::*DMS_NORMAL_FUNCTION_STATE* 0)
(intern "*DMS_LIMITED_FUNCTION_STATE*" (find-package "DMS_MSGS::DMSFUNCTIONLIMITEDTYPEENUM"))
(shadow '*DMS_LIMITED_FUNCTION_STATE* (find-package "DMS_MSGS::DMSFUNCTIONLIMITEDTYPEENUM"))
(defconstant dms_msgs::DMSFunctionLimitedTypeEnum::*DMS_LIMITED_FUNCTION_STATE* 1)
(intern "*DMS_FUNCTION_LIMIT_RESERVERD_STATE*" (find-package "DMS_MSGS::DMSFUNCTIONLIMITEDTYPEENUM"))
(shadow '*DMS_FUNCTION_LIMIT_RESERVERD_STATE* (find-package "DMS_MSGS::DMSFUNCTIONLIMITEDTYPEENUM"))
(defconstant dms_msgs::DMSFunctionLimitedTypeEnum::*DMS_FUNCTION_LIMIT_RESERVERD_STATE* 2)

(defun dms_msgs::DMSFunctionLimitedTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSFunctionLimitedTypeEnum::*DMS_NORMAL_FUNCTION_STATE*)
        ((= const 1) 'dms_msgs::DMSFunctionLimitedTypeEnum::*DMS_LIMITED_FUNCTION_STATE*)
        ((= const 2) 'dms_msgs::DMSFunctionLimitedTypeEnum::*DMS_FUNCTION_LIMIT_RESERVERD_STATE*)
        (t nil)))

(defclass dms_msgs::DMSFunctionLimitedTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSFunctionLimitedTypeEnum
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

(setf (get dms_msgs::DMSFunctionLimitedTypeEnum :md5sum-) "0aee695f20be5e0034b84bc87bcea8ff")
(setf (get dms_msgs::DMSFunctionLimitedTypeEnum :datatype-) "dms_msgs/DMSFunctionLimitedTypeEnum")
(setf (get dms_msgs::DMSFunctionLimitedTypeEnum :definition-)
      "uint8 DMS_NORMAL_FUNCTION_STATE = 0
uint8 DMS_LIMITED_FUNCTION_STATE = 1
uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2
uint8 value

")



(provide :dms_msgs/DMSFunctionLimitedTypeEnum "0aee695f20be5e0034b84bc87bcea8ff")


