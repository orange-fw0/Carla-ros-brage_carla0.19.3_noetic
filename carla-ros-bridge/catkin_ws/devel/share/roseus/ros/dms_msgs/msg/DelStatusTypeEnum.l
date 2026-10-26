;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DelStatusTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DelStatusTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DELSTATUSTYPEENUM")
  (make-package "DMS_MSGS::DELSTATUSTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DelStatusTypeEnum.msg.html


(intern "*DEL_FAIL*" (find-package "DMS_MSGS::DELSTATUSTYPEENUM"))
(shadow '*DEL_FAIL* (find-package "DMS_MSGS::DELSTATUSTYPEENUM"))
(defconstant dms_msgs::DelStatusTypeEnum::*DEL_FAIL* 0)
(intern "*DELETING*" (find-package "DMS_MSGS::DELSTATUSTYPEENUM"))
(shadow '*DELETING* (find-package "DMS_MSGS::DELSTATUSTYPEENUM"))
(defconstant dms_msgs::DelStatusTypeEnum::*DELETING* 1)
(intern "*DEL_SUCCESS*" (find-package "DMS_MSGS::DELSTATUSTYPEENUM"))
(shadow '*DEL_SUCCESS* (find-package "DMS_MSGS::DELSTATUSTYPEENUM"))
(defconstant dms_msgs::DelStatusTypeEnum::*DEL_SUCCESS* 2)
(intern "*RESERVED*" (find-package "DMS_MSGS::DELSTATUSTYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DELSTATUSTYPEENUM"))
(defconstant dms_msgs::DelStatusTypeEnum::*RESERVED* 3)
(intern "*RESERVED1*" (find-package "DMS_MSGS::DELSTATUSTYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::DELSTATUSTYPEENUM"))
(defconstant dms_msgs::DelStatusTypeEnum::*RESERVED1* 4)

(defun dms_msgs::DelStatusTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DelStatusTypeEnum::*DEL_FAIL*)
        ((= const 1) 'dms_msgs::DelStatusTypeEnum::*DELETING*)
        ((= const 2) 'dms_msgs::DelStatusTypeEnum::*DEL_SUCCESS*)
        ((= const 3) 'dms_msgs::DelStatusTypeEnum::*RESERVED*)
        ((= const 4) 'dms_msgs::DelStatusTypeEnum::*RESERVED1*)
        (t nil)))

(defclass dms_msgs::DelStatusTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DelStatusTypeEnum
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

(setf (get dms_msgs::DelStatusTypeEnum :md5sum-) "dd48aac790c21a1c3ff24bca660485e9")
(setf (get dms_msgs::DelStatusTypeEnum :datatype-) "dms_msgs/DelStatusTypeEnum")
(setf (get dms_msgs::DelStatusTypeEnum :definition-)
      "uint8 DEL_FAIL = 0
uint8 DELETING = 1
uint8 DEL_SUCCESS = 2
uint8 RESERVED = 3
uint8 RESERVED1 = 4
uint8 value

")



(provide :dms_msgs/DelStatusTypeEnum "dd48aac790c21a1c3ff24bca660485e9")


