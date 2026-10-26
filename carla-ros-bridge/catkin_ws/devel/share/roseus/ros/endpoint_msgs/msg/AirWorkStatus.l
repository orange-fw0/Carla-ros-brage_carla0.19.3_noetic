;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AirWorkStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AirWorkStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AIRWORKSTATUS")
  (make-package "ENDPOINT_MSGS::AIRWORKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude AirWorkStatus.msg.html


(intern "*AIR_WORK_STATUS_NONE*" (find-package "ENDPOINT_MSGS::AIRWORKSTATUS"))
(shadow '*AIR_WORK_STATUS_NONE* (find-package "ENDPOINT_MSGS::AIRWORKSTATUS"))
(defconstant endpoint_msgs::AirWorkStatus::*AIR_WORK_STATUS_NONE* 0)
(intern "*AIR_WORK_STATUS_CLOSE*" (find-package "ENDPOINT_MSGS::AIRWORKSTATUS"))
(shadow '*AIR_WORK_STATUS_CLOSE* (find-package "ENDPOINT_MSGS::AIRWORKSTATUS"))
(defconstant endpoint_msgs::AirWorkStatus::*AIR_WORK_STATUS_CLOSE* 1)
(intern "*AIR_WORK_STATUS_OPEN*" (find-package "ENDPOINT_MSGS::AIRWORKSTATUS"))
(shadow '*AIR_WORK_STATUS_OPEN* (find-package "ENDPOINT_MSGS::AIRWORKSTATUS"))
(defconstant endpoint_msgs::AirWorkStatus::*AIR_WORK_STATUS_OPEN* 2)
(intern "*AIR_WORK_STATUS_INVALID*" (find-package "ENDPOINT_MSGS::AIRWORKSTATUS"))
(shadow '*AIR_WORK_STATUS_INVALID* (find-package "ENDPOINT_MSGS::AIRWORKSTATUS"))
(defconstant endpoint_msgs::AirWorkStatus::*AIR_WORK_STATUS_INVALID* 255)

(defun endpoint_msgs::AirWorkStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AirWorkStatus::*AIR_WORK_STATUS_NONE*)
        ((= const 1) 'endpoint_msgs::AirWorkStatus::*AIR_WORK_STATUS_CLOSE*)
        ((= const 2) 'endpoint_msgs::AirWorkStatus::*AIR_WORK_STATUS_OPEN*)
        ((= const 255) 'endpoint_msgs::AirWorkStatus::*AIR_WORK_STATUS_INVALID*)
        (t nil)))

(defclass endpoint_msgs::AirWorkStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AirWorkStatus
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::AirWorkStatus :md5sum-) "0e476aa89a921cf5f295f30ca6d8f112")
(setf (get endpoint_msgs::AirWorkStatus :datatype-) "endpoint_msgs/AirWorkStatus")
(setf (get endpoint_msgs::AirWorkStatus :definition-)
      "uint8 AIR_WORK_STATUS_NONE = 0
uint8 AIR_WORK_STATUS_CLOSE = 1
uint8 AIR_WORK_STATUS_OPEN = 2
uint8 AIR_WORK_STATUS_INVALID = 255
uint8 value

")



(provide :endpoint_msgs/AirWorkStatus "0e476aa89a921cf5f295f30ca6d8f112")


