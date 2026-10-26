;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SentryModeCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SentryModeCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SENTRYMODECOMMAND")
  (make-package "ENDPOINT_MSGS::SENTRYMODECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude SentryModeCommand.msg.html


(defclass endpoint_msgs::SentryModeCommand
  :super ros::object
  :slots (_sentry_emergency_flasher_level _snetry_horn_level ))

(defmethod endpoint_msgs::SentryModeCommand
  (:init
   (&key
    ((:sentry_emergency_flasher_level __sentry_emergency_flasher_level) (instance endpoint_msgs::SentryEmergencyFlasherLevel :init))
    ((:snetry_horn_level __snetry_horn_level) (instance endpoint_msgs::SentryHornLevel :init))
    )
   (send-super :init)
   (setq _sentry_emergency_flasher_level __sentry_emergency_flasher_level)
   (setq _snetry_horn_level __snetry_horn_level)
   self)
  (:sentry_emergency_flasher_level
   (&rest __sentry_emergency_flasher_level)
   (if (keywordp (car __sentry_emergency_flasher_level))
       (send* _sentry_emergency_flasher_level __sentry_emergency_flasher_level)
     (progn
       (if __sentry_emergency_flasher_level (setq _sentry_emergency_flasher_level (car __sentry_emergency_flasher_level)))
       _sentry_emergency_flasher_level)))
  (:snetry_horn_level
   (&rest __snetry_horn_level)
   (if (keywordp (car __snetry_horn_level))
       (send* _snetry_horn_level __snetry_horn_level)
     (progn
       (if __snetry_horn_level (setq _snetry_horn_level (car __snetry_horn_level)))
       _snetry_horn_level)))
  (:serialization-length
   ()
   (+
    ;; endpoint_msgs/SentryEmergencyFlasherLevel _sentry_emergency_flasher_level
    (send _sentry_emergency_flasher_level :serialization-length)
    ;; endpoint_msgs/SentryHornLevel _snetry_horn_level
    (send _snetry_horn_level :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; endpoint_msgs/SentryEmergencyFlasherLevel _sentry_emergency_flasher_level
       (send _sentry_emergency_flasher_level :serialize s)
     ;; endpoint_msgs/SentryHornLevel _snetry_horn_level
       (send _snetry_horn_level :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; endpoint_msgs/SentryEmergencyFlasherLevel _sentry_emergency_flasher_level
     (send _sentry_emergency_flasher_level :deserialize buf ptr-) (incf ptr- (send _sentry_emergency_flasher_level :serialization-length))
   ;; endpoint_msgs/SentryHornLevel _snetry_horn_level
     (send _snetry_horn_level :deserialize buf ptr-) (incf ptr- (send _snetry_horn_level :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::SentryModeCommand :md5sum-) "ff8f2cb897d6d0fee2f3422c2a1c3219")
(setf (get endpoint_msgs::SentryModeCommand :datatype-) "endpoint_msgs/SentryModeCommand")
(setf (get endpoint_msgs::SentryModeCommand :definition-)
      "endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level
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

")



(provide :endpoint_msgs/SentryModeCommand "ff8f2cb897d6d0fee2f3422c2a1c3219")


