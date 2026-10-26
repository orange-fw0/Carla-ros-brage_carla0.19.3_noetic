;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::SpeedSignCategoryEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'SpeedSignCategoryEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNCATEGORYENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNCATEGORYENUM"))

(in-package "ROS")
;;//! \htmlinclude SpeedSignCategoryEnum.msg.html


(intern "*SPEED_SIGN_CATEGORY_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNCATEGORYENUM"))
(shadow '*SPEED_SIGN_CATEGORY_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNCATEGORYENUM"))
(defconstant perception_interface_msgs::SpeedSignCategoryEnum::*SPEED_SIGN_CATEGORY_UNKNOWN* 0)
(intern "*SPEED_SIGN_CATEGORY_ORDINARY*" (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNCATEGORYENUM"))
(shadow '*SPEED_SIGN_CATEGORY_ORDINARY* (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNCATEGORYENUM"))
(defconstant perception_interface_msgs::SpeedSignCategoryEnum::*SPEED_SIGN_CATEGORY_ORDINARY* 1)
(intern "*SPEED_SIGN_CATEGORY_ELECTRONIC*" (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNCATEGORYENUM"))
(shadow '*SPEED_SIGN_CATEGORY_ELECTRONIC* (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNCATEGORYENUM"))
(defconstant perception_interface_msgs::SpeedSignCategoryEnum::*SPEED_SIGN_CATEGORY_ELECTRONIC* 2)

(defun perception_interface_msgs::SpeedSignCategoryEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::SpeedSignCategoryEnum::*SPEED_SIGN_CATEGORY_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::SpeedSignCategoryEnum::*SPEED_SIGN_CATEGORY_ORDINARY*)
        ((= const 2) 'perception_interface_msgs::SpeedSignCategoryEnum::*SPEED_SIGN_CATEGORY_ELECTRONIC*)
        (t nil)))

(defclass perception_interface_msgs::SpeedSignCategoryEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::SpeedSignCategoryEnum
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

(setf (get perception_interface_msgs::SpeedSignCategoryEnum :md5sum-) "5c9fb779d6b98e70bfb731f33be883b0")
(setf (get perception_interface_msgs::SpeedSignCategoryEnum :datatype-) "perception_interface_msgs/SpeedSignCategoryEnum")
(setf (get perception_interface_msgs::SpeedSignCategoryEnum :definition-)
      "uint8 SPEED_SIGN_CATEGORY_UNKNOWN = 0
uint8 SPEED_SIGN_CATEGORY_ORDINARY = 1
uint8 SPEED_SIGN_CATEGORY_ELECTRONIC = 2
uint8 value

")



(provide :perception_interface_msgs/SpeedSignCategoryEnum "5c9fb779d6b98e70bfb731f33be883b0")


