;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LandmarkFailSafe)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LandmarkFailSafe (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE")
  (make-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))

(in-package "ROS")
;;//! \htmlinclude LandmarkFailSafe.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*UNKNOWN* 0)
(intern "*LANE_CENTER_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*LANE_CENTER_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*LANE_CENTER_VANISH* 1)
(intern "*LANE_BOUNDARY_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*LANE_BOUNDARY_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*LANE_BOUNDARY_VANISH* 2)
(intern "*ROAD_BOUNDARY_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*ROAD_BOUNDARY_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*ROAD_BOUNDARY_VANISH* 3)
(intern "*ROAD_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*ROAD_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*ROAD_VANISH* 4)
(intern "*STOP_LINE_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*STOP_LINE_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*STOP_LINE_VANISH* 5)
(intern "*CROSS_WALK_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*CROSS_WALK_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*CROSS_WALK_VANISH* 6)
(intern "*VALID_ROI_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*VALID_ROI_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*VALID_ROI_VANISH* 7)
(intern "*ROAD_MARK_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*ROAD_MARK_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*ROAD_MARK_VANISH* 8)
(intern "*AOI_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*AOI_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*AOI_VANISH* 9)
(intern "*SPEED_BUMP_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*SPEED_BUMP_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*SPEED_BUMP_VANISH* 10)
(intern "*TRAFFIC_SIGN_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*TRAFFIC_SIGN_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*TRAFFIC_SIGN_VANISH* 11)
(intern "*POLE_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*POLE_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*POLE_VANISH* 12)
(intern "*TRAFFIC_LIGHT_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*TRAFFIC_LIGHT_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*TRAFFIC_LIGHT_VANISH* 13)
(intern "*DASH_LINE_END_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*DASH_LINE_END_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*DASH_LINE_END_VANISH* 14)
(intern "*ROAD_ENTRY_LINE_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*ROAD_ENTRY_LINE_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*ROAD_ENTRY_LINE_VANISH* 15)
(intern "*TRAFFIC_SIGN_GUIDE_ARROW_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*TRAFFIC_SIGN_GUIDE_ARROW_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*TRAFFIC_SIGN_GUIDE_ARROW_VANISH* 16)
(intern "*NO_PARKING_ZONE_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*NO_PARKING_ZONE_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*NO_PARKING_ZONE_VANISH* 17)
(intern "*NORMAL*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*NORMAL* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*NORMAL* 65)
(intern "*ABNORMAL_LANE_CENTER_INTERSECT_WITH_ROAD_BOUNDARY*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*ABNORMAL_LANE_CENTER_INTERSECT_WITH_ROAD_BOUNDARY* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*ABNORMAL_LANE_CENTER_INTERSECT_WITH_ROAD_BOUNDARY* 66)
(intern "*ALL_VANISH*" (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(shadow '*ALL_VANISH* (find-package "LANDMARK_MSGS::LANDMARKFAILSAFE"))
(defconstant landmark_msgs::LandmarkFailSafe::*ALL_VANISH* 65535)

(defun landmark_msgs::LandmarkFailSafe-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LandmarkFailSafe::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::LandmarkFailSafe::*LANE_CENTER_VANISH*)
        ((= const 2) 'landmark_msgs::LandmarkFailSafe::*LANE_BOUNDARY_VANISH*)
        ((= const 3) 'landmark_msgs::LandmarkFailSafe::*ROAD_BOUNDARY_VANISH*)
        ((= const 4) 'landmark_msgs::LandmarkFailSafe::*ROAD_VANISH*)
        ((= const 5) 'landmark_msgs::LandmarkFailSafe::*STOP_LINE_VANISH*)
        ((= const 6) 'landmark_msgs::LandmarkFailSafe::*CROSS_WALK_VANISH*)
        ((= const 7) 'landmark_msgs::LandmarkFailSafe::*VALID_ROI_VANISH*)
        ((= const 8) 'landmark_msgs::LandmarkFailSafe::*ROAD_MARK_VANISH*)
        ((= const 9) 'landmark_msgs::LandmarkFailSafe::*AOI_VANISH*)
        ((= const 10) 'landmark_msgs::LandmarkFailSafe::*SPEED_BUMP_VANISH*)
        ((= const 11) 'landmark_msgs::LandmarkFailSafe::*TRAFFIC_SIGN_VANISH*)
        ((= const 12) 'landmark_msgs::LandmarkFailSafe::*POLE_VANISH*)
        ((= const 13) 'landmark_msgs::LandmarkFailSafe::*TRAFFIC_LIGHT_VANISH*)
        ((= const 14) 'landmark_msgs::LandmarkFailSafe::*DASH_LINE_END_VANISH*)
        ((= const 15) 'landmark_msgs::LandmarkFailSafe::*ROAD_ENTRY_LINE_VANISH*)
        ((= const 16) 'landmark_msgs::LandmarkFailSafe::*TRAFFIC_SIGN_GUIDE_ARROW_VANISH*)
        ((= const 17) 'landmark_msgs::LandmarkFailSafe::*NO_PARKING_ZONE_VANISH*)
        ((= const 65) 'landmark_msgs::LandmarkFailSafe::*NORMAL*)
        ((= const 66) 'landmark_msgs::LandmarkFailSafe::*ABNORMAL_LANE_CENTER_INTERSECT_WITH_ROAD_BOUNDARY*)
        ((= const 65535) 'landmark_msgs::LandmarkFailSafe::*ALL_VANISH*)
        (t nil)))

(defclass landmark_msgs::LandmarkFailSafe
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LandmarkFailSafe
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
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get landmark_msgs::LandmarkFailSafe :md5sum-) "36b67acc3bb98a9fdcccafd0bef22c3e")
(setf (get landmark_msgs::LandmarkFailSafe :datatype-) "landmark_msgs/LandmarkFailSafe")
(setf (get landmark_msgs::LandmarkFailSafe :definition-)
      "uint16 UNKNOWN = 0
uint16 LANE_CENTER_VANISH = 1
uint16 LANE_BOUNDARY_VANISH = 2
uint16 ROAD_BOUNDARY_VANISH = 3
uint16 ROAD_VANISH = 4
uint16 STOP_LINE_VANISH = 5
uint16 CROSS_WALK_VANISH = 6
uint16 VALID_ROI_VANISH = 7
uint16 ROAD_MARK_VANISH = 8
uint16 AOI_VANISH = 9
uint16 SPEED_BUMP_VANISH = 10
uint16 TRAFFIC_SIGN_VANISH = 11
uint16 POLE_VANISH = 12
uint16 TRAFFIC_LIGHT_VANISH = 13
uint16 DASH_LINE_END_VANISH = 14
uint16 ROAD_ENTRY_LINE_VANISH = 15
uint16 TRAFFIC_SIGN_GUIDE_ARROW_VANISH = 16
uint16 NO_PARKING_ZONE_VANISH = 17
uint16 NORMAL = 65
uint16 ABNORMAL_LANE_CENTER_INTERSECT_WITH_ROAD_BOUNDARY = 66
uint16 ALL_VANISH = 65535
uint16 value

")



(provide :landmark_msgs/LandmarkFailSafe "36b67acc3bb98a9fdcccafd0bef22c3e")


