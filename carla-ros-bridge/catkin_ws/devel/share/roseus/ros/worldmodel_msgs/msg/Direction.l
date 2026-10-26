;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::Direction)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'Direction (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::DIRECTION")
  (make-package "WORLDMODEL_MSGS::DIRECTION"))

(in-package "ROS")
;;//! \htmlinclude Direction.msg.html


(intern "*UNKNOWN*" (find-package "WORLDMODEL_MSGS::DIRECTION"))
(shadow '*UNKNOWN* (find-package "WORLDMODEL_MSGS::DIRECTION"))
(defconstant worldmodel_msgs::Direction::*UNKNOWN* 0)
(intern "*GO_STRAIGHT*" (find-package "WORLDMODEL_MSGS::DIRECTION"))
(shadow '*GO_STRAIGHT* (find-package "WORLDMODEL_MSGS::DIRECTION"))
(defconstant worldmodel_msgs::Direction::*GO_STRAIGHT* 1)
(intern "*TURN_RIGHT*" (find-package "WORLDMODEL_MSGS::DIRECTION"))
(shadow '*TURN_RIGHT* (find-package "WORLDMODEL_MSGS::DIRECTION"))
(defconstant worldmodel_msgs::Direction::*TURN_RIGHT* 2)
(intern "*TURN_LEFT*" (find-package "WORLDMODEL_MSGS::DIRECTION"))
(shadow '*TURN_LEFT* (find-package "WORLDMODEL_MSGS::DIRECTION"))
(defconstant worldmodel_msgs::Direction::*TURN_LEFT* 4)
(intern "*U_TURN_LEFT*" (find-package "WORLDMODEL_MSGS::DIRECTION"))
(shadow '*U_TURN_LEFT* (find-package "WORLDMODEL_MSGS::DIRECTION"))
(defconstant worldmodel_msgs::Direction::*U_TURN_LEFT* 8)
(intern "*U_TURN_RIGHT*" (find-package "WORLDMODEL_MSGS::DIRECTION"))
(shadow '*U_TURN_RIGHT* (find-package "WORLDMODEL_MSGS::DIRECTION"))
(defconstant worldmodel_msgs::Direction::*U_TURN_RIGHT* 16)
(intern "*OFF_ROUTE*" (find-package "WORLDMODEL_MSGS::DIRECTION"))
(shadow '*OFF_ROUTE* (find-package "WORLDMODEL_MSGS::DIRECTION"))
(defconstant worldmodel_msgs::Direction::*OFF_ROUTE* 32)

(defun worldmodel_msgs::Direction-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::Direction::*UNKNOWN*)
        ((= const 1) 'worldmodel_msgs::Direction::*GO_STRAIGHT*)
        ((= const 2) 'worldmodel_msgs::Direction::*TURN_RIGHT*)
        ((= const 4) 'worldmodel_msgs::Direction::*TURN_LEFT*)
        ((= const 8) 'worldmodel_msgs::Direction::*U_TURN_LEFT*)
        ((= const 16) 'worldmodel_msgs::Direction::*U_TURN_RIGHT*)
        ((= const 32) 'worldmodel_msgs::Direction::*OFF_ROUTE*)
        (t nil)))

(defclass worldmodel_msgs::Direction
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::Direction
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

(setf (get worldmodel_msgs::Direction :md5sum-) "2a624de9197bdfa123d357dcfef0ebfb")
(setf (get worldmodel_msgs::Direction :datatype-) "worldmodel_msgs/Direction")
(setf (get worldmodel_msgs::Direction :definition-)
      "uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 4
uint8 U_TURN_LEFT = 8
uint8 U_TURN_RIGHT = 16
uint8 OFF_ROUTE = 32
uint8 value

")



(provide :worldmodel_msgs/Direction "2a624de9197bdfa123d357dcfef0ebfb")


