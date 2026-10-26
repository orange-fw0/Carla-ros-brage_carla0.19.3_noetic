;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::Gear)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'Gear (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::GEAR")
  (make-package "ENDPOINT_MSGS::GEAR"))

(in-package "ROS")
;;//! \htmlinclude Gear.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::GEAR"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::GEAR"))
(defconstant endpoint_msgs::Gear::*NONE* 0)
(intern "*PARK*" (find-package "ENDPOINT_MSGS::GEAR"))
(shadow '*PARK* (find-package "ENDPOINT_MSGS::GEAR"))
(defconstant endpoint_msgs::Gear::*PARK* 1)
(intern "*REVERSE*" (find-package "ENDPOINT_MSGS::GEAR"))
(shadow '*REVERSE* (find-package "ENDPOINT_MSGS::GEAR"))
(defconstant endpoint_msgs::Gear::*REVERSE* 2)
(intern "*NEUTRAL*" (find-package "ENDPOINT_MSGS::GEAR"))
(shadow '*NEUTRAL* (find-package "ENDPOINT_MSGS::GEAR"))
(defconstant endpoint_msgs::Gear::*NEUTRAL* 3)
(intern "*DRIVE*" (find-package "ENDPOINT_MSGS::GEAR"))
(shadow '*DRIVE* (find-package "ENDPOINT_MSGS::GEAR"))
(defconstant endpoint_msgs::Gear::*DRIVE* 4)
(intern "*LOW*" (find-package "ENDPOINT_MSGS::GEAR"))
(shadow '*LOW* (find-package "ENDPOINT_MSGS::GEAR"))
(defconstant endpoint_msgs::Gear::*LOW* 5)

(defun endpoint_msgs::Gear-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::Gear::*NONE*)
        ((= const 1) 'endpoint_msgs::Gear::*PARK*)
        ((= const 2) 'endpoint_msgs::Gear::*REVERSE*)
        ((= const 3) 'endpoint_msgs::Gear::*NEUTRAL*)
        ((= const 4) 'endpoint_msgs::Gear::*DRIVE*)
        ((= const 5) 'endpoint_msgs::Gear::*LOW*)
        (t nil)))

(defclass endpoint_msgs::Gear
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::Gear
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

(setf (get endpoint_msgs::Gear :md5sum-) "ebb6a9d6d4bf0827dbaf33558db743ea")
(setf (get endpoint_msgs::Gear :datatype-) "endpoint_msgs/Gear")
(setf (get endpoint_msgs::Gear :definition-)
      "uint8 NONE = 0
uint8 PARK = 1
uint8 REVERSE = 2
uint8 NEUTRAL = 3
uint8 DRIVE = 4
uint8 LOW = 5
uint8 value

")



(provide :endpoint_msgs/Gear "ebb6a9d6d4bf0827dbaf33558db743ea")


