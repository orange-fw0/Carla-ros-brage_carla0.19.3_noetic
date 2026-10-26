;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadObstacleTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadObstacleTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM")
  (make-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadObstacleTypeEnum.msg.html


(intern "*ROAD_OBSTACLE_TYPE_UNKONWN*" (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(shadow '*ROAD_OBSTACLE_TYPE_UNKONWN* (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(defconstant landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_UNKONWN* 0)
(intern "*ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL*" (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(shadow '*ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL* (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(defconstant landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL* 1)
(intern "*ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR*" (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(shadow '*ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR* (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(defconstant landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR* 2)
(intern "*ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL*" (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(shadow '*ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL* (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(defconstant landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL* 3)
(intern "*ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE*" (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(shadow '*ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE* (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(defconstant landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE* 4)
(intern "*ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP*" (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(shadow '*ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP* (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(defconstant landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP* 5)
(intern "*ROAD_OBSTACLE_TYPE_PILLAR*" (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(shadow '*ROAD_OBSTACLE_TYPE_PILLAR* (find-package "LANDMARK_MSGS::ROADOBSTACLETYPEENUM"))
(defconstant landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_PILLAR* 6)

(defun landmark_msgs::RoadObstacleTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_UNKONWN*)
        ((= const 1) 'landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL*)
        ((= const 2) 'landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR*)
        ((= const 3) 'landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL*)
        ((= const 4) 'landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE*)
        ((= const 5) 'landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP*)
        ((= const 6) 'landmark_msgs::RoadObstacleTypeEnum::*ROAD_OBSTACLE_TYPE_PILLAR*)
        (t nil)))

(defclass landmark_msgs::RoadObstacleTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::RoadObstacleTypeEnum
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

(setf (get landmark_msgs::RoadObstacleTypeEnum :md5sum-) "3a1bcb34cfae7ea8cc1017cbfc2e9ac6")
(setf (get landmark_msgs::RoadObstacleTypeEnum :datatype-) "landmark_msgs/RoadObstacleTypeEnum")
(setf (get landmark_msgs::RoadObstacleTypeEnum :definition-)
      "uint8 ROAD_OBSTACLE_TYPE_UNKONWN = 0
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL = 1
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR = 2
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL = 3
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE = 4
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP = 5
uint8 ROAD_OBSTACLE_TYPE_PILLAR = 6
uint8 value

")



(provide :landmark_msgs/RoadObstacleTypeEnum "3a1bcb34cfae7ea8cc1017cbfc2e9ac6")


