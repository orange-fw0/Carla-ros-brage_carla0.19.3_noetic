;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::SpeedSignTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'SpeedSignTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude SpeedSignTypeEnum.msg.html


(intern "*SPEED_SIGN_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM"))
(shadow '*SPEED_SIGN_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM"))
(defconstant perception_interface_msgs::SpeedSignTypeEnum::*SPEED_SIGN_TYPE_UNKNOWN* 0)
(intern "*SPEED_SIGN_TYPE_HIGH_SPEED*" (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM"))
(shadow '*SPEED_SIGN_TYPE_HIGH_SPEED* (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM"))
(defconstant perception_interface_msgs::SpeedSignTypeEnum::*SPEED_SIGN_TYPE_HIGH_SPEED* 1)
(intern "*SPEED_SIGN_TYPE_LOW_SPEED*" (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM"))
(shadow '*SPEED_SIGN_TYPE_LOW_SPEED* (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM"))
(defconstant perception_interface_msgs::SpeedSignTypeEnum::*SPEED_SIGN_TYPE_LOW_SPEED* 2)
(intern "*SPEED_SIGN_TYPE_DESPEED*" (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM"))
(shadow '*SPEED_SIGN_TYPE_DESPEED* (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM"))
(defconstant perception_interface_msgs::SpeedSignTypeEnum::*SPEED_SIGN_TYPE_DESPEED* 3)
(intern "*SPEED_SIGN_TYPE_RECOMMENDED*" (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM"))
(shadow '*SPEED_SIGN_TYPE_RECOMMENDED* (find-package "PERCEPTION_INTERFACE_MSGS::SPEEDSIGNTYPEENUM"))
(defconstant perception_interface_msgs::SpeedSignTypeEnum::*SPEED_SIGN_TYPE_RECOMMENDED* 4)

(defun perception_interface_msgs::SpeedSignTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::SpeedSignTypeEnum::*SPEED_SIGN_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::SpeedSignTypeEnum::*SPEED_SIGN_TYPE_HIGH_SPEED*)
        ((= const 2) 'perception_interface_msgs::SpeedSignTypeEnum::*SPEED_SIGN_TYPE_LOW_SPEED*)
        ((= const 3) 'perception_interface_msgs::SpeedSignTypeEnum::*SPEED_SIGN_TYPE_DESPEED*)
        ((= const 4) 'perception_interface_msgs::SpeedSignTypeEnum::*SPEED_SIGN_TYPE_RECOMMENDED*)
        (t nil)))

(defclass perception_interface_msgs::SpeedSignTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::SpeedSignTypeEnum
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

(setf (get perception_interface_msgs::SpeedSignTypeEnum :md5sum-) "e8f2c656277b8c98d0025ad139767e27")
(setf (get perception_interface_msgs::SpeedSignTypeEnum :datatype-) "perception_interface_msgs/SpeedSignTypeEnum")
(setf (get perception_interface_msgs::SpeedSignTypeEnum :definition-)
      "uint8 SPEED_SIGN_TYPE_UNKNOWN = 0
uint8 SPEED_SIGN_TYPE_HIGH_SPEED = 1
uint8 SPEED_SIGN_TYPE_LOW_SPEED = 2
uint8 SPEED_SIGN_TYPE_DESPEED = 3
uint8 SPEED_SIGN_TYPE_RECOMMENDED = 4
uint8 value

")



(provide :perception_interface_msgs/SpeedSignTypeEnum "e8f2c656277b8c98d0025ad139767e27")


