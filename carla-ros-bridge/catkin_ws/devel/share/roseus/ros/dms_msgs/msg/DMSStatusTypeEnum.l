;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSStatusTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSStatusTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSSTATUSTYPEENUM")
  (make-package "DMS_MSGS::DMSSTATUSTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSStatusTypeEnum.msg.html


(intern "*UNKNOWN*" (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(shadow '*UNKNOWN* (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSStatusTypeEnum::*UNKNOWN* 0)
(intern "*INITIALIZING*" (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(shadow '*INITIALIZING* (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSStatusTypeEnum::*INITIALIZING* 1)
(intern "*INTERNAL_FAULT*" (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(shadow '*INTERNAL_FAULT* (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSStatusTypeEnum::*INTERNAL_FAULT* 2)
(intern "*EXTERNAL_FAULT*" (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(shadow '*EXTERNAL_FAULT* (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSStatusTypeEnum::*EXTERNAL_FAULT* 3)
(intern "*INVALID_ENVIRONMENT*" (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(shadow '*INVALID_ENVIRONMENT* (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSStatusTypeEnum::*INVALID_ENVIRONMENT* 4)
(intern "*AUTHENTICATION_FAIL*" (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(shadow '*AUTHENTICATION_FAIL* (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSStatusTypeEnum::*AUTHENTICATION_FAIL* 5)
(intern "*INITIALIZ_OK*" (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(shadow '*INITIALIZ_OK* (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSStatusTypeEnum::*INITIALIZ_OK* 6)
(intern "*INITIALIZ_FAIL*" (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(shadow '*INITIALIZ_FAIL* (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSStatusTypeEnum::*INITIALIZ_FAIL* 7)
(intern "*RUNNING_OK*" (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(shadow '*RUNNING_OK* (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSStatusTypeEnum::*RUNNING_OK* 8)
(intern "*RUNNING_FAIL*" (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(shadow '*RUNNING_FAIL* (find-package "DMS_MSGS::DMSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSStatusTypeEnum::*RUNNING_FAIL* 9)

(defun dms_msgs::DMSStatusTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSStatusTypeEnum::*UNKNOWN*)
        ((= const 1) 'dms_msgs::DMSStatusTypeEnum::*INITIALIZING*)
        ((= const 2) 'dms_msgs::DMSStatusTypeEnum::*INTERNAL_FAULT*)
        ((= const 3) 'dms_msgs::DMSStatusTypeEnum::*EXTERNAL_FAULT*)
        ((= const 4) 'dms_msgs::DMSStatusTypeEnum::*INVALID_ENVIRONMENT*)
        ((= const 5) 'dms_msgs::DMSStatusTypeEnum::*AUTHENTICATION_FAIL*)
        ((= const 6) 'dms_msgs::DMSStatusTypeEnum::*INITIALIZ_OK*)
        ((= const 7) 'dms_msgs::DMSStatusTypeEnum::*INITIALIZ_FAIL*)
        ((= const 8) 'dms_msgs::DMSStatusTypeEnum::*RUNNING_OK*)
        ((= const 9) 'dms_msgs::DMSStatusTypeEnum::*RUNNING_FAIL*)
        (t nil)))

(defclass dms_msgs::DMSStatusTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSStatusTypeEnum
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

(setf (get dms_msgs::DMSStatusTypeEnum :md5sum-) "5d0a7c0b1ee6e9baf81d765548603d71")
(setf (get dms_msgs::DMSStatusTypeEnum :datatype-) "dms_msgs/DMSStatusTypeEnum")
(setf (get dms_msgs::DMSStatusTypeEnum :definition-)
      "uint8 UNKNOWN = 0
uint8 INITIALIZING = 1
uint8 INTERNAL_FAULT = 2
uint8 EXTERNAL_FAULT = 3
uint8 INVALID_ENVIRONMENT = 4
uint8 AUTHENTICATION_FAIL = 5
uint8 INITIALIZ_OK = 6
uint8 INITIALIZ_FAIL = 7
uint8 RUNNING_OK = 8
uint8 RUNNING_FAIL = 9
uint8 value

")



(provide :dms_msgs/DMSStatusTypeEnum "5d0a7c0b1ee6e9baf81d765548603d71")


