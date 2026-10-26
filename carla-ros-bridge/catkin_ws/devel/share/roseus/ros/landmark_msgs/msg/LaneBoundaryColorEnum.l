;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneBoundaryColorEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneBoundaryColorEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM")
  (make-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundaryColorEnum.msg.html


(intern "*LANE_BOUNDARY_COLOR_UNKNOWN*" (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(shadow '*LANE_BOUNDARY_COLOR_UNKNOWN* (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(defconstant landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_UNKNOWN* 0)
(intern "*LANE_BOUNDARY_COLOR_WHITE*" (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(shadow '*LANE_BOUNDARY_COLOR_WHITE* (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(defconstant landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_WHITE* 1)
(intern "*LANE_BOUNDARY_COLOR_YELLOW*" (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(shadow '*LANE_BOUNDARY_COLOR_YELLOW* (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(defconstant landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_YELLOW* 2)
(intern "*LANE_BOUNDARY_COLOR_ORANGE*" (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(shadow '*LANE_BOUNDARY_COLOR_ORANGE* (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(defconstant landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_ORANGE* 3)
(intern "*LANE_BOUNDARY_COLOR_BLUE*" (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(shadow '*LANE_BOUNDARY_COLOR_BLUE* (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(defconstant landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_BLUE* 4)
(intern "*LANE_BOUNDARY_COLOR_GREEN*" (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(shadow '*LANE_BOUNDARY_COLOR_GREEN* (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(defconstant landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_GREEN* 5)
(intern "*LANE_BOUNDARY_COLOR_GRAY*" (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(shadow '*LANE_BOUNDARY_COLOR_GRAY* (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(defconstant landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_GRAY* 6)
(intern "*LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW*" (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(shadow '*LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW* (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(defconstant landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW* 7)
(intern "*LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY*" (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(shadow '*LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY* (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(defconstant landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY* 8)
(intern "*LANE_BOUNDARY_OTHER*" (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(shadow '*LANE_BOUNDARY_OTHER* (find-package "LANDMARK_MSGS::LANEBOUNDARYCOLORENUM"))
(defconstant landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_OTHER* 99)

(defun landmark_msgs::LaneBoundaryColorEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_WHITE*)
        ((= const 2) 'landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_YELLOW*)
        ((= const 3) 'landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_ORANGE*)
        ((= const 4) 'landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_BLUE*)
        ((= const 5) 'landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_GREEN*)
        ((= const 6) 'landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_GRAY*)
        ((= const 7) 'landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW*)
        ((= const 8) 'landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY*)
        ((= const 99) 'landmark_msgs::LaneBoundaryColorEnum::*LANE_BOUNDARY_OTHER*)
        (t nil)))

(defclass landmark_msgs::LaneBoundaryColorEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LaneBoundaryColorEnum
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

(setf (get landmark_msgs::LaneBoundaryColorEnum :md5sum-) "ff8b29cec829b49d261140f47e042f5b")
(setf (get landmark_msgs::LaneBoundaryColorEnum :datatype-) "landmark_msgs/LaneBoundaryColorEnum")
(setf (get landmark_msgs::LaneBoundaryColorEnum :definition-)
      "uint8 LANE_BOUNDARY_COLOR_UNKNOWN = 0
uint8 LANE_BOUNDARY_COLOR_WHITE = 1
uint8 LANE_BOUNDARY_COLOR_YELLOW = 2
uint8 LANE_BOUNDARY_COLOR_ORANGE = 3
uint8 LANE_BOUNDARY_COLOR_BLUE = 4
uint8 LANE_BOUNDARY_COLOR_GREEN = 5
uint8 LANE_BOUNDARY_COLOR_GRAY = 6
uint8 LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW = 7
uint8 LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY = 8
uint8 LANE_BOUNDARY_OTHER = 99
uint8 value

")



(provide :landmark_msgs/LaneBoundaryColorEnum "ff8b29cec829b49d261140f47e042f5b")


