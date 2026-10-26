;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ImageRetrievalDescriptorPropertyEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM"))

(in-package "ROS")
;;//! \htmlinclude ImageRetrievalDescriptorPropertyEnum.msg.html


(intern "*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_TAG*" (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM"))
(shadow '*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_TAG* (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM"))
(defconstant perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum::*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_TAG* 0)
(intern "*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_AVAILABLE*" (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM"))
(shadow '*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_AVAILABLE* (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM"))
(defconstant perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum::*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_AVAILABLE* 1)
(intern "*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_DESCRIPTOR*" (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM"))
(shadow '*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_DESCRIPTOR* (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM"))
(defconstant perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum::*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_DESCRIPTOR* 2)
(intern "*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_LOG_INFO_2D*" (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM"))
(shadow '*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_LOG_INFO_2D* (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM"))
(defconstant perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum::*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_LOG_INFO_2D* 3)
(intern "*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_RESERVED_INFO*" (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM"))
(shadow '*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_RESERVED_INFO* (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTORPROPERTYENUM"))
(defconstant perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum::*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_RESERVED_INFO* 4)

(defun perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum::*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_TAG*)
        ((= const 1) 'perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum::*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_AVAILABLE*)
        ((= const 2) 'perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum::*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_DESCRIPTOR*)
        ((= const 3) 'perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum::*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_LOG_INFO_2D*)
        ((= const 4) 'perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum::*IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_RESERVED_INFO*)
        (t nil)))

(defclass perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum
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

(setf (get perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum :md5sum-) "e450904a11657950988d27ee93e3765f")
(setf (get perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum :datatype-) "perception_interface_msgs/ImageRetrievalDescriptorPropertyEnum")
(setf (get perception_interface_msgs::ImageRetrievalDescriptorPropertyEnum :definition-)
      "uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_TAG = 0
uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_AVAILABLE = 1
uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_DESCRIPTOR = 2
uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_LOG_INFO_2D = 3
uint8 IMAGE_RETRIEVAL_DESCRIPTOR_PROPERTY_RESERVED_INFO = 4
uint8 value

")



(provide :perception_interface_msgs/ImageRetrievalDescriptorPropertyEnum "e450904a11657950988d27ee93e3765f")


