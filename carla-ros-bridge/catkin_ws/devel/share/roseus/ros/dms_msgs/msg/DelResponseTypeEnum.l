;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DelResponseTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DelResponseTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DELRESPONSETYPEENUM")
  (make-package "DMS_MSGS::DELRESPONSETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DelResponseTypeEnum.msg.html


(intern "*NO_ACTION*" (find-package "DMS_MSGS::DELRESPONSETYPEENUM"))
(shadow '*NO_ACTION* (find-package "DMS_MSGS::DELRESPONSETYPEENUM"))
(defconstant dms_msgs::DelResponseTypeEnum::*NO_ACTION* 0)
(intern "*RESPOND_SUCCESS*" (find-package "DMS_MSGS::DELRESPONSETYPEENUM"))
(shadow '*RESPOND_SUCCESS* (find-package "DMS_MSGS::DELRESPONSETYPEENUM"))
(defconstant dms_msgs::DelResponseTypeEnum::*RESPOND_SUCCESS* 1)
(intern "*RESPOND_FAIL*" (find-package "DMS_MSGS::DELRESPONSETYPEENUM"))
(shadow '*RESPOND_FAIL* (find-package "DMS_MSGS::DELRESPONSETYPEENUM"))
(defconstant dms_msgs::DelResponseTypeEnum::*RESPOND_FAIL* 2)
(intern "*RESERVED*" (find-package "DMS_MSGS::DELRESPONSETYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DELRESPONSETYPEENUM"))
(defconstant dms_msgs::DelResponseTypeEnum::*RESERVED* 3)
(intern "*RESERVED1*" (find-package "DMS_MSGS::DELRESPONSETYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::DELRESPONSETYPEENUM"))
(defconstant dms_msgs::DelResponseTypeEnum::*RESERVED1* 4)

(defun dms_msgs::DelResponseTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DelResponseTypeEnum::*NO_ACTION*)
        ((= const 1) 'dms_msgs::DelResponseTypeEnum::*RESPOND_SUCCESS*)
        ((= const 2) 'dms_msgs::DelResponseTypeEnum::*RESPOND_FAIL*)
        ((= const 3) 'dms_msgs::DelResponseTypeEnum::*RESERVED*)
        ((= const 4) 'dms_msgs::DelResponseTypeEnum::*RESERVED1*)
        (t nil)))

(defclass dms_msgs::DelResponseTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DelResponseTypeEnum
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

(setf (get dms_msgs::DelResponseTypeEnum :md5sum-) "fef856f413f5fb02eef80d121dab1a06")
(setf (get dms_msgs::DelResponseTypeEnum :datatype-) "dms_msgs/DelResponseTypeEnum")
(setf (get dms_msgs::DelResponseTypeEnum :definition-)
      "uint8 NO_ACTION = 0
uint8 RESPOND_SUCCESS = 1
uint8 RESPOND_FAIL = 2
uint8 RESERVED = 3
uint8 RESERVED1 = 4
uint8 value

")



(provide :dms_msgs/DelResponseTypeEnum "fef856f413f5fb02eef80d121dab1a06")


