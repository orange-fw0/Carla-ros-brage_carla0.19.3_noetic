;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SystemCmdChildType)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SystemCmdChildType (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSTEMCMDCHILDTYPE")
  (make-package "SYSTEM_MANAGER_MSGS::SYSTEMCMDCHILDTYPE"))

(in-package "ROS")
;;//! \htmlinclude SystemCmdChildType.msg.html


(defclass system_manager_msgs::SystemCmdChildType
  :super ros::object
  :slots (_steering_req _gear_req _brake_req _light_req ))

(defmethod system_manager_msgs::SystemCmdChildType
  (:init
   (&key
    ((:steering_req __steering_req) (instance system_manager_msgs::SteeringReq :init))
    ((:gear_req __gear_req) (instance system_manager_msgs::GearReq :init))
    ((:brake_req __brake_req) (instance system_manager_msgs::BrakeReq :init))
    ((:light_req __light_req) (instance system_manager_msgs::LightReq :init))
    )
   (send-super :init)
   (setq _steering_req __steering_req)
   (setq _gear_req __gear_req)
   (setq _brake_req __brake_req)
   (setq _light_req __light_req)
   self)
  (:steering_req
   (&rest __steering_req)
   (if (keywordp (car __steering_req))
       (send* _steering_req __steering_req)
     (progn
       (if __steering_req (setq _steering_req (car __steering_req)))
       _steering_req)))
  (:gear_req
   (&rest __gear_req)
   (if (keywordp (car __gear_req))
       (send* _gear_req __gear_req)
     (progn
       (if __gear_req (setq _gear_req (car __gear_req)))
       _gear_req)))
  (:brake_req
   (&rest __brake_req)
   (if (keywordp (car __brake_req))
       (send* _brake_req __brake_req)
     (progn
       (if __brake_req (setq _brake_req (car __brake_req)))
       _brake_req)))
  (:light_req
   (&rest __light_req)
   (if (keywordp (car __light_req))
       (send* _light_req __light_req)
     (progn
       (if __light_req (setq _light_req (car __light_req)))
       _light_req)))
  (:serialization-length
   ()
   (+
    ;; system_manager_msgs/SteeringReq _steering_req
    (send _steering_req :serialization-length)
    ;; system_manager_msgs/GearReq _gear_req
    (send _gear_req :serialization-length)
    ;; system_manager_msgs/BrakeReq _brake_req
    (send _brake_req :serialization-length)
    ;; system_manager_msgs/LightReq _light_req
    (send _light_req :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; system_manager_msgs/SteeringReq _steering_req
       (send _steering_req :serialize s)
     ;; system_manager_msgs/GearReq _gear_req
       (send _gear_req :serialize s)
     ;; system_manager_msgs/BrakeReq _brake_req
       (send _brake_req :serialize s)
     ;; system_manager_msgs/LightReq _light_req
       (send _light_req :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; system_manager_msgs/SteeringReq _steering_req
     (send _steering_req :deserialize buf ptr-) (incf ptr- (send _steering_req :serialization-length))
   ;; system_manager_msgs/GearReq _gear_req
     (send _gear_req :deserialize buf ptr-) (incf ptr- (send _gear_req :serialization-length))
   ;; system_manager_msgs/BrakeReq _brake_req
     (send _brake_req :deserialize buf ptr-) (incf ptr- (send _brake_req :serialization-length))
   ;; system_manager_msgs/LightReq _light_req
     (send _light_req :deserialize buf ptr-) (incf ptr- (send _light_req :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::SystemCmdChildType :md5sum-) "623a8dc6a825d2ebe524b39f8b734bbc")
(setf (get system_manager_msgs::SystemCmdChildType :datatype-) "system_manager_msgs/SystemCmdChildType")
(setf (get system_manager_msgs::SystemCmdChildType :definition-)
      "system_manager_msgs/SteeringReq steering_req
system_manager_msgs/GearReq gear_req
system_manager_msgs/BrakeReq brake_req
system_manager_msgs/LightReq light_req

================================================================================
MSG: system_manager_msgs/SteeringReq
uint8 NO_STEERING_RESET = 0
uint8 STEERING_RESET = 1
uint8 value

================================================================================
MSG: system_manager_msgs/GearReq
uint8 NO_REQ = 0
uint8 GEAR_P = 1
uint8 value

================================================================================
MSG: system_manager_msgs/BrakeReq
uint8 NO_REQ = 0
uint8 HEAVY_BRAKE = 1
uint8 NO_BRAKE = 2
uint8 value

================================================================================
MSG: system_manager_msgs/LightReq
uint8 NO_REQ = 0
uint8 TURN_OFF = 1
uint8 EMERGENCY_FLASHER = 2
uint8 value

")



(provide :system_manager_msgs/SystemCmdChildType "623a8dc6a825d2ebe524b39f8b734bbc")


