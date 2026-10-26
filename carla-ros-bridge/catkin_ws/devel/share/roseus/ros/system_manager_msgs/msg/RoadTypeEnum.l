;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::RoadTypeEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'RoadTypeEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM")
  (make-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadTypeEnum.msg.html


(intern "*UNKNOWN*" (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(shadow '*UNKNOWN* (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(defconstant system_manager_msgs::RoadTypeEnum::*UNKNOWN* 0)
(intern "*LEVEL*" (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(shadow '*LEVEL* (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(defconstant system_manager_msgs::RoadTypeEnum::*LEVEL* 1)
(intern "*DOWNHILL*" (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(shadow '*DOWNHILL* (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(defconstant system_manager_msgs::RoadTypeEnum::*DOWNHILL* 2)
(intern "*UPHILL*" (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(shadow '*UPHILL* (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(defconstant system_manager_msgs::RoadTypeEnum::*UPHILL* 3)
(intern "*GROUND_PARKING*" (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(shadow '*GROUND_PARKING* (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(defconstant system_manager_msgs::RoadTypeEnum::*GROUND_PARKING* 4)
(intern "*PUBLIC_ROAD*" (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(shadow '*PUBLIC_ROAD* (find-package "SYSTEM_MANAGER_MSGS::ROADTYPEENUM"))
(defconstant system_manager_msgs::RoadTypeEnum::*PUBLIC_ROAD* 5)

(defun system_manager_msgs::RoadTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::RoadTypeEnum::*UNKNOWN*)
        ((= const 1) 'system_manager_msgs::RoadTypeEnum::*LEVEL*)
        ((= const 2) 'system_manager_msgs::RoadTypeEnum::*DOWNHILL*)
        ((= const 3) 'system_manager_msgs::RoadTypeEnum::*UPHILL*)
        ((= const 4) 'system_manager_msgs::RoadTypeEnum::*GROUND_PARKING*)
        ((= const 5) 'system_manager_msgs::RoadTypeEnum::*PUBLIC_ROAD*)
        (t nil)))

(defclass system_manager_msgs::RoadTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::RoadTypeEnum
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

(setf (get system_manager_msgs::RoadTypeEnum :md5sum-) "c0ce95b67aad696d2b352a4e91ec64aa")
(setf (get system_manager_msgs::RoadTypeEnum :datatype-) "system_manager_msgs/RoadTypeEnum")
(setf (get system_manager_msgs::RoadTypeEnum :definition-)
      "uint8 UNKNOWN = 0
uint8 LEVEL = 1
uint8 DOWNHILL = 2
uint8 UPHILL = 3
uint8 GROUND_PARKING = 4
uint8 PUBLIC_ROAD = 5
uint8 value

")



(provide :system_manager_msgs/RoadTypeEnum "c0ce95b67aad696d2b352a4e91ec64aa")


