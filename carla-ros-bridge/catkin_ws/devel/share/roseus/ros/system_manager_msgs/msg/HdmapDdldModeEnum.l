;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::HdmapDdldModeEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'HdmapDdldModeEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::HDMAPDDLDMODEENUM")
  (make-package "SYSTEM_MANAGER_MSGS::HDMAPDDLDMODEENUM"))

(in-package "ROS")
;;//! \htmlinclude HdmapDdldModeEnum.msg.html


(intern "*HDMAP*" (find-package "SYSTEM_MANAGER_MSGS::HDMAPDDLDMODEENUM"))
(shadow '*HDMAP* (find-package "SYSTEM_MANAGER_MSGS::HDMAPDDLDMODEENUM"))
(defconstant system_manager_msgs::HdmapDdldModeEnum::*HDMAP* 0)
(intern "*DDLD*" (find-package "SYSTEM_MANAGER_MSGS::HDMAPDDLDMODEENUM"))
(shadow '*DDLD* (find-package "SYSTEM_MANAGER_MSGS::HDMAPDDLDMODEENUM"))
(defconstant system_manager_msgs::HdmapDdldModeEnum::*DDLD* 1)

(defun system_manager_msgs::HdmapDdldModeEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::HdmapDdldModeEnum::*HDMAP*)
        ((= const 1) 'system_manager_msgs::HdmapDdldModeEnum::*DDLD*)
        (t nil)))

(defclass system_manager_msgs::HdmapDdldModeEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::HdmapDdldModeEnum
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

(setf (get system_manager_msgs::HdmapDdldModeEnum :md5sum-) "70fcfd3f17056bb4cc99e937e7ffdce8")
(setf (get system_manager_msgs::HdmapDdldModeEnum :datatype-) "system_manager_msgs/HdmapDdldModeEnum")
(setf (get system_manager_msgs::HdmapDdldModeEnum :definition-)
      "uint8 HDMAP = 0
uint8 DDLD = 1
uint8 value

")



(provide :system_manager_msgs/HdmapDdldModeEnum "70fcfd3f17056bb4cc99e937e7ffdce8")


