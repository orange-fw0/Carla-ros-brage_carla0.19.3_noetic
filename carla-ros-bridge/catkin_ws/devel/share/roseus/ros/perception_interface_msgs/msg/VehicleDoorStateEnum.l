;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleDoorStateEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleDoorStateEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))

(in-package "ROS")
;;//! \htmlinclude VehicleDoorStateEnum.msg.html


(intern "*VEHICLE_DOORSTATE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(shadow '*VEHICLE_DOORSTATE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(defconstant perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_DOORSTATE_UNKNOWN* 0)
(intern "*VEHICLE_DOORSTATE_OFF*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(shadow '*VEHICLE_DOORSTATE_OFF* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(defconstant perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_DOORSTATE_OFF* 1)
(intern "*VEHICLE_DOORSTATE_ON*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(shadow '*VEHICLE_DOORSTATE_ON* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(defconstant perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_DOORSTATE_ON* 2)
(intern "*VEHICLE_RIGHT_DOOR_OPEN_FULL*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(shadow '*VEHICLE_RIGHT_DOOR_OPEN_FULL* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(defconstant perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_RIGHT_DOOR_OPEN_FULL* 3)
(intern "*VEHICLE_RIGHT_DOOR_OPEN_HALF*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(shadow '*VEHICLE_RIGHT_DOOR_OPEN_HALF* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(defconstant perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_RIGHT_DOOR_OPEN_HALF* 4)
(intern "*VEHICLE_LEFT_DOOR_OPEN_FULL*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(shadow '*VEHICLE_LEFT_DOOR_OPEN_FULL* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(defconstant perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_LEFT_DOOR_OPEN_FULL* 5)
(intern "*VEHICLE_LEFT_DOOR_OPEN_HALF*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(shadow '*VEHICLE_LEFT_DOOR_OPEN_HALF* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(defconstant perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_LEFT_DOOR_OPEN_HALF* 6)
(intern "*VEHICLE_DOOR_OPEN_BOTH*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(shadow '*VEHICLE_DOOR_OPEN_BOTH* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEENUM"))
(defconstant perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_DOOR_OPEN_BOTH* 7)

(defun perception_interface_msgs::VehicleDoorStateEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_DOORSTATE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_DOORSTATE_OFF*)
        ((= const 2) 'perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_DOORSTATE_ON*)
        ((= const 3) 'perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_RIGHT_DOOR_OPEN_FULL*)
        ((= const 4) 'perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_RIGHT_DOOR_OPEN_HALF*)
        ((= const 5) 'perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_LEFT_DOOR_OPEN_FULL*)
        ((= const 6) 'perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_LEFT_DOOR_OPEN_HALF*)
        ((= const 7) 'perception_interface_msgs::VehicleDoorStateEnum::*VEHICLE_DOOR_OPEN_BOTH*)
        (t nil)))

(defclass perception_interface_msgs::VehicleDoorStateEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VehicleDoorStateEnum
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

(setf (get perception_interface_msgs::VehicleDoorStateEnum :md5sum-) "b6264e92bf3a46ef8a94b9440e7fb99b")
(setf (get perception_interface_msgs::VehicleDoorStateEnum :datatype-) "perception_interface_msgs/VehicleDoorStateEnum")
(setf (get perception_interface_msgs::VehicleDoorStateEnum :definition-)
      "uint8 VEHICLE_DOORSTATE_UNKNOWN = 0
uint8 VEHICLE_DOORSTATE_OFF = 1
uint8 VEHICLE_DOORSTATE_ON = 2
uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3
uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4
uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5
uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6
uint8 VEHICLE_DOOR_OPEN_BOTH = 7
uint8 value

")



(provide :perception_interface_msgs/VehicleDoorStateEnum "b6264e92bf3a46ef8a94b9440e7fb99b")


