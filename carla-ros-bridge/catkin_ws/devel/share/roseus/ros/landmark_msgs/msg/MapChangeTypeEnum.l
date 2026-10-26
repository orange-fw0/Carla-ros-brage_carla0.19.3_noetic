;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::MapChangeTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'MapChangeTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::MAPCHANGETYPEENUM")
  (make-package "LANDMARK_MSGS::MAPCHANGETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude MapChangeTypeEnum.msg.html


(intern "*MAP_CHANGE_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::MAPCHANGETYPEENUM"))
(shadow '*MAP_CHANGE_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::MAPCHANGETYPEENUM"))
(defconstant landmark_msgs::MapChangeTypeEnum::*MAP_CHANGE_TYPE_UNKNOWN* 0)
(intern "*MAP_CHANGE_TYPE_NO_CHANGE*" (find-package "LANDMARK_MSGS::MAPCHANGETYPEENUM"))
(shadow '*MAP_CHANGE_TYPE_NO_CHANGE* (find-package "LANDMARK_MSGS::MAPCHANGETYPEENUM"))
(defconstant landmark_msgs::MapChangeTypeEnum::*MAP_CHANGE_TYPE_NO_CHANGE* 1)
(intern "*MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE*" (find-package "LANDMARK_MSGS::MAPCHANGETYPEENUM"))
(shadow '*MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE* (find-package "LANDMARK_MSGS::MAPCHANGETYPEENUM"))
(defconstant landmark_msgs::MapChangeTypeEnum::*MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE* 2)
(intern "*MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE*" (find-package "LANDMARK_MSGS::MAPCHANGETYPEENUM"))
(shadow '*MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE* (find-package "LANDMARK_MSGS::MAPCHANGETYPEENUM"))
(defconstant landmark_msgs::MapChangeTypeEnum::*MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE* 3)
(intern "*MAP_CHANGE_TYPE_OTHER_CHANGES*" (find-package "LANDMARK_MSGS::MAPCHANGETYPEENUM"))
(shadow '*MAP_CHANGE_TYPE_OTHER_CHANGES* (find-package "LANDMARK_MSGS::MAPCHANGETYPEENUM"))
(defconstant landmark_msgs::MapChangeTypeEnum::*MAP_CHANGE_TYPE_OTHER_CHANGES* 4)

(defun landmark_msgs::MapChangeTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::MapChangeTypeEnum::*MAP_CHANGE_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::MapChangeTypeEnum::*MAP_CHANGE_TYPE_NO_CHANGE*)
        ((= const 2) 'landmark_msgs::MapChangeTypeEnum::*MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE*)
        ((= const 3) 'landmark_msgs::MapChangeTypeEnum::*MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE*)
        ((= const 4) 'landmark_msgs::MapChangeTypeEnum::*MAP_CHANGE_TYPE_OTHER_CHANGES*)
        (t nil)))

(defclass landmark_msgs::MapChangeTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::MapChangeTypeEnum
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

(setf (get landmark_msgs::MapChangeTypeEnum :md5sum-) "f78ff6afc08b26767f3b8efa366d3410")
(setf (get landmark_msgs::MapChangeTypeEnum :datatype-) "landmark_msgs/MapChangeTypeEnum")
(setf (get landmark_msgs::MapChangeTypeEnum :definition-)
      "uint8 MAP_CHANGE_TYPE_UNKNOWN = 0
uint8 MAP_CHANGE_TYPE_NO_CHANGE = 1
uint8 MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE = 2
uint8 MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE = 3
uint8 MAP_CHANGE_TYPE_OTHER_CHANGES = 4
uint8 value

")



(provide :landmark_msgs/MapChangeTypeEnum "f78ff6afc08b26767f3b8efa366d3410")


