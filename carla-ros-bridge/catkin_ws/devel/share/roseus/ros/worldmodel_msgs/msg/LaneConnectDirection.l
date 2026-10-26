;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneConnectDirection)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneConnectDirection (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION")
  (make-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION"))

(in-package "ROS")
;;//! \htmlinclude LaneConnectDirection.msg.html


(intern "*NORMAL*" (find-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION"))
(shadow '*NORMAL* (find-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION"))
(defconstant worldmodel_msgs::LaneConnectDirection::*NORMAL* 0)
(intern "*SPLIT_TO_LEFT*" (find-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION"))
(shadow '*SPLIT_TO_LEFT* (find-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION"))
(defconstant worldmodel_msgs::LaneConnectDirection::*SPLIT_TO_LEFT* 1)
(intern "*SPLIT_TO_RIGHT*" (find-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION"))
(shadow '*SPLIT_TO_RIGHT* (find-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION"))
(defconstant worldmodel_msgs::LaneConnectDirection::*SPLIT_TO_RIGHT* 2)
(intern "*MERGE_FROM_LEFT*" (find-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION"))
(shadow '*MERGE_FROM_LEFT* (find-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION"))
(defconstant worldmodel_msgs::LaneConnectDirection::*MERGE_FROM_LEFT* 3)
(intern "*MERGE_FROM_RIGHT*" (find-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION"))
(shadow '*MERGE_FROM_RIGHT* (find-package "WORLDMODEL_MSGS::LANECONNECTDIRECTION"))
(defconstant worldmodel_msgs::LaneConnectDirection::*MERGE_FROM_RIGHT* 4)

(defun worldmodel_msgs::LaneConnectDirection-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::LaneConnectDirection::*NORMAL*)
        ((= const 1) 'worldmodel_msgs::LaneConnectDirection::*SPLIT_TO_LEFT*)
        ((= const 2) 'worldmodel_msgs::LaneConnectDirection::*SPLIT_TO_RIGHT*)
        ((= const 3) 'worldmodel_msgs::LaneConnectDirection::*MERGE_FROM_LEFT*)
        ((= const 4) 'worldmodel_msgs::LaneConnectDirection::*MERGE_FROM_RIGHT*)
        (t nil)))

(defclass worldmodel_msgs::LaneConnectDirection
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::LaneConnectDirection
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

(setf (get worldmodel_msgs::LaneConnectDirection :md5sum-) "e38e6a23888d9908b136b8c0a1418367")
(setf (get worldmodel_msgs::LaneConnectDirection :datatype-) "worldmodel_msgs/LaneConnectDirection")
(setf (get worldmodel_msgs::LaneConnectDirection :definition-)
      "uint8 NORMAL = 0
uint8 SPLIT_TO_LEFT = 1
uint8 SPLIT_TO_RIGHT = 2
uint8 MERGE_FROM_LEFT = 3
uint8 MERGE_FROM_RIGHT = 4
uint8 value

")



(provide :worldmodel_msgs/LaneConnectDirection "e38e6a23888d9908b136b8c0a1418367")


