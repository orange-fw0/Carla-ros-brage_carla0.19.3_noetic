;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::DataDesensibilisationTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'DataDesensibilisationTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::DATADESENSIBILISATIONTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::DATADESENSIBILISATIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DataDesensibilisationTypeEnum.msg.html


(intern "*DATA_DESENSIBILISATION_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::DATADESENSIBILISATIONTYPEENUM"))
(shadow '*DATA_DESENSIBILISATION_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::DATADESENSIBILISATIONTYPEENUM"))
(defconstant perception_interface_msgs::DataDesensibilisationTypeEnum::*DATA_DESENSIBILISATION_TYPE_UNKNOWN* 0)
(intern "*DATA_DESENSIBILISATION_TYPE_HUMAN_FACE*" (find-package "PERCEPTION_INTERFACE_MSGS::DATADESENSIBILISATIONTYPEENUM"))
(shadow '*DATA_DESENSIBILISATION_TYPE_HUMAN_FACE* (find-package "PERCEPTION_INTERFACE_MSGS::DATADESENSIBILISATIONTYPEENUM"))
(defconstant perception_interface_msgs::DataDesensibilisationTypeEnum::*DATA_DESENSIBILISATION_TYPE_HUMAN_FACE* 1)
(intern "*DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER*" (find-package "PERCEPTION_INTERFACE_MSGS::DATADESENSIBILISATIONTYPEENUM"))
(shadow '*DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER* (find-package "PERCEPTION_INTERFACE_MSGS::DATADESENSIBILISATIONTYPEENUM"))
(defconstant perception_interface_msgs::DataDesensibilisationTypeEnum::*DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER* 2)

(defun perception_interface_msgs::DataDesensibilisationTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::DataDesensibilisationTypeEnum::*DATA_DESENSIBILISATION_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::DataDesensibilisationTypeEnum::*DATA_DESENSIBILISATION_TYPE_HUMAN_FACE*)
        ((= const 2) 'perception_interface_msgs::DataDesensibilisationTypeEnum::*DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER*)
        (t nil)))

(defclass perception_interface_msgs::DataDesensibilisationTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::DataDesensibilisationTypeEnum
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

(setf (get perception_interface_msgs::DataDesensibilisationTypeEnum :md5sum-) "f506dc99f8ea8defa69baabd0b632e4b")
(setf (get perception_interface_msgs::DataDesensibilisationTypeEnum :datatype-) "perception_interface_msgs/DataDesensibilisationTypeEnum")
(setf (get perception_interface_msgs::DataDesensibilisationTypeEnum :definition-)
      "uint8 DATA_DESENSIBILISATION_TYPE_UNKNOWN = 0
uint8 DATA_DESENSIBILISATION_TYPE_HUMAN_FACE = 1
uint8 DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER = 2
uint8 value

")



(provide :perception_interface_msgs/DataDesensibilisationTypeEnum "f506dc99f8ea8defa69baabd0b632e4b")


