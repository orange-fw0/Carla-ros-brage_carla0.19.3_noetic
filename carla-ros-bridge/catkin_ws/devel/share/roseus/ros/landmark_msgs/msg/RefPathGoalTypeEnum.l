;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RefPathGoalTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RefPathGoalTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM")
  (make-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RefPathGoalTypeEnum.msg.html


(intern "*GOAL_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM"))
(shadow '*GOAL_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM"))
(defconstant landmark_msgs::RefPathGoalTypeEnum::*GOAL_TYPE_UNKNOWN* 0)
(intern "*GOAL_TYPE_WAY_POINT*" (find-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM"))
(shadow '*GOAL_TYPE_WAY_POINT* (find-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM"))
(defconstant landmark_msgs::RefPathGoalTypeEnum::*GOAL_TYPE_WAY_POINT* 1)
(intern "*GOAL_TYPE_LANE_CENTER*" (find-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM"))
(shadow '*GOAL_TYPE_LANE_CENTER* (find-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM"))
(defconstant landmark_msgs::RefPathGoalTypeEnum::*GOAL_TYPE_LANE_CENTER* 2)
(intern "*GOAL_TYPE_ROAD_MARK*" (find-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM"))
(shadow '*GOAL_TYPE_ROAD_MARK* (find-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM"))
(defconstant landmark_msgs::RefPathGoalTypeEnum::*GOAL_TYPE_ROAD_MARK* 3)
(intern "*GOAL_TYPE_ROAD_ENTRY_LINE*" (find-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM"))
(shadow '*GOAL_TYPE_ROAD_ENTRY_LINE* (find-package "LANDMARK_MSGS::REFPATHGOALTYPEENUM"))
(defconstant landmark_msgs::RefPathGoalTypeEnum::*GOAL_TYPE_ROAD_ENTRY_LINE* 4)

(defun landmark_msgs::RefPathGoalTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::RefPathGoalTypeEnum::*GOAL_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::RefPathGoalTypeEnum::*GOAL_TYPE_WAY_POINT*)
        ((= const 2) 'landmark_msgs::RefPathGoalTypeEnum::*GOAL_TYPE_LANE_CENTER*)
        ((= const 3) 'landmark_msgs::RefPathGoalTypeEnum::*GOAL_TYPE_ROAD_MARK*)
        ((= const 4) 'landmark_msgs::RefPathGoalTypeEnum::*GOAL_TYPE_ROAD_ENTRY_LINE*)
        (t nil)))

(defclass landmark_msgs::RefPathGoalTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::RefPathGoalTypeEnum
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

(setf (get landmark_msgs::RefPathGoalTypeEnum :md5sum-) "569a727b8f51e506287ecbb39b567167")
(setf (get landmark_msgs::RefPathGoalTypeEnum :datatype-) "landmark_msgs/RefPathGoalTypeEnum")
(setf (get landmark_msgs::RefPathGoalTypeEnum :definition-)
      "uint8 GOAL_TYPE_UNKNOWN = 0
uint8 GOAL_TYPE_WAY_POINT = 1
uint8 GOAL_TYPE_LANE_CENTER = 2
uint8 GOAL_TYPE_ROAD_MARK = 3
uint8 GOAL_TYPE_ROAD_ENTRY_LINE = 4
uint8 value

")



(provide :landmark_msgs/RefPathGoalTypeEnum "569a727b8f51e506287ecbb39b567167")


