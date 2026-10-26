;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleBrakeLightInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleBrakeLightInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBRAKELIGHTINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBRAKELIGHTINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleBrakeLightInfo.msg.html


(defclass perception_interface_msgs::VehicleBrakeLightInfo
  :super ros::object
  :slots (_brake_light_on_score _brake_light_state ))

(defmethod perception_interface_msgs::VehicleBrakeLightInfo
  (:init
   (&key
    ((:brake_light_on_score __brake_light_on_score) 0.0)
    ((:brake_light_state __brake_light_state) (instance perception_interface_msgs::VehicleBrakeLightEnum :init))
    )
   (send-super :init)
   (setq _brake_light_on_score (float __brake_light_on_score))
   (setq _brake_light_state __brake_light_state)
   self)
  (:brake_light_on_score
   (&optional __brake_light_on_score)
   (if __brake_light_on_score (setq _brake_light_on_score __brake_light_on_score)) _brake_light_on_score)
  (:brake_light_state
   (&rest __brake_light_state)
   (if (keywordp (car __brake_light_state))
       (send* _brake_light_state __brake_light_state)
     (progn
       (if __brake_light_state (setq _brake_light_state (car __brake_light_state)))
       _brake_light_state)))
  (:serialization-length
   ()
   (+
    ;; float32 _brake_light_on_score
    4
    ;; perception_interface_msgs/VehicleBrakeLightEnum _brake_light_state
    (send _brake_light_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _brake_light_on_score
       (sys::poke _brake_light_on_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/VehicleBrakeLightEnum _brake_light_state
       (send _brake_light_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _brake_light_on_score
     (setq _brake_light_on_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/VehicleBrakeLightEnum _brake_light_state
     (send _brake_light_state :deserialize buf ptr-) (incf ptr- (send _brake_light_state :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::VehicleBrakeLightInfo :md5sum-) "50c3fc188caed8daa3d8596fab9bd9c6")
(setf (get perception_interface_msgs::VehicleBrakeLightInfo :datatype-) "perception_interface_msgs/VehicleBrakeLightInfo")
(setf (get perception_interface_msgs::VehicleBrakeLightInfo :definition-)
      "float32 brake_light_on_score
perception_interface_msgs/VehicleBrakeLightEnum brake_light_state

================================================================================
MSG: perception_interface_msgs/VehicleBrakeLightEnum
uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0
uint8 VEHICLE_BRAKELIGHT_OFF = 1
uint8 VEHICLE_BRAKELIGHT_ON = 2
uint8 value

")



(provide :perception_interface_msgs/VehicleBrakeLightInfo "50c3fc188caed8daa3d8596fab9bd9c6")


