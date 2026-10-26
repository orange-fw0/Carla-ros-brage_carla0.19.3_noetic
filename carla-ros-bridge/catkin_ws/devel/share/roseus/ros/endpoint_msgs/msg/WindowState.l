;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WindowState)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WindowState (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WINDOWSTATE")
  (make-package "ENDPOINT_MSGS::WINDOWSTATE"))

(in-package "ROS")
;;//! \htmlinclude WindowState.msg.html


(intern "*WINDOW_CLOSED*" (find-package "ENDPOINT_MSGS::WINDOWSTATE"))
(shadow '*WINDOW_CLOSED* (find-package "ENDPOINT_MSGS::WINDOWSTATE"))
(defconstant endpoint_msgs::WindowState::*WINDOW_CLOSED* 0)
(intern "*WINDOW_OPENED*" (find-package "ENDPOINT_MSGS::WINDOWSTATE"))
(shadow '*WINDOW_OPENED* (find-package "ENDPOINT_MSGS::WINDOWSTATE"))
(defconstant endpoint_msgs::WindowState::*WINDOW_OPENED* 1)
(intern "*WINDOW_MIDDLE*" (find-package "ENDPOINT_MSGS::WINDOWSTATE"))
(shadow '*WINDOW_MIDDLE* (find-package "ENDPOINT_MSGS::WINDOWSTATE"))
(defconstant endpoint_msgs::WindowState::*WINDOW_MIDDLE* 2)

(defun endpoint_msgs::WindowState-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::WindowState::*WINDOW_CLOSED*)
        ((= const 1) 'endpoint_msgs::WindowState::*WINDOW_OPENED*)
        ((= const 2) 'endpoint_msgs::WindowState::*WINDOW_MIDDLE*)
        (t nil)))

(defclass endpoint_msgs::WindowState
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::WindowState
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

(setf (get endpoint_msgs::WindowState :md5sum-) "ae4490b7f5b7c532eb42ac3bf4aa7491")
(setf (get endpoint_msgs::WindowState :datatype-) "endpoint_msgs/WindowState")
(setf (get endpoint_msgs::WindowState :definition-)
      "uint8 WINDOW_CLOSED = 0
uint8 WINDOW_OPENED = 1
uint8 WINDOW_MIDDLE = 2
uint8 value

")



(provide :endpoint_msgs/WindowState "ae4490b7f5b7c532eb42ac3bf4aa7491")


