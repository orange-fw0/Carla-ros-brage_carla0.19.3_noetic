;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SpeedCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SpeedCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SPEEDCOMMANDDATA")
  (make-package "ENDPOINT_MSGS::SPEEDCOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude SpeedCommandData.msg.html


(defclass endpoint_msgs::SpeedCommandData
  :super ros::object
  :slots (_speed_enable _toque_unload_enable _speed_command _torque_ffwd_command _target_control_motor _target_control_mode _wheel_torque_lim_max _wheel_torque_lim_min _wheel_torque_rate_max _wheel_torque_rate_min _torque_unload_rate ))

(defmethod endpoint_msgs::SpeedCommandData
  (:init
   (&key
    ((:speed_enable __speed_enable) nil)
    ((:toque_unload_enable __toque_unload_enable) nil)
    ((:speed_command __speed_command) 0.0)
    ((:torque_ffwd_command __torque_ffwd_command) 0.0)
    ((:target_control_motor __target_control_motor) (instance endpoint_msgs::TargetControlMotor :init))
    ((:target_control_mode __target_control_mode) (instance endpoint_msgs::TargetControlMode :init))
    ((:wheel_torque_lim_max __wheel_torque_lim_max) 0.0)
    ((:wheel_torque_lim_min __wheel_torque_lim_min) 0.0)
    ((:wheel_torque_rate_max __wheel_torque_rate_max) 0.0)
    ((:wheel_torque_rate_min __wheel_torque_rate_min) 0.0)
    ((:torque_unload_rate __torque_unload_rate) 0.0)
    )
   (send-super :init)
   (setq _speed_enable __speed_enable)
   (setq _toque_unload_enable __toque_unload_enable)
   (setq _speed_command (float __speed_command))
   (setq _torque_ffwd_command (float __torque_ffwd_command))
   (setq _target_control_motor __target_control_motor)
   (setq _target_control_mode __target_control_mode)
   (setq _wheel_torque_lim_max (float __wheel_torque_lim_max))
   (setq _wheel_torque_lim_min (float __wheel_torque_lim_min))
   (setq _wheel_torque_rate_max (float __wheel_torque_rate_max))
   (setq _wheel_torque_rate_min (float __wheel_torque_rate_min))
   (setq _torque_unload_rate (float __torque_unload_rate))
   self)
  (:speed_enable
   (&optional (__speed_enable :null))
   (if (not (eq __speed_enable :null)) (setq _speed_enable __speed_enable)) _speed_enable)
  (:toque_unload_enable
   (&optional (__toque_unload_enable :null))
   (if (not (eq __toque_unload_enable :null)) (setq _toque_unload_enable __toque_unload_enable)) _toque_unload_enable)
  (:speed_command
   (&optional __speed_command)
   (if __speed_command (setq _speed_command __speed_command)) _speed_command)
  (:torque_ffwd_command
   (&optional __torque_ffwd_command)
   (if __torque_ffwd_command (setq _torque_ffwd_command __torque_ffwd_command)) _torque_ffwd_command)
  (:target_control_motor
   (&rest __target_control_motor)
   (if (keywordp (car __target_control_motor))
       (send* _target_control_motor __target_control_motor)
     (progn
       (if __target_control_motor (setq _target_control_motor (car __target_control_motor)))
       _target_control_motor)))
  (:target_control_mode
   (&rest __target_control_mode)
   (if (keywordp (car __target_control_mode))
       (send* _target_control_mode __target_control_mode)
     (progn
       (if __target_control_mode (setq _target_control_mode (car __target_control_mode)))
       _target_control_mode)))
  (:wheel_torque_lim_max
   (&optional __wheel_torque_lim_max)
   (if __wheel_torque_lim_max (setq _wheel_torque_lim_max __wheel_torque_lim_max)) _wheel_torque_lim_max)
  (:wheel_torque_lim_min
   (&optional __wheel_torque_lim_min)
   (if __wheel_torque_lim_min (setq _wheel_torque_lim_min __wheel_torque_lim_min)) _wheel_torque_lim_min)
  (:wheel_torque_rate_max
   (&optional __wheel_torque_rate_max)
   (if __wheel_torque_rate_max (setq _wheel_torque_rate_max __wheel_torque_rate_max)) _wheel_torque_rate_max)
  (:wheel_torque_rate_min
   (&optional __wheel_torque_rate_min)
   (if __wheel_torque_rate_min (setq _wheel_torque_rate_min __wheel_torque_rate_min)) _wheel_torque_rate_min)
  (:torque_unload_rate
   (&optional __torque_unload_rate)
   (if __torque_unload_rate (setq _torque_unload_rate __torque_unload_rate)) _torque_unload_rate)
  (:serialization-length
   ()
   (+
    ;; bool _speed_enable
    1
    ;; bool _toque_unload_enable
    1
    ;; float32 _speed_command
    4
    ;; float32 _torque_ffwd_command
    4
    ;; endpoint_msgs/TargetControlMotor _target_control_motor
    (send _target_control_motor :serialization-length)
    ;; endpoint_msgs/TargetControlMode _target_control_mode
    (send _target_control_mode :serialization-length)
    ;; float32 _wheel_torque_lim_max
    4
    ;; float32 _wheel_torque_lim_min
    4
    ;; float32 _wheel_torque_rate_max
    4
    ;; float32 _wheel_torque_rate_min
    4
    ;; float32 _torque_unload_rate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _speed_enable
       (if _speed_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _toque_unload_enable
       (if _toque_unload_enable (write-byte -1 s) (write-byte 0 s))
     ;; float32 _speed_command
       (sys::poke _speed_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _torque_ffwd_command
       (sys::poke _torque_ffwd_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; endpoint_msgs/TargetControlMotor _target_control_motor
       (send _target_control_motor :serialize s)
     ;; endpoint_msgs/TargetControlMode _target_control_mode
       (send _target_control_mode :serialize s)
     ;; float32 _wheel_torque_lim_max
       (sys::poke _wheel_torque_lim_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_torque_lim_min
       (sys::poke _wheel_torque_lim_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_torque_rate_max
       (sys::poke _wheel_torque_rate_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_torque_rate_min
       (sys::poke _wheel_torque_rate_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _torque_unload_rate
       (sys::poke _torque_unload_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _speed_enable
     (setq _speed_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _toque_unload_enable
     (setq _toque_unload_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _speed_command
     (setq _speed_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _torque_ffwd_command
     (setq _torque_ffwd_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; endpoint_msgs/TargetControlMotor _target_control_motor
     (send _target_control_motor :deserialize buf ptr-) (incf ptr- (send _target_control_motor :serialization-length))
   ;; endpoint_msgs/TargetControlMode _target_control_mode
     (send _target_control_mode :deserialize buf ptr-) (incf ptr- (send _target_control_mode :serialization-length))
   ;; float32 _wheel_torque_lim_max
     (setq _wheel_torque_lim_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_torque_lim_min
     (setq _wheel_torque_lim_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_torque_rate_max
     (setq _wheel_torque_rate_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_torque_rate_min
     (setq _wheel_torque_rate_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _torque_unload_rate
     (setq _torque_unload_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get endpoint_msgs::SpeedCommandData :md5sum-) "eeb860bee7aa67ec8ce4d5fe72162bb8")
(setf (get endpoint_msgs::SpeedCommandData :datatype-) "endpoint_msgs/SpeedCommandData")
(setf (get endpoint_msgs::SpeedCommandData :definition-)
      "bool speed_enable
bool toque_unload_enable
float32 speed_command
float32 torque_ffwd_command
endpoint_msgs/TargetControlMotor target_control_motor
endpoint_msgs/TargetControlMode target_control_mode
float32 wheel_torque_lim_max
float32 wheel_torque_lim_min
float32 wheel_torque_rate_max
float32 wheel_torque_rate_min
float32 torque_unload_rate

================================================================================
MSG: endpoint_msgs/TargetControlMotor
uint8 FL = 0
uint8 FR = 1
uint8 RL = 2
uint8 RR = 3
uint8 FLFR = 4
uint8 RLRR = 5
uint8 RESERVED1 = 6
uint8 RESERVED2 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/TargetControlMode
uint8 NONE = 0
uint8 TORQUE = 1
uint8 SPEED = 2
uint8 RESERVE = 3
uint8 value

")



(provide :endpoint_msgs/SpeedCommandData "eeb860bee7aa67ec8ce4d5fe72162bb8")


