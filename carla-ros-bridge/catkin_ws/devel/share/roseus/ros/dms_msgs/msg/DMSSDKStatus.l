;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSSDKStatus)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSSDKStatus (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSSDKSTATUS")
  (make-package "DMS_MSGS::DMSSDKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude DMSSDKStatus.msg.html


(intern "*SDK_STATUS_AVAILABLE*" (find-package "DMS_MSGS::DMSSDKSTATUS"))
(shadow '*SDK_STATUS_AVAILABLE* (find-package "DMS_MSGS::DMSSDKSTATUS"))
(defconstant dms_msgs::DMSSDKStatus::*SDK_STATUS_AVAILABLE* 1)
(intern "*STATE_MACHINE_AVAILABLE*" (find-package "DMS_MSGS::DMSSDKSTATUS"))
(shadow '*STATE_MACHINE_AVAILABLE* (find-package "DMS_MSGS::DMSSDKSTATUS"))
(defconstant dms_msgs::DMSSDKStatus::*STATE_MACHINE_AVAILABLE* 2)

(defun dms_msgs::DMSSDKStatus-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSSDKStatus::*SDK_STATUS_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSSDKStatus::*STATE_MACHINE_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSSDKStatus
  :super ros::object
  :slots (_available _dms_status_type _state_machine_type ))

(defmethod dms_msgs::DMSSDKStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:dms_status_type __dms_status_type) (instance dms_msgs::DMSStatusTypeEnum :init))
    ((:state_machine_type __state_machine_type) (instance dms_msgs::DMSStateMachineTypeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _dms_status_type __dms_status_type)
   (setq _state_machine_type __state_machine_type)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:dms_status_type
   (&rest __dms_status_type)
   (if (keywordp (car __dms_status_type))
       (send* _dms_status_type __dms_status_type)
     (progn
       (if __dms_status_type (setq _dms_status_type (car __dms_status_type)))
       _dms_status_type)))
  (:state_machine_type
   (&rest __state_machine_type)
   (if (keywordp (car __state_machine_type))
       (send* _state_machine_type __state_machine_type)
     (progn
       (if __state_machine_type (setq _state_machine_type (car __state_machine_type)))
       _state_machine_type)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; dms_msgs/DMSStatusTypeEnum _dms_status_type
    (send _dms_status_type :serialization-length)
    ;; dms_msgs/DMSStateMachineTypeEnum _state_machine_type
    (send _state_machine_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; dms_msgs/DMSStatusTypeEnum _dms_status_type
       (send _dms_status_type :serialize s)
     ;; dms_msgs/DMSStateMachineTypeEnum _state_machine_type
       (send _state_machine_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dms_msgs/DMSStatusTypeEnum _dms_status_type
     (send _dms_status_type :deserialize buf ptr-) (incf ptr- (send _dms_status_type :serialization-length))
   ;; dms_msgs/DMSStateMachineTypeEnum _state_machine_type
     (send _state_machine_type :deserialize buf ptr-) (incf ptr- (send _state_machine_type :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSSDKStatus :md5sum-) "c6a155afbed13237c0c62973a59fc68b")
(setf (get dms_msgs::DMSSDKStatus :datatype-) "dms_msgs/DMSSDKStatus")
(setf (get dms_msgs::DMSSDKStatus :definition-)
      "uint8 SDK_STATUS_AVAILABLE = 1
uint8 STATE_MACHINE_AVAILABLE = 2
uint8 available
dms_msgs/DMSStatusTypeEnum dms_status_type
dms_msgs/DMSStateMachineTypeEnum state_machine_type

================================================================================
MSG: dms_msgs/DMSStatusTypeEnum
uint8 UNKNOWN = 0
uint8 INITIALIZING = 1
uint8 INTERNAL_FAULT = 2
uint8 EXTERNAL_FAULT = 3
uint8 INVALID_ENVIRONMENT = 4
uint8 AUTHENTICATION_FAIL = 5
uint8 INITIALIZ_OK = 6
uint8 INITIALIZ_FAIL = 7
uint8 RUNNING_OK = 8
uint8 RUNNING_FAIL = 9
uint8 value

================================================================================
MSG: dms_msgs/DMSStateMachineTypeEnum
uint8 OFF = 0
uint8 STANDBY = 1
uint8 ACTIVE = 2
uint8 FAILURE = 3
uint8 UNKNOWN = 4
uint8 value

")



(provide :dms_msgs/DMSSDKStatus "c6a155afbed13237c0c62973a59fc68b")


