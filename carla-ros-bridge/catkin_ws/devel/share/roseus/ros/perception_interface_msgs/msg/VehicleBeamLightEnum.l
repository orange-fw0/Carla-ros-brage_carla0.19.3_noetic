;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleBeamLightEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleBeamLightEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTENUM"))

(in-package "ROS")
;;//! \htmlinclude VehicleBeamLightEnum.msg.html


(intern "*VEHICLE_BEAMLIGHT_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTENUM"))
(shadow '*VEHICLE_BEAMLIGHT_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBeamLightEnum::*VEHICLE_BEAMLIGHT_UNKNOWN* 0)
(intern "*VEHICLE_BEAMLIGHT_OFF*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTENUM"))
(shadow '*VEHICLE_BEAMLIGHT_OFF* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBeamLightEnum::*VEHICLE_BEAMLIGHT_OFF* 1)
(intern "*VEHICLE_BEAMLIGHT_LOW*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTENUM"))
(shadow '*VEHICLE_BEAMLIGHT_LOW* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBeamLightEnum::*VEHICLE_BEAMLIGHT_LOW* 2)
(intern "*VEHICLE_BEAMLIGHT_HIGH*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTENUM"))
(shadow '*VEHICLE_BEAMLIGHT_HIGH* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTENUM"))
(defconstant perception_interface_msgs::VehicleBeamLightEnum::*VEHICLE_BEAMLIGHT_HIGH* 3)

(defun perception_interface_msgs::VehicleBeamLightEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VehicleBeamLightEnum::*VEHICLE_BEAMLIGHT_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::VehicleBeamLightEnum::*VEHICLE_BEAMLIGHT_OFF*)
        ((= const 2) 'perception_interface_msgs::VehicleBeamLightEnum::*VEHICLE_BEAMLIGHT_LOW*)
        ((= const 3) 'perception_interface_msgs::VehicleBeamLightEnum::*VEHICLE_BEAMLIGHT_HIGH*)
        (t nil)))

(defclass perception_interface_msgs::VehicleBeamLightEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VehicleBeamLightEnum
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

(setf (get perception_interface_msgs::VehicleBeamLightEnum :md5sum-) "dddd83438590e9ffd244cd73ea2fb9c2")
(setf (get perception_interface_msgs::VehicleBeamLightEnum :datatype-) "perception_interface_msgs/VehicleBeamLightEnum")
(setf (get perception_interface_msgs::VehicleBeamLightEnum :definition-)
      "uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0
uint8 VEHICLE_BEAMLIGHT_OFF = 1
uint8 VEHICLE_BEAMLIGHT_LOW = 2
uint8 VEHICLE_BEAMLIGHT_HIGH = 3
uint8 value

")



(provide :perception_interface_msgs/VehicleBeamLightEnum "dddd83438590e9ffd244cd73ea2fb9c2")


