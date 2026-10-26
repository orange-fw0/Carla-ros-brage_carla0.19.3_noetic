;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::ConstructionSiteStatusEnum)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'ConstructionSiteStatusEnum (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::CONSTRUCTIONSITESTATUSENUM")
  (make-package "TBT_MSGS::CONSTRUCTIONSITESTATUSENUM"))

(in-package "ROS")
;;//! \htmlinclude ConstructionSiteStatusEnum.msg.html


(intern "*UNKWON*" (find-package "TBT_MSGS::CONSTRUCTIONSITESTATUSENUM"))
(shadow '*UNKWON* (find-package "TBT_MSGS::CONSTRUCTIONSITESTATUSENUM"))
(defconstant tbt_msgs::ConstructionSiteStatusEnum::*UNKWON* 0)
(intern "*NO*" (find-package "TBT_MSGS::CONSTRUCTIONSITESTATUSENUM"))
(shadow '*NO* (find-package "TBT_MSGS::CONSTRUCTIONSITESTATUSENUM"))
(defconstant tbt_msgs::ConstructionSiteStatusEnum::*NO* 1)
(intern "*YES*" (find-package "TBT_MSGS::CONSTRUCTIONSITESTATUSENUM"))
(shadow '*YES* (find-package "TBT_MSGS::CONSTRUCTIONSITESTATUSENUM"))
(defconstant tbt_msgs::ConstructionSiteStatusEnum::*YES* 2)

(defun tbt_msgs::ConstructionSiteStatusEnum-to-symbol (const)
  (cond
        ((= const 0) 'tbt_msgs::ConstructionSiteStatusEnum::*Unkwon*)
        ((= const 1) 'tbt_msgs::ConstructionSiteStatusEnum::*No*)
        ((= const 2) 'tbt_msgs::ConstructionSiteStatusEnum::*Yes*)
        (t nil)))

(defclass tbt_msgs::ConstructionSiteStatusEnum
  :super ros::object
  :slots (_value ))

(defmethod tbt_msgs::ConstructionSiteStatusEnum
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

(setf (get tbt_msgs::ConstructionSiteStatusEnum :md5sum-) "14b49dfc19fc8f2b3c8103982145db4b")
(setf (get tbt_msgs::ConstructionSiteStatusEnum :datatype-) "tbt_msgs/ConstructionSiteStatusEnum")
(setf (get tbt_msgs::ConstructionSiteStatusEnum :definition-)
      "uint8 Unkwon = 0
uint8 No = 1
uint8 Yes = 2
uint8 value

")



(provide :tbt_msgs/ConstructionSiteStatusEnum "14b49dfc19fc8f2b3c8103982145db4b")


