;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::LaneChangeCmd)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'LaneChangeCmd (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::LANECHANGECMD")
  (make-package "SYSTEM_MANAGER_MSGS::LANECHANGECMD"))

(in-package "ROS")
;;//! \htmlinclude LaneChangeCmd.msg.html


(defclass system_manager_msgs::LaneChangeCmd
  :super ros::object
  :slots (_type _direction ))

(defmethod system_manager_msgs::LaneChangeCmd
  (:init
   (&key
    ((:type __type) (instance system_manager_msgs::LaneChangeTypeEnum :init))
    ((:direction __direction) (instance system_manager_msgs::LaneChangeDirectionEnum :init))
    )
   (send-super :init)
   (setq _type __type)
   (setq _direction __direction)
   self)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:serialization-length
   ()
   (+
    ;; system_manager_msgs/LaneChangeTypeEnum _type
    (send _type :serialization-length)
    ;; system_manager_msgs/LaneChangeDirectionEnum _direction
    (send _direction :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; system_manager_msgs/LaneChangeTypeEnum _type
       (send _type :serialize s)
     ;; system_manager_msgs/LaneChangeDirectionEnum _direction
       (send _direction :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; system_manager_msgs/LaneChangeTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; system_manager_msgs/LaneChangeDirectionEnum _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::LaneChangeCmd :md5sum-) "3b28b244e0f7f96a3811cc9ee5ce717e")
(setf (get system_manager_msgs::LaneChangeCmd :datatype-) "system_manager_msgs/LaneChangeCmd")
(setf (get system_manager_msgs::LaneChangeCmd :definition-)
      "system_manager_msgs/LaneChangeTypeEnum type
system_manager_msgs/LaneChangeDirectionEnum direction

================================================================================
MSG: system_manager_msgs/LaneChangeTypeEnum
uint8 FORBIDDEN = 0
uint8 INTERACTIVE = 1
uint8 REMOVE_FORBIDDEN = 2
uint8 REMOVE_INTERACTIVE = 3
uint8 CONFIRM_MODE = 4
uint8 REMOVE_CONFIRM_MODE = 5
uint8 CONFIRM_APPROVED = 6
uint8 CONFIRM_REFUSED = 7
uint8 ENABLE_EVASIVE = 10
uint8 DISABLE_EVASIVE = 11
uint8 FORBIDDEN_INTERACTIVE = 12
uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13
uint8 FORBIDDEN_AUTO = 14
uint8 REMOVE_FORBIDDEN_AUTO = 15
uint8 FORBIDDEN_NAVI = 16
uint8 REMOVE_FORBIDDEN_NAVI = 17
uint8 CONFIRM_TIMEOUT = 18
uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20
uint8 ENABLE_RECOMMAND_AUTOMOUS = 21
uint8 DISABLE_AUTOMOUS = 22
uint8 ENABLE_PREFERED_LANE = 23
uint8 DISABLE_PREFERED_LANE = 24
uint8 LEFT_FIRST_LANE = 25
uint8 LEFT_SECOND_LANE = 26
uint8 value

================================================================================
MSG: system_manager_msgs/LaneChangeDirectionEnum
uint8 LEFT = 0
uint8 RIGHT = 1
uint8 value

")



(provide :system_manager_msgs/LaneChangeCmd "3b28b244e0f7f96a3811cc9ee5ce717e")


