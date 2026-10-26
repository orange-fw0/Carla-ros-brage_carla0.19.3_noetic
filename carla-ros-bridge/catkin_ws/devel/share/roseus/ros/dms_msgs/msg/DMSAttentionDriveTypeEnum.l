;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSAttentionDriveTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSAttentionDriveTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSATTENTIONDRIVETYPEENUM")
  (make-package "DMS_MSGS::DMSATTENTIONDRIVETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSAttentionDriveTypeEnum.msg.html


(intern "*NOT_FOCUSE_ON_DRIVING*" (find-package "DMS_MSGS::DMSATTENTIONDRIVETYPEENUM"))
(shadow '*NOT_FOCUSE_ON_DRIVING* (find-package "DMS_MSGS::DMSATTENTIONDRIVETYPEENUM"))
(defconstant dms_msgs::DMSAttentionDriveTypeEnum::*NOT_FOCUSE_ON_DRIVING* 0)
(intern "*FOCUSE_ON_DRIVING*" (find-package "DMS_MSGS::DMSATTENTIONDRIVETYPEENUM"))
(shadow '*FOCUSE_ON_DRIVING* (find-package "DMS_MSGS::DMSATTENTIONDRIVETYPEENUM"))
(defconstant dms_msgs::DMSAttentionDriveTypeEnum::*FOCUSE_ON_DRIVING* 1)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSATTENTIONDRIVETYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSATTENTIONDRIVETYPEENUM"))
(defconstant dms_msgs::DMSAttentionDriveTypeEnum::*RESERVED* 2)

(defun dms_msgs::DMSAttentionDriveTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSAttentionDriveTypeEnum::*NOT_FOCUSE_ON_DRIVING*)
        ((= const 1) 'dms_msgs::DMSAttentionDriveTypeEnum::*FOCUSE_ON_DRIVING*)
        ((= const 2) 'dms_msgs::DMSAttentionDriveTypeEnum::*RESERVED*)
        (t nil)))

(defclass dms_msgs::DMSAttentionDriveTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSAttentionDriveTypeEnum
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

(setf (get dms_msgs::DMSAttentionDriveTypeEnum :md5sum-) "a9a31ab9572b4b4fc3bb299cbcffa6a2")
(setf (get dms_msgs::DMSAttentionDriveTypeEnum :datatype-) "dms_msgs/DMSAttentionDriveTypeEnum")
(setf (get dms_msgs::DMSAttentionDriveTypeEnum :definition-)
      "uint8 NOT_FOCUSE_ON_DRIVING = 0
uint8 FOCUSE_ON_DRIVING = 1
uint8 RESERVED = 2
uint8 value

")



(provide :dms_msgs/DMSAttentionDriveTypeEnum "a9a31ab9572b4b4fc3bb299cbcffa6a2")


