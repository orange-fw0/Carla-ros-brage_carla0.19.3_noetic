;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::L3DMSDrowsinessLevelTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'L3DMSDrowsinessLevelTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM")
  (make-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude L3DMSDrowsinessLevelTypeEnum.msg.html


(intern "*DROWSINESS_LEVEL_0*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_0* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_0* 0)
(intern "*DROWSINESS_LEVEL_1*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_1* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_1* 1)
(intern "*DROWSINESS_LEVEL_2*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_2* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_2* 2)
(intern "*DROWSINESS_LEVEL_3*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_3* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_3* 3)
(intern "*DROWSINESS_LEVEL_4*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_4* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_4* 4)
(intern "*DROWSINESS_LEVEL_5*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_5* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_5* 5)
(intern "*DROWSINESS_LEVEL_6*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_6* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_6* 6)
(intern "*DROWSINESS_LEVEL_7*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_7* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_7* 7)
(intern "*DROWSINESS_LEVEL_8*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_8* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_8* 8)
(intern "*DROWSINESS_LEVEL_9*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_9* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_9* 9)
(intern "*DROWSINESS_LEVEL_10*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_10* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_10* 10)
(intern "*DROWSINESS_LEVEL_11*" (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(shadow '*DROWSINESS_LEVEL_11* (find-package "DMS_MSGS::L3DMSDROWSINESSLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_11* 11)

(defun dms_msgs::L3DMSDrowsinessLevelTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_0*)
        ((= const 1) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_1*)
        ((= const 2) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_2*)
        ((= const 3) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_3*)
        ((= const 4) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_4*)
        ((= const 5) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_5*)
        ((= const 6) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_6*)
        ((= const 7) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_7*)
        ((= const 8) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_8*)
        ((= const 9) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_9*)
        ((= const 10) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_10*)
        ((= const 11) 'dms_msgs::L3DMSDrowsinessLevelTypeEnum::*DROWSINESS_LEVEL_11*)
        (t nil)))

(defclass dms_msgs::L3DMSDrowsinessLevelTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::L3DMSDrowsinessLevelTypeEnum
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
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dms_msgs::L3DMSDrowsinessLevelTypeEnum :md5sum-) "c3884627d7ea13e5d04b9ef0470d275e")
(setf (get dms_msgs::L3DMSDrowsinessLevelTypeEnum :datatype-) "dms_msgs/L3DMSDrowsinessLevelTypeEnum")
(setf (get dms_msgs::L3DMSDrowsinessLevelTypeEnum :definition-)
      "uint16 DROWSINESS_LEVEL_0 = 0
uint16 DROWSINESS_LEVEL_1 = 1
uint16 DROWSINESS_LEVEL_2 = 2
uint16 DROWSINESS_LEVEL_3 = 3
uint16 DROWSINESS_LEVEL_4 = 4
uint16 DROWSINESS_LEVEL_5 = 5
uint16 DROWSINESS_LEVEL_6 = 6
uint16 DROWSINESS_LEVEL_7 = 7
uint16 DROWSINESS_LEVEL_8 = 8
uint16 DROWSINESS_LEVEL_9 = 9
uint16 DROWSINESS_LEVEL_10 = 10
uint16 DROWSINESS_LEVEL_11 = 11
uint16 value

")



(provide :dms_msgs/L3DMSDrowsinessLevelTypeEnum "c3884627d7ea13e5d04b9ef0470d275e")


