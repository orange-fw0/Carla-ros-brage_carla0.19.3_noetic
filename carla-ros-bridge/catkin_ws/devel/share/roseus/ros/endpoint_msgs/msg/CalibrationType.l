;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::CalibrationType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'CalibrationType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE")
  (make-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude CalibrationType.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(defconstant endpoint_msgs::CalibrationType::*NONE* 0)
(intern "*CALIBRATION*" (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(shadow '*CALIBRATION* (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(defconstant endpoint_msgs::CalibrationType::*CALIBRATION* 1)
(intern "*NOT_CALIBRATION*" (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(shadow '*NOT_CALIBRATION* (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(defconstant endpoint_msgs::CalibrationType::*NOT_CALIBRATION* 2)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(defconstant endpoint_msgs::CalibrationType::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(defconstant endpoint_msgs::CalibrationType::*RESERVED2* 4)
(intern "*RESERVED3*" (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(shadow '*RESERVED3* (find-package "ENDPOINT_MSGS::CALIBRATIONTYPE"))
(defconstant endpoint_msgs::CalibrationType::*RESERVED3* 5)

(defun endpoint_msgs::CalibrationType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::CalibrationType::*NONE*)
        ((= const 1) 'endpoint_msgs::CalibrationType::*CALIBRATION*)
        ((= const 2) 'endpoint_msgs::CalibrationType::*NOT_CALIBRATION*)
        ((= const 3) 'endpoint_msgs::CalibrationType::*RESERVED1*)
        ((= const 4) 'endpoint_msgs::CalibrationType::*RESERVED2*)
        ((= const 5) 'endpoint_msgs::CalibrationType::*RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::CalibrationType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::CalibrationType
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

(setf (get endpoint_msgs::CalibrationType :md5sum-) "181281af0f979b730cd6562d994e5fd1")
(setf (get endpoint_msgs::CalibrationType :datatype-) "endpoint_msgs/CalibrationType")
(setf (get endpoint_msgs::CalibrationType :definition-)
      "uint8 NONE = 0
uint8 CALIBRATION = 1
uint8 NOT_CALIBRATION = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

")



(provide :endpoint_msgs/CalibrationType "181281af0f979b730cd6562d994e5fd1")


