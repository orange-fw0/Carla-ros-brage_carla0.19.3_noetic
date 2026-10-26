;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDSpeedLimitType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDSpeedLimitType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDSPEEDLIMITTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::SDSPEEDLIMITTYPE"))

(in-package "ROS")
;;//! \htmlinclude SDSpeedLimitType.msg.html


(intern "*SPEED_LIMIT_TYPE_DEFAULT*" (find-package "LANE_NAVI_INFO_MSGS::SDSPEEDLIMITTYPE"))
(shadow '*SPEED_LIMIT_TYPE_DEFAULT* (find-package "LANE_NAVI_INFO_MSGS::SDSPEEDLIMITTYPE"))
(defconstant lane_navi_info_msgs::SDSpeedLimitType::*SPEED_LIMIT_TYPE_DEFAULT* 0)
(intern "*SPEED_LIMIT_TYPE_RAMP*" (find-package "LANE_NAVI_INFO_MSGS::SDSPEEDLIMITTYPE"))
(shadow '*SPEED_LIMIT_TYPE_RAMP* (find-package "LANE_NAVI_INFO_MSGS::SDSPEEDLIMITTYPE"))
(defconstant lane_navi_info_msgs::SDSpeedLimitType::*SPEED_LIMIT_TYPE_RAMP* 2)

(defun lane_navi_info_msgs::SDSpeedLimitType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::SDSpeedLimitType::*SPEED_LIMIT_TYPE_DEFAULT*)
        ((= const 2) 'lane_navi_info_msgs::SDSpeedLimitType::*SPEED_LIMIT_TYPE_RAMP*)
        (t nil)))

(defclass lane_navi_info_msgs::SDSpeedLimitType
  :super ros::object
  :slots (_type ))

(defmethod lane_navi_info_msgs::SDSpeedLimitType
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDSpeedLimitType :md5sum-) "839be42c2a7d270dfda37b35f69d3252")
(setf (get lane_navi_info_msgs::SDSpeedLimitType :datatype-) "lane_navi_info_msgs/SDSpeedLimitType")
(setf (get lane_navi_info_msgs::SDSpeedLimitType :definition-)
      "uint8 SPEED_LIMIT_TYPE_DEFAULT = 0
uint8 SPEED_LIMIT_TYPE_RAMP = 2
uint8 type

")



(provide :lane_navi_info_msgs/SDSpeedLimitType "839be42c2a7d270dfda37b35f69d3252")


