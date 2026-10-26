;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::HighLightLaneEnum)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'HighLightLaneEnum (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::HIGHLIGHTLANEENUM")
  (make-package "TBT_MSGS::HIGHLIGHTLANEENUM"))

(in-package "ROS")
;;//! \htmlinclude HighLightLaneEnum.msg.html


(intern "*DEFAULT*" (find-package "TBT_MSGS::HIGHLIGHTLANEENUM"))
(shadow '*DEFAULT* (find-package "TBT_MSGS::HIGHLIGHTLANEENUM"))
(defconstant tbt_msgs::HighLightLaneEnum::*DEFAULT* 0)
(intern "*HIGHLIGHT*" (find-package "TBT_MSGS::HIGHLIGHTLANEENUM"))
(shadow '*HIGHLIGHT* (find-package "TBT_MSGS::HIGHLIGHTLANEENUM"))
(defconstant tbt_msgs::HighLightLaneEnum::*HIGHLIGHT* 1)

(defun tbt_msgs::HighLightLaneEnum-to-symbol (const)
  (cond
        ((= const 0) 'tbt_msgs::HighLightLaneEnum::*Default*)
        ((= const 1) 'tbt_msgs::HighLightLaneEnum::*HighLight*)
        (t nil)))

(defclass tbt_msgs::HighLightLaneEnum
  :super ros::object
  :slots (_value ))

(defmethod tbt_msgs::HighLightLaneEnum
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

(setf (get tbt_msgs::HighLightLaneEnum :md5sum-) "a9703eadbf40a1c45737a6408eb750dc")
(setf (get tbt_msgs::HighLightLaneEnum :datatype-) "tbt_msgs/HighLightLaneEnum")
(setf (get tbt_msgs::HighLightLaneEnum :definition-)
      "uint8 Default = 0
uint8 HighLight = 1
uint8 value

")



(provide :tbt_msgs/HighLightLaneEnum "a9703eadbf40a1c45737a6408eb750dc")


