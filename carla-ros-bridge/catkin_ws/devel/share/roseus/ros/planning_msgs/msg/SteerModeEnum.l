;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::SteerModeEnum)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'SteerModeEnum (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::STEERMODEENUM")
  (make-package "PLANNING_MSGS::STEERMODEENUM"))

(in-package "ROS")
;;//! \htmlinclude SteerModeEnum.msg.html


(intern "*NORMAL*" (find-package "PLANNING_MSGS::STEERMODEENUM"))
(shadow '*NORMAL* (find-package "PLANNING_MSGS::STEERMODEENUM"))
(defconstant planning_msgs::SteerModeEnum::*NORMAL* 0)
(intern "*TWIST*" (find-package "PLANNING_MSGS::STEERMODEENUM"))
(shadow '*TWIST* (find-package "PLANNING_MSGS::STEERMODEENUM"))
(defconstant planning_msgs::SteerModeEnum::*TWIST* 1)
(intern "*TRANSLATION*" (find-package "PLANNING_MSGS::STEERMODEENUM"))
(shadow '*TRANSLATION* (find-package "PLANNING_MSGS::STEERMODEENUM"))
(defconstant planning_msgs::SteerModeEnum::*TRANSLATION* 2)

(defun planning_msgs::SteerModeEnum-to-symbol (const)
  (cond
        ((= const 0) 'planning_msgs::SteerModeEnum::*NORMAL*)
        ((= const 1) 'planning_msgs::SteerModeEnum::*TWIST*)
        ((= const 2) 'planning_msgs::SteerModeEnum::*TRANSLATION*)
        (t nil)))

(defclass planning_msgs::SteerModeEnum
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::SteerModeEnum
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

(setf (get planning_msgs::SteerModeEnum :md5sum-) "5d9da45c295d82807624b1f8ca2d413c")
(setf (get planning_msgs::SteerModeEnum :datatype-) "planning_msgs/SteerModeEnum")
(setf (get planning_msgs::SteerModeEnum :definition-)
      "uint8 NORMAL = 0
uint8 TWIST = 1
uint8 TRANSLATION = 2
uint8 value

")



(provide :planning_msgs/SteerModeEnum "5d9da45c295d82807624b1f8ca2d413c")


