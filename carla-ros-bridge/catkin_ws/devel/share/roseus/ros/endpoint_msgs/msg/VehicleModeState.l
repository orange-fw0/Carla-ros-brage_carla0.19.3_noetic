;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleModeState)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleModeState (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE")
  (make-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))

(in-package "ROS")
;;//! \htmlinclude VehicleModeState.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*NONE* 0)
(intern "*NORMAL_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*NORMAL_MODE* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*NORMAL_MODE* 1)
(intern "*MANUFACTURE_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*MANUFACTURE_MODE* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*MANUFACTURE_MODE* 2)
(intern "*TRANSPORT_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*TRANSPORT_MODE* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*TRANSPORT_MODE* 3)
(intern "*SHOWROOM_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*SHOWROOM_MODE* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*SHOWROOM_MODE* 4)
(intern "*POSTCRASH_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*POSTCRASH_MODE* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*POSTCRASH_MODE* 5)
(intern "*MAINTENANCE_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*MAINTENANCE_MODE* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*MAINTENANCE_MODE* 6)
(intern "*CARWASH_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*CARWASH_MODE* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*CARWASH_MODE* 7)
(intern "*BENCHTEST_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*BENCHTEST_MODE* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*BENCHTEST_MODE* 8)
(intern "*DRAG_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*DRAG_MODE* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*DRAG_MODE* 9)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*RESERVED1* 10)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*RESERVED2* 11)
(intern "*RESERVED3*" (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(shadow '*RESERVED3* (find-package "ENDPOINT_MSGS::VEHICLEMODESTATE"))
(defconstant endpoint_msgs::VehicleModeState::*RESERVED3* 12)

(defun endpoint_msgs::VehicleModeState-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::VehicleModeState::*NONE*)
        ((= const 1) 'endpoint_msgs::VehicleModeState::*NORMAL_MODE*)
        ((= const 2) 'endpoint_msgs::VehicleModeState::*MANUFACTURE_MODE*)
        ((= const 3) 'endpoint_msgs::VehicleModeState::*TRANSPORT_MODE*)
        ((= const 4) 'endpoint_msgs::VehicleModeState::*SHOWROOM_MODE*)
        ((= const 5) 'endpoint_msgs::VehicleModeState::*POSTCRASH_MODE*)
        ((= const 6) 'endpoint_msgs::VehicleModeState::*MAINTENANCE_MODE*)
        ((= const 7) 'endpoint_msgs::VehicleModeState::*CARWASH_MODE*)
        ((= const 8) 'endpoint_msgs::VehicleModeState::*BENCHTEST_MODE*)
        ((= const 9) 'endpoint_msgs::VehicleModeState::*DRAG_MODE*)
        ((= const 10) 'endpoint_msgs::VehicleModeState::*RESERVED1*)
        ((= const 11) 'endpoint_msgs::VehicleModeState::*RESERVED2*)
        ((= const 12) 'endpoint_msgs::VehicleModeState::*RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::VehicleModeState
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::VehicleModeState
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

(setf (get endpoint_msgs::VehicleModeState :md5sum-) "a9e0b51f668d5d8050e77d50a63ff613")
(setf (get endpoint_msgs::VehicleModeState :datatype-) "endpoint_msgs/VehicleModeState")
(setf (get endpoint_msgs::VehicleModeState :definition-)
      "uint8 NONE = 0
uint8 NORMAL_MODE = 1
uint8 MANUFACTURE_MODE = 2
uint8 TRANSPORT_MODE = 3
uint8 SHOWROOM_MODE = 4
uint8 POSTCRASH_MODE = 5
uint8 MAINTENANCE_MODE = 6
uint8 CARWASH_MODE = 7
uint8 BENCHTEST_MODE = 8
uint8 DRAG_MODE = 9
uint8 RESERVED1 = 10
uint8 RESERVED2 = 11
uint8 RESERVED3 = 12
uint8 value

")



(provide :endpoint_msgs/VehicleModeState "a9e0b51f668d5d8050e77d50a63ff613")


