;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneChangeState)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneChangeState (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANECHANGESTATE")
  (make-package "WORLDMODEL_MSGS::LANECHANGESTATE"))

(in-package "ROS")
;;//! \htmlinclude LaneChangeState.msg.html


(intern "*FOLLOW*" (find-package "WORLDMODEL_MSGS::LANECHANGESTATE"))
(shadow '*FOLLOW* (find-package "WORLDMODEL_MSGS::LANECHANGESTATE"))
(defconstant worldmodel_msgs::LaneChangeState::*FOLLOW* 0)
(intern "*TURN_LEFT*" (find-package "WORLDMODEL_MSGS::LANECHANGESTATE"))
(shadow '*TURN_LEFT* (find-package "WORLDMODEL_MSGS::LANECHANGESTATE"))
(defconstant worldmodel_msgs::LaneChangeState::*TURN_LEFT* 1)
(intern "*TURN_RIGHT*" (find-package "WORLDMODEL_MSGS::LANECHANGESTATE"))
(shadow '*TURN_RIGHT* (find-package "WORLDMODEL_MSGS::LANECHANGESTATE"))
(defconstant worldmodel_msgs::LaneChangeState::*TURN_RIGHT* 2)

(defun worldmodel_msgs::LaneChangeState-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::LaneChangeState::*FOLLOW*)
        ((= const 1) 'worldmodel_msgs::LaneChangeState::*TURN_LEFT*)
        ((= const 2) 'worldmodel_msgs::LaneChangeState::*TURN_RIGHT*)
        (t nil)))

(defclass worldmodel_msgs::LaneChangeState
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::LaneChangeState
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

(setf (get worldmodel_msgs::LaneChangeState :md5sum-) "662de7b3ca7028afea5d63f31d223f9d")
(setf (get worldmodel_msgs::LaneChangeState :datatype-) "worldmodel_msgs/LaneChangeState")
(setf (get worldmodel_msgs::LaneChangeState :definition-)
      "uint8 FOLLOW = 0
uint8 TURN_LEFT = 1
uint8 TURN_RIGHT = 2
uint8 value

")



(provide :worldmodel_msgs/LaneChangeState "662de7b3ca7028afea5d63f31d223f9d")


