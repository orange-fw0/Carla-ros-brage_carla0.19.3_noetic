;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LongitudinalIntention)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LongitudinalIntention (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION")
  (make-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))

(in-package "ROS")
;;//! \htmlinclude LongitudinalIntention.msg.html


(intern "*INVALID*" (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(shadow '*INVALID* (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(defconstant worldmodel_msgs::LongitudinalIntention::*INVALID* 0)
(intern "*ACCELERATE*" (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(shadow '*ACCELERATE* (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(defconstant worldmodel_msgs::LongitudinalIntention::*ACCELERATE* 1)
(intern "*DECELERATE*" (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(shadow '*DECELERATE* (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(defconstant worldmodel_msgs::LongitudinalIntention::*DECELERATE* 2)
(intern "*CRUISE*" (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(shadow '*CRUISE* (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(defconstant worldmodel_msgs::LongitudinalIntention::*CRUISE* 3)
(intern "*START_MOVE*" (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(shadow '*START_MOVE* (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(defconstant worldmodel_msgs::LongitudinalIntention::*START_MOVE* 4)
(intern "*STATIONARY*" (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(shadow '*STATIONARY* (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(defconstant worldmodel_msgs::LongitudinalIntention::*STATIONARY* 5)
(intern "*REVERSE*" (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(shadow '*REVERSE* (find-package "WORLDMODEL_MSGS::LONGITUDINALINTENTION"))
(defconstant worldmodel_msgs::LongitudinalIntention::*REVERSE* 6)

(defun worldmodel_msgs::LongitudinalIntention-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::LongitudinalIntention::*INVALID*)
        ((= const 1) 'worldmodel_msgs::LongitudinalIntention::*ACCELERATE*)
        ((= const 2) 'worldmodel_msgs::LongitudinalIntention::*DECELERATE*)
        ((= const 3) 'worldmodel_msgs::LongitudinalIntention::*CRUISE*)
        ((= const 4) 'worldmodel_msgs::LongitudinalIntention::*START_MOVE*)
        ((= const 5) 'worldmodel_msgs::LongitudinalIntention::*STATIONARY*)
        ((= const 6) 'worldmodel_msgs::LongitudinalIntention::*REVERSE*)
        (t nil)))

(defclass worldmodel_msgs::LongitudinalIntention
  :super ros::object
  :slots (_score _value ))

(defmethod worldmodel_msgs::LongitudinalIntention
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

(setf (get worldmodel_msgs::LongitudinalIntention :md5sum-) "56494fdf01aaea0581a10ad868e017ea")
(setf (get worldmodel_msgs::LongitudinalIntention :datatype-) "worldmodel_msgs/LongitudinalIntention")
(setf (get worldmodel_msgs::LongitudinalIntention :definition-)
      "uint16 INVALID = 0
uint16 ACCELERATE = 1
uint16 DECELERATE = 2
uint16 CRUISE = 3
uint16 START_MOVE = 4
uint16 STATIONARY = 5
uint16 REVERSE = 6
float32 score
uint16 value

")



(provide :worldmodel_msgs/LongitudinalIntention "56494fdf01aaea0581a10ad868e017ea")


