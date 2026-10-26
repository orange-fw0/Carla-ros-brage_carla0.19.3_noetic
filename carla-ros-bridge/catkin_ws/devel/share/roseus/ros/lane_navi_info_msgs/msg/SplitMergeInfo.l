;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SplitMergeInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SplitMergeInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SPLITMERGEINFO")
  (make-package "LANE_NAVI_INFO_MSGS::SPLITMERGEINFO"))

(in-package "ROS")
;;//! \htmlinclude SplitMergeInfo.msg.html


(intern "*NONE*" (find-package "LANE_NAVI_INFO_MSGS::SPLITMERGEINFO"))
(shadow '*NONE* (find-package "LANE_NAVI_INFO_MSGS::SPLITMERGEINFO"))
(defconstant lane_navi_info_msgs::SplitMergeInfo::*NONE* 0)
(intern "*SPLIT*" (find-package "LANE_NAVI_INFO_MSGS::SPLITMERGEINFO"))
(shadow '*SPLIT* (find-package "LANE_NAVI_INFO_MSGS::SPLITMERGEINFO"))
(defconstant lane_navi_info_msgs::SplitMergeInfo::*SPLIT* 1)
(intern "*MERGE*" (find-package "LANE_NAVI_INFO_MSGS::SPLITMERGEINFO"))
(shadow '*MERGE* (find-package "LANE_NAVI_INFO_MSGS::SPLITMERGEINFO"))
(defconstant lane_navi_info_msgs::SplitMergeInfo::*MERGE* 2)
(intern "*CONTINUE*" (find-package "LANE_NAVI_INFO_MSGS::SPLITMERGEINFO"))
(shadow '*CONTINUE* (find-package "LANE_NAVI_INFO_MSGS::SPLITMERGEINFO"))
(defconstant lane_navi_info_msgs::SplitMergeInfo::*CONTINUE* 3)

(defun lane_navi_info_msgs::SplitMergeInfo-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::SplitMergeInfo::*NONE*)
        ((= const 1) 'lane_navi_info_msgs::SplitMergeInfo::*SPLIT*)
        ((= const 2) 'lane_navi_info_msgs::SplitMergeInfo::*MERGE*)
        ((= const 3) 'lane_navi_info_msgs::SplitMergeInfo::*CONTINUE*)
        (t nil)))

(defclass lane_navi_info_msgs::SplitMergeInfo
  :super ros::object
  :slots (_value ))

(defmethod lane_navi_info_msgs::SplitMergeInfo
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

(setf (get lane_navi_info_msgs::SplitMergeInfo :md5sum-) "e79514809decbf1e76d4edb807a2daf5")
(setf (get lane_navi_info_msgs::SplitMergeInfo :datatype-) "lane_navi_info_msgs/SplitMergeInfo")
(setf (get lane_navi_info_msgs::SplitMergeInfo :definition-)
      "uint8 NONE = 0
uint8 SPLIT = 1
uint8 MERGE = 2
uint8 CONTINUE = 3
uint8 value

")



(provide :lane_navi_info_msgs/SplitMergeInfo "e79514809decbf1e76d4edb807a2daf5")


