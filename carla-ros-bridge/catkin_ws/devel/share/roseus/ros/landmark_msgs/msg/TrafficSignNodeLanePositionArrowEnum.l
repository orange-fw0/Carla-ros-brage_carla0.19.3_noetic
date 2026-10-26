;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNodeLanePositionArrowEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNodeLanePositionArrowEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNodeLanePositionArrowEnum.msg.html


(intern "*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(defconstant landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID* 0)
(intern "*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(defconstant landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN* 1)
(intern "*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(defconstant landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE* 2)
(intern "*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(defconstant landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT* 3)
(intern "*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(defconstant landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT* 4)
(intern "*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(defconstant landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN* 5)
(intern "*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(defconstant landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP* 6)
(intern "*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODELANEPOSITIONARROWENUM"))
(defconstant landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER* 255)

(defun landmark_msgs::TrafficSignNodeLanePositionArrowEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID*)
        ((= const 1) 'landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN*)
        ((= const 2) 'landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE*)
        ((= const 3) 'landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT*)
        ((= const 4) 'landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT*)
        ((= const 5) 'landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN*)
        ((= const 6) 'landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP*)
        ((= const 255) 'landmark_msgs::TrafficSignNodeLanePositionArrowEnum::*TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNodeLanePositionArrowEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignNodeLanePositionArrowEnum
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

(setf (get landmark_msgs::TrafficSignNodeLanePositionArrowEnum :md5sum-) "5554c3c99becd2732cbe9e255b4fd2eb")
(setf (get landmark_msgs::TrafficSignNodeLanePositionArrowEnum :datatype-) "landmark_msgs/TrafficSignNodeLanePositionArrowEnum")
(setf (get landmark_msgs::TrafficSignNodeLanePositionArrowEnum :definition-)
      "uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE = 2
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT = 3
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT = 4
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN = 5
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP = 6
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER = 255
uint8 value

")



(provide :landmark_msgs/TrafficSignNodeLanePositionArrowEnum "5554c3c99becd2732cbe9e255b4fd2eb")


