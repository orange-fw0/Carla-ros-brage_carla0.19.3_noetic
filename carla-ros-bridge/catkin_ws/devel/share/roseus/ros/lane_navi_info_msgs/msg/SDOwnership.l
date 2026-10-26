;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDOwnership)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDOwnership (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDOWNERSHIP")
  (make-package "LANE_NAVI_INFO_MSGS::SDOWNERSHIP"))

(in-package "ROS")
;;//! \htmlinclude SDOwnership.msg.html


(intern "*OWNERSHIP_PUBLIC*" (find-package "LANE_NAVI_INFO_MSGS::SDOWNERSHIP"))
(shadow '*OWNERSHIP_PUBLIC* (find-package "LANE_NAVI_INFO_MSGS::SDOWNERSHIP"))
(defconstant lane_navi_info_msgs::SDOwnership::*OWNERSHIP_PUBLIC* 0)
(intern "*OWNERSHIP_INNER*" (find-package "LANE_NAVI_INFO_MSGS::SDOWNERSHIP"))
(shadow '*OWNERSHIP_INNER* (find-package "LANE_NAVI_INFO_MSGS::SDOWNERSHIP"))
(defconstant lane_navi_info_msgs::SDOwnership::*OWNERSHIP_INNER* 1)
(intern "*OWNERSHIP_PRIVATE*" (find-package "LANE_NAVI_INFO_MSGS::SDOWNERSHIP"))
(shadow '*OWNERSHIP_PRIVATE* (find-package "LANE_NAVI_INFO_MSGS::SDOWNERSHIP"))
(defconstant lane_navi_info_msgs::SDOwnership::*OWNERSHIP_PRIVATE* 2)
(intern "*OWNERSHIP_UNKNOWN*" (find-package "LANE_NAVI_INFO_MSGS::SDOWNERSHIP"))
(shadow '*OWNERSHIP_UNKNOWN* (find-package "LANE_NAVI_INFO_MSGS::SDOWNERSHIP"))
(defconstant lane_navi_info_msgs::SDOwnership::*OWNERSHIP_UNKNOWN* 255)

(defun lane_navi_info_msgs::SDOwnership-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::SDOwnership::*OWNERSHIP_PUBLIC*)
        ((= const 1) 'lane_navi_info_msgs::SDOwnership::*OWNERSHIP_INNER*)
        ((= const 2) 'lane_navi_info_msgs::SDOwnership::*OWNERSHIP_PRIVATE*)
        ((= const 255) 'lane_navi_info_msgs::SDOwnership::*OWNERSHIP_UNKNOWN*)
        (t nil)))

(defclass lane_navi_info_msgs::SDOwnership
  :super ros::object
  :slots (_value ))

(defmethod lane_navi_info_msgs::SDOwnership
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

(setf (get lane_navi_info_msgs::SDOwnership :md5sum-) "cef523620754f85298e7ffec284e8d1d")
(setf (get lane_navi_info_msgs::SDOwnership :datatype-) "lane_navi_info_msgs/SDOwnership")
(setf (get lane_navi_info_msgs::SDOwnership :definition-)
      "uint8 OWNERSHIP_PUBLIC = 0
uint8 OWNERSHIP_INNER = 1
uint8 OWNERSHIP_PRIVATE = 2
uint8 OWNERSHIP_UNKNOWN = 255
uint8 value

")



(provide :lane_navi_info_msgs/SDOwnership "cef523620754f85298e7ffec284e8d1d")


