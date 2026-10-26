;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleBlinkLightInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleBlinkLightInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBLINKLIGHTINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleBlinkLightInfo.msg.html


(defclass perception_interface_msgs::VehicleBlinkLightInfo
  :super ros::object
  :slots (_blink_light_left_score _blink_light_right_score _blink_light_both_score _blink_light_state ))

(defmethod perception_interface_msgs::VehicleBlinkLightInfo
  (:init
   (&key
    ((:blink_light_left_score __blink_light_left_score) 0.0)
    ((:blink_light_right_score __blink_light_right_score) 0.0)
    ((:blink_light_both_score __blink_light_both_score) 0.0)
    ((:blink_light_state __blink_light_state) (instance perception_interface_msgs::VehicleBlinkLightEnum :init))
    )
   (send-super :init)
   (setq _blink_light_left_score (float __blink_light_left_score))
   (setq _blink_light_right_score (float __blink_light_right_score))
   (setq _blink_light_both_score (float __blink_light_both_score))
   (setq _blink_light_state __blink_light_state)
   self)
  (:blink_light_left_score
   (&optional __blink_light_left_score)
   (if __blink_light_left_score (setq _blink_light_left_score __blink_light_left_score)) _blink_light_left_score)
  (:blink_light_right_score
   (&optional __blink_light_right_score)
   (if __blink_light_right_score (setq _blink_light_right_score __blink_light_right_score)) _blink_light_right_score)
  (:blink_light_both_score
   (&optional __blink_light_both_score)
   (if __blink_light_both_score (setq _blink_light_both_score __blink_light_both_score)) _blink_light_both_score)
  (:blink_light_state
   (&rest __blink_light_state)
   (if (keywordp (car __blink_light_state))
       (send* _blink_light_state __blink_light_state)
     (progn
       (if __blink_light_state (setq _blink_light_state (car __blink_light_state)))
       _blink_light_state)))
  (:serialization-length
   ()
   (+
    ;; float32 _blink_light_left_score
    4
    ;; float32 _blink_light_right_score
    4
    ;; float32 _blink_light_both_score
    4
    ;; perception_interface_msgs/VehicleBlinkLightEnum _blink_light_state
    (send _blink_light_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _blink_light_left_score
       (sys::poke _blink_light_left_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _blink_light_right_score
       (sys::poke _blink_light_right_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _blink_light_both_score
       (sys::poke _blink_light_both_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/VehicleBlinkLightEnum _blink_light_state
       (send _blink_light_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _blink_light_left_score
     (setq _blink_light_left_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _blink_light_right_score
     (setq _blink_light_right_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _blink_light_both_score
     (setq _blink_light_both_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/VehicleBlinkLightEnum _blink_light_state
     (send _blink_light_state :deserialize buf ptr-) (incf ptr- (send _blink_light_state :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::VehicleBlinkLightInfo :md5sum-) "606d0d8dfffcbb1d95da9e4f7fc5fec4")
(setf (get perception_interface_msgs::VehicleBlinkLightInfo :datatype-) "perception_interface_msgs/VehicleBlinkLightInfo")
(setf (get perception_interface_msgs::VehicleBlinkLightInfo :definition-)
      "float32 blink_light_left_score
float32 blink_light_right_score
float32 blink_light_both_score
perception_interface_msgs/VehicleBlinkLightEnum blink_light_state

================================================================================
MSG: perception_interface_msgs/VehicleBlinkLightEnum
uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0
uint8 VEHICLE_BLINKLIGHT_OFF = 1
uint8 VEHICLE_BLINKLIGHT_LEFT = 2
uint8 VEHICLE_BLINKLIGHT_RIGHT = 3
uint8 VEHICLE_BLINKLIGHT_BOTH = 4
uint8 value

")



(provide :perception_interface_msgs/VehicleBlinkLightInfo "606d0d8dfffcbb1d95da9e4f7fc5fec4")


