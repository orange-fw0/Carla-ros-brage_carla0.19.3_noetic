;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneBoundaryForm)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneBoundaryForm (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM")
  (make-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundaryForm.msg.html


(intern "*UNKNOWN*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(shadow '*UNKNOWN* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(defconstant worldmodel_msgs::LaneBoundaryForm::*UNKNOWN* 0)
(intern "*SOLID*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(shadow '*SOLID* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(defconstant worldmodel_msgs::LaneBoundaryForm::*SOLID* 1)
(intern "*DASH*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(shadow '*DASH* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(defconstant worldmodel_msgs::LaneBoundaryForm::*DASH* 2)
(intern "*VIRTUAL*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(shadow '*VIRTUAL* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(defconstant worldmodel_msgs::LaneBoundaryForm::*VIRTUAL* 3)
(intern "*PHYSICAL*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(shadow '*PHYSICAL* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(defconstant worldmodel_msgs::LaneBoundaryForm::*PHYSICAL* 4)
(intern "*DOUBLE_SOLID*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(shadow '*DOUBLE_SOLID* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(defconstant worldmodel_msgs::LaneBoundaryForm::*DOUBLE_SOLID* 5)
(intern "*DASH_SOLID*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(shadow '*DASH_SOLID* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(defconstant worldmodel_msgs::LaneBoundaryForm::*DASH_SOLID* 6)
(intern "*SOLID_DASH*" (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(shadow '*SOLID_DASH* (find-package "WORLDMODEL_MSGS::LANEBOUNDARYFORM"))
(defconstant worldmodel_msgs::LaneBoundaryForm::*SOLID_DASH* 7)

(defun worldmodel_msgs::LaneBoundaryForm-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::LaneBoundaryForm::*UNKNOWN*)
        ((= const 1) 'worldmodel_msgs::LaneBoundaryForm::*SOLID*)
        ((= const 2) 'worldmodel_msgs::LaneBoundaryForm::*DASH*)
        ((= const 3) 'worldmodel_msgs::LaneBoundaryForm::*VIRTUAL*)
        ((= const 4) 'worldmodel_msgs::LaneBoundaryForm::*PHYSICAL*)
        ((= const 5) 'worldmodel_msgs::LaneBoundaryForm::*DOUBLE_SOLID*)
        ((= const 6) 'worldmodel_msgs::LaneBoundaryForm::*DASH_SOLID*)
        ((= const 7) 'worldmodel_msgs::LaneBoundaryForm::*SOLID_DASH*)
        (t nil)))

(defclass worldmodel_msgs::LaneBoundaryForm
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::LaneBoundaryForm
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

(setf (get worldmodel_msgs::LaneBoundaryForm :md5sum-) "fa3e5dbf248ad13ce55de91eac8c461c")
(setf (get worldmodel_msgs::LaneBoundaryForm :datatype-) "worldmodel_msgs/LaneBoundaryForm")
(setf (get worldmodel_msgs::LaneBoundaryForm :definition-)
      "uint8 UNKNOWN = 0
uint8 SOLID = 1
uint8 DASH = 2
uint8 VIRTUAL = 3
uint8 PHYSICAL = 4
uint8 DOUBLE_SOLID = 5
uint8 DASH_SOLID = 6
uint8 SOLID_DASH = 7
uint8 value

")



(provide :worldmodel_msgs/LaneBoundaryForm "fa3e5dbf248ad13ce55de91eac8c461c")


