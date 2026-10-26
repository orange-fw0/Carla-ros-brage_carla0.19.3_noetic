;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBCOMMAND")
  (make-package "ENDPOINT_MSGS::AEBCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude AebCommand.msg.html


(intern "*AEB_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::AEBCOMMAND"))
(shadow '*AEB_COMMAND_DATA* (find-package "ENDPOINT_MSGS::AEBCOMMAND"))
(defconstant endpoint_msgs::AebCommand::*AEB_COMMAND_DATA* 1)

(defun endpoint_msgs::AebCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::AebCommand::*AEB_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::AebCommand
  :super ros::object
  :slots (_available _aeb_command_data ))

(defmethod endpoint_msgs::AebCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:aeb_command_data __aeb_command_data) (instance endpoint_msgs::AebCommandData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _aeb_command_data __aeb_command_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:aeb_command_data
   (&rest __aeb_command_data)
   (if (keywordp (car __aeb_command_data))
       (send* _aeb_command_data __aeb_command_data)
     (progn
       (if __aeb_command_data (setq _aeb_command_data (car __aeb_command_data)))
       _aeb_command_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/AebCommandData _aeb_command_data
    (send _aeb_command_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/AebCommandData _aeb_command_data
       (send _aeb_command_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/AebCommandData _aeb_command_data
     (send _aeb_command_data :deserialize buf ptr-) (incf ptr- (send _aeb_command_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::AebCommand :md5sum-) "d37f19f69ac775b6e80f877abae45c9d")
(setf (get endpoint_msgs::AebCommand :datatype-) "endpoint_msgs/AebCommand")
(setf (get endpoint_msgs::AebCommand :definition-)
      "uint8 AEB_COMMAND_DATA = 1
uint8 available
endpoint_msgs/AebCommandData aeb_command_data

================================================================================
MSG: endpoint_msgs/AebCommandData
uint64 timestamp_us
endpoint_msgs/AebBrkJerkReq awb_request
endpoint_msgs/AebDclReqSts dcl_req_state
float32 dcl_req_command
endpoint_msgs/AebHydBrkReq hba_request_level
bool prefill_request

================================================================================
MSG: endpoint_msgs/AebBrkJerkReq
uint8 AEB_BRAKE_JERK_NO_REQUEST = 0
uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1
uint8 AEB_BRAKE_JERK_MID_LEVEL = 2
uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3
uint8 AEV_BRAKE_JERK_RESERVED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AebDclReqSts
uint8 AEB_DLC_STATE_NO_REQUEST = 0
uint8 AEB_DLC_STATE_DECELERATION = 1
uint8 AEB_DLC_STATE_RESERVED = 2
uint8 value

================================================================================
MSG: endpoint_msgs/AebHydBrkReq
uint8 AEB_HYD_BRAKE_NO_REQUEST = 0
uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1
uint8 AEB_HYD_BRAKE_MID_LEVEL = 2
uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3
uint8 AEB_HYD_BRAKE_RESERVED1 = 4
uint8 AEB_HYD_BRAKE_RESERVED2 = 5
uint8 AEB_HYD_BRAKE_RESERVED3 = 6
uint8 AEB_HYD_BRAKE_RESERVED4 = 7
uint8 value

")



(provide :endpoint_msgs/AebCommand "d37f19f69ac775b6e80f877abae45c9d")


