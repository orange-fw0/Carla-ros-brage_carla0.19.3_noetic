;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::TargetControlMode)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'TargetControlMode (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::TARGETCONTROLMODE")
  (make-package "ENDPOINT_MSGS::TARGETCONTROLMODE"))

(in-package "ROS")
;;//! \htmlinclude TargetControlMode.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMODE"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::TARGETCONTROLMODE"))
(defconstant endpoint_msgs::TargetControlMode::*NONE* 0)
(intern "*TORQUE*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMODE"))
(shadow '*TORQUE* (find-package "ENDPOINT_MSGS::TARGETCONTROLMODE"))
(defconstant endpoint_msgs::TargetControlMode::*TORQUE* 1)
(intern "*SPEED*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMODE"))
(shadow '*SPEED* (find-package "ENDPOINT_MSGS::TARGETCONTROLMODE"))
(defconstant endpoint_msgs::TargetControlMode::*SPEED* 2)
(intern "*RESERVE*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMODE"))
(shadow '*RESERVE* (find-package "ENDPOINT_MSGS::TARGETCONTROLMODE"))
(defconstant endpoint_msgs::TargetControlMode::*RESERVE* 3)

(defun endpoint_msgs::TargetControlMode-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::TargetControlMode::*NONE*)
        ((= const 1) 'endpoint_msgs::TargetControlMode::*TORQUE*)
        ((= const 2) 'endpoint_msgs::TargetControlMode::*SPEED*)
        ((= const 3) 'endpoint_msgs::TargetControlMode::*RESERVE*)
        (t nil)))

(defclass endpoint_msgs::TargetControlMode
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::TargetControlMode
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

(setf (get endpoint_msgs::TargetControlMode :md5sum-) "c5f6eba1adab05f5ae1ab76d0b7681f0")
(setf (get endpoint_msgs::TargetControlMode :datatype-) "endpoint_msgs/TargetControlMode")
(setf (get endpoint_msgs::TargetControlMode :definition-)
      "uint8 NONE = 0
uint8 TORQUE = 1
uint8 SPEED = 2
uint8 RESERVE = 3
uint8 value

")



(provide :endpoint_msgs/TargetControlMode "c5f6eba1adab05f5ae1ab76d0b7681f0")


