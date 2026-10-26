;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleDoorStateInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleDoorStateInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLEDOORSTATEINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleDoorStateInfo.msg.html


(defclass perception_interface_msgs::VehicleDoorStateInfo
  :super ros::object
  :slots (_door_state_on_score _door_state ))

(defmethod perception_interface_msgs::VehicleDoorStateInfo
  (:init
   (&key
    ((:door_state_on_score __door_state_on_score) 0.0)
    ((:door_state __door_state) (instance perception_interface_msgs::VehicleDoorStateEnum :init))
    )
   (send-super :init)
   (setq _door_state_on_score (float __door_state_on_score))
   (setq _door_state __door_state)
   self)
  (:door_state_on_score
   (&optional __door_state_on_score)
   (if __door_state_on_score (setq _door_state_on_score __door_state_on_score)) _door_state_on_score)
  (:door_state
   (&rest __door_state)
   (if (keywordp (car __door_state))
       (send* _door_state __door_state)
     (progn
       (if __door_state (setq _door_state (car __door_state)))
       _door_state)))
  (:serialization-length
   ()
   (+
    ;; float32 _door_state_on_score
    4
    ;; perception_interface_msgs/VehicleDoorStateEnum _door_state
    (send _door_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _door_state_on_score
       (sys::poke _door_state_on_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/VehicleDoorStateEnum _door_state
       (send _door_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _door_state_on_score
     (setq _door_state_on_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/VehicleDoorStateEnum _door_state
     (send _door_state :deserialize buf ptr-) (incf ptr- (send _door_state :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::VehicleDoorStateInfo :md5sum-) "49a3f186ea63a7da2a4659cd52f7235b")
(setf (get perception_interface_msgs::VehicleDoorStateInfo :datatype-) "perception_interface_msgs/VehicleDoorStateInfo")
(setf (get perception_interface_msgs::VehicleDoorStateInfo :definition-)
      "float32 door_state_on_score
perception_interface_msgs/VehicleDoorStateEnum door_state

================================================================================
MSG: perception_interface_msgs/VehicleDoorStateEnum
uint8 VEHICLE_DOORSTATE_UNKNOWN = 0
uint8 VEHICLE_DOORSTATE_OFF = 1
uint8 VEHICLE_DOORSTATE_ON = 2
uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3
uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4
uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5
uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6
uint8 VEHICLE_DOOR_OPEN_BOTH = 7
uint8 value

")



(provide :perception_interface_msgs/VehicleDoorStateInfo "49a3f186ea63a7da2a4659cd52f7235b")


