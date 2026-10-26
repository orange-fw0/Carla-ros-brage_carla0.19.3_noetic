;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::RoadmarkType)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'RoadmarkType (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::ROADMARKTYPE")
  (make-package "SUBMAP_MSGS::ROADMARKTYPE"))

(in-package "ROS")
;;//! \htmlinclude RoadmarkType.msg.html


(intern "*NORMAL*" (find-package "SUBMAP_MSGS::ROADMARKTYPE"))
(shadow '*NORMAL* (find-package "SUBMAP_MSGS::ROADMARKTYPE"))
(defconstant submap_msgs::RoadmarkType::*NORMAL* 0)
(intern "*ARROW*" (find-package "SUBMAP_MSGS::ROADMARKTYPE"))
(shadow '*ARROW* (find-package "SUBMAP_MSGS::ROADMARKTYPE"))
(defconstant submap_msgs::RoadmarkType::*ARROW* 1)
(intern "*SPEED_BUMP*" (find-package "SUBMAP_MSGS::ROADMARKTYPE"))
(shadow '*SPEED_BUMP* (find-package "SUBMAP_MSGS::ROADMARKTYPE"))
(defconstant submap_msgs::RoadmarkType::*SPEED_BUMP* 2)
(intern "*CROSS_WALK*" (find-package "SUBMAP_MSGS::ROADMARKTYPE"))
(shadow '*CROSS_WALK* (find-package "SUBMAP_MSGS::ROADMARKTYPE"))
(defconstant submap_msgs::RoadmarkType::*CROSS_WALK* 3)
(intern "*STOP_LINE*" (find-package "SUBMAP_MSGS::ROADMARKTYPE"))
(shadow '*STOP_LINE* (find-package "SUBMAP_MSGS::ROADMARKTYPE"))
(defconstant submap_msgs::RoadmarkType::*STOP_LINE* 4)

(defun submap_msgs::RoadmarkType-to-symbol (const)
  (cond
        ((= const 0) 'submap_msgs::RoadmarkType::*NORMAL*)
        ((= const 1) 'submap_msgs::RoadmarkType::*ARROW*)
        ((= const 2) 'submap_msgs::RoadmarkType::*SPEED_BUMP*)
        ((= const 3) 'submap_msgs::RoadmarkType::*CROSS_WALK*)
        ((= const 4) 'submap_msgs::RoadmarkType::*STOP_LINE*)
        (t nil)))

(defclass submap_msgs::RoadmarkType
  :super ros::object
  :slots (_value ))

(defmethod submap_msgs::RoadmarkType
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

(setf (get submap_msgs::RoadmarkType :md5sum-) "8ce61d277bb8041d244e2d7c56c02e00")
(setf (get submap_msgs::RoadmarkType :datatype-) "submap_msgs/RoadmarkType")
(setf (get submap_msgs::RoadmarkType :definition-)
      "uint8 NORMAL = 0
uint8 ARROW = 1
uint8 SPEED_BUMP = 2
uint8 CROSS_WALK = 3
uint8 STOP_LINE = 4
uint8 value

")



(provide :submap_msgs/RoadmarkType "8ce61d277bb8041d244e2d7c56c02e00")


