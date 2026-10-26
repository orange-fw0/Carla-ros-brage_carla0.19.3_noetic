;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::NetStatusData)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'NetStatusData (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::NETSTATUSDATA")
  (make-package "FRAMEWORK_STATUS_MSGS::NETSTATUSDATA"))

(in-package "ROS")
;;//! \htmlinclude NetStatusData.msg.html


(intern "*NORM*" (find-package "FRAMEWORK_STATUS_MSGS::NETSTATUSDATA"))
(shadow '*NORM* (find-package "FRAMEWORK_STATUS_MSGS::NETSTATUSDATA"))
(defconstant framework_status_msgs::NetStatusData::*NORM* 0)
(intern "*WARNING*" (find-package "FRAMEWORK_STATUS_MSGS::NETSTATUSDATA"))
(shadow '*WARNING* (find-package "FRAMEWORK_STATUS_MSGS::NETSTATUSDATA"))
(defconstant framework_status_msgs::NetStatusData::*WARNING* 1)
(intern "*ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::NETSTATUSDATA"))
(shadow '*ERROR* (find-package "FRAMEWORK_STATUS_MSGS::NETSTATUSDATA"))
(defconstant framework_status_msgs::NetStatusData::*ERROR* 2)

(defun framework_status_msgs::NetStatusData-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::NetStatusData::*NORM*)
        ((= const 1) 'framework_status_msgs::NetStatusData::*WARNING*)
        ((= const 2) 'framework_status_msgs::NetStatusData::*ERROR*)
        (t nil)))

(defclass framework_status_msgs::NetStatusData
  :super ros::object
  :slots (_health_status _net_card_status_list _net_alive_list _reserved_info _message ))

(defmethod framework_status_msgs::NetStatusData
  (:init
   (&key
    ((:health_status __health_status) 0)
    ((:net_card_status_list __net_card_status_list) ())
    ((:net_alive_list __net_alive_list) ())
    ((:reserved_info __reserved_info) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _health_status (round __health_status))
   (setq _net_card_status_list __net_card_status_list)
   (setq _net_alive_list __net_alive_list)
   (setq _reserved_info (string __reserved_info))
   (setq _message (string __message))
   self)
  (:health_status
   (&optional __health_status)
   (if __health_status (setq _health_status __health_status)) _health_status)
  (:net_card_status_list
   (&rest __net_card_status_list)
   (if (keywordp (car __net_card_status_list))
       (send* _net_card_status_list __net_card_status_list)
     (progn
       (if __net_card_status_list (setq _net_card_status_list (car __net_card_status_list)))
       _net_card_status_list)))
  (:net_alive_list
   (&rest __net_alive_list)
   (if (keywordp (car __net_alive_list))
       (send* _net_alive_list __net_alive_list)
     (progn
       (if __net_alive_list (setq _net_alive_list (car __net_alive_list)))
       _net_alive_list)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint8 _health_status
    1
    ;; framework_status_msgs/NetCardStatus[] _net_card_status_list
    (apply #'+ (send-all _net_card_status_list :serialization-length)) 4
    ;; framework_status_msgs/NetAliveStatus[] _net_alive_list
    (apply #'+ (send-all _net_alive_list :serialization-length)) 4
    ;; string _reserved_info
    4 (length _reserved_info)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _health_status
       (write-byte _health_status s)
     ;; framework_status_msgs/NetCardStatus[] _net_card_status_list
     (write-long (length _net_card_status_list) s)
     (dolist (elem _net_card_status_list)
       (send elem :serialize s)
       )
     ;; framework_status_msgs/NetAliveStatus[] _net_alive_list
     (write-long (length _net_alive_list) s)
     (dolist (elem _net_alive_list)
       (send elem :serialize s)
       )
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _health_status
     (setq _health_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/NetCardStatus[] _net_card_status_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _net_card_status_list (let (r) (dotimes (i n) (push (instance framework_status_msgs::NetCardStatus :init) r)) r))
     (dolist (elem- _net_card_status_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; framework_status_msgs/NetAliveStatus[] _net_alive_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _net_alive_list (let (r) (dotimes (i n) (push (instance framework_status_msgs::NetAliveStatus :init) r)) r))
     (dolist (elem- _net_alive_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::NetStatusData :md5sum-) "89621c9c675e97e99ee0864ec9c3bae0")
(setf (get framework_status_msgs::NetStatusData :datatype-) "framework_status_msgs/NetStatusData")
(setf (get framework_status_msgs::NetStatusData :definition-)
      "uint8 NORM = 0
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



(provide :framework_status_msgs/NetStatusData "89621c9c675e97e99ee0864ec9c3bae0")


