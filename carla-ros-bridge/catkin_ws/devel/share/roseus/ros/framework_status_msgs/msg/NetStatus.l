;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::NetStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'NetStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::NETSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::NETSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NetStatus.msg.html


(intern "*NET_STATUS_DATA*" (find-package "FRAMEWORK_STATUS_MSGS::NETSTATUS"))
(shadow '*NET_STATUS_DATA* (find-package "FRAMEWORK_STATUS_MSGS::NETSTATUS"))
(defconstant framework_status_msgs::NetStatus::*NET_STATUS_DATA* 1)

(defun framework_status_msgs::NetStatus-to-symbol (const)
  (cond
        ((= const 1) 'framework_status_msgs::NetStatus::*NET_STATUS_DATA*)
        (t nil)))

(defclass framework_status_msgs::NetStatus
  :super ros::object
  :slots (_available _net_status_data ))

(defmethod framework_status_msgs::NetStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:net_status_data __net_status_data) (instance framework_status_msgs::NetStatusData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _net_status_data __net_status_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:net_status_data
   (&rest __net_status_data)
   (if (keywordp (car __net_status_data))
       (send* _net_status_data __net_status_data)
     (progn
       (if __net_status_data (setq _net_status_data (car __net_status_data)))
       _net_status_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; framework_status_msgs/NetStatusData _net_status_data
    (send _net_status_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; framework_status_msgs/NetStatusData _net_status_data
       (send _net_status_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/NetStatusData _net_status_data
     (send _net_status_data :deserialize buf ptr-) (incf ptr- (send _net_status_data :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::NetStatus :md5sum-) "4a36dc85c510d6816ad66b723886af27")
(setf (get framework_status_msgs::NetStatus :datatype-) "framework_status_msgs/NetStatus")
(setf (get framework_status_msgs::NetStatus :definition-)
      "uint8 NET_STATUS_DATA = 1
uint8 available
framework_status_msgs/NetStatusData net_status_data

================================================================================
MSG: framework_status_msgs/NetStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
framework_status_msgs/NetCardStatus[] net_card_status_list
framework_status_msgs/NetAliveStatus[] net_alive_list
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/NetCardStatus
string net_card_name
float32 bytes_sent_rate
float32 bytes_recv_rate
float32 packets_sent_rate
float32 packets_recv_rate
float32 errin_rate
float32 errout_rate
float32 dropin_rate
float32 dropout_rate
bool net_card_isup
uint8 duplex
uint32 speed
uint32 mtu
string reserved_info

================================================================================
MSG: framework_status_msgs/NetAliveStatus
string name
uint32 loss_count
string reserved_info

")



(provide :framework_status_msgs/NetStatus "4a36dc85c510d6816ad66b723886af27")


