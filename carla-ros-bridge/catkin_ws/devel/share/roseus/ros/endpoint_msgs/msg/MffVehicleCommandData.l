;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::MffVehicleCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'MffVehicleCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::MFFVEHICLECOMMANDDATA")
  (make-package "ENDPOINT_MSGS::MFFVEHICLECOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude MffVehicleCommandData.msg.html


(defclass endpoint_msgs::MffVehicleCommandData
  :super ros::object
  :slots (_timestamp_us _heat_wire_command _rearview_mirror_command _suspension_comand _sentrymode_command _turn_signal_command ))

(defmethod endpoint_msgs::MffVehicleCommandData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:heat_wire_command __heat_wire_command) (instance endpoint_msgs::HeatWireCommand :init))
    ((:rearview_mirror_command __rearview_mirror_command) (instance endpoint_msgs::RearviewMirrorCommand :init))
    ((:suspension_comand __suspension_comand) (instance endpoint_msgs::SuspensionCommand :init))
    ((:sentrymode_command __sentrymode_command) (instance endpoint_msgs::SentryModeCommand :init))
    ((:turn_signal_command __turn_signal_command) (instance endpoint_msgs::TurnSignalCommand :init))
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _heat_wire_command __heat_wire_command)
   (setq _rearview_mirror_command __rearview_mirror_command)
   (setq _suspension_comand __suspension_comand)
   (setq _sentrymode_command __sentrymode_command)
   (setq _turn_signal_command __turn_signal_command)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:heat_wire_command
   (&rest __heat_wire_command)
   (if (keywordp (car __heat_wire_command))
       (send* _heat_wire_command __heat_wire_command)
     (progn
       (if __heat_wire_command (setq _heat_wire_command (car __heat_wire_command)))
       _heat_wire_command)))
  (:rearview_mirror_command
   (&rest __rearview_mirror_command)
   (if (keywordp (car __rearview_mirror_command))
       (send* _rearview_mirror_command __rearview_mirror_command)
     (progn
       (if __rearview_mirror_command (setq _rearview_mirror_command (car __rearview_mirror_command)))
       _rearview_mirror_command)))
  (:suspension_comand
   (&rest __suspension_comand)
   (if (keywordp (car __suspension_comand))
       (send* _suspension_comand __suspension_comand)
     (progn
       (if __suspension_comand (setq _suspension_comand (car __suspension_comand)))
       _suspension_comand)))
  (:sentrymode_command
   (&rest __sentrymode_command)
   (if (keywordp (car __sentrymode_command))
       (send* _sentrymode_command __sentrymode_command)
     (progn
       (if __sentrymode_command (setq _sentrymode_command (car __sentrymode_command)))
       _sentrymode_command)))
  (:turn_signal_command
   (&rest __turn_signal_command)
   (if (keywordp (car __turn_signal_command))
       (send* _turn_signal_command __turn_signal_command)
     (progn
       (if __turn_signal_command (setq _turn_signal_command (car __turn_signal_command)))
       _turn_signal_command)))
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/HeatWireCommand _heat_wire_command
    (send _heat_wire_command :serialization-length)
    ;; endpoint_msgs/RearviewMirrorCommand _rearview_mirror_command
    (send _rearview_mirror_command :serialization-length)
    ;; endpoint_msgs/SuspensionCommand _suspension_comand
    (send _suspension_comand :serialization-length)
    ;; endpoint_msgs/SentryModeCommand _sentrymode_command
    (send _sentrymode_command :serialization-length)
    ;; endpoint_msgs/TurnSignalCommand _turn_signal_command
    (send _turn_signal_command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp_us . bv) 1) -1) s))
             ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_timestamp_us . bv) 0) s)
              (write-long (if (>= _timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp_us s)(write-long (if (>= _timestamp_us 0) 0 #xffffffff) s)))
     ;; endpoint_msgs/HeatWireCommand _heat_wire_command
       (send _heat_wire_command :serialize s)
     ;; endpoint_msgs/RearviewMirrorCommand _rearview_mirror_command
       (send _rearview_mirror_command :serialize s)
     ;; endpoint_msgs/SuspensionCommand _suspension_comand
       (send _suspension_comand :serialize s)
     ;; endpoint_msgs/SentryModeCommand _sentrymode_command
       (send _sentrymode_command :serialize s)
     ;; endpoint_msgs/TurnSignalCommand _turn_signal_command
       (send _turn_signal_command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; endpoint_msgs/HeatWireCommand _heat_wire_command
     (send _heat_wire_command :deserialize buf ptr-) (incf ptr- (send _heat_wire_command :serialization-length))
   ;; endpoint_msgs/RearviewMirrorCommand _rearview_mirror_command
     (send _rearview_mirror_command :deserialize buf ptr-) (incf ptr- (send _rearview_mirror_command :serialization-length))
   ;; endpoint_msgs/SuspensionCommand _suspension_comand
     (send _suspension_comand :deserialize buf ptr-) (incf ptr- (send _suspension_comand :serialization-length))
   ;; endpoint_msgs/SentryModeCommand _sentrymode_command
     (send _sentrymode_command :deserialize buf ptr-) (incf ptr- (send _sentrymode_command :serialization-length))
   ;; endpoint_msgs/TurnSignalCommand _turn_signal_command
     (send _turn_signal_command :deserialize buf ptr-) (incf ptr- (send _turn_signal_command :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::MffVehicleCommandData :md5sum-) "43d96094e63e3fa9197ef19e0cceec16")
(setf (get endpoint_msgs::MffVehicleCommandData :datatype-) "endpoint_msgs/MffVehicleCommandData")
(setf (get endpoint_msgs::MffVehicleCommandData :definition-)
      "uint64 timestamp_us
endpoint_msgs/HeatWireCommand heat_wire_command
endpoint_msgs/RearviewMirrorCommand rearview_mirror_command
endpoint_msgs/SuspensionCommand suspension_comand
endpoint_msgs/SentryModeCommand sentrymode_command
endpoint_msgs/TurnSignalCommand turn_signal_command

================================================================================
MSG: endpoint_msgs/HeatWireCommand
endpoint_msgs/CameraSurfaceCondition ff_camera_status
endpoint_msgs/CameraSurfaceCondition fw_camera_status
endpoint_msgs/HeatWireControlType heat_wire_control

================================================================================
MSG: endpoint_msgs/CameraSurfaceCondition
uint8 INVALID = 0
uint8 NORMAL = 1
uint8 WATER = 2
uint8 MOISTURE = 3
uint8 BLOCKAGE = 4
uint8 DIZZY = 5
uint8 DARKNESS = 6
uint8 DIRTY = 7
uint8 RESERVED1 = 8
uint8 RESERVED2 = 9
uint8 RESERVED3 = 10
uint8 RESERVED4 = 11
uint8 RESERVED5 = 12
uint8 RESERVED6 = 13
uint8 RESERVED7 = 14
uint8 RESERVED8 = 15
uint8 value

================================================================================
MSG: endpoint_msgs/HeatWireControlType
uint8 NONE = 0
uint8 STANDBY = 1
uint8 HEAT = 2
uint8 NOHEAT = 3
uint8 FAILURE = 255
uint8 value

================================================================================
MSG: endpoint_msgs/RearviewMirrorCommand
bool rearview_mirror_enable
endpoint_msgs/MirrorState rearview_mirror_command
endpoint_msgs/RWhSteerModType rwheel_steer_mode

================================================================================
MSG: endpoint_msgs/MirrorState
uint8 NO_REQUEST = 0
uint8 REQUEST_UNFOLD = 1
uint8 REQUEST_FOLD = 2
uint8 RESERVED1 = 3
uint8 value

================================================================================
MSG: endpoint_msgs/RWhSteerModType
uint8 NO_REQUEST = 0
uint8 CONTROL_REQUEST = 1
uint8 LOCK_REQUEST = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

================================================================================
MSG: endpoint_msgs/SuspensionCommand
bool suspension_enable
bool suspension_adjust_pause
bool suspension_safety_mode
endpoint_msgs/SuspensionLevel suspension_level_command

================================================================================
MSG: endpoint_msgs/SuspensionLevel
uint8 SUSPENSION_NONE = 0
uint8 SUSPENSION_LEVEL1 = 1
uint8 SUSPENSION_LEVEL2 = 2
uint8 SUSPENSION_LEVEL3 = 3
uint8 SUSPENSION_LEVEL4 = 4
uint8 SUSPENSION_LEVEL5 = 5
uint8 SUSPENSION_LEVEL6 = 6
uint8 SUSPENSION_LEVEL7 = 7
uint8 SUSPENSION_LEVEL8 = 8
uint8 SUSPENSION_LEVEL9 = 9
uint8 SUSPENSION_LEVEL10 = 10
uint8 value

================================================================================
MSG: endpoint_msgs/SentryModeCommand
endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level
endpoint_msgs/SentryHornLevel snetry_horn_level

================================================================================
MSG: endpoint_msgs/SentryEmergencyFlasherLevel
uint8 EmergencyFlasherReq_NONE = 0
uint8 EmergencyFlasherReq_LEVEL1 = 1
uint8 EmergencyFlasherReq_LEVEL2 = 2
uint8 value

================================================================================
MSG: endpoint_msgs/SentryHornLevel
uint8 HornReq_NONE = 0
uint8 HornReq_LEVEL1 = 1
uint8 HornReq_LEVEL2 = 2
uint8 value

================================================================================
MSG: endpoint_msgs/TurnSignalCommand
bool turn_signal_enable
endpoint_msgs/TurnSignal turn_signal_state

================================================================================
MSG: endpoint_msgs/TurnSignal
uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 EMERGENCY_FLASHER = 3
uint8 INVALID = 255
uint8 value

")



(provide :endpoint_msgs/MffVehicleCommandData "43d96094e63e3fa9197ef19e0cceec16")


