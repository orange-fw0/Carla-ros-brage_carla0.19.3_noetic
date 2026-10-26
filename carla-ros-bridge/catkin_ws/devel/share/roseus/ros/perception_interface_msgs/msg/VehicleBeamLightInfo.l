;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleBeamLightInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleBeamLightInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLEBEAMLIGHTINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleBeamLightInfo.msg.html


(defclass perception_interface_msgs::VehicleBeamLightInfo
  :super ros::object
  :slots (_beam_light_on_score _beam_light_state ))

(defmethod perception_interface_msgs::VehicleBeamLightInfo
  (:init
   (&key
    ((:beam_light_on_score __beam_light_on_score) 0.0)
    ((:beam_light_state __beam_light_state) (instance perception_interface_msgs::VehicleBeamLightEnum :init))
    )
   (send-super :init)
   (setq _beam_light_on_score (float __beam_light_on_score))
   (setq _beam_light_state __beam_light_state)
   self)
  (:beam_light_on_score
   (&optional __beam_light_on_score)
   (if __beam_light_on_score (setq _beam_light_on_score __beam_light_on_score)) _beam_light_on_score)
  (:beam_light_state
   (&rest __beam_light_state)
   (if (keywordp (car __beam_light_state))
       (send* _beam_light_state __beam_light_state)
     (progn
       (if __beam_light_state (setq _beam_light_state (car __beam_light_state)))
       _beam_light_state)))
  (:serialization-length
   ()
   (+
    ;; float32 _beam_light_on_score
    4
    ;; perception_interface_msgs/VehicleBeamLightEnum _beam_light_state
    (send _beam_light_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _beam_light_on_score
       (sys::poke _beam_light_on_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/VehicleBeamLightEnum _beam_light_state
       (send _beam_light_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _beam_light_on_score
     (setq _beam_light_on_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/VehicleBeamLightEnum _beam_light_state
     (send _beam_light_state :deserialize buf ptr-) (incf ptr- (send _beam_light_state :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::VehicleBeamLightInfo :md5sum-) "1ccd62a35dcb7c8f93813ae0aab70949")
(setf (get perception_interface_msgs::VehicleBeamLightInfo :datatype-) "perception_interface_msgs/VehicleBeamLightInfo")
(setf (get perception_interface_msgs::VehicleBeamLightInfo :definition-)
      "float32 beam_light_on_score
perception_interface_msgs/VehicleBeamLightEnum beam_light_state

================================================================================
MSG: perception_interface_msgs/VehicleBeamLightEnum
uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0
uint8 VEHICLE_BEAMLIGHT_OFF = 1
uint8 VEHICLE_BEAMLIGHT_LOW = 2
uint8 VEHICLE_BEAMLIGHT_HIGH = 3
uint8 value

")



(provide :perception_interface_msgs/VehicleBeamLightInfo "1ccd62a35dcb7c8f93813ae0aab70949")


