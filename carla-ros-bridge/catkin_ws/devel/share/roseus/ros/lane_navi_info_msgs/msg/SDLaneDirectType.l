;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDLaneDirectType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDLaneDirectType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE"))

(in-package "ROS")
;;//! \htmlinclude SDLaneDirectType.msg.html


(intern "*SD_LANE_DIRECT_TYPE_NORMAL*" (find-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE"))
(shadow '*SD_LANE_DIRECT_TYPE_NORMAL* (find-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE"))
(defconstant lane_navi_info_msgs::SDLaneDirectType::*SD_LANE_DIRECT_TYPE_NORMAL* 0)
(intern "*SD_LANE_DIRECT_TYPE_BUS*" (find-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE"))
(shadow '*SD_LANE_DIRECT_TYPE_BUS* (find-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE"))
(defconstant lane_navi_info_msgs::SDLaneDirectType::*SD_LANE_DIRECT_TYPE_BUS* 1)
(intern "*SD_LANE_DIRECT_TYPE_OTHER_SPECIAL*" (find-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE"))
(shadow '*SD_LANE_DIRECT_TYPE_OTHER_SPECIAL* (find-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE"))
(defconstant lane_navi_info_msgs::SDLaneDirectType::*SD_LANE_DIRECT_TYPE_OTHER_SPECIAL* 2)
(intern "*SD_LANE_DIRECT_TYPE_REVERSIBLE*" (find-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE"))
(shadow '*SD_LANE_DIRECT_TYPE_REVERSIBLE* (find-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE"))
(defconstant lane_navi_info_msgs::SDLaneDirectType::*SD_LANE_DIRECT_TYPE_REVERSIBLE* 3)
(intern "*SD_LANE_DIRECT_TYPE_VARIABLE*" (find-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE"))
(shadow '*SD_LANE_DIRECT_TYPE_VARIABLE* (find-package "LANE_NAVI_INFO_MSGS::SDLANEDIRECTTYPE"))
(defconstant lane_navi_info_msgs::SDLaneDirectType::*SD_LANE_DIRECT_TYPE_VARIABLE* 4)

(defun lane_navi_info_msgs::SDLaneDirectType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::SDLaneDirectType::*SD_LANE_DIRECT_TYPE_NORMAL*)
        ((= const 1) 'lane_navi_info_msgs::SDLaneDirectType::*SD_LANE_DIRECT_TYPE_BUS*)
        ((= const 2) 'lane_navi_info_msgs::SDLaneDirectType::*SD_LANE_DIRECT_TYPE_OTHER_SPECIAL*)
        ((= const 3) 'lane_navi_info_msgs::SDLaneDirectType::*SD_LANE_DIRECT_TYPE_REVERSIBLE*)
        ((= const 4) 'lane_navi_info_msgs::SDLaneDirectType::*SD_LANE_DIRECT_TYPE_VARIABLE*)
        (t nil)))

(defclass lane_navi_info_msgs::SDLaneDirectType
  :super ros::object
  :slots (_type ))

(defmethod lane_navi_info_msgs::SDLaneDirectType
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

(setf (get lane_navi_info_msgs::SDLaneDirectType :md5sum-) "af2c45ff4447e4771a866405902d2bee")
(setf (get lane_navi_info_msgs::SDLaneDirectType :datatype-) "lane_navi_info_msgs/SDLaneDirectType")
(setf (get lane_navi_info_msgs::SDLaneDirectType :definition-)
      "uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0
uint8 SD_LANE_DIRECT_TYPE_BUS = 1
uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2
uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3
uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4
uint8 type

")



(provide :lane_navi_info_msgs/SDLaneDirectType "af2c45ff4447e4771a866405902d2bee")


