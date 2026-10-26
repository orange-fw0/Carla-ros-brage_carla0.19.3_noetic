;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WindowType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WindowType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WINDOWTYPE")
  (make-package "ENDPOINT_MSGS::WINDOWTYPE"))

(in-package "ROS")
;;//! \htmlinclude WindowType.msg.html


(intern "*LIFT_STOP*" (find-package "ENDPOINT_MSGS::WINDOWTYPE"))
(shadow '*LIFT_STOP* (find-package "ENDPOINT_MSGS::WINDOWTYPE"))
(defconstant endpoint_msgs::WindowType::*LIFT_STOP* 0)
(intern "*LIFT_UP*" (find-package "ENDPOINT_MSGS::WINDOWTYPE"))
(shadow '*LIFT_UP* (find-package "ENDPOINT_MSGS::WINDOWTYPE"))
(defconstant endpoint_msgs::WindowType::*LIFT_UP* 1)
(intern "*LIFT_DOWN*" (find-package "ENDPOINT_MSGS::WINDOWTYPE"))
(shadow '*LIFT_DOWN* (find-package "ENDPOINT_MSGS::WINDOWTYPE"))
(defconstant endpoint_msgs::WindowType::*LIFT_DOWN* 2)

(defun endpoint_msgs::WindowType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::WindowType::*LIFT_STOP*)
        ((= const 1) 'endpoint_msgs::WindowType::*LIFT_UP*)
        ((= const 2) 'endpoint_msgs::WindowType::*LIFT_DOWN*)
        (t nil)))

(defclass endpoint_msgs::WindowType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::WindowType
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

(setf (get endpoint_msgs::WindowType :md5sum-) "c9e4f3e4494222cf374ff0b79a7bb9da")
(setf (get endpoint_msgs::WindowType :datatype-) "endpoint_msgs/WindowType")
(setf (get endpoint_msgs::WindowType :definition-)
      "uint8 LIFT_STOP = 0
uint8 LIFT_UP = 1
uint8 LIFT_DOWN = 2
uint8 value

")



(provide :endpoint_msgs/WindowType "c9e4f3e4494222cf374ff0b79a7bb9da")


