;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::PathType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'PathType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::PATHTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::PATHTYPE"))

(in-package "ROS")
;;//! \htmlinclude PathType.msg.html


(intern "*UNKNOWN*" (find-package "LANE_NAVI_INFO_MSGS::PATHTYPE"))
(shadow '*UNKNOWN* (find-package "LANE_NAVI_INFO_MSGS::PATHTYPE"))
(defconstant lane_navi_info_msgs::PathType::*UNKNOWN* 0)
(intern "*NAVIGATION*" (find-package "LANE_NAVI_INFO_MSGS::PATHTYPE"))
(shadow '*NAVIGATION* (find-package "LANE_NAVI_INFO_MSGS::PATHTYPE"))
(defconstant lane_navi_info_msgs::PathType::*NAVIGATION* 1)
(intern "*CRUISE*" (find-package "LANE_NAVI_INFO_MSGS::PATHTYPE"))
(shadow '*CRUISE* (find-package "LANE_NAVI_INFO_MSGS::PATHTYPE"))
(defconstant lane_navi_info_msgs::PathType::*CRUISE* 2)

(defun lane_navi_info_msgs::PathType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::PathType::*UNKNOWN*)
        ((= const 1) 'lane_navi_info_msgs::PathType::*NAVIGATION*)
        ((= const 2) 'lane_navi_info_msgs::PathType::*CRUISE*)
        (t nil)))

(defclass lane_navi_info_msgs::PathType
  :super ros::object
  :slots (_value ))

(defmethod lane_navi_info_msgs::PathType
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

(setf (get lane_navi_info_msgs::PathType :md5sum-) "684e44c8547bd1ec4f7fcdc6862743c1")
(setf (get lane_navi_info_msgs::PathType :datatype-) "lane_navi_info_msgs/PathType")
(setf (get lane_navi_info_msgs::PathType :definition-)
      "uint8 UNKNOWN = 0
uint8 NAVIGATION = 1
uint8 CRUISE = 2
uint8 value

")



(provide :lane_navi_info_msgs/PathType "684e44c8547bd1ec4f7fcdc6862743c1")


