;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::RegResponseTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'RegResponseTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::REGRESPONSETYPEENUM")
  (make-package "DMS_MSGS::REGRESPONSETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RegResponseTypeEnum.msg.html


(intern "*RESPOND_FAIL*" (find-package "DMS_MSGS::REGRESPONSETYPEENUM"))
(shadow '*RESPOND_FAIL* (find-package "DMS_MSGS::REGRESPONSETYPEENUM"))
(defconstant dms_msgs::RegResponseTypeEnum::*RESPOND_FAIL* 0)
(intern "*RESPOND_SUCCESS*" (find-package "DMS_MSGS::REGRESPONSETYPEENUM"))
(shadow '*RESPOND_SUCCESS* (find-package "DMS_MSGS::REGRESPONSETYPEENUM"))
(defconstant dms_msgs::RegResponseTypeEnum::*RESPOND_SUCCESS* 1)
(intern "*RESERVED*" (find-package "DMS_MSGS::REGRESPONSETYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::REGRESPONSETYPEENUM"))
(defconstant dms_msgs::RegResponseTypeEnum::*RESERVED* 2)
(intern "*RESERVED1*" (find-package "DMS_MSGS::REGRESPONSETYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::REGRESPONSETYPEENUM"))
(defconstant dms_msgs::RegResponseTypeEnum::*RESERVED1* 3)

(defun dms_msgs::RegResponseTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::RegResponseTypeEnum::*RESPOND_FAIL*)
        ((= const 1) 'dms_msgs::RegResponseTypeEnum::*RESPOND_SUCCESS*)
        ((= const 2) 'dms_msgs::RegResponseTypeEnum::*RESERVED*)
        ((= const 3) 'dms_msgs::RegResponseTypeEnum::*RESERVED1*)
        (t nil)))

(defclass dms_msgs::RegResponseTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::RegResponseTypeEnum
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

(setf (get dms_msgs::RegResponseTypeEnum :md5sum-) "2b34c6848b94a5c3d32a1b99a1cd2077")
(setf (get dms_msgs::RegResponseTypeEnum :datatype-) "dms_msgs/RegResponseTypeEnum")
(setf (get dms_msgs::RegResponseTypeEnum :definition-)
      "uint8 RESPOND_FAIL = 0
uint8 RESPOND_SUCCESS = 1
uint8 RESERVED = 2
uint8 RESERVED1 = 3
uint8 value

")



(provide :dms_msgs/RegResponseTypeEnum "2b34c6848b94a5c3d32a1b99a1cd2077")


