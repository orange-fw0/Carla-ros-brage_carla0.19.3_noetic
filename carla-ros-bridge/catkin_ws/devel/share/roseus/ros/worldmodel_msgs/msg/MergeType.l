;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::MergeType)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'MergeType (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::MERGETYPE")
  (make-package "WORLDMODEL_MSGS::MERGETYPE"))

(in-package "ROS")
;;//! \htmlinclude MergeType.msg.html


(intern "*UNKNOWN*" (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(shadow '*UNKNOWN* (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(defconstant worldmodel_msgs::MergeType::*UNKNOWN* 0)
(intern "*UNRELATED*" (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(shadow '*UNRELATED* (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(defconstant worldmodel_msgs::MergeType::*UNRELATED* 1)
(intern "*FROM_RIGHT*" (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(shadow '*FROM_RIGHT* (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(defconstant worldmodel_msgs::MergeType::*FROM_RIGHT* 2)
(intern "*FROM_LEFT*" (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(shadow '*FROM_LEFT* (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(defconstant worldmodel_msgs::MergeType::*FROM_LEFT* 3)
(intern "*FROM_BOTH*" (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(shadow '*FROM_BOTH* (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(defconstant worldmodel_msgs::MergeType::*FROM_BOTH* 4)
(intern "*LANE_END*" (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(shadow '*LANE_END* (find-package "WORLDMODEL_MSGS::MERGETYPE"))
(defconstant worldmodel_msgs::MergeType::*LANE_END* 5)

(defun worldmodel_msgs::MergeType-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::MergeType::*UNKNOWN*)
        ((= const 1) 'worldmodel_msgs::MergeType::*UNRELATED*)
        ((= const 2) 'worldmodel_msgs::MergeType::*FROM_RIGHT*)
        ((= const 3) 'worldmodel_msgs::MergeType::*FROM_LEFT*)
        ((= const 4) 'worldmodel_msgs::MergeType::*FROM_BOTH*)
        ((= const 5) 'worldmodel_msgs::MergeType::*LANE_END*)
        (t nil)))

(defclass worldmodel_msgs::MergeType
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::MergeType
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

(setf (get worldmodel_msgs::MergeType :md5sum-) "5af07d3266060f38a429b126e858139b")
(setf (get worldmodel_msgs::MergeType :datatype-) "worldmodel_msgs/MergeType")
(setf (get worldmodel_msgs::MergeType :definition-)
      "uint8 UNKNOWN = 0
uint8 UNRELATED = 1
uint8 FROM_RIGHT = 2
uint8 FROM_LEFT = 3
uint8 FROM_BOTH = 4
uint8 LANE_END = 5
uint8 value

")



(provide :worldmodel_msgs/MergeType "5af07d3266060f38a429b126e858139b")


