;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::MapType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'MapType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::MAPTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::MAPTYPE"))

(in-package "ROS")
;;//! \htmlinclude MapType.msg.html


(intern "*SD_PRO*" (find-package "LANE_NAVI_INFO_MSGS::MAPTYPE"))
(shadow '*SD_PRO* (find-package "LANE_NAVI_INFO_MSGS::MAPTYPE"))
(defconstant lane_navi_info_msgs::MapType::*SD_PRO* 0)
(intern "*SD_MAP*" (find-package "LANE_NAVI_INFO_MSGS::MAPTYPE"))
(shadow '*SD_MAP* (find-package "LANE_NAVI_INFO_MSGS::MAPTYPE"))
(defconstant lane_navi_info_msgs::MapType::*SD_MAP* 1)

(defun lane_navi_info_msgs::MapType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::MapType::*SD_PRO*)
        ((= const 1) 'lane_navi_info_msgs::MapType::*SD_MAP*)
        (t nil)))

(defclass lane_navi_info_msgs::MapType
  :super ros::object
  :slots (_value ))

(defmethod lane_navi_info_msgs::MapType
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

(setf (get lane_navi_info_msgs::MapType :md5sum-) "1450d62389d818d3fb20c98893ec5530")
(setf (get lane_navi_info_msgs::MapType :datatype-) "lane_navi_info_msgs/MapType")
(setf (get lane_navi_info_msgs::MapType :definition-)
      "uint8 SD_PRO = 0
uint8 SD_MAP = 1
uint8 value

")



(provide :lane_navi_info_msgs/MapType "1450d62389d818d3fb20c98893ec5530")


