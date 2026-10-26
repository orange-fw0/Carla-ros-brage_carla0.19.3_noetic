;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ObstacleTypeEnum)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ObstacleTypeEnum (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::OBSTACLETYPEENUM")
  (make-package "PLANNING_MSGS::OBSTACLETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude ObstacleTypeEnum.msg.html


(intern "*PHYSICAL*" (find-package "PLANNING_MSGS::OBSTACLETYPEENUM"))
(shadow '*PHYSICAL* (find-package "PLANNING_MSGS::OBSTACLETYPEENUM"))
(defconstant planning_msgs::ObstacleTypeEnum::*PHYSICAL* 1)
(intern "*LOGICAL*" (find-package "PLANNING_MSGS::OBSTACLETYPEENUM"))
(shadow '*LOGICAL* (find-package "PLANNING_MSGS::OBSTACLETYPEENUM"))
(defconstant planning_msgs::ObstacleTypeEnum::*LOGICAL* 2)
(intern "*PARKING_SLOT*" (find-package "PLANNING_MSGS::OBSTACLETYPEENUM"))
(shadow '*PARKING_SLOT* (find-package "PLANNING_MSGS::OBSTACLETYPEENUM"))
(defconstant planning_msgs::ObstacleTypeEnum::*PARKING_SLOT* 4)

(defun planning_msgs::ObstacleTypeEnum-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::ObstacleTypeEnum::*PHYSICAL*)
        ((= const 2) 'planning_msgs::ObstacleTypeEnum::*LOGICAL*)
        ((= const 4) 'planning_msgs::ObstacleTypeEnum::*PARKING_SLOT*)
        (t nil)))

(defclass planning_msgs::ObstacleTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::ObstacleTypeEnum
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

(setf (get planning_msgs::ObstacleTypeEnum :md5sum-) "1bdb6dd7b672524d997137da2eb6126d")
(setf (get planning_msgs::ObstacleTypeEnum :datatype-) "planning_msgs/ObstacleTypeEnum")
(setf (get planning_msgs::ObstacleTypeEnum :definition-)
      "uint8 PHYSICAL = 1
uint8 LOGICAL = 2
uint8 PARKING_SLOT = 4
uint8 value

")



(provide :planning_msgs/ObstacleTypeEnum "1bdb6dd7b672524d997137da2eb6126d")


