;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::ParkingSpaceTypeEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'ParkingSpaceTypeEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACETYPEENUM")
  (make-package "SYSTEM_MANAGER_MSGS::PARKINGSPACETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude ParkingSpaceTypeEnum.msg.html


(intern "*UNKNOWN*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACETYPEENUM"))
(shadow '*UNKNOWN* (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACETYPEENUM"))
(defconstant system_manager_msgs::ParkingSpaceTypeEnum::*UNKNOWN* 0)
(intern "*PARKING_SPACE_WITH_CHARGING*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACETYPEENUM"))
(shadow '*PARKING_SPACE_WITH_CHARGING* (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACETYPEENUM"))
(defconstant system_manager_msgs::ParkingSpaceTypeEnum::*PARKING_SPACE_WITH_CHARGING* 1)

(defun system_manager_msgs::ParkingSpaceTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::ParkingSpaceTypeEnum::*UNKNOWN*)
        ((= const 1) 'system_manager_msgs::ParkingSpaceTypeEnum::*PARKING_SPACE_WITH_CHARGING*)
        (t nil)))

(defclass system_manager_msgs::ParkingSpaceTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::ParkingSpaceTypeEnum
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

(setf (get system_manager_msgs::ParkingSpaceTypeEnum :md5sum-) "b9801e716806b6ea5cc7266064d80e9b")
(setf (get system_manager_msgs::ParkingSpaceTypeEnum :datatype-) "system_manager_msgs/ParkingSpaceTypeEnum")
(setf (get system_manager_msgs::ParkingSpaceTypeEnum :definition-)
      "uint8 UNKNOWN = 0
uint8 PARKING_SPACE_WITH_CHARGING = 1
uint8 value

")



(provide :system_manager_msgs/ParkingSpaceTypeEnum "b9801e716806b6ea5cc7266064d80e9b")


