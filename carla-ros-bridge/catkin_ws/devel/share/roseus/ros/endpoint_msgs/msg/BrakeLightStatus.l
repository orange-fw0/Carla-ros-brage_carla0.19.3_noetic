;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::BrakeLightStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'BrakeLightStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BRAKELIGHTSTATUS")
  (make-package "ENDPOINT_MSGS::BRAKELIGHTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BrakeLightStatus.msg.html


(intern "*BRAKE_LIGHT_NONE*" (find-package "ENDPOINT_MSGS::BRAKELIGHTSTATUS"))
(shadow '*BRAKE_LIGHT_NONE* (find-package "ENDPOINT_MSGS::BRAKELIGHTSTATUS"))
(defconstant endpoint_msgs::BrakeLightStatus::*BRAKE_LIGHT_NONE* 0)
(intern "*BRAKE_LIGHT_OFF*" (find-package "ENDPOINT_MSGS::BRAKELIGHTSTATUS"))
(shadow '*BRAKE_LIGHT_OFF* (find-package "ENDPOINT_MSGS::BRAKELIGHTSTATUS"))
(defconstant endpoint_msgs::BrakeLightStatus::*BRAKE_LIGHT_OFF* 1)
(intern "*BRAKE_LIGHT_ON*" (find-package "ENDPOINT_MSGS::BRAKELIGHTSTATUS"))
(shadow '*BRAKE_LIGHT_ON* (find-package "ENDPOINT_MSGS::BRAKELIGHTSTATUS"))
(defconstant endpoint_msgs::BrakeLightStatus::*BRAKE_LIGHT_ON* 2)
(intern "*BRAKE_LIGHT_INVALID*" (find-package "ENDPOINT_MSGS::BRAKELIGHTSTATUS"))
(shadow '*BRAKE_LIGHT_INVALID* (find-package "ENDPOINT_MSGS::BRAKELIGHTSTATUS"))
(defconstant endpoint_msgs::BrakeLightStatus::*BRAKE_LIGHT_INVALID* 255)

(defun endpoint_msgs::BrakeLightStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::BrakeLightStatus::*BRAKE_LIGHT_NONE*)
        ((= const 1) 'endpoint_msgs::BrakeLightStatus::*BRAKE_LIGHT_OFF*)
        ((= const 2) 'endpoint_msgs::BrakeLightStatus::*BRAKE_LIGHT_ON*)
        ((= const 255) 'endpoint_msgs::BrakeLightStatus::*BRAKE_LIGHT_INVALID*)
        (t nil)))

(defclass endpoint_msgs::BrakeLightStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::BrakeLightStatus
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

(setf (get endpoint_msgs::BrakeLightStatus :md5sum-) "0aae8a987d8c5694512285e36f7b1026")
(setf (get endpoint_msgs::BrakeLightStatus :datatype-) "endpoint_msgs/BrakeLightStatus")
(setf (get endpoint_msgs::BrakeLightStatus :definition-)
      "uint8 BRAKE_LIGHT_NONE = 0
uint8 BRAKE_LIGHT_OFF = 1
uint8 BRAKE_LIGHT_ON = 2
uint8 BRAKE_LIGHT_INVALID = 255
uint8 value

")



(provide :endpoint_msgs/BrakeLightStatus "0aae8a987d8c5694512285e36f7b1026")


