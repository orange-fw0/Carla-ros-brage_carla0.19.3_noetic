;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AccStandstillType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AccStandstillType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::ACCSTANDSTILLTYPE")
  (make-package "ENDPOINT_MSGS::ACCSTANDSTILLTYPE"))

(in-package "ROS")
;;//! \htmlinclude AccStandstillType.msg.html


(intern "*NO_REQUEST*" (find-package "ENDPOINT_MSGS::ACCSTANDSTILLTYPE"))
(shadow '*NO_REQUEST* (find-package "ENDPOINT_MSGS::ACCSTANDSTILLTYPE"))
(defconstant endpoint_msgs::AccStandstillType::*NO_REQUEST* 0)
(intern "*REQUEST*" (find-package "ENDPOINT_MSGS::ACCSTANDSTILLTYPE"))
(shadow '*REQUEST* (find-package "ENDPOINT_MSGS::ACCSTANDSTILLTYPE"))
(defconstant endpoint_msgs::AccStandstillType::*REQUEST* 1)
(intern "*REMIND_DRIVE_GO*" (find-package "ENDPOINT_MSGS::ACCSTANDSTILLTYPE"))
(shadow '*REMIND_DRIVE_GO* (find-package "ENDPOINT_MSGS::ACCSTANDSTILLTYPE"))
(defconstant endpoint_msgs::AccStandstillType::*REMIND_DRIVE_GO* 2)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::ACCSTANDSTILLTYPE"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::ACCSTANDSTILLTYPE"))
(defconstant endpoint_msgs::AccStandstillType::*RESERVED* 3)

(defun endpoint_msgs::AccStandstillType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AccStandstillType::*NO_REQUEST*)
        ((= const 1) 'endpoint_msgs::AccStandstillType::*REQUEST*)
        ((= const 2) 'endpoint_msgs::AccStandstillType::*REMIND_DRIVE_GO*)
        ((= const 3) 'endpoint_msgs::AccStandstillType::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::AccStandstillType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AccStandstillType
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

(setf (get endpoint_msgs::AccStandstillType :md5sum-) "8fd341606e712e500fc9e17ec3f256ca")
(setf (get endpoint_msgs::AccStandstillType :datatype-) "endpoint_msgs/AccStandstillType")
(setf (get endpoint_msgs::AccStandstillType :definition-)
      "uint8 NO_REQUEST = 0
uint8 REQUEST = 1
uint8 REMIND_DRIVE_GO = 2
uint8 RESERVED = 3
uint8 value

")



(provide :endpoint_msgs/AccStandstillType "8fd341606e712e500fc9e17ec3f256ca")


