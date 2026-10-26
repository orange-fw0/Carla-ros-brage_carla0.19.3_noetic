;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AutoDriveStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AutoDriveStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AUTODRIVESTATUS")
  (make-package "ENDPOINT_MSGS::AUTODRIVESTATUS"))

(in-package "ROS")
;;//! \htmlinclude AutoDriveStatus.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::AUTODRIVESTATUS"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::AUTODRIVESTATUS"))
(defconstant endpoint_msgs::AutoDriveStatus::*NONE* 0)
(intern "*READY*" (find-package "ENDPOINT_MSGS::AUTODRIVESTATUS"))
(shadow '*READY* (find-package "ENDPOINT_MSGS::AUTODRIVESTATUS"))
(defconstant endpoint_msgs::AutoDriveStatus::*READY* 1)
(intern "*NOT_READY*" (find-package "ENDPOINT_MSGS::AUTODRIVESTATUS"))
(shadow '*NOT_READY* (find-package "ENDPOINT_MSGS::AUTODRIVESTATUS"))
(defconstant endpoint_msgs::AutoDriveStatus::*NOT_READY* 2)

(defun endpoint_msgs::AutoDriveStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AutoDriveStatus::*NONE*)
        ((= const 1) 'endpoint_msgs::AutoDriveStatus::*READY*)
        ((= const 2) 'endpoint_msgs::AutoDriveStatus::*NOT_READY*)
        (t nil)))

(defclass endpoint_msgs::AutoDriveStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AutoDriveStatus
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

(setf (get endpoint_msgs::AutoDriveStatus :md5sum-) "cbe26406e39a2fa7fd2724b70307195b")
(setf (get endpoint_msgs::AutoDriveStatus :datatype-) "endpoint_msgs/AutoDriveStatus")
(setf (get endpoint_msgs::AutoDriveStatus :definition-)
      "uint8 NONE = 0
uint8 READY = 1
uint8 NOT_READY = 2
uint8 value

")



(provide :endpoint_msgs/AutoDriveStatus "cbe26406e39a2fa7fd2724b70307195b")


