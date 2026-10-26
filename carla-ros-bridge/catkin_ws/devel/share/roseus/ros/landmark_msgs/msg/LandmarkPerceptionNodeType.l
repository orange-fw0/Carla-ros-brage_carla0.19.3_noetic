;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LandmarkPerceptionNodeType)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LandmarkPerceptionNodeType (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE")
  (make-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))

(in-package "ROS")
;;//! \htmlinclude LandmarkPerceptionNodeType.msg.html


(intern "*NODE_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_UNKNOWN* 0)
(intern "*NODE_TYPE_LANE_CENTER*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_LANE_CENTER* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_LANE_CENTER* 1)
(intern "*NODE_TYPE_LANE_BOUNDARY*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_LANE_BOUNDARY* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_LANE_BOUNDARY* 2)
(intern "*NODE_TYPE_ROAD_BOUNDARY*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_ROAD_BOUNDARY* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_ROAD_BOUNDARY* 3)
(intern "*NODE_TYPE_ROAD*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_ROAD* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_ROAD* 4)
(intern "*NODE_TYPE_STOP_LINE*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_STOP_LINE* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_STOP_LINE* 5)
(intern "*NODE_TYPE_CROSS_WALK*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_CROSS_WALK* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_CROSS_WALK* 6)
(intern "*NODE_TYPE_VALID_ROI*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_VALID_ROI* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_VALID_ROI* 7)
(intern "*NODE_TYPE_ROAD_MARK*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_ROAD_MARK* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_ROAD_MARK* 8)
(intern "*NODE_TYPE_AOI*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_AOI* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_AOI* 9)
(intern "*NODE_TYPE_TRAFFIC_SIGN*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_TRAFFIC_SIGN* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_TRAFFIC_SIGN* 10)
(intern "*NODE_TYPE_TRAFFIC_POLE*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_TRAFFIC_POLE* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_TRAFFIC_POLE* 11)
(intern "*NODE_TYPE_TRAFFIC_LIGHT*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_TRAFFIC_LIGHT* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_TRAFFIC_LIGHT* 12)
(intern "*NODE_TYPE_SPEEDBUMP*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_SPEEDBUMP* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_SPEEDBUMP* 13)
(intern "*NODE_TYPE_DASH_LINE_END*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_DASH_LINE_END* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_DASH_LINE_END* 14)
(intern "*NODE_TYPE_ROAD_ENTRY_LINE*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_ROAD_ENTRY_LINE* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_ROAD_ENTRY_LINE* 15)
(intern "*NODE_TYPE_ROAD_OBSTACLE*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_ROAD_OBSTACLE* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_ROAD_OBSTACLE* 50)
(intern "*NODE_TYPE_PARKING_SPACE*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_PARKING_SPACE* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_PARKING_SPACE* 51)
(intern "*NODE_TYPE_PARKING_FACILITY*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(shadow '*NODE_TYPE_PARKING_FACILITY* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONNODETYPE"))
(defconstant landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_PARKING_FACILITY* 52)

(defun landmark_msgs::LandmarkPerceptionNodeType-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_LANE_CENTER*)
        ((= const 2) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_LANE_BOUNDARY*)
        ((= const 3) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_ROAD_BOUNDARY*)
        ((= const 4) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_ROAD*)
        ((= const 5) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_STOP_LINE*)
        ((= const 6) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_CROSS_WALK*)
        ((= const 7) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_VALID_ROI*)
        ((= const 8) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_ROAD_MARK*)
        ((= const 9) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_AOI*)
        ((= const 10) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_TRAFFIC_SIGN*)
        ((= const 11) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_TRAFFIC_POLE*)
        ((= const 12) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_TRAFFIC_LIGHT*)
        ((= const 13) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_SPEEDBUMP*)
        ((= const 14) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_DASH_LINE_END*)
        ((= const 15) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_ROAD_ENTRY_LINE*)
        ((= const 50) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_ROAD_OBSTACLE*)
        ((= const 51) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_PARKING_SPACE*)
        ((= const 52) 'landmark_msgs::LandmarkPerceptionNodeType::*NODE_TYPE_PARKING_FACILITY*)
        (t nil)))

(defclass landmark_msgs::LandmarkPerceptionNodeType
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LandmarkPerceptionNodeType
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

(setf (get landmark_msgs::LandmarkPerceptionNodeType :md5sum-) "1cbaa0467922efb7887e0a60111189cd")
(setf (get landmark_msgs::LandmarkPerceptionNodeType :datatype-) "landmark_msgs/LandmarkPerceptionNodeType")
(setf (get landmark_msgs::LandmarkPerceptionNodeType :definition-)
      "uint8 NODE_TYPE_UNKNOWN = 0
uint8 NODE_TYPE_LANE_CENTER = 1
uint8 NODE_TYPE_LANE_BOUNDARY = 2
uint8 NODE_TYPE_ROAD_BOUNDARY = 3
uint8 NODE_TYPE_ROAD = 4
uint8 NODE_TYPE_STOP_LINE = 5
uint8 NODE_TYPE_CROSS_WALK = 6
uint8 NODE_TYPE_VALID_ROI = 7
uint8 NODE_TYPE_ROAD_MARK = 8
uint8 NODE_TYPE_AOI = 9
uint8 NODE_TYPE_TRAFFIC_SIGN = 10
uint8 NODE_TYPE_TRAFFIC_POLE = 11
uint8 NODE_TYPE_TRAFFIC_LIGHT = 12
uint8 NODE_TYPE_SPEEDBUMP = 13
uint8 NODE_TYPE_DASH_LINE_END = 14
uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15
uint8 NODE_TYPE_ROAD_OBSTACLE = 50
uint8 NODE_TYPE_PARKING_SPACE = 51
uint8 NODE_TYPE_PARKING_FACILITY = 52
uint8 value

")



(provide :landmark_msgs/LandmarkPerceptionNodeType "1cbaa0467922efb7887e0a60111189cd")


