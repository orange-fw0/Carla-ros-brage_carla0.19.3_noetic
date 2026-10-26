;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SrsCollosion)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SrsCollosion (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SRSCOLLOSION")
  (make-package "ENDPOINT_MSGS::SRSCOLLOSION"))

(in-package "ROS")
;;//! \htmlinclude SrsCollosion.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::SRSCOLLOSION"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::SRSCOLLOSION"))
(defconstant endpoint_msgs::SrsCollosion::*NONE* 0)
(intern "*NOT_COLLOSION*" (find-package "ENDPOINT_MSGS::SRSCOLLOSION"))
(shadow '*NOT_COLLOSION* (find-package "ENDPOINT_MSGS::SRSCOLLOSION"))
(defconstant endpoint_msgs::SrsCollosion::*NOT_COLLOSION* 1)
(intern "*COLLOSION*" (find-package "ENDPOINT_MSGS::SRSCOLLOSION"))
(shadow '*COLLOSION* (find-package "ENDPOINT_MSGS::SRSCOLLOSION"))
(defconstant endpoint_msgs::SrsCollosion::*COLLOSION* 2)
(intern "*INVALID*" (find-package "ENDPOINT_MSGS::SRSCOLLOSION"))
(shadow '*INVALID* (find-package "ENDPOINT_MSGS::SRSCOLLOSION"))
(defconstant endpoint_msgs::SrsCollosion::*INVALID* 255)

(defun endpoint_msgs::SrsCollosion-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::SrsCollosion::*NONE*)
        ((= const 1) 'endpoint_msgs::SrsCollosion::*NOT_COLLOSION*)
        ((= const 2) 'endpoint_msgs::SrsCollosion::*COLLOSION*)
        ((= const 255) 'endpoint_msgs::SrsCollosion::*INVALID*)
        (t nil)))

(defclass endpoint_msgs::SrsCollosion
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::SrsCollosion
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

(setf (get endpoint_msgs::SrsCollosion :md5sum-) "9c6ba30f48214789243273d1b2902a0e")
(setf (get endpoint_msgs::SrsCollosion :datatype-) "endpoint_msgs/SrsCollosion")
(setf (get endpoint_msgs::SrsCollosion :definition-)
      "uint8 NONE = 0
uint8 NOT_COLLOSION = 1
uint8 COLLOSION = 2
uint8 INVALID = 255
uint8 value

")



(provide :endpoint_msgs/SrsCollosion "9c6ba30f48214789243273d1b2902a0e")


