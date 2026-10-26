;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysPlanningInfoForParking)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysPlanningInfoForParking (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGINFOFORPARKING")
  (make-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGINFOFORPARKING"))

(in-package "ROS")
;;//! \htmlinclude SysPlanningInfoForParking.msg.html


(defclass system_manager_msgs::SysPlanningInfoForParking
  :super ros::object
  :slots (_mode _id _wireless_charge _parking_direction ))

(defmethod system_manager_msgs::SysPlanningInfoForParking
  (:init
   (&key
    ((:mode __mode) (instance system_manager_msgs::SysPlanningModeTypeForParking :init))
    ((:id __id) 0)
    ((:wireless_charge __wireless_charge) nil)
    ((:parking_direction __parking_direction) (instance system_manager_msgs::ParkingDirectionType :init))
    )
   (send-super :init)
   (setq _mode __mode)
   (setq _id (round __id))
   (setq _wireless_charge __wireless_charge)
   (setq _parking_direction __parking_direction)
   self)
  (:mode
   (&rest __mode)
   (if (keywordp (car __mode))
       (send* _mode __mode)
     (progn
       (if __mode (setq _mode (car __mode)))
       _mode)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:wireless_charge
   (&optional (__wireless_charge :null))
   (if (not (eq __wireless_charge :null)) (setq _wireless_charge __wireless_charge)) _wireless_charge)
  (:parking_direction
   (&rest __parking_direction)
   (if (keywordp (car __parking_direction))
       (send* _parking_direction __parking_direction)
     (progn
       (if __parking_direction (setq _parking_direction (car __parking_direction)))
       _parking_direction)))
  (:serialization-length
   ()
   (+
    ;; system_manager_msgs/SysPlanningModeTypeForParking _mode
    (send _mode :serialization-length)
    ;; uint32 _id
    4
    ;; bool _wireless_charge
    1
    ;; system_manager_msgs/ParkingDirectionType _parking_direction
    (send _parking_direction :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; system_manager_msgs/SysPlanningModeTypeForParking _mode
       (send _mode :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; bool _wireless_charge
       (if _wireless_charge (write-byte -1 s) (write-byte 0 s))
     ;; system_manager_msgs/ParkingDirectionType _parking_direction
       (send _parking_direction :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; system_manager_msgs/SysPlanningModeTypeForParking _mode
     (send _mode :deserialize buf ptr-) (incf ptr- (send _mode :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _wireless_charge
     (setq _wireless_charge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; system_manager_msgs/ParkingDirectionType _parking_direction
     (send _parking_direction :deserialize buf ptr-) (incf ptr- (send _parking_direction :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::SysPlanningInfoForParking :md5sum-) "50faaf8c956959a45a6177170cecd2f4")
(setf (get system_manager_msgs::SysPlanningInfoForParking :datatype-) "system_manager_msgs/SysPlanningInfoForParking")
(setf (get system_manager_msgs::SysPlanningInfoForParking :definition-)
      "system_manager_msgs/SysPlanningModeTypeForParking mode
uint32 id
bool wireless_charge
system_manager_msgs/ParkingDirectionType parking_direction

================================================================================
MSG: system_manager_msgs/SysPlanningModeTypeForParking
uint8 PLANNING_APA = 1
uint8 PLANNING_LVP = 2
uint8 PLANNING_SVP = 3
uint8 PLANNING_NEARBY = 4
uint8 value

================================================================================
MSG: system_manager_msgs/ParkingDirectionType
uint32 AUTO_SELECT = 0
uint32 PERPENDICULAR_FRONT_OUT = 1
uint32 PERPENDICULAR_FRONT_LEFT_OUT = 2
uint32 PERPENDICULAR_FRONT_RIGHT_OUT = 4
uint32 PERPENDICULAR_REAR_OUT = 8
uint32 PERPENDICULAR_REAR_LEFT_OUT = 16
uint32 PERPENDICULAR_REAR_RIGHT_OUT = 32
uint32 PARALLEL_LEFT_OUT = 64
uint32 PARALLEL_LEFT_FRONT_OUT = 128
uint32 PARALLEL_RIGHT_OUT = 256
uint32 PARALLEL_RIGHT_FRONT_OUT = 512
uint32 FRONT_IN = 2001
uint32 BACK_IN = 2002
uint32 value

")



(provide :system_manager_msgs/SysPlanningInfoForParking "50faaf8c956959a45a6177170cecd2f4")


