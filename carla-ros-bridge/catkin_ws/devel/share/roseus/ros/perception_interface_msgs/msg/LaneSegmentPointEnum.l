;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::LaneSegmentPointEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'LaneSegmentPointEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneSegmentPointEnum.msg.html


(intern "*LANE_SEGMENT_POINT_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM"))
(shadow '*LANE_SEGMENT_POINT_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM"))
(defconstant perception_interface_msgs::LaneSegmentPointEnum::*LANE_SEGMENT_POINT_UNKNOWN* 0)
(intern "*LANE_SEGMENT_POINT_FAKE_POINT*" (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM"))
(shadow '*LANE_SEGMENT_POINT_FAKE_POINT* (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM"))
(defconstant perception_interface_msgs::LaneSegmentPointEnum::*LANE_SEGMENT_POINT_FAKE_POINT* 1)
(intern "*LANE_SEGMENT_POINT_REAL_POINT*" (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM"))
(shadow '*LANE_SEGMENT_POINT_REAL_POINT* (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM"))
(defconstant perception_interface_msgs::LaneSegmentPointEnum::*LANE_SEGMENT_POINT_REAL_POINT* 2)
(intern "*LANE_SEGMENT_POINT_FARTHEST_POINT*" (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM"))
(shadow '*LANE_SEGMENT_POINT_FARTHEST_POINT* (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM"))
(defconstant perception_interface_msgs::LaneSegmentPointEnum::*LANE_SEGMENT_POINT_FARTHEST_POINT* 3)
(intern "*LANE_SEGMENT_POINT_OCCLUSION_POINT*" (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM"))
(shadow '*LANE_SEGMENT_POINT_OCCLUSION_POINT* (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENTPOINTENUM"))
(defconstant perception_interface_msgs::LaneSegmentPointEnum::*LANE_SEGMENT_POINT_OCCLUSION_POINT* 4)

(defun perception_interface_msgs::LaneSegmentPointEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::LaneSegmentPointEnum::*LANE_SEGMENT_POINT_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::LaneSegmentPointEnum::*LANE_SEGMENT_POINT_FAKE_POINT*)
        ((= const 2) 'perception_interface_msgs::LaneSegmentPointEnum::*LANE_SEGMENT_POINT_REAL_POINT*)
        ((= const 3) 'perception_interface_msgs::LaneSegmentPointEnum::*LANE_SEGMENT_POINT_FARTHEST_POINT*)
        ((= const 4) 'perception_interface_msgs::LaneSegmentPointEnum::*LANE_SEGMENT_POINT_OCCLUSION_POINT*)
        (t nil)))

(defclass perception_interface_msgs::LaneSegmentPointEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::LaneSegmentPointEnum
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

(setf (get perception_interface_msgs::LaneSegmentPointEnum :md5sum-) "7c3775ea63f9345e02ce4664a9779553")
(setf (get perception_interface_msgs::LaneSegmentPointEnum :datatype-) "perception_interface_msgs/LaneSegmentPointEnum")
(setf (get perception_interface_msgs::LaneSegmentPointEnum :definition-)
      "uint8 LANE_SEGMENT_POINT_UNKNOWN = 0
uint8 LANE_SEGMENT_POINT_FAKE_POINT = 1
uint8 LANE_SEGMENT_POINT_REAL_POINT = 2
uint8 LANE_SEGMENT_POINT_FARTHEST_POINT = 3
uint8 LANE_SEGMENT_POINT_OCCLUSION_POINT = 4
uint8 value

")



(provide :perception_interface_msgs/LaneSegmentPointEnum "7c3775ea63f9345e02ce4664a9779553")


