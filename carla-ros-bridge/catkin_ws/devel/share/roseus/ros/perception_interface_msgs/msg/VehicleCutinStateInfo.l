;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleCutinStateInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleCutinStateInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLECUTINSTATEINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLECUTINSTATEINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleCutinStateInfo.msg.html


(defclass perception_interface_msgs::VehicleCutinStateInfo
  :super ros::object
  :slots (_cutin_state_on_score _cutin_state ))

(defmethod perception_interface_msgs::VehicleCutinStateInfo
  (:init
   (&key
    ((:cutin_state_on_score __cutin_state_on_score) 0.0)
    ((:cutin_state __cutin_state) (instance perception_interface_msgs::VehicleCutinStateEnum :init))
    )
   (send-super :init)
   (setq _cutin_state_on_score (float __cutin_state_on_score))
   (setq _cutin_state __cutin_state)
   self)
  (:cutin_state_on_score
   (&optional __cutin_state_on_score)
   (if __cutin_state_on_score (setq _cutin_state_on_score __cutin_state_on_score)) _cutin_state_on_score)
  (:cutin_state
   (&rest __cutin_state)
   (if (keywordp (car __cutin_state))
       (send* _cutin_state __cutin_state)
     (progn
       (if __cutin_state (setq _cutin_state (car __cutin_state)))
       _cutin_state)))
  (:serialization-length
   ()
   (+
    ;; float32 _cutin_state_on_score
    4
    ;; perception_interface_msgs/VehicleCutinStateEnum _cutin_state
    (send _cutin_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cutin_state_on_score
       (sys::poke _cutin_state_on_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/VehicleCutinStateEnum _cutin_state
       (send _cutin_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cutin_state_on_score
     (setq _cutin_state_on_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/VehicleCutinStateEnum _cutin_state
     (send _cutin_state :deserialize buf ptr-) (incf ptr- (send _cutin_state :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::VehicleCutinStateInfo :md5sum-) "ad83d7a1b742550b2d26a9be211c7453")
(setf (get perception_interface_msgs::VehicleCutinStateInfo :datatype-) "perception_interface_msgs/VehicleCutinStateInfo")
(setf (get perception_interface_msgs::VehicleCutinStateInfo :definition-)
      "float32 cutin_state_on_score
perception_interface_msgs/VehicleCutinStateEnum cutin_state

================================================================================
MSG: perception_interface_msgs/VehicleCutinStateEnum
uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0
uint8 VEHICLE_CUTINSTATE_OFF = 1
uint8 VEHICLE_CUTINSTATE_ON = 2
uint8 value

")



(provide :perception_interface_msgs/VehicleCutinStateInfo "ad83d7a1b742550b2d26a9be211c7453")


