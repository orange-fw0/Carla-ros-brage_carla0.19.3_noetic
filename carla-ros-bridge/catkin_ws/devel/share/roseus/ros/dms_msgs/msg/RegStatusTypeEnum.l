;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::RegStatusTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'RegStatusTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::REGSTATUSTYPEENUM")
  (make-package "DMS_MSGS::REGSTATUSTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RegStatusTypeEnum.msg.html


(intern "*NO_ACTION*" (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(shadow '*NO_ACTION* (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(defconstant dms_msgs::RegStatusTypeEnum::*NO_ACTION* 0)
(intern "*REGISTERING*" (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(shadow '*REGISTERING* (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(defconstant dms_msgs::RegStatusTypeEnum::*REGISTERING* 1)
(intern "*REGISTER_SUCCESS*" (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(shadow '*REGISTER_SUCCESS* (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(defconstant dms_msgs::RegStatusTypeEnum::*REGISTER_SUCCESS* 2)
(intern "*REGISTER_FAIL*" (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(shadow '*REGISTER_FAIL* (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(defconstant dms_msgs::RegStatusTypeEnum::*REGISTER_FAIL* 3)
(intern "*RESERVED*" (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(defconstant dms_msgs::RegStatusTypeEnum::*RESERVED* 4)
(intern "*RESERVED1*" (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::REGSTATUSTYPEENUM"))
(defconstant dms_msgs::RegStatusTypeEnum::*RESERVED1* 5)

(defun dms_msgs::RegStatusTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::RegStatusTypeEnum::*NO_ACTION*)
        ((= const 1) 'dms_msgs::RegStatusTypeEnum::*REGISTERING*)
        ((= const 2) 'dms_msgs::RegStatusTypeEnum::*REGISTER_SUCCESS*)
        ((= const 3) 'dms_msgs::RegStatusTypeEnum::*REGISTER_FAIL*)
        ((= const 4) 'dms_msgs::RegStatusTypeEnum::*RESERVED*)
        ((= const 5) 'dms_msgs::RegStatusTypeEnum::*RESERVED1*)
        (t nil)))

(defclass dms_msgs::RegStatusTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::RegStatusTypeEnum
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

(setf (get dms_msgs::RegStatusTypeEnum :md5sum-) "e21e2a8858847299b0070cc55e8774b2")
(setf (get dms_msgs::RegStatusTypeEnum :datatype-) "dms_msgs/RegStatusTypeEnum")
(setf (get dms_msgs::RegStatusTypeEnum :definition-)
      "uint8 NO_ACTION = 0
uint8 REGISTERING = 1
uint8 REGISTER_SUCCESS = 2
uint8 REGISTER_FAIL = 3
uint8 RESERVED = 4
uint8 RESERVED1 = 5
uint8 value

")



(provide :dms_msgs/RegStatusTypeEnum "e21e2a8858847299b0070cc55e8774b2")


