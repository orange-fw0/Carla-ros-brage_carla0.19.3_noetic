;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadBoundaryPassDirectionTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadBoundaryPassDirectionTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADBOUNDARYPASSDIRECTIONTYPEENUM")
  (make-package "LANDMARK_MSGS::ROADBOUNDARYPASSDIRECTIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadBoundaryPassDirectionTypeEnum.msg.html


(intern "*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::ROADBOUNDARYPASSDIRECTIONTYPEENUM"))
(shadow '*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::ROADBOUNDARYPASSDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryPassDirectionTypeEnum::*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN* 0)
(intern "*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT*" (find-package "LANDMARK_MSGS::ROADBOUNDARYPASSDIRECTIONTYPEENUM"))
(shadow '*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT* (find-package "LANDMARK_MSGS::ROADBOUNDARYPASSDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryPassDirectionTypeEnum::*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT* 1)
(intern "*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT*" (find-package "LANDMARK_MSGS::ROADBOUNDARYPASSDIRECTIONTYPEENUM"))
(shadow '*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT* (find-package "LANDMARK_MSGS::ROADBOUNDARYPASSDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryPassDirectionTypeEnum::*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT* 2)
(intern "*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH*" (find-package "LANDMARK_MSGS::ROADBOUNDARYPASSDIRECTIONTYPEENUM"))
(shadow '*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH* (find-package "LANDMARK_MSGS::ROADBOUNDARYPASSDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryPassDirectionTypeEnum::*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH* 3)

(defun landmark_msgs::RoadBoundaryPassDirectionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::RoadBoundaryPassDirectionTypeEnum::*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::RoadBoundaryPassDirectionTypeEnum::*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT*)
        ((= const 2) 'landmark_msgs::RoadBoundaryPassDirectionTypeEnum::*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT*)
        ((= const 3) 'landmark_msgs::RoadBoundaryPassDirectionTypeEnum::*ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH*)
        (t nil)))

(defclass landmark_msgs::RoadBoundaryPassDirectionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::RoadBoundaryPassDirectionTypeEnum
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

(setf (get landmark_msgs::RoadBoundaryPassDirectionTypeEnum :md5sum-) "889301e8fd08f041114b165b78d373c6")
(setf (get landmark_msgs::RoadBoundaryPassDirectionTypeEnum :datatype-) "landmark_msgs/RoadBoundaryPassDirectionTypeEnum")
(setf (get landmark_msgs::RoadBoundaryPassDirectionTypeEnum :definition-)
      "uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN = 0
uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT = 1
uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT = 2
uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH = 3
uint8 value

")



(provide :landmark_msgs/RoadBoundaryPassDirectionTypeEnum "889301e8fd08f041114b165b78d373c6")


