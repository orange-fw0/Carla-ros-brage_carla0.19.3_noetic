;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FeaturePointArrayPropertyEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FeaturePointArrayPropertyEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))

(in-package "ROS")
;;//! \htmlinclude FeaturePointArrayPropertyEnum.msg.html


(intern "*FEATURE_POINT_ARRAY_PROPERTY_TAG*" (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(shadow '*FEATURE_POINT_ARRAY_PROPERTY_TAG* (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(defconstant perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_TAG* 0)
(intern "*FEATURE_POINT_ARRAY_PROPERTY_AVAILABLE*" (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(shadow '*FEATURE_POINT_ARRAY_PROPERTY_AVAILABLE* (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(defconstant perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_AVAILABLE* 1)
(intern "*FEATURE_POINT_ARRAY_PROPERTY_NUM_POINT*" (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(shadow '*FEATURE_POINT_ARRAY_PROPERTY_NUM_POINT* (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(defconstant perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_NUM_POINT* 2)
(intern "*FEATURE_POINT_ARRAY_PROPERTY_TRACK_IDS*" (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(shadow '*FEATURE_POINT_ARRAY_PROPERTY_TRACK_IDS* (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(defconstant perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_TRACK_IDS* 3)
(intern "*FEATURE_POINT_ARRAY_PROPERTY_POINT_XS*" (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(shadow '*FEATURE_POINT_ARRAY_PROPERTY_POINT_XS* (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(defconstant perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_POINT_XS* 4)
(intern "*FEATURE_POINT_ARRAY_PROPERTY_POINT_YS*" (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(shadow '*FEATURE_POINT_ARRAY_PROPERTY_POINT_YS* (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(defconstant perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_POINT_YS* 5)
(intern "*FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTOR_SIZE*" (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(shadow '*FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTOR_SIZE* (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(defconstant perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTOR_SIZE* 6)
(intern "*FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTORS*" (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(shadow '*FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTORS* (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(defconstant perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTORS* 7)
(intern "*FEATURE_POINT_ARRAY_PROPERTY_LOG_INFO_2D*" (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(shadow '*FEATURE_POINT_ARRAY_PROPERTY_LOG_INFO_2D* (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(defconstant perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_LOG_INFO_2D* 8)
(intern "*FEATURE_POINT_ARRAY_PROPERTY_RESERVED_INFO*" (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(shadow '*FEATURE_POINT_ARRAY_PROPERTY_RESERVED_INFO* (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAYPROPERTYENUM"))
(defconstant perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_RESERVED_INFO* 9)

(defun perception_interface_msgs::FeaturePointArrayPropertyEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_TAG*)
        ((= const 1) 'perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_AVAILABLE*)
        ((= const 2) 'perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_NUM_POINT*)
        ((= const 3) 'perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_TRACK_IDS*)
        ((= const 4) 'perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_POINT_XS*)
        ((= const 5) 'perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_POINT_YS*)
        ((= const 6) 'perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTOR_SIZE*)
        ((= const 7) 'perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTORS*)
        ((= const 8) 'perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_LOG_INFO_2D*)
        ((= const 9) 'perception_interface_msgs::FeaturePointArrayPropertyEnum::*FEATURE_POINT_ARRAY_PROPERTY_RESERVED_INFO*)
        (t nil)))

(defclass perception_interface_msgs::FeaturePointArrayPropertyEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::FeaturePointArrayPropertyEnum
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

(setf (get perception_interface_msgs::FeaturePointArrayPropertyEnum :md5sum-) "104404b0b6ef7ba60d2836c3b46814dc")
(setf (get perception_interface_msgs::FeaturePointArrayPropertyEnum :datatype-) "perception_interface_msgs/FeaturePointArrayPropertyEnum")
(setf (get perception_interface_msgs::FeaturePointArrayPropertyEnum :definition-)
      "uint8 FEATURE_POINT_ARRAY_PROPERTY_TAG = 0
uint8 FEATURE_POINT_ARRAY_PROPERTY_AVAILABLE = 1
uint8 FEATURE_POINT_ARRAY_PROPERTY_NUM_POINT = 2
uint8 FEATURE_POINT_ARRAY_PROPERTY_TRACK_IDS = 3
uint8 FEATURE_POINT_ARRAY_PROPERTY_POINT_XS = 4
uint8 FEATURE_POINT_ARRAY_PROPERTY_POINT_YS = 5
uint8 FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTOR_SIZE = 6
uint8 FEATURE_POINT_ARRAY_PROPERTY_DESCRIPTORS = 7
uint8 FEATURE_POINT_ARRAY_PROPERTY_LOG_INFO_2D = 8
uint8 FEATURE_POINT_ARRAY_PROPERTY_RESERVED_INFO = 9
uint8 value

")



(provide :perception_interface_msgs/FeaturePointArrayPropertyEnum "104404b0b6ef7ba60d2836c3b46814dc")


