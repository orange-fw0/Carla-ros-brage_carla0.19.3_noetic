;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::TurnSignalCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'TurnSignalCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::TURNSIGNALCOMMAND")
  (make-package "ENDPOINT_MSGS::TURNSIGNALCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude TurnSignalCommand.msg.html


(defclass endpoint_msgs::TurnSignalCommand
  :super ros::object
  :slots (_turn_signal_enable _turn_signal_state ))

(defmethod endpoint_msgs::TurnSignalCommand
  (:init
   (&key
    ((:turn_signal_enable __turn_signal_enable) nil)
    ((:turn_signal_state __turn_signal_state) (instance endpoint_msgs::TurnSignal :init))
    )
   (send-super :init)
   (setq _turn_signal_enable __turn_signal_enable)
   (setq _turn_signal_state __turn_signal_state)
   self)
  (:turn_signal_enable
   (&optional (__turn_signal_enable :null))
   (if (not (eq __turn_signal_enable :null)) (setq _turn_signal_enable __turn_signal_enable)) _turn_signal_enable)
  (:turn_signal_state
   (&rest __turn_signal_state)
   (if (keywordp (car __turn_signal_state))
       (send* _turn_signal_state __turn_signal_state)
     (progn
       (if __turn_signal_state (setq _turn_signal_state (car __turn_signal_state)))
       _turn_signal_state)))
  (:serialization-length
   ()
   (+
    ;; bool _turn_signal_enable
    1
    ;; endpoint_msgs/TurnSignal _turn_signal_state
    (send _turn_signal_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _turn_signal_enable
       (if _turn_signal_enable (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/TurnSignal _turn_signal_state
       (send _turn_signal_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _turn_signal_enable
     (setq _turn_signal_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/TurnSignal _turn_signal_state
     (send _turn_signal_state :deserialize buf ptr-) (incf ptr- (send _turn_signal_state :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::TurnSignalCommand :md5sum-) "f2879d580ed4b1fcfc2133a5e9fc9408")
(setf (get endpoint_msgs::TurnSignalCommand :datatype-) "endpoint_msgs/TurnSignalCommand")
(setf (get endpoint_msgs::TurnSignalCommand :definition-)
      "bool turn_signal_enable
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



(provide :endpoint_msgs/TurnSignalCommand "f2879d580ed4b1fcfc2133a5e9fc9408")


