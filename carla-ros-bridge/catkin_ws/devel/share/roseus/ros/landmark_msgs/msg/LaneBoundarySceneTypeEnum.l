;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneBoundarySceneTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneBoundarySceneTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM")
  (make-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundarySceneTypeEnum.msg.html


(intern "*LANE_BOUNDARY_SCENE_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(shadow '*LANE_BOUNDARY_SCENE_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_UNKNOWN* 0)
(intern "*LANE_BOUNDARY_SCENE_TYPE_DISCARDED*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(shadow '*LANE_BOUNDARY_SCENE_TYPE_DISCARDED* (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_DISCARDED* 1)
(intern "*LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(shadow '*LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK* (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK* 2)
(intern "*LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(shadow '*LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE* (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE* 3)
(intern "*LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(shadow '*LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA* (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA* 4)
(intern "*LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(shadow '*LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE* (find-package "LANDMARK_MSGS::LANEBOUNDARYSCENETYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE* 5)

(defun landmark_msgs::LaneBoundarySceneTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_DISCARDED*)
        ((= const 2) 'landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK*)
        ((= const 3) 'landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE*)
        ((= const 4) 'landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA*)
        ((= const 5) 'landmark_msgs::LaneBoundarySceneTypeEnum::*LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE*)
        (t nil)))

(defclass landmark_msgs::LaneBoundarySceneTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LaneBoundarySceneTypeEnum
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

(setf (get landmark_msgs::LaneBoundarySceneTypeEnum :md5sum-) "5316f78aec7fd19d20a0439c3b3f8a02")
(setf (get landmark_msgs::LaneBoundarySceneTypeEnum :datatype-) "landmark_msgs/LaneBoundarySceneTypeEnum")
(setf (get landmark_msgs::LaneBoundarySceneTypeEnum :definition-)
      "uint8 LANE_BOUNDARY_SCENE_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_SCENE_TYPE_DISCARDED = 1
uint8 LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK = 2
uint8 LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE = 3
uint8 LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA = 4
uint8 LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE = 5
uint8 value

")



(provide :landmark_msgs/LaneBoundarySceneTypeEnum "5316f78aec7fd19d20a0439c3b3f8a02")


