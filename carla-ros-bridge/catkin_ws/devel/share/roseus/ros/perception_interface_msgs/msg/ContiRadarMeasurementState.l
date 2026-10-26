;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ContiRadarMeasurementState)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ContiRadarMeasurementState (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE")
  (make-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ContiRadarMeasurementState.msg.html


(intern "*DELETED*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(shadow '*DELETED* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(defconstant perception_interface_msgs::ContiRadarMeasurementState::*DELETED* 0)
(intern "*NEW*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(shadow '*NEW* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(defconstant perception_interface_msgs::ContiRadarMeasurementState::*NEW* 1)
(intern "*MEASURED*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(shadow '*MEASURED* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(defconstant perception_interface_msgs::ContiRadarMeasurementState::*MEASURED* 2)
(intern "*PREDICTED*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(shadow '*PREDICTED* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(defconstant perception_interface_msgs::ContiRadarMeasurementState::*PREDICTED* 3)
(intern "*DELETED_FOR_MERGE*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(shadow '*DELETED_FOR_MERGE* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(defconstant perception_interface_msgs::ContiRadarMeasurementState::*DELETED_FOR_MERGE* 4)
(intern "*NEW_FROM_MERGE*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(shadow '*NEW_FROM_MERGE* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARMEASUREMENTSTATE"))
(defconstant perception_interface_msgs::ContiRadarMeasurementState::*NEW_FROM_MERGE* 5)

(defun perception_interface_msgs::ContiRadarMeasurementState-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ContiRadarMeasurementState::*DELETED*)
        ((= const 1) 'perception_interface_msgs::ContiRadarMeasurementState::*NEW*)
        ((= const 2) 'perception_interface_msgs::ContiRadarMeasurementState::*MEASURED*)
        ((= const 3) 'perception_interface_msgs::ContiRadarMeasurementState::*PREDICTED*)
        ((= const 4) 'perception_interface_msgs::ContiRadarMeasurementState::*DELETED_FOR_MERGE*)
        ((= const 5) 'perception_interface_msgs::ContiRadarMeasurementState::*NEW_FROM_MERGE*)
        (t nil)))

(defclass perception_interface_msgs::ContiRadarMeasurementState
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ContiRadarMeasurementState
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

(setf (get perception_interface_msgs::ContiRadarMeasurementState :md5sum-) "7215438a8405b25395db2229dcf59908")
(setf (get perception_interface_msgs::ContiRadarMeasurementState :datatype-) "perception_interface_msgs/ContiRadarMeasurementState")
(setf (get perception_interface_msgs::ContiRadarMeasurementState :definition-)
      "uint8 DELETED = 0
uint8 NEW = 1
uint8 MEASURED = 2
uint8 PREDICTED = 3
uint8 DELETED_FOR_MERGE = 4
uint8 NEW_FROM_MERGE = 5
uint8 value

")



(provide :perception_interface_msgs/ContiRadarMeasurementState "7215438a8405b25395db2229dcf59908")


