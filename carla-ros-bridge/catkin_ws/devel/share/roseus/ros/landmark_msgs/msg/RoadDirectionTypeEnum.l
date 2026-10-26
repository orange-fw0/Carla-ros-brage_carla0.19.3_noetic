;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadDirectionTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadDirectionTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM")
  (make-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadDirectionTypeEnum.msg.html


(intern "*ROAD_DIRECTION_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM"))
(shadow '*ROAD_DIRECTION_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadDirectionTypeEnum::*ROAD_DIRECTION_TYPE_UNKNOWN* 0)
(intern "*ROAD_DIRECTION_TYPE_NONE*" (find-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM"))
(shadow '*ROAD_DIRECTION_TYPE_NONE* (find-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadDirectionTypeEnum::*ROAD_DIRECTION_TYPE_NONE* 1)
(intern "*ROAD_DIRECTION_TYPE_A_B*" (find-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM"))
(shadow '*ROAD_DIRECTION_TYPE_A_B* (find-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadDirectionTypeEnum::*ROAD_DIRECTION_TYPE_A_B* 2)
(intern "*ROAD_DIRECTION_TYPE_B_A*" (find-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM"))
(shadow '*ROAD_DIRECTION_TYPE_B_A* (find-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadDirectionTypeEnum::*ROAD_DIRECTION_TYPE_B_A* 3)
(intern "*ROAD_DIRECTION_TYPE_BOTH*" (find-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM"))
(shadow '*ROAD_DIRECTION_TYPE_BOTH* (find-package "LANDMARK_MSGS::ROADDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadDirectionTypeEnum::*ROAD_DIRECTION_TYPE_BOTH* 4)

(defun landmark_msgs::RoadDirectionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::RoadDirectionTypeEnum::*ROAD_DIRECTION_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::RoadDirectionTypeEnum::*ROAD_DIRECTION_TYPE_NONE*)
        ((= const 2) 'landmark_msgs::RoadDirectionTypeEnum::*ROAD_DIRECTION_TYPE_A_B*)
        ((= const 3) 'landmark_msgs::RoadDirectionTypeEnum::*ROAD_DIRECTION_TYPE_B_A*)
        ((= const 4) 'landmark_msgs::RoadDirectionTypeEnum::*ROAD_DIRECTION_TYPE_BOTH*)
        (t nil)))

(defclass landmark_msgs::RoadDirectionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::RoadDirectionTypeEnum
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

(setf (get landmark_msgs::RoadDirectionTypeEnum :md5sum-) "fdc5a550579f50c659fdb824ae82a68e")
(setf (get landmark_msgs::RoadDirectionTypeEnum :datatype-) "landmark_msgs/RoadDirectionTypeEnum")
(setf (get landmark_msgs::RoadDirectionTypeEnum :definition-)
      "uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0
uint8 ROAD_DIRECTION_TYPE_NONE = 1
uint8 ROAD_DIRECTION_TYPE_A_B = 2
uint8 ROAD_DIRECTION_TYPE_B_A = 3
uint8 ROAD_DIRECTION_TYPE_BOTH = 4
uint8 value

")



(provide :landmark_msgs/RoadDirectionTypeEnum "fdc5a550579f50c659fdb824ae82a68e")


