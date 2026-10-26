;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::GeneralObjectTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'GeneralObjectTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::GENERALOBJECTTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::GENERALOBJECTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude GeneralObjectTypeEnum.msg.html


(intern "*GENERAL_OBJECT_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::GENERALOBJECTTYPEENUM"))
(shadow '*GENERAL_OBJECT_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::GENERALOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::GeneralObjectTypeEnum::*GENERAL_OBJECT_TYPE_UNKNOWN* 0)
(intern "*GENERAL_OBJECT_TYPE_POINT*" (find-package "PERCEPTION_INTERFACE_MSGS::GENERALOBJECTTYPEENUM"))
(shadow '*GENERAL_OBJECT_TYPE_POINT* (find-package "PERCEPTION_INTERFACE_MSGS::GENERALOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::GeneralObjectTypeEnum::*GENERAL_OBJECT_TYPE_POINT* 1)
(intern "*GENERAL_OBJECT_TYPE_BOUNDING_BOX*" (find-package "PERCEPTION_INTERFACE_MSGS::GENERALOBJECTTYPEENUM"))
(shadow '*GENERAL_OBJECT_TYPE_BOUNDING_BOX* (find-package "PERCEPTION_INTERFACE_MSGS::GENERALOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::GeneralObjectTypeEnum::*GENERAL_OBJECT_TYPE_BOUNDING_BOX* 2)

(defun perception_interface_msgs::GeneralObjectTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::GeneralObjectTypeEnum::*GENERAL_OBJECT_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::GeneralObjectTypeEnum::*GENERAL_OBJECT_TYPE_POINT*)
        ((= const 2) 'perception_interface_msgs::GeneralObjectTypeEnum::*GENERAL_OBJECT_TYPE_BOUNDING_BOX*)
        (t nil)))

(defclass perception_interface_msgs::GeneralObjectTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::GeneralObjectTypeEnum
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

(setf (get perception_interface_msgs::GeneralObjectTypeEnum :md5sum-) "aa39dc9f572bd916669a54554f0a8544")
(setf (get perception_interface_msgs::GeneralObjectTypeEnum :datatype-) "perception_interface_msgs/GeneralObjectTypeEnum")
(setf (get perception_interface_msgs::GeneralObjectTypeEnum :definition-)
      "uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0
uint8 GENERAL_OBJECT_TYPE_POINT = 1
uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2
uint8 value

")



(provide :perception_interface_msgs/GeneralObjectTypeEnum "aa39dc9f572bd916669a54554f0a8544")


