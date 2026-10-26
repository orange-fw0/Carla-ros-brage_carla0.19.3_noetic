;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSSodStatus)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSSodStatus (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSSODSTATUS")
  (make-package "OMS_MSGS::OMSSODSTATUS"))

(in-package "ROS")
;;//! \htmlinclude OMSSodStatus.msg.html


(intern "*UNAVAILABLE*" (find-package "OMS_MSGS::OMSSODSTATUS"))
(shadow '*UNAVAILABLE* (find-package "OMS_MSGS::OMSSODSTATUS"))
(defconstant oms_msgs::OMSSodStatus::*UNAVAILABLE* 0)
(intern "*OCCUPIED*" (find-package "OMS_MSGS::OMSSODSTATUS"))
(shadow '*OCCUPIED* (find-package "OMS_MSGS::OMSSODSTATUS"))
(defconstant oms_msgs::OMSSodStatus::*OCCUPIED* 1)
(intern "*UNOCCUPIED*" (find-package "OMS_MSGS::OMSSODSTATUS"))
(shadow '*UNOCCUPIED* (find-package "OMS_MSGS::OMSSODSTATUS"))
(defconstant oms_msgs::OMSSodStatus::*UNOCCUPIED* 2)
(intern "*UNCERTAIN*" (find-package "OMS_MSGS::OMSSODSTATUS"))
(shadow '*UNCERTAIN* (find-package "OMS_MSGS::OMSSODSTATUS"))
(defconstant oms_msgs::OMSSodStatus::*UNCERTAIN* 3)

(defun oms_msgs::OMSSodStatus-to-symbol (const)
  (cond
        ((= const 0) 'oms_msgs::OMSSodStatus::*UNAVAILABLE*)
        ((= const 1) 'oms_msgs::OMSSodStatus::*OCCUPIED*)
        ((= const 2) 'oms_msgs::OMSSodStatus::*UNOCCUPIED*)
        ((= const 3) 'oms_msgs::OMSSodStatus::*UNCERTAIN*)
        (t nil)))

(defclass oms_msgs::OMSSodStatus
  :super ros::object
  :slots (_value _seat_id ))

(defmethod oms_msgs::OMSSodStatus
  (:init
   (&key
    ((:value __value) 0)
    ((:seat_id __seat_id) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _seat_id (round __seat_id))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:seat_id
   (&optional __seat_id)
   (if __seat_id (setq _seat_id __seat_id)) _seat_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ;; uint8 _seat_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;; uint8 _seat_id
       (write-byte _seat_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _seat_id
     (setq _seat_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get oms_msgs::OMSSodStatus :md5sum-) "9fd1a2bf39837db4df483bd667904c5d")
(setf (get oms_msgs::OMSSodStatus :datatype-) "oms_msgs/OMSSodStatus")
(setf (get oms_msgs::OMSSodStatus :definition-)
      "uint8 UNAVAILABLE = 0
uint8 OCCUPIED = 1
uint8 UNOCCUPIED = 2
uint8 UNCERTAIN = 3
uint8 value
uint8 seat_id

")



(provide :oms_msgs/OMSSodStatus "9fd1a2bf39837db4df483bd667904c5d")


