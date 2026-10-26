;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::ModuleType)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'ModuleType (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE")
  (make-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))

(in-package "ROS")
;;//! \htmlinclude ModuleType.msg.html


(intern "*PREDICTION*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*PREDICTION* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*PREDICTION* 0)
(intern "*ROUTING*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*ROUTING* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*ROUTING* 1)
(intern "*PLANNING*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*PLANNING* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*PLANNING* 2)
(intern "*CONTROLLER*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*CONTROLLER* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*CONTROLLER* 3)
(intern "*ENDPOINT*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*ENDPOINT* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*ENDPOINT* 4)
(intern "*VEHICLE_REPORTER*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*VEHICLE_REPORTER* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*VEHICLE_REPORTER* 5)
(intern "*WORLDMODEL*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*WORLDMODEL* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*WORLDMODEL* 6)
(intern "*RADAR_PERCEPTION*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*RADAR_PERCEPTION* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*RADAR_PERCEPTION* 7)
(intern "*VISION_PERCEPTION*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*VISION_PERCEPTION* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*VISION_PERCEPTION* 8)
(intern "*LIDAR_PERCEPTION*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*LIDAR_PERCEPTION* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*LIDAR_PERCEPTION* 9)
(intern "*FUSION_PERCEPTION*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*FUSION_PERCEPTION* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*FUSION_PERCEPTION* 10)
(intern "*LOCATION*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*LOCATION* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*LOCATION* 11)
(intern "*VISION_TFC_PERCEPTION*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*VISION_TFC_PERCEPTION* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*VISION_TFC_PERCEPTION* 12)
(intern "*SENSOR_SERVICE*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*SENSOR_SERVICE* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*SENSOR_SERVICE* 13)
(intern "*CAMERA_SERVICE*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*CAMERA_SERVICE* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*CAMERA_SERVICE* 14)
(intern "*EGOPOSE_MANAGER*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*EGOPOSE_MANAGER* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*EGOPOSE_MANAGER* 15)
(intern "*EGOMOTION*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*EGOMOTION* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*EGOMOTION* 16)
(intern "*MAP_MANAGER*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*MAP_MANAGER* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*MAP_MANAGER* 17)
(intern "*LDP_PLANNING*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*LDP_PLANNING* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*LDP_PLANNING* 18)
(intern "*PLAC*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*PLAC* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*PLAC* 19)
(intern "*ACE*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*ACE* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*ACE* 20)
(intern "*VISTA*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*VISTA* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*VISTA* 21)
(intern "*DYNAMIC_SAFETY_CHECK*" (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(shadow '*DYNAMIC_SAFETY_CHECK* (find-package "FRAMEWORK_STATUS_MSGS::MODULETYPE"))
(defconstant framework_status_msgs::ModuleType::*DYNAMIC_SAFETY_CHECK* 22)

(defun framework_status_msgs::ModuleType-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::ModuleType::*PREDICTION*)
        ((= const 1) 'framework_status_msgs::ModuleType::*ROUTING*)
        ((= const 2) 'framework_status_msgs::ModuleType::*PLANNING*)
        ((= const 3) 'framework_status_msgs::ModuleType::*CONTROLLER*)
        ((= const 4) 'framework_status_msgs::ModuleType::*ENDPOINT*)
        ((= const 5) 'framework_status_msgs::ModuleType::*VEHICLE_REPORTER*)
        ((= const 6) 'framework_status_msgs::ModuleType::*WORLDMODEL*)
        ((= const 7) 'framework_status_msgs::ModuleType::*RADAR_PERCEPTION*)
        ((= const 8) 'framework_status_msgs::ModuleType::*VISION_PERCEPTION*)
        ((= const 9) 'framework_status_msgs::ModuleType::*LIDAR_PERCEPTION*)
        ((= const 10) 'framework_status_msgs::ModuleType::*FUSION_PERCEPTION*)
        ((= const 11) 'framework_status_msgs::ModuleType::*LOCATION*)
        ((= const 12) 'framework_status_msgs::ModuleType::*VISION_TFC_PERCEPTION*)
        ((= const 13) 'framework_status_msgs::ModuleType::*SENSOR_SERVICE*)
        ((= const 14) 'framework_status_msgs::ModuleType::*CAMERA_SERVICE*)
        ((= const 15) 'framework_status_msgs::ModuleType::*EGOPOSE_MANAGER*)
        ((= const 16) 'framework_status_msgs::ModuleType::*EGOMOTION*)
        ((= const 17) 'framework_status_msgs::ModuleType::*MAP_MANAGER*)
        ((= const 18) 'framework_status_msgs::ModuleType::*LDP_PLANNING*)
        ((= const 19) 'framework_status_msgs::ModuleType::*PLAC*)
        ((= const 20) 'framework_status_msgs::ModuleType::*ACE*)
        ((= const 21) 'framework_status_msgs::ModuleType::*VISTA*)
        ((= const 22) 'framework_status_msgs::ModuleType::*DYNAMIC_SAFETY_CHECK*)
        (t nil)))

(defclass framework_status_msgs::ModuleType
  :super ros::object
  :slots (_value ))

(defmethod framework_status_msgs::ModuleType
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

(setf (get framework_status_msgs::ModuleType :md5sum-) "cfa3aabc499ac91b044bfeb93dc6d206")
(setf (get framework_status_msgs::ModuleType :datatype-) "framework_status_msgs/ModuleType")
(setf (get framework_status_msgs::ModuleType :definition-)
      "uint8 PREDICTION = 0
uint8 ROUTING = 1
uint8 PLANNING = 2
uint8 CONTROLLER = 3
uint8 ENDPOINT = 4
uint8 VEHICLE_REPORTER = 5
uint8 WORLDMODEL = 6
uint8 RADAR_PERCEPTION = 7
uint8 VISION_PERCEPTION = 8
uint8 LIDAR_PERCEPTION = 9
uint8 FUSION_PERCEPTION = 10
uint8 LOCATION = 11
uint8 VISION_TFC_PERCEPTION = 12
uint8 SENSOR_SERVICE = 13
uint8 CAMERA_SERVICE = 14
uint8 EGOPOSE_MANAGER = 15
uint8 EGOMOTION = 16
uint8 MAP_MANAGER = 17
uint8 LDP_PLANNING = 18
uint8 PLAC = 19
uint8 ACE = 20
uint8 VISTA = 21
uint8 DYNAMIC_SAFETY_CHECK = 22
uint8 value

")



(provide :framework_status_msgs/ModuleType "cfa3aabc499ac91b044bfeb93dc6d206")


