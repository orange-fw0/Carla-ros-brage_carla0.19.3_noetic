;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleBrakeLightEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleBrakeLightEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBRAKELIGHTENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBRAKELIGHTENUM"))

(in-package "ROS")
;;//! \htmlinclude VehicleBrakeLightEnum.msg.html


(intern "*VEHICLE_BRAKELIGHT_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBRAKELIGHTENUM"))
(shadow '*VEHICLE_BRAKELIGHT_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBRAKELIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBrakeLightEnum::*VEHICLE_BRAKELIGHT_UNKNOWN* 0)
(intern "*VEHICLE_BRAKELIGHT_OFF*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBRAKELIGHTENUM"))
(shadow '*VEHICLE_BRAKELIGHT_OFF* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBRAKELIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBrakeLightEnum::*VEHICLE_BRAKELIGHT_OFF* 1)
(intern "*VEHICLE_BRAKELIGHT_ON*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBRAKELIGHTENUM"))
(shadow '*VEHICLE_BRAKELIGHT_ON* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBRAKELIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBrakeLightEnum::*VEHICLE_BRAKELIGHT_ON* 2)

(defun perception_interface_msgs::VehicleBrakeLightEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VehicleBrakeLightEnum::*VEHICLE_BRAKELIGHT_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::VehicleBrakeLightEnum::*VEHICLE_BRAKELIGHT_OFF*)
        ((= const 2) 'perception_interface_msgs::VehicleBrakeLightEnum::*VEHICLE_BRAKELIGHT_ON*)
        (t nil)))

(defclass perception_interface_msgs::VehicleBrakeLightEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VehicleBrakeLightEnum
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

(setf (get perception_interface_msgs::VehicleBrakeLightEnum :md5sum-) "0e7090b91737208264dc29b811e960ae")
(setf (get perception_interface_msgs::VehicleBrakeLightEnum :datatype-) "perception_interface_msgs/VehicleBrakeLightEnum")
(setf (get perception_interface_msgs::VehicleBrakeLightEnum :definition-)
      "uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0
uint8 VEHICLE_BRAKELIGHT_OFF = 1
uint8 VEHICLE_BRAKELIGHT_ON = 2
uint8 value

")



(provide :perception_interface_msgs/VehicleBrakeLightEnum "0e7090b91737208264dc29b811e960ae")


