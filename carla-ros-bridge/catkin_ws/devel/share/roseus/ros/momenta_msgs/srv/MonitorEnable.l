;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MonitorEnable)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MonitorEnable (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MONITORENABLE")
  (make-package "MOMENTA_MSGS::MONITORENABLE"))
(unless (find-package "MOMENTA_MSGS::MONITORENABLEREQUEST")
  (make-package "MOMENTA_MSGS::MONITORENABLEREQUEST"))
(unless (find-package "MOMENTA_MSGS::MONITORENABLERESPONSE")
  (make-package "MOMENTA_MSGS::MONITORENABLERESPONSE"))

(in-package "ROS")





(defclass momenta_msgs::MonitorEnableRequest
  :super ros::object
  :slots (_enable ))

(defmethod momenta_msgs::MonitorEnableRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass momenta_msgs::MonitorEnableResponse
  :super ros::object
  :slots (_success ))

(defmethod momenta_msgs::MonitorEnableResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass momenta_msgs::MonitorEnable
  :super ros::object
  :slots ())

(setf (get momenta_msgs::MonitorEnable :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get momenta_msgs::MonitorEnable :datatype-) "momenta_msgs/MonitorEnable")
(setf (get momenta_msgs::MonitorEnable :request) momenta_msgs::MonitorEnableRequest)
(setf (get momenta_msgs::MonitorEnable :response) momenta_msgs::MonitorEnableResponse)

(defmethod momenta_msgs::MonitorEnableRequest
  (:response () (instance momenta_msgs::MonitorEnableResponse :init)))

(setf (get momenta_msgs::MonitorEnableRequest :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get momenta_msgs::MonitorEnableRequest :datatype-) "momenta_msgs/MonitorEnableRequest")
(setf (get momenta_msgs::MonitorEnableRequest :definition-)
      "bool enable
---
bool success
")

(setf (get momenta_msgs::MonitorEnableResponse :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get momenta_msgs::MonitorEnableResponse :datatype-) "momenta_msgs/MonitorEnableResponse")
(setf (get momenta_msgs::MonitorEnableResponse :definition-)
      "bool enable
---
bool success
")



(provide :momenta_msgs/MonitorEnable "6a0b406242562fc416b2c9c8a3efb051")


