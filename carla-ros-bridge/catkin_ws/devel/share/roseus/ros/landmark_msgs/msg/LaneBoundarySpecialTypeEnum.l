;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneBoundarySpecialTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneBoundarySpecialTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM")
  (make-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundarySpecialTypeEnum.msg.html


(intern "*LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(shadow '*LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN* 0)
(intern "*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(shadow '*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT* (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT* 1)
(intern "*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(shadow '*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT* (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT* 2)
(intern "*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(shadow '*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT* (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT* 3)
(intern "*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(shadow '*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT* (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT* 4)
(intern "*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(shadow '*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT* (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT* 5)
(intern "*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT*" (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(shadow '*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT* (find-package "LANDMARK_MSGS::LANEBOUNDARYSPECIALTYPEENUM"))
(defconstant landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT* 6)

(defun landmark_msgs::LaneBoundarySpecialTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT*)
        ((= const 2) 'landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT*)
        ((= const 3) 'landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT*)
        ((= const 4) 'landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT*)
        ((= const 5) 'landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT*)
        ((= const 6) 'landmark_msgs::LaneBoundarySpecialTypeEnum::*LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT*)
        (t nil)))

(defclass landmark_msgs::LaneBoundarySpecialTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LaneBoundarySpecialTypeEnum
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

(setf (get landmark_msgs::LaneBoundarySpecialTypeEnum :md5sum-) "256a6813971319c042d9e22bfa2a0297")
(setf (get landmark_msgs::LaneBoundarySpecialTypeEnum :datatype-) "landmark_msgs/LaneBoundarySpecialTypeEnum")
(setf (get landmark_msgs::LaneBoundarySpecialTypeEnum :definition-)
      "uint8 LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT = 1
uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT = 2
uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT = 3
uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT = 4
uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT = 5
uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT = 6
uint8 value

")



(provide :landmark_msgs/LaneBoundarySpecialTypeEnum "256a6813971319c042d9e22bfa2a0297")


