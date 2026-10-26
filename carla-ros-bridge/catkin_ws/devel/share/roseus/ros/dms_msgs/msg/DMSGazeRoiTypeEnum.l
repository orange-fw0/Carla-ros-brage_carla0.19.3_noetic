;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSGazeRoiTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSGazeRoiTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSGAZEROITYPEENUM")
  (make-package "DMS_MSGS::DMSGAZEROITYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSGazeRoiTypeEnum.msg.html


(intern "*GAZE_CALCULATE_ROI*" (find-package "DMS_MSGS::DMSGAZEROITYPEENUM"))
(shadow '*GAZE_CALCULATE_ROI* (find-package "DMS_MSGS::DMSGAZEROITYPEENUM"))
(defconstant dms_msgs::DMSGazeRoiTypeEnum::*GAZE_CALCULATE_ROI* 2)
(intern "*HEADPOSE_CALCULATE_ROI*" (find-package "DMS_MSGS::DMSGAZEROITYPEENUM"))
(shadow '*HEADPOSE_CALCULATE_ROI* (find-package "DMS_MSGS::DMSGAZEROITYPEENUM"))
(defconstant dms_msgs::DMSGazeRoiTypeEnum::*HEADPOSE_CALCULATE_ROI* 4)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSGAZEROITYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSGAZEROITYPEENUM"))
(defconstant dms_msgs::DMSGazeRoiTypeEnum::*RESERVED* 8)
(intern "*RESERVED1*" (find-package "DMS_MSGS::DMSGAZEROITYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::DMSGAZEROITYPEENUM"))
(defconstant dms_msgs::DMSGazeRoiTypeEnum::*RESERVED1* 16)
(intern "*RESERVED2*" (find-package "DMS_MSGS::DMSGAZEROITYPEENUM"))
(shadow '*RESERVED2* (find-package "DMS_MSGS::DMSGAZEROITYPEENUM"))
(defconstant dms_msgs::DMSGazeRoiTypeEnum::*RESERVED2* 32)

(defun dms_msgs::DMSGazeRoiTypeEnum-to-symbol (const)
  (cond
        ((= const 2) 'dms_msgs::DMSGazeRoiTypeEnum::*GAZE_CALCULATE_ROI*)
        ((= const 4) 'dms_msgs::DMSGazeRoiTypeEnum::*HEADPOSE_CALCULATE_ROI*)
        ((= const 8) 'dms_msgs::DMSGazeRoiTypeEnum::*RESERVED*)
        ((= const 16) 'dms_msgs::DMSGazeRoiTypeEnum::*RESERVED1*)
        ((= const 32) 'dms_msgs::DMSGazeRoiTypeEnum::*RESERVED2*)
        (t nil)))

(defclass dms_msgs::DMSGazeRoiTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSGazeRoiTypeEnum
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

(setf (get dms_msgs::DMSGazeRoiTypeEnum :md5sum-) "285cb8d68aed9c81845b019554cf3582")
(setf (get dms_msgs::DMSGazeRoiTypeEnum :datatype-) "dms_msgs/DMSGazeRoiTypeEnum")
(setf (get dms_msgs::DMSGazeRoiTypeEnum :definition-)
      "uint16 GAZE_CALCULATE_ROI = 2
uint16 HEADPOSE_CALCULATE_ROI = 4
uint16 RESERVED = 8
uint16 RESERVED1 = 16
uint16 RESERVED2 = 32
uint16 value

")



(provide :dms_msgs/DMSGazeRoiTypeEnum "285cb8d68aed9c81845b019554cf3582")


