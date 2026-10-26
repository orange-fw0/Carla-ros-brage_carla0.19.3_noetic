;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::VehicleType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'VehicleType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE")
  (make-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))

(in-package "ROS")
;;//! \htmlinclude VehicleType.msg.html


(intern "*RESTRICTION_VEHICLE_ALL*" (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(shadow '*RESTRICTION_VEHICLE_ALL* (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(defconstant lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_ALL* 0)
(intern "*RESTRICTION_VEHICLE_MOTOR*" (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(shadow '*RESTRICTION_VEHICLE_MOTOR* (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(defconstant lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_MOTOR* 1)
(intern "*RESTRICTION_VEHICLE_CAR*" (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(shadow '*RESTRICTION_VEHICLE_CAR* (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(defconstant lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_CAR* 2)
(intern "*RESTRICTION_VEHICLE_BUS*" (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(shadow '*RESTRICTION_VEHICLE_BUS* (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(defconstant lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_BUS* 3)
(intern "*RESTRICTION_VEHICLE_HOV*" (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(shadow '*RESTRICTION_VEHICLE_HOV* (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(defconstant lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_HOV* 4)
(intern "*RESTRICTION_VEHICLE_UNKNOWN*" (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(shadow '*RESTRICTION_VEHICLE_UNKNOWN* (find-package "LANE_NAVI_INFO_MSGS::VEHICLETYPE"))
(defconstant lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_UNKNOWN* 255)

(defun lane_navi_info_msgs::VehicleType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_ALL*)
        ((= const 1) 'lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_MOTOR*)
        ((= const 2) 'lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_CAR*)
        ((= const 3) 'lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_BUS*)
        ((= const 4) 'lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_HOV*)
        ((= const 255) 'lane_navi_info_msgs::VehicleType::*RESTRICTION_VEHICLE_UNKNOWN*)
        (t nil)))

(defclass lane_navi_info_msgs::VehicleType
  :super ros::object
  :slots (_type ))

(defmethod lane_navi_info_msgs::VehicleType
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::VehicleType :md5sum-) "f351d22d0e3ba3de339857ca66220cca")
(setf (get lane_navi_info_msgs::VehicleType :datatype-) "lane_navi_info_msgs/VehicleType")
(setf (get lane_navi_info_msgs::VehicleType :definition-)
      "uint8 RESTRICTION_VEHICLE_ALL = 0
uint8 RESTRICTION_VEHICLE_MOTOR = 1
uint8 RESTRICTION_VEHICLE_CAR = 2
uint8 RESTRICTION_VEHICLE_BUS = 3
uint8 RESTRICTION_VEHICLE_HOV = 4
uint8 RESTRICTION_VEHICLE_UNKNOWN = 255
uint8 type

")



(provide :lane_navi_info_msgs/VehicleType "f351d22d0e3ba3de339857ca66220cca")


