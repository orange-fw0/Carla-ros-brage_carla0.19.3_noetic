;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::RearviewMirrorCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'RearviewMirrorCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::REARVIEWMIRRORCOMMAND")
  (make-package "ENDPOINT_MSGS::REARVIEWMIRRORCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude RearviewMirrorCommand.msg.html


(defclass endpoint_msgs::RearviewMirrorCommand
  :super ros::object
  :slots (_rearview_mirror_enable _rearview_mirror_command _rwheel_steer_mode ))

(defmethod endpoint_msgs::RearviewMirrorCommand
  (:init
   (&key
    ((:rearview_mirror_enable __rearview_mirror_enable) nil)
    ((:rearview_mirror_command __rearview_mirror_command) (instance endpoint_msgs::MirrorState :init))
    ((:rwheel_steer_mode __rwheel_steer_mode) (instance endpoint_msgs::RWhSteerModType :init))
    )
   (send-super :init)
   (setq _rearview_mirror_enable __rearview_mirror_enable)
   (setq _rearview_mirror_command __rearview_mirror_command)
   (setq _rwheel_steer_mode __rwheel_steer_mode)
   self)
  (:rearview_mirror_enable
   (&optional (__rearview_mirror_enable :null))
   (if (not (eq __rearview_mirror_enable :null)) (setq _rearview_mirror_enable __rearview_mirror_enable)) _rearview_mirror_enable)
  (:rearview_mirror_command
   (&rest __rearview_mirror_command)
   (if (keywordp (car __rearview_mirror_command))
       (send* _rearview_mirror_command __rearview_mirror_command)
     (progn
       (if __rearview_mirror_command (setq _rearview_mirror_command (car __rearview_mirror_command)))
       _rearview_mirror_command)))
  (:rwheel_steer_mode
   (&rest __rwheel_steer_mode)
   (if (keywordp (car __rwheel_steer_mode))
       (send* _rwheel_steer_mode __rwheel_steer_mode)
     (progn
       (if __rwheel_steer_mode (setq _rwheel_steer_mode (car __rwheel_steer_mode)))
       _rwheel_steer_mode)))
  (:serialization-length
   ()
   (+
    ;; bool _rearview_mirror_enable
    1
    ;; endpoint_msgs/MirrorState _rearview_mirror_command
    (send _rearview_mirror_command :serialization-length)
    ;; endpoint_msgs/RWhSteerModType _rwheel_steer_mode
    (send _rwheel_steer_mode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _rearview_mirror_enable
       (if _rearview_mirror_enable (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/MirrorState _rearview_mirror_command
       (send _rearview_mirror_command :serialize s)
     ;; endpoint_msgs/RWhSteerModType _rwheel_steer_mode
       (send _rwheel_steer_mode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _rearview_mirror_enable
     (setq _rearview_mirror_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/MirrorState _rearview_mirror_command
     (send _rearview_mirror_command :deserialize buf ptr-) (incf ptr- (send _rearview_mirror_command :serialization-length))
   ;; endpoint_msgs/RWhSteerModType _rwheel_steer_mode
     (send _rwheel_steer_mode :deserialize buf ptr-) (incf ptr- (send _rwheel_steer_mode :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::RearviewMirrorCommand :md5sum-) "e1bbd83611b308c9b14762538b2d2fe6")
(setf (get endpoint_msgs::RearviewMirrorCommand :datatype-) "endpoint_msgs/RearviewMirrorCommand")
(setf (get endpoint_msgs::RearviewMirrorCommand :definition-)
      "bool rearview_mirror_enable
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

")



(provide :endpoint_msgs/RearviewMirrorCommand "e1bbd83611b308c9b14762538b2d2fe6")


