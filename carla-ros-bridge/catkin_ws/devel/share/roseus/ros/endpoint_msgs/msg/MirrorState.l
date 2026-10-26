;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::MirrorState)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'MirrorState (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::MIRRORSTATE")
  (make-package "ENDPOINT_MSGS::MIRRORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MirrorState.msg.html


(intern "*NO_REQUEST*" (find-package "ENDPOINT_MSGS::MIRRORSTATE"))
(shadow '*NO_REQUEST* (find-package "ENDPOINT_MSGS::MIRRORSTATE"))
(defconstant endpoint_msgs::MirrorState::*NO_REQUEST* 0)
(intern "*REQUEST_UNFOLD*" (find-package "ENDPOINT_MSGS::MIRRORSTATE"))
(shadow '*REQUEST_UNFOLD* (find-package "ENDPOINT_MSGS::MIRRORSTATE"))
(defconstant endpoint_msgs::MirrorState::*REQUEST_UNFOLD* 1)
(intern "*REQUEST_FOLD*" (find-package "ENDPOINT_MSGS::MIRRORSTATE"))
(shadow '*REQUEST_FOLD* (find-package "ENDPOINT_MSGS::MIRRORSTATE"))
(defconstant endpoint_msgs::MirrorState::*REQUEST_FOLD* 2)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::MIRRORSTATE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::MIRRORSTATE"))
(defconstant endpoint_msgs::MirrorState::*RESERVED1* 3)

(defun endpoint_msgs::MirrorState-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::MirrorState::*NO_REQUEST*)
        ((= const 1) 'endpoint_msgs::MirrorState::*REQUEST_UNFOLD*)
        ((= const 2) 'endpoint_msgs::MirrorState::*REQUEST_FOLD*)
        ((= const 3) 'endpoint_msgs::MirrorState::*RESERVED1*)
        (t nil)))

(defclass endpoint_msgs::MirrorState
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::MirrorState
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

(setf (get endpoint_msgs::MirrorState :md5sum-) "6b776a6cf0f29333d146fbcfb0b4fd65")
(setf (get endpoint_msgs::MirrorState :datatype-) "endpoint_msgs/MirrorState")
(setf (get endpoint_msgs::MirrorState :definition-)
      "uint8 NO_REQUEST = 0
uint8 REQUEST_UNFOLD = 1
uint8 REQUEST_FOLD = 2
uint8 RESERVED1 = 3
uint8 value

")



(provide :endpoint_msgs/MirrorState "6b776a6cf0f29333d146fbcfb0b4fd65")


