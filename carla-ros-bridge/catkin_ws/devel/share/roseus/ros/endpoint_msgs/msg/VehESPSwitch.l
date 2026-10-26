;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehESPSwitch)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehESPSwitch (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHESPSWITCH")
  (make-package "ENDPOINT_MSGS::VEHESPSWITCH"))

(in-package "ROS")
;;//! \htmlinclude VehESPSwitch.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::VEHESPSWITCH"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::VEHESPSWITCH"))
(defconstant endpoint_msgs::VehESPSwitch::*NONE* 0)
(intern "*ON*" (find-package "ENDPOINT_MSGS::VEHESPSWITCH"))
(shadow '*ON* (find-package "ENDPOINT_MSGS::VEHESPSWITCH"))
(defconstant endpoint_msgs::VehESPSwitch::*ON* 1)
(intern "*OFF*" (find-package "ENDPOINT_MSGS::VEHESPSWITCH"))
(shadow '*OFF* (find-package "ENDPOINT_MSGS::VEHESPSWITCH"))
(defconstant endpoint_msgs::VehESPSwitch::*OFF* 2)
(intern "*RESVERD*" (find-package "ENDPOINT_MSGS::VEHESPSWITCH"))
(shadow '*RESVERD* (find-package "ENDPOINT_MSGS::VEHESPSWITCH"))
(defconstant endpoint_msgs::VehESPSwitch::*RESVERD* 3)
(intern "*INVALID*" (find-package "ENDPOINT_MSGS::VEHESPSWITCH"))
(shadow '*INVALID* (find-package "ENDPOINT_MSGS::VEHESPSWITCH"))
(defconstant endpoint_msgs::VehESPSwitch::*INVALID* 255)

(defun endpoint_msgs::VehESPSwitch-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::VehESPSwitch::*NONE*)
        ((= const 1) 'endpoint_msgs::VehESPSwitch::*ON*)
        ((= const 2) 'endpoint_msgs::VehESPSwitch::*OFF*)
        ((= const 3) 'endpoint_msgs::VehESPSwitch::*RESVERD*)
        ((= const 255) 'endpoint_msgs::VehESPSwitch::*INVALID*)
        (t nil)))

(defclass endpoint_msgs::VehESPSwitch
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::VehESPSwitch
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

(setf (get endpoint_msgs::VehESPSwitch :md5sum-) "3af2755b55d059345b2e40474bda47a7")
(setf (get endpoint_msgs::VehESPSwitch :datatype-) "endpoint_msgs/VehESPSwitch")
(setf (get endpoint_msgs::VehESPSwitch :definition-)
      "uint8 NONE = 0
uint8 ON = 1
uint8 OFF = 2
uint8 RESVERD = 3
uint8 INVALID = 255
uint8 value

")



(provide :endpoint_msgs/VehESPSwitch "3af2755b55d059345b2e40474bda47a7")


