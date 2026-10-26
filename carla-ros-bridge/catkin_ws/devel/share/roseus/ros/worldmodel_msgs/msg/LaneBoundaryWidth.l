;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneBoundaryWidth)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneBoundaryWidth (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANEBOUNDARYWIDTH")
  (make-package "WORLDMODEL_MSGS::LANEBOUNDARYWIDTH"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundaryWidth.msg.html


(intern "*THIN*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYWIDTH"))
(shadow '*THIN* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYWIDTH"))
(defconstant worldmodel_msgs::LaneBoundaryWidth::*THIN* 0)
(intern "*THICK*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYWIDTH"))
(shadow '*THICK* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYWIDTH"))
(defconstant worldmodel_msgs::LaneBoundaryWidth::*THICK* 1)
(intern "*UNKNOWN*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYWIDTH"))
(shadow '*UNKNOWN* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYWIDTH"))
(defconstant worldmodel_msgs::LaneBoundaryWidth::*UNKNOWN* 2)

(defun worldmodel_msgs::LaneBoundaryWidth-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::LaneBoundaryWidth::*THIN*)
        ((= const 1) 'worldmodel_msgs::LaneBoundaryWidth::*THICK*)
        ((= const 2) 'worldmodel_msgs::LaneBoundaryWidth::*UNKNOWN*)
        (t nil)))

(defclass worldmodel_msgs::LaneBoundaryWidth
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::LaneBoundaryWidth
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

(setf (get worldmodel_msgs::LaneBoundaryWidth :md5sum-) "f39a24091f4966075d48de8cd4cce20d")
(setf (get worldmodel_msgs::LaneBoundaryWidth :datatype-) "worldmodel_msgs/LaneBoundaryWidth")
(setf (get worldmodel_msgs::LaneBoundaryWidth :definition-)
      "uint8 THIN = 0
uint8 THICK = 1
uint8 UNKNOWN = 2
uint8 value

")



(provide :worldmodel_msgs/LaneBoundaryWidth "f39a24091f4966075d48de8cd4cce20d")


