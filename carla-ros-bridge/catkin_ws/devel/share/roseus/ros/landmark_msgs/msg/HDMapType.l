;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::HDMapType)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'HDMapType (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::HDMAPTYPE")
  (make-package "LANDMARK_MSGS::HDMAPTYPE"))

(in-package "ROS")
;;//! \htmlinclude HDMapType.msg.html


(intern "*NORMAL*" (find-package "LANDMARK_MSGS::HDMAPTYPE"))
(shadow '*NORMAL* (find-package "LANDMARK_MSGS::HDMAPTYPE"))
(defconstant landmark_msgs::HDMapType::*NORMAL* 0)
(intern "*LPNP*" (find-package "LANDMARK_MSGS::HDMAPTYPE"))
(shadow '*LPNP* (find-package "LANDMARK_MSGS::HDMAPTYPE"))
(defconstant landmark_msgs::HDMapType::*LPNP* 1)
(intern "*PNP*" (find-package "LANDMARK_MSGS::HDMAPTYPE"))
(shadow '*PNP* (find-package "LANDMARK_MSGS::HDMAPTYPE"))
(defconstant landmark_msgs::HDMapType::*PNP* 2)
(intern "*OTHER*" (find-package "LANDMARK_MSGS::HDMAPTYPE"))
(shadow '*OTHER* (find-package "LANDMARK_MSGS::HDMAPTYPE"))
(defconstant landmark_msgs::HDMapType::*OTHER* 99)

(defun landmark_msgs::HDMapType-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::HDMapType::*NORMAL*)
        ((= const 1) 'landmark_msgs::HDMapType::*LPNP*)
        ((= const 2) 'landmark_msgs::HDMapType::*PNP*)
        ((= const 99) 'landmark_msgs::HDMapType::*OTHER*)
        (t nil)))

(defclass landmark_msgs::HDMapType
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::HDMapType
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

(setf (get landmark_msgs::HDMapType :md5sum-) "4802d2675249524ba039b439b8640846")
(setf (get landmark_msgs::HDMapType :datatype-) "landmark_msgs/HDMapType")
(setf (get landmark_msgs::HDMapType :definition-)
      "uint8 NORMAL = 0
uint8 LPNP = 1
uint8 PNP = 2
uint8 OTHER = 99
uint8 value

")



(provide :landmark_msgs/HDMapType "4802d2675249524ba039b439b8640846")


