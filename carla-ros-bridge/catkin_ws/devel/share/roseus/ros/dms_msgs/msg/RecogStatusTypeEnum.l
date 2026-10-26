;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::RecogStatusTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'RecogStatusTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM")
  (make-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RecogStatusTypeEnum.msg.html


(intern "*NO_ACTION*" (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(shadow '*NO_ACTION* (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(defconstant dms_msgs::RecogStatusTypeEnum::*NO_ACTION* 0)
(intern "*RECOGNIZING*" (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(shadow '*RECOGNIZING* (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(defconstant dms_msgs::RecogStatusTypeEnum::*RECOGNIZING* 1)
(intern "*RECOG_SUCCESS*" (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(shadow '*RECOG_SUCCESS* (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(defconstant dms_msgs::RecogStatusTypeEnum::*RECOG_SUCCESS* 2)
(intern "*RECOG_FAIL*" (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(shadow '*RECOG_FAIL* (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(defconstant dms_msgs::RecogStatusTypeEnum::*RECOG_FAIL* 3)
(intern "*RESERVED*" (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(defconstant dms_msgs::RecogStatusTypeEnum::*RESERVED* 4)
(intern "*RESERVED1*" (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::RECOGSTATUSTYPEENUM"))
(defconstant dms_msgs::RecogStatusTypeEnum::*RESERVED1* 5)

(defun dms_msgs::RecogStatusTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::RecogStatusTypeEnum::*NO_ACTION*)
        ((= const 1) 'dms_msgs::RecogStatusTypeEnum::*Recognizing*)
        ((= const 2) 'dms_msgs::RecogStatusTypeEnum::*Recog_SUCCESS*)
        ((= const 3) 'dms_msgs::RecogStatusTypeEnum::*Recog_FAIL*)
        ((= const 4) 'dms_msgs::RecogStatusTypeEnum::*RESERVED*)
        ((= const 5) 'dms_msgs::RecogStatusTypeEnum::*RESERVED1*)
        (t nil)))

(defclass dms_msgs::RecogStatusTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::RecogStatusTypeEnum
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

(setf (get dms_msgs::RecogStatusTypeEnum :md5sum-) "ef1e39c4275d80eb9b2f3de6e067ffe3")
(setf (get dms_msgs::RecogStatusTypeEnum :datatype-) "dms_msgs/RecogStatusTypeEnum")
(setf (get dms_msgs::RecogStatusTypeEnum :definition-)
      "uint8 NO_ACTION = 0
uint8 Recognizing = 1
uint8 Recog_SUCCESS = 2
uint8 Recog_FAIL = 3
uint8 RESERVED = 4
uint8 RESERVED1 = 5
uint8 value

")



(provide :dms_msgs/RecogStatusTypeEnum "ef1e39c4275d80eb9b2f3de6e067ffe3")


