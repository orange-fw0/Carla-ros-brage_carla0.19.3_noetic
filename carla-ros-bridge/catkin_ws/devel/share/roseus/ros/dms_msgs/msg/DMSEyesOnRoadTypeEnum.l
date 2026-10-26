;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSEyesOnRoadTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSEyesOnRoadTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSEYESONROADTYPEENUM")
  (make-package "DMS_MSGS::DMSEYESONROADTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSEyesOnRoadTypeEnum.msg.html


(intern "*EYES_OFF_ROAD*" (find-package "DMS_MSGS::DMSEYESONROADTYPEENUM"))
(shadow '*EYES_OFF_ROAD* (find-package "DMS_MSGS::DMSEYESONROADTYPEENUM"))
(defconstant dms_msgs::DMSEyesOnRoadTypeEnum::*EYES_OFF_ROAD* 0)
(intern "*EYES_ON_ROAD*" (find-package "DMS_MSGS::DMSEYESONROADTYPEENUM"))
(shadow '*EYES_ON_ROAD* (find-package "DMS_MSGS::DMSEYESONROADTYPEENUM"))
(defconstant dms_msgs::DMSEyesOnRoadTypeEnum::*EYES_ON_ROAD* 1)

(defun dms_msgs::DMSEyesOnRoadTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSEyesOnRoadTypeEnum::*EYES_OFF_ROAD*)
        ((= const 1) 'dms_msgs::DMSEyesOnRoadTypeEnum::*EYES_ON_ROAD*)
        (t nil)))

(defclass dms_msgs::DMSEyesOnRoadTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSEyesOnRoadTypeEnum
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

(setf (get dms_msgs::DMSEyesOnRoadTypeEnum :md5sum-) "b6140e69b34eb44af86daa1e3c1da2f6")
(setf (get dms_msgs::DMSEyesOnRoadTypeEnum :datatype-) "dms_msgs/DMSEyesOnRoadTypeEnum")
(setf (get dms_msgs::DMSEyesOnRoadTypeEnum :definition-)
      "uint8 EYES_OFF_ROAD = 0
uint8 EYES_ON_ROAD = 1
uint8 value

")



(provide :dms_msgs/DMSEyesOnRoadTypeEnum "b6140e69b34eb44af86daa1e3c1da2f6")


