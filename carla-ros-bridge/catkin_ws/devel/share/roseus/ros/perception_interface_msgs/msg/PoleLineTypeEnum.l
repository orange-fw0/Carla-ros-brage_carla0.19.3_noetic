;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::PoleLineTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'PoleLineTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::POLELINETYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::POLELINETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude PoleLineTypeEnum.msg.html


(intern "*POLE_LINE_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::POLELINETYPEENUM"))
(shadow '*POLE_LINE_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::POLELINETYPEENUM"))
(defconstant perception_interface_msgs::PoleLineTypeEnum::*POLE_LINE_TYPE_UNKNOWN* 0)
(intern "*POLE_LINE_TYPE_GENERAL_POLE*" (find-package "PERCEPTION_INTERFACE_MSGS::POLELINETYPEENUM"))
(shadow '*POLE_LINE_TYPE_GENERAL_POLE* (find-package "PERCEPTION_INTERFACE_MSGS::POLELINETYPEENUM"))
(defconstant perception_interface_msgs::PoleLineTypeEnum::*POLE_LINE_TYPE_GENERAL_POLE* 1)
(intern "*POLE_LINE_TYPE_LIGHT_POLE*" (find-package "PERCEPTION_INTERFACE_MSGS::POLELINETYPEENUM"))
(shadow '*POLE_LINE_TYPE_LIGHT_POLE* (find-package "PERCEPTION_INTERFACE_MSGS::POLELINETYPEENUM"))
(defconstant perception_interface_msgs::PoleLineTypeEnum::*POLE_LINE_TYPE_LIGHT_POLE* 2)

(defun perception_interface_msgs::PoleLineTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::PoleLineTypeEnum::*POLE_LINE_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::PoleLineTypeEnum::*POLE_LINE_TYPE_GENERAL_POLE*)
        ((= const 2) 'perception_interface_msgs::PoleLineTypeEnum::*POLE_LINE_TYPE_LIGHT_POLE*)
        (t nil)))

(defclass perception_interface_msgs::PoleLineTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::PoleLineTypeEnum
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

(setf (get perception_interface_msgs::PoleLineTypeEnum :md5sum-) "9a280dddf929a63ec90f07ff42a93e72")
(setf (get perception_interface_msgs::PoleLineTypeEnum :datatype-) "perception_interface_msgs/PoleLineTypeEnum")
(setf (get perception_interface_msgs::PoleLineTypeEnum :definition-)
      "uint8 POLE_LINE_TYPE_UNKNOWN = 0
uint8 POLE_LINE_TYPE_GENERAL_POLE = 1
uint8 POLE_LINE_TYPE_LIGHT_POLE = 2
uint8 value

")



(provide :perception_interface_msgs/PoleLineTypeEnum "9a280dddf929a63ec90f07ff42a93e72")


