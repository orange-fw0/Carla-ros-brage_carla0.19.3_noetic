;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneBoundaryColor)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneBoundaryColor (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANEBOUNDARYCOLOR")
  (make-package "WORLDMODEL_MSGS::LANEBOUNDARYCOLOR"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundaryColor.msg.html


(intern "*WHITE*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYCOLOR"))
(shadow '*WHITE* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYCOLOR"))
(defconstant worldmodel_msgs::LaneBoundaryColor::*WHITE* 0)
(intern "*YELLOW*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYCOLOR"))
(shadow '*YELLOW* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYCOLOR"))
(defconstant worldmodel_msgs::LaneBoundaryColor::*YELLOW* 1)
(intern "*OTHER*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYCOLOR"))
(shadow '*OTHER* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYCOLOR"))
(defconstant worldmodel_msgs::LaneBoundaryColor::*OTHER* 2)

(defun worldmodel_msgs::LaneBoundaryColor-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::LaneBoundaryColor::*WHITE*)
        ((= const 1) 'worldmodel_msgs::LaneBoundaryColor::*YELLOW*)
        ((= const 2) 'worldmodel_msgs::LaneBoundaryColor::*OTHER*)
        (t nil)))

(defclass worldmodel_msgs::LaneBoundaryColor
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::LaneBoundaryColor
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

(setf (get worldmodel_msgs::LaneBoundaryColor :md5sum-) "ec5666af3942c179e871a3d8706ad8dc")
(setf (get worldmodel_msgs::LaneBoundaryColor :datatype-) "worldmodel_msgs/LaneBoundaryColor")
(setf (get worldmodel_msgs::LaneBoundaryColor :definition-)
      "uint8 WHITE = 0
uint8 YELLOW = 1
uint8 OTHER = 2
uint8 value

")



(provide :worldmodel_msgs/LaneBoundaryColor "ec5666af3942c179e871a3d8706ad8dc")


