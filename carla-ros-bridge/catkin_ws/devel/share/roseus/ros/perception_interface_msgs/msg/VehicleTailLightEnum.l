;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleTailLightEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleTailLightEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTENUM"))

(in-package "ROS")
;;//! \htmlinclude VehicleTailLightEnum.msg.html


(intern "*VEHICLE_TAILLIGHT_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTENUM"))
(shadow '*VEHICLE_TAILLIGHT_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleTailLightEnum::*VEHICLE_TAILLIGHT_UNKNOWN* 0)
(intern "*VEHICLE_TAILLIGHT_OFF*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTENUM"))
(shadow '*VEHICLE_TAILLIGHT_OFF* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleTailLightEnum::*VEHICLE_TAILLIGHT_OFF* 1)
(intern "*VEHICLE_TAILLIGHT_ON*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTENUM"))
(shadow '*VEHICLE_TAILLIGHT_ON* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleTailLightEnum::*VEHICLE_TAILLIGHT_ON* 2)
(intern "*VEHICLE_TAILLIGHT_HIGH_ON*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTENUM"))
(shadow '*VEHICLE_TAILLIGHT_HIGH_ON* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleTailLightEnum::*VEHICLE_TAILLIGHT_HIGH_ON* 3)

(defun perception_interface_msgs::VehicleTailLightEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VehicleTailLightEnum::*VEHICLE_TAILLIGHT_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::VehicleTailLightEnum::*VEHICLE_TAILLIGHT_OFF*)
        ((= const 2) 'perception_interface_msgs::VehicleTailLightEnum::*VEHICLE_TAILLIGHT_ON*)
        ((= const 3) 'perception_interface_msgs::VehicleTailLightEnum::*VEHICLE_TAILLIGHT_HIGH_ON*)
        (t nil)))

(defclass perception_interface_msgs::VehicleTailLightEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VehicleTailLightEnum
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

(setf (get perception_interface_msgs::VehicleTailLightEnum :md5sum-) "a1aea0d1fbaf056d1abd86d4c52b65d5")
(setf (get perception_interface_msgs::VehicleTailLightEnum :datatype-) "perception_interface_msgs/VehicleTailLightEnum")
(setf (get perception_interface_msgs::VehicleTailLightEnum :definition-)
      "uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0
uint8 VEHICLE_TAILLIGHT_OFF = 1
uint8 VEHICLE_TAILLIGHT_ON = 2
uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3
uint8 value

")



(provide :perception_interface_msgs/VehicleTailLightEnum "a1aea0d1fbaf056d1abd86d4c52b65d5")


