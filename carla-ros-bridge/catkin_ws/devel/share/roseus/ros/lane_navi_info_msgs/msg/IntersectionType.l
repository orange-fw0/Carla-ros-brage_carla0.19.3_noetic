;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::IntersectionType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'IntersectionType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude IntersectionType.msg.html


(intern "*UNKNOWN*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(shadow '*UNKNOWN* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(defconstant lane_navi_info_msgs::IntersectionType::*UNKNOWN* 0)
(intern "*HIGHWAY_SPLIT*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(shadow '*HIGHWAY_SPLIT* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(defconstant lane_navi_info_msgs::IntersectionType::*HIGHWAY_SPLIT* 1)
(intern "*URBAN_NORMAL*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(shadow '*URBAN_NORMAL* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(defconstant lane_navi_info_msgs::IntersectionType::*URBAN_NORMAL* 2)
(intern "*NORMAL_SPLIT_MERGE*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(shadow '*NORMAL_SPLIT_MERGE* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(defconstant lane_navi_info_msgs::IntersectionType::*NORMAL_SPLIT_MERGE* 3)
(intern "*T_JUNCTION*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(shadow '*T_JUNCTION* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(defconstant lane_navi_info_msgs::IntersectionType::*T_JUNCTION* 4)
(intern "*Y_JUNCTION*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(shadow '*Y_JUNCTION* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(defconstant lane_navi_info_msgs::IntersectionType::*Y_JUNCTION* 5)
(intern "*ROUNDABOUT*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(shadow '*ROUNDABOUT* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(defconstant lane_navi_info_msgs::IntersectionType::*ROUNDABOUT* 6)
(intern "*OVERPASS*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(shadow '*OVERPASS* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(defconstant lane_navi_info_msgs::IntersectionType::*OVERPASS* 7)
(intern "*OTHERS*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(shadow '*OTHERS* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTIONTYPE"))
(defconstant lane_navi_info_msgs::IntersectionType::*OTHERS* 255)

(defun lane_navi_info_msgs::IntersectionType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::IntersectionType::*UNKNOWN*)
        ((= const 1) 'lane_navi_info_msgs::IntersectionType::*HIGHWAY_SPLIT*)
        ((= const 2) 'lane_navi_info_msgs::IntersectionType::*URBAN_NORMAL*)
        ((= const 3) 'lane_navi_info_msgs::IntersectionType::*NORMAL_SPLIT_MERGE*)
        ((= const 4) 'lane_navi_info_msgs::IntersectionType::*T_JUNCTION*)
        ((= const 5) 'lane_navi_info_msgs::IntersectionType::*Y_JUNCTION*)
        ((= const 6) 'lane_navi_info_msgs::IntersectionType::*ROUNDABOUT*)
        ((= const 7) 'lane_navi_info_msgs::IntersectionType::*OVERPASS*)
        ((= const 255) 'lane_navi_info_msgs::IntersectionType::*OTHERS*)
        (t nil)))

(defclass lane_navi_info_msgs::IntersectionType
  :super ros::object
  :slots (_value ))

(defmethod lane_navi_info_msgs::IntersectionType
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

(setf (get lane_navi_info_msgs::IntersectionType :md5sum-) "17a20b3ea6b3a397c26232434b5abaac")
(setf (get lane_navi_info_msgs::IntersectionType :datatype-) "lane_navi_info_msgs/IntersectionType")
(setf (get lane_navi_info_msgs::IntersectionType :definition-)
      "uint8 UNKNOWN = 0
uint8 HIGHWAY_SPLIT = 1
uint8 URBAN_NORMAL = 2
uint8 NORMAL_SPLIT_MERGE = 3
uint8 T_JUNCTION = 4
uint8 Y_JUNCTION = 5
uint8 ROUNDABOUT = 6
uint8 OVERPASS = 7
uint8 OTHERS = 255
uint8 value

")



(provide :lane_navi_info_msgs/IntersectionType "17a20b3ea6b3a397c26232434b5abaac")


