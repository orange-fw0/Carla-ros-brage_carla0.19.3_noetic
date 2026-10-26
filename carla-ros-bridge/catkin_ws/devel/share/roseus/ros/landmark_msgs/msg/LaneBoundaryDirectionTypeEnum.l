;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneBoundaryDirectionTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneBoundaryDirectionTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANEBOUNDARYDIRECTIONTYPEENUM")
  (make-package "LANDMARK_MSGS::LANEBOUNDARYDIRECTIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundaryDirectionTypeEnum.msg.html


(intern "*LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::LANEBOUNDARYDIRECTIONTYPEENUM"))
(shadow '*LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::LANEBOUNDARYDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryDirectionTypeEnum::*LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN* 0)
(intern "*LANE_BOUNDARY_DIRECTION_TYPE_SAME*" (find-package "LANDMARK_MSGS::LANEBOUNDARYDIRECTIONTYPEENUM"))
(shadow '*LANE_BOUNDARY_DIRECTION_TYPE_SAME* (find-package "LANDMARK_MSGS::LANEBOUNDARYDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryDirectionTypeEnum::*LANE_BOUNDARY_DIRECTION_TYPE_SAME* 1)
(intern "*LANE_BOUNDARY_DIRECTION_TYPE_REVERSE*" (find-package "LANDMARK_MSGS::LANEBOUNDARYDIRECTIONTYPEENUM"))
(shadow '*LANE_BOUNDARY_DIRECTION_TYPE_REVERSE* (find-package "LANDMARK_MSGS::LANEBOUNDARYDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryDirectionTypeEnum::*LANE_BOUNDARY_DIRECTION_TYPE_REVERSE* 2)
(intern "*LANE_BOUNDARY_DIRECTION_TYPE_BOTH*" (find-package "LANDMARK_MSGS::LANEBOUNDARYDIRECTIONTYPEENUM"))
(shadow '*LANE_BOUNDARY_DIRECTION_TYPE_BOTH* (find-package "LANDMARK_MSGS::LANEBOUNDARYDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryDirectionTypeEnum::*LANE_BOUNDARY_DIRECTION_TYPE_BOTH* 3)

(defun landmark_msgs::LaneBoundaryDirectionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneBoundaryDirectionTypeEnum::*LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneBoundaryDirectionTypeEnum::*LANE_BOUNDARY_DIRECTION_TYPE_SAME*)
        ((= const 2) 'landmark_msgs::LaneBoundaryDirectionTypeEnum::*LANE_BOUNDARY_DIRECTION_TYPE_REVERSE*)
        ((= const 3) 'landmark_msgs::LaneBoundaryDirectionTypeEnum::*LANE_BOUNDARY_DIRECTION_TYPE_BOTH*)
        (t nil)))

(defclass landmark_msgs::LaneBoundaryDirectionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LaneBoundaryDirectionTypeEnum
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

(setf (get landmark_msgs::LaneBoundaryDirectionTypeEnum :md5sum-) "1c40bb7d175ce8e27090133aa1cd1366")
(setf (get landmark_msgs::LaneBoundaryDirectionTypeEnum :datatype-) "landmark_msgs/LaneBoundaryDirectionTypeEnum")
(setf (get landmark_msgs::LaneBoundaryDirectionTypeEnum :definition-)
      "uint8 LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_DIRECTION_TYPE_SAME = 1
uint8 LANE_BOUNDARY_DIRECTION_TYPE_REVERSE = 2
uint8 LANE_BOUNDARY_DIRECTION_TYPE_BOTH = 3
uint8 value

")



(provide :landmark_msgs/LaneBoundaryDirectionTypeEnum "1c40bb7d175ce8e27090133aa1cd1366")


