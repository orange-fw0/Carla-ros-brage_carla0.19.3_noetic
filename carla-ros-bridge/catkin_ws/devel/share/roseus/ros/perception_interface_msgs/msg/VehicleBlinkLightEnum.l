;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleBlinkLightEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleBlinkLightEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM"))

(in-package "ROS")
;;//! \htmlinclude VehicleBlinkLightEnum.msg.html


(intern "*VEHICLE_BLINKLIGHT_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM"))
(shadow '*VEHICLE_BLINKLIGHT_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBlinkLightEnum::*VEHICLE_BLINKLIGHT_UNKNOWN* 0)
(intern "*VEHICLE_BLINKLIGHT_OFF*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM"))
(shadow '*VEHICLE_BLINKLIGHT_OFF* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBlinkLightEnum::*VEHICLE_BLINKLIGHT_OFF* 1)
(intern "*VEHICLE_BLINKLIGHT_LEFT*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM"))
(shadow '*VEHICLE_BLINKLIGHT_LEFT* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBlinkLightEnum::*VEHICLE_BLINKLIGHT_LEFT* 2)
(intern "*VEHICLE_BLINKLIGHT_RIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM"))
(shadow '*VEHICLE_BLINKLIGHT_RIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBlinkLightEnum::*VEHICLE_BLINKLIGHT_RIGHT* 3)
(intern "*VEHICLE_BLINKLIGHT_BOTH*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM"))
(shadow '*VEHICLE_BLINKLIGHT_BOTH* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBlinkLightEnum::*VEHICLE_BLINKLIGHT_BOTH* 4)

(defun perception_interface_msgs::VehicleBlinkLightEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VehicleBlinkLightEnum::*VEHICLE_BLINKLIGHT_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::VehicleBlinkLightEnum::*VEHICLE_BLINKLIGHT_OFF*)
        ((= const 2) 'perception_interface_msgs::VehicleBlinkLightEnum::*VEHICLE_BLINKLIGHT_LEFT*)
        ((= const 3) 'perception_interface_msgs::VehicleBlinkLightEnum::*VEHICLE_BLINKLIGHT_RIGHT*)
        ((= const 4) 'perception_interface_msgs::VehicleBlinkLightEnum::*VEHICLE_BLINKLIGHT_BOTH*)
        (t nil)))

(defclass perception_interface_msgs::VehicleBlinkLightEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VehicleBlinkLightEnum
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

(setf (get perception_interface_msgs::VehicleBlinkLightEnum :md5sum-) "747c152d13d7aa6fe1da7161e29eac59")
(setf (get perception_interface_msgs::VehicleBlinkLightEnum :datatype-) "perception_interface_msgs/VehicleBlinkLightEnum")
(setf (get perception_interface_msgs::VehicleBlinkLightEnum :definition-)
      "uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0
uint8 VEHICLE_BLINKLIGHT_OFF = 1
uint8 VEHICLE_BLINKLIGHT_LEFT = 2
uint8 VEHICLE_BLINKLIGHT_RIGHT = 3
uint8 VEHICLE_BLINKLIGHT_BOTH = 4
uint8 value

")



(provide :perception_interface_msgs/VehicleBlinkLightEnum "747c152d13d7aa6fe1da7161e29eac59")


