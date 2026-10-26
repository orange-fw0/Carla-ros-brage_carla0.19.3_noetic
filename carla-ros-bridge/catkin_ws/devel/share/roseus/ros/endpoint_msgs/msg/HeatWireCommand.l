;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::HeatWireCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'HeatWireCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::HEATWIRECOMMAND")
  (make-package "ENDPOINT_MSGS::HEATWIRECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude HeatWireCommand.msg.html


(defclass endpoint_msgs::HeatWireCommand
  :super ros::object
  :slots (_ff_camera_status _fw_camera_status _heat_wire_control ))

(defmethod endpoint_msgs::HeatWireCommand
  (:init
   (&key
    ((:ff_camera_status __ff_camera_status) (instance endpoint_msgs::CameraSurfaceCondition :init))
    ((:fw_camera_status __fw_camera_status) (instance endpoint_msgs::CameraSurfaceCondition :init))
    ((:heat_wire_control __heat_wire_control) (instance endpoint_msgs::HeatWireControlType :init))
    )
   (send-super :init)
   (setq _ff_camera_status __ff_camera_status)
   (setq _fw_camera_status __fw_camera_status)
   (setq _heat_wire_control __heat_wire_control)
   self)
  (:ff_camera_status
   (&rest __ff_camera_status)
   (if (keywordp (car __ff_camera_status))
       (send* _ff_camera_status __ff_camera_status)
     (progn
       (if __ff_camera_status (setq _ff_camera_status (car __ff_camera_status)))
       _ff_camera_status)))
  (:fw_camera_status
   (&rest __fw_camera_status)
   (if (keywordp (car __fw_camera_status))
       (send* _fw_camera_status __fw_camera_status)
     (progn
       (if __fw_camera_status (setq _fw_camera_status (car __fw_camera_status)))
       _fw_camera_status)))
  (:heat_wire_control
   (&rest __heat_wire_control)
   (if (keywordp (car __heat_wire_control))
       (send* _heat_wire_control __heat_wire_control)
     (progn
       (if __heat_wire_control (setq _heat_wire_control (car __heat_wire_control)))
       _heat_wire_control)))
  (:serialization-length
   ()
   (+
    ;; endpoint_msgs/CameraSurfaceCondition _ff_camera_status
    (send _ff_camera_status :serialization-length)
    ;; endpoint_msgs/CameraSurfaceCondition _fw_camera_status
    (send _fw_camera_status :serialization-length)
    ;; endpoint_msgs/HeatWireControlType _heat_wire_control
    (send _heat_wire_control :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; endpoint_msgs/CameraSurfaceCondition _ff_camera_status
       (send _ff_camera_status :serialize s)
     ;; endpoint_msgs/CameraSurfaceCondition _fw_camera_status
       (send _fw_camera_status :serialize s)
     ;; endpoint_msgs/HeatWireControlType _heat_wire_control
       (send _heat_wire_control :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; endpoint_msgs/CameraSurfaceCondition _ff_camera_status
     (send _ff_camera_status :deserialize buf ptr-) (incf ptr- (send _ff_camera_status :serialization-length))
   ;; endpoint_msgs/CameraSurfaceCondition _fw_camera_status
     (send _fw_camera_status :deserialize buf ptr-) (incf ptr- (send _fw_camera_status :serialization-length))
   ;; endpoint_msgs/HeatWireControlType _heat_wire_control
     (send _heat_wire_control :deserialize buf ptr-) (incf ptr- (send _heat_wire_control :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::HeatWireCommand :md5sum-) "0c97e71d5afb42f4e4ada74e4954bf0f")
(setf (get endpoint_msgs::HeatWireCommand :datatype-) "endpoint_msgs/HeatWireCommand")
(setf (get endpoint_msgs::HeatWireCommand :definition-)
      "endpoint_msgs/CameraSurfaceCondition ff_camera_status
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

")



(provide :endpoint_msgs/HeatWireCommand "0c97e71d5afb42f4e4ada74e4954bf0f")


