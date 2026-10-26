;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneBoundaryWidthTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneBoundaryWidthTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANEBOUNDARYWIDTHTYPEENUM")
  (make-package "LANDMARK_MSGS::LANEBOUNDARYWIDTHTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundaryWidthTypeEnum.msg.html


(intern "*LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::LANEBOUNDARYWIDTHTYPEENUM"))
(shadow '*LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::LANEBOUNDARYWIDTHTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryWidthTypeEnum::*LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN* 0)
(intern "*LANE_BOUNDARY_WIDTH_TYPE_NARROW*" (find-package "LANDMARK_MSGS::LANEBOUNDARYWIDTHTYPEENUM"))
(shadow '*LANE_BOUNDARY_WIDTH_TYPE_NARROW* (find-package "LANDMARK_MSGS::LANEBOUNDARYWIDTHTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryWidthTypeEnum::*LANE_BOUNDARY_WIDTH_TYPE_NARROW* 1)
(intern "*LANE_BOUNDARY_WIDTH_TYPE_WIDE*" (find-package "LANDMARK_MSGS::LANEBOUNDARYWIDTHTYPEENUM"))
(shadow '*LANE_BOUNDARY_WIDTH_TYPE_WIDE* (find-package "LANDMARK_MSGS::LANEBOUNDARYWIDTHTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryWidthTypeEnum::*LANE_BOUNDARY_WIDTH_TYPE_WIDE* 2)

(defun landmark_msgs::LaneBoundaryWidthTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneBoundaryWidthTypeEnum::*LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneBoundaryWidthTypeEnum::*LANE_BOUNDARY_WIDTH_TYPE_NARROW*)
        ((= const 2) 'landmark_msgs::LaneBoundaryWidthTypeEnum::*LANE_BOUNDARY_WIDTH_TYPE_WIDE*)
        (t nil)))

(defclass landmark_msgs::LaneBoundaryWidthTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LaneBoundaryWidthTypeEnum
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

(setf (get landmark_msgs::LaneBoundaryWidthTypeEnum :md5sum-) "4ee45bbd6fdf8723728aba1caadea8f0")
(setf (get landmark_msgs::LaneBoundaryWidthTypeEnum :datatype-) "landmark_msgs/LaneBoundaryWidthTypeEnum")
(setf (get landmark_msgs::LaneBoundaryWidthTypeEnum :definition-)
      "uint8 LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_WIDTH_TYPE_NARROW = 1
uint8 LANE_BOUNDARY_WIDTH_TYPE_WIDE = 2
uint8 value

")



(provide :landmark_msgs/LaneBoundaryWidthTypeEnum "4ee45bbd6fdf8723728aba1caadea8f0")


