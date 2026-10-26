;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LateralIntention)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LateralIntention (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LATERALINTENTION")
  (make-package "WORLDMODEL_MSGS::LATERALINTENTION"))

(in-package "ROS")
;;//! \htmlinclude LateralIntention.msg.html


(intern "*INVALID*" (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(shadow '*INVALID* (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(defconstant worldmodel_msgs::LateralIntention::*INVALID* 0)
(intern "*GO_STRAIGHT*" (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(shadow '*GO_STRAIGHT* (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(defconstant worldmodel_msgs::LateralIntention::*GO_STRAIGHT* 1)
(intern "*TURN_LEFT*" (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(shadow '*TURN_LEFT* (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(defconstant worldmodel_msgs::LateralIntention::*TURN_LEFT* 2)
(intern "*TURN_RIGHT*" (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(shadow '*TURN_RIGHT* (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(defconstant worldmodel_msgs::LateralIntention::*TURN_RIGHT* 3)
(intern "*U_TURN*" (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(shadow '*U_TURN* (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(defconstant worldmodel_msgs::LateralIntention::*U_TURN* 4)
(intern "*CHANGE_LANE_LEFT*" (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(shadow '*CHANGE_LANE_LEFT* (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(defconstant worldmodel_msgs::LateralIntention::*CHANGE_LANE_LEFT* 5)
(intern "*CHANGE_LANE_RIGHT*" (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(shadow '*CHANGE_LANE_RIGHT* (find-package "WORLDMODEL_MSGS::LATERALINTENTION"))
(defconstant worldmodel_msgs::LateralIntention::*CHANGE_LANE_RIGHT* 6)

(defun worldmodel_msgs::LateralIntention-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::LateralIntention::*INVALID*)
        ((= const 1) 'worldmodel_msgs::LateralIntention::*GO_STRAIGHT*)
        ((= const 2) 'worldmodel_msgs::LateralIntention::*TURN_LEFT*)
        ((= const 3) 'worldmodel_msgs::LateralIntention::*TURN_RIGHT*)
        ((= const 4) 'worldmodel_msgs::LateralIntention::*U_TURN*)
        ((= const 5) 'worldmodel_msgs::LateralIntention::*CHANGE_LANE_LEFT*)
        ((= const 6) 'worldmodel_msgs::LateralIntention::*CHANGE_LANE_RIGHT*)
        (t nil)))

(defclass worldmodel_msgs::LateralIntention
  :super ros::object
  :slots (_score _value ))

(defmethod worldmodel_msgs::LateralIntention
  (:init
   (&key
    ((:score __score) 0.0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _score (float __score))
   (setq _value (round __value))
   self)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float32 _score
    4
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get worldmodel_msgs::LateralIntention :md5sum-) "6df9fbab8ed0f7e0f8401e93000e0f48")
(setf (get worldmodel_msgs::LateralIntention :datatype-) "worldmodel_msgs/LateralIntention")
(setf (get worldmodel_msgs::LateralIntention :definition-)
      "uint16 INVALID = 0
uint16 GO_STRAIGHT = 1
uint16 TURN_LEFT = 2
uint16 TURN_RIGHT = 3
uint16 U_TURN = 4
uint16 CHANGE_LANE_LEFT = 5
uint16 CHANGE_LANE_RIGHT = 6
float32 score
uint16 value

")



(provide :worldmodel_msgs/LateralIntention "6df9fbab8ed0f7e0f8401e93000e0f48")


