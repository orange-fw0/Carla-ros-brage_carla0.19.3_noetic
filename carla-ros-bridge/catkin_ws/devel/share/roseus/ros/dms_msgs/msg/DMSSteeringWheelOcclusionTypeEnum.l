;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSSteeringWheelOcclusionTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSSteeringWheelOcclusionTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSSTEERINGWHEELOCCLUSIONTYPEENUM")
  (make-package "DMS_MSGS::DMSSTEERINGWHEELOCCLUSIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSSteeringWheelOcclusionTypeEnum.msg.html


(intern "*STEERING_WHEEL_BLOCK*" (find-package "DMS_MSGS::DMSSTEERINGWHEELOCCLUSIONTYPEENUM"))
(shadow '*STEERING_WHEEL_BLOCK* (find-package "DMS_MSGS::DMSSTEERINGWHEELOCCLUSIONTYPEENUM"))
(defconstant dms_msgs::DMSSteeringWheelOcclusionTypeEnum::*STEERING_WHEEL_BLOCK* 0)
(intern "*STEERING_WHEEL_NO_BLOCK*" (find-package "DMS_MSGS::DMSSTEERINGWHEELOCCLUSIONTYPEENUM"))
(shadow '*STEERING_WHEEL_NO_BLOCK* (find-package "DMS_MSGS::DMSSTEERINGWHEELOCCLUSIONTYPEENUM"))
(defconstant dms_msgs::DMSSteeringWheelOcclusionTypeEnum::*STEERING_WHEEL_NO_BLOCK* 1)

(defun dms_msgs::DMSSteeringWheelOcclusionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSSteeringWheelOcclusionTypeEnum::*STEERING_WHEEL_BLOCK*)
        ((= const 1) 'dms_msgs::DMSSteeringWheelOcclusionTypeEnum::*STEERING_WHEEL_NO_BLOCK*)
        (t nil)))

(defclass dms_msgs::DMSSteeringWheelOcclusionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSSteeringWheelOcclusionTypeEnum
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

(setf (get dms_msgs::DMSSteeringWheelOcclusionTypeEnum :md5sum-) "fada77ece78739cd5129d6b4d8543d85")
(setf (get dms_msgs::DMSSteeringWheelOcclusionTypeEnum :datatype-) "dms_msgs/DMSSteeringWheelOcclusionTypeEnum")
(setf (get dms_msgs::DMSSteeringWheelOcclusionTypeEnum :definition-)
      "uint8 STEERING_WHEEL_BLOCK = 0
uint8 STEERING_WHEEL_NO_BLOCK = 1
uint8 value

")



(provide :dms_msgs/DMSSteeringWheelOcclusionTypeEnum "fada77ece78739cd5129d6b4d8543d85")


