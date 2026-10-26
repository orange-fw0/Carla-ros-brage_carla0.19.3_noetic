;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleCutinStateEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleCutinStateEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLECUTINSTATEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLECUTINSTATEENUM"))

(in-package "ROS")
;;//! \htmlinclude VehicleCutinStateEnum.msg.html


(intern "*VEHICLE_CUTINSTATE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLECUTINSTATEENUM"))
(shadow '*VEHICLE_CUTINSTATE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLECUTINSTATEENUM"))
(defconstant perception_interface_msgs::VehicleCutinStateEnum::*VEHICLE_CUTINSTATE_UNKNOWN* 0)
(intern "*VEHICLE_CUTINSTATE_OFF*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLECUTINSTATEENUM"))
(shadow '*VEHICLE_CUTINSTATE_OFF* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLECUTINSTATEENUM"))
(defconstant perception_interface_msgs::VehicleCutinStateEnum::*VEHICLE_CUTINSTATE_OFF* 1)
(intern "*VEHICLE_CUTINSTATE_ON*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLECUTINSTATEENUM"))
(shadow '*VEHICLE_CUTINSTATE_ON* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLECUTINSTATEENUM"))
(defconstant perception_interface_msgs::VehicleCutinStateEnum::*VEHICLE_CUTINSTATE_ON* 2)

(defun perception_interface_msgs::VehicleCutinStateEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VehicleCutinStateEnum::*VEHICLE_CUTINSTATE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::VehicleCutinStateEnum::*VEHICLE_CUTINSTATE_OFF*)
        ((= const 2) 'perception_interface_msgs::VehicleCutinStateEnum::*VEHICLE_CUTINSTATE_ON*)
        (t nil)))

(defclass perception_interface_msgs::VehicleCutinStateEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VehicleCutinStateEnum
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

(setf (get perception_interface_msgs::VehicleCutinStateEnum :md5sum-) "d2b9272c31e91772f816a2e160a22c0d")
(setf (get perception_interface_msgs::VehicleCutinStateEnum :datatype-) "perception_interface_msgs/VehicleCutinStateEnum")
(setf (get perception_interface_msgs::VehicleCutinStateEnum :definition-)
      "uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0
uint8 VEHICLE_CUTINSTATE_OFF = 1
uint8 VEHICLE_CUTINSTATE_ON = 2
uint8 value

")



(provide :perception_interface_msgs/VehicleCutinStateEnum "d2b9272c31e91772f816a2e160a22c0d")


