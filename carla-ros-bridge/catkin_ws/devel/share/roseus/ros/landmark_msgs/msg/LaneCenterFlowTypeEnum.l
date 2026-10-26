;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterFlowTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterFlowTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTERFLOWTYPEENUM")
  (make-package "LANDMARK_MSGS::LANECENTERFLOWTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterFlowTypeEnum.msg.html


(intern "*LANE_CENTER_FLOW_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::LANECENTERFLOWTYPEENUM"))
(shadow '*LANE_CENTER_FLOW_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::LANECENTERFLOWTYPEENUM"))
(defconstant landmark_msgs::LaneCenterFlowTypeEnum::*LANE_CENTER_FLOW_TYPE_UNKNOWN* 0)
(intern "*LANE_CENTER_FLOW_TYPE_SAME*" (find-package "LANDMARK_MSGS::LANECENTERFLOWTYPEENUM"))
(shadow '*LANE_CENTER_FLOW_TYPE_SAME* (find-package "LANDMARK_MSGS::LANECENTERFLOWTYPEENUM"))
(defconstant landmark_msgs::LaneCenterFlowTypeEnum::*LANE_CENTER_FLOW_TYPE_SAME* 1)
(intern "*LANE_CENTER_FLOW_TYPE_REVERSE*" (find-package "LANDMARK_MSGS::LANECENTERFLOWTYPEENUM"))
(shadow '*LANE_CENTER_FLOW_TYPE_REVERSE* (find-package "LANDMARK_MSGS::LANECENTERFLOWTYPEENUM"))
(defconstant landmark_msgs::LaneCenterFlowTypeEnum::*LANE_CENTER_FLOW_TYPE_REVERSE* 2)
(intern "*LANE_CENTER_FLOW_TYPE_BOTH*" (find-package "LANDMARK_MSGS::LANECENTERFLOWTYPEENUM"))
(shadow '*LANE_CENTER_FLOW_TYPE_BOTH* (find-package "LANDMARK_MSGS::LANECENTERFLOWTYPEENUM"))
(defconstant landmark_msgs::LaneCenterFlowTypeEnum::*LANE_CENTER_FLOW_TYPE_BOTH* 3)

(defun landmark_msgs::LaneCenterFlowTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneCenterFlowTypeEnum::*LANE_CENTER_FLOW_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneCenterFlowTypeEnum::*LANE_CENTER_FLOW_TYPE_SAME*)
        ((= const 2) 'landmark_msgs::LaneCenterFlowTypeEnum::*LANE_CENTER_FLOW_TYPE_REVERSE*)
        ((= const 3) 'landmark_msgs::LaneCenterFlowTypeEnum::*LANE_CENTER_FLOW_TYPE_BOTH*)
        (t nil)))

(defclass landmark_msgs::LaneCenterFlowTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LaneCenterFlowTypeEnum
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

(setf (get landmark_msgs::LaneCenterFlowTypeEnum :md5sum-) "b0f2b286f3f6b9eeb1cfd1c7e60de711")
(setf (get landmark_msgs::LaneCenterFlowTypeEnum :datatype-) "landmark_msgs/LaneCenterFlowTypeEnum")
(setf (get landmark_msgs::LaneCenterFlowTypeEnum :definition-)
      "uint8 LANE_CENTER_FLOW_TYPE_UNKNOWN = 0
uint8 LANE_CENTER_FLOW_TYPE_SAME = 1
uint8 LANE_CENTER_FLOW_TYPE_REVERSE = 2
uint8 LANE_CENTER_FLOW_TYPE_BOTH = 3
uint8 value

")



(provide :landmark_msgs/LaneCenterFlowTypeEnum "b0f2b286f3f6b9eeb1cfd1c7e60de711")


