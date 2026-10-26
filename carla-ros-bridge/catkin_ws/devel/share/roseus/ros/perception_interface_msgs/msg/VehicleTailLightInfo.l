;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleTailLightInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleTailLightInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLETAILLIGHTINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleTailLightInfo.msg.html


(defclass perception_interface_msgs::VehicleTailLightInfo
  :super ros::object
  :slots (_tail_light_score _tail_light_unkown_score _tail_light_off_score _tail_light_on_score _tail_light_high_on_score _tail_light_state ))

(defmethod perception_interface_msgs::VehicleTailLightInfo
  (:init
   (&key
    ((:tail_light_score __tail_light_score) 0.0)
    ((:tail_light_unkown_score __tail_light_unkown_score) 0.0)
    ((:tail_light_off_score __tail_light_off_score) 0.0)
    ((:tail_light_on_score __tail_light_on_score) 0.0)
    ((:tail_light_high_on_score __tail_light_high_on_score) 0.0)
    ((:tail_light_state __tail_light_state) (instance perception_interface_msgs::VehicleTailLightEnum :init))
    )
   (send-super :init)
   (setq _tail_light_score (float __tail_light_score))
   (setq _tail_light_unkown_score (float __tail_light_unkown_score))
   (setq _tail_light_off_score (float __tail_light_off_score))
   (setq _tail_light_on_score (float __tail_light_on_score))
   (setq _tail_light_high_on_score (float __tail_light_high_on_score))
   (setq _tail_light_state __tail_light_state)
   self)
  (:tail_light_score
   (&optional __tail_light_score)
   (if __tail_light_score (setq _tail_light_score __tail_light_score)) _tail_light_score)
  (:tail_light_unkown_score
   (&optional __tail_light_unkown_score)
   (if __tail_light_unkown_score (setq _tail_light_unkown_score __tail_light_unkown_score)) _tail_light_unkown_score)
  (:tail_light_off_score
   (&optional __tail_light_off_score)
   (if __tail_light_off_score (setq _tail_light_off_score __tail_light_off_score)) _tail_light_off_score)
  (:tail_light_on_score
   (&optional __tail_light_on_score)
   (if __tail_light_on_score (setq _tail_light_on_score __tail_light_on_score)) _tail_light_on_score)
  (:tail_light_high_on_score
   (&optional __tail_light_high_on_score)
   (if __tail_light_high_on_score (setq _tail_light_high_on_score __tail_light_high_on_score)) _tail_light_high_on_score)
  (:tail_light_state
   (&rest __tail_light_state)
   (if (keywordp (car __tail_light_state))
       (send* _tail_light_state __tail_light_state)
     (progn
       (if __tail_light_state (setq _tail_light_state (car __tail_light_state)))
       _tail_light_state)))
  (:serialization-length
   ()
   (+
    ;; float32 _tail_light_score
    4
    ;; float32 _tail_light_unkown_score
    4
    ;; float32 _tail_light_off_score
    4
    ;; float32 _tail_light_on_score
    4
    ;; float32 _tail_light_high_on_score
    4
    ;; perception_interface_msgs/VehicleTailLightEnum _tail_light_state
    (send _tail_light_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _tail_light_score
       (sys::poke _tail_light_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tail_light_unkown_score
       (sys::poke _tail_light_unkown_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tail_light_off_score
       (sys::poke _tail_light_off_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tail_light_on_score
       (sys::poke _tail_light_on_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tail_light_high_on_score
       (sys::poke _tail_light_high_on_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/VehicleTailLightEnum _tail_light_state
       (send _tail_light_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _tail_light_score
     (setq _tail_light_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tail_light_unkown_score
     (setq _tail_light_unkown_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tail_light_off_score
     (setq _tail_light_off_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tail_light_on_score
     (setq _tail_light_on_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tail_light_high_on_score
     (setq _tail_light_high_on_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/VehicleTailLightEnum _tail_light_state
     (send _tail_light_state :deserialize buf ptr-) (incf ptr- (send _tail_light_state :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::VehicleTailLightInfo :md5sum-) "4a8815ddddbabed47854df7a189dbad8")
(setf (get perception_interface_msgs::VehicleTailLightInfo :datatype-) "perception_interface_msgs/VehicleTailLightInfo")
(setf (get perception_interface_msgs::VehicleTailLightInfo :definition-)
      "float32 tail_light_score
float32 tail_light_unkown_score
float32 tail_light_off_score
float32 tail_light_on_score
float32 tail_light_high_on_score
perception_interface_msgs/VehicleTailLightEnum tail_light_state

================================================================================
MSG: perception_interface_msgs/VehicleTailLightEnum
uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0
uint8 VEHICLE_TAILLIGHT_OFF = 1
uint8 VEHICLE_TAILLIGHT_ON = 2
uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3
uint8 value

")



(provide :perception_interface_msgs/VehicleTailLightInfo "4a8815ddddbabed47854df7a189dbad8")


