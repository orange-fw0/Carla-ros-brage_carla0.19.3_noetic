;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::HeatWireControlType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'HeatWireControlType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE")
  (make-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE"))

(in-package "ROS")
;;//! \htmlinclude HeatWireControlType.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE"))
(defconstant endpoint_msgs::HeatWireControlType::*NONE* 0)
(intern "*STANDBY*" (find-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE"))
(shadow '*STANDBY* (find-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE"))
(defconstant endpoint_msgs::HeatWireControlType::*STANDBY* 1)
(intern "*HEAT*" (find-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE"))
(shadow '*HEAT* (find-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE"))
(defconstant endpoint_msgs::HeatWireControlType::*HEAT* 2)
(intern "*NOHEAT*" (find-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE"))
(shadow '*NOHEAT* (find-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE"))
(defconstant endpoint_msgs::HeatWireControlType::*NOHEAT* 3)
(intern "*FAILURE*" (find-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE"))
(shadow '*FAILURE* (find-package "ENDPOINT_MSGS::HEATWIRECONTROLTYPE"))
(defconstant endpoint_msgs::HeatWireControlType::*FAILURE* 255)

(defun endpoint_msgs::HeatWireControlType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::HeatWireControlType::*NONE*)
        ((= const 1) 'endpoint_msgs::HeatWireControlType::*STANDBY*)
        ((= const 2) 'endpoint_msgs::HeatWireControlType::*HEAT*)
        ((= const 3) 'endpoint_msgs::HeatWireControlType::*NOHEAT*)
        ((= const 255) 'endpoint_msgs::HeatWireControlType::*FAILURE*)
        (t nil)))

(defclass endpoint_msgs::HeatWireControlType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::HeatWireControlType
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

(setf (get endpoint_msgs::HeatWireControlType :md5sum-) "ed9d55c426edbb0aaf9d9b9fb193e219")
(setf (get endpoint_msgs::HeatWireControlType :datatype-) "endpoint_msgs/HeatWireControlType")
(setf (get endpoint_msgs::HeatWireControlType :definition-)
      "uint8 NONE = 0
uint8 STANDBY = 1
uint8 HEAT = 2
uint8 NOHEAT = 3
uint8 FAILURE = 255
uint8 value

")



(provide :endpoint_msgs/HeatWireControlType "ed9d55c426edbb0aaf9d9b9fb193e219")


