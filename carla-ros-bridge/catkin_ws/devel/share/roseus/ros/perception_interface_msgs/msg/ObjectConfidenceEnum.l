;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ObjectConfidenceEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ObjectConfidenceEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTCONFIDENCEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::OBJECTCONFIDENCEENUM"))

(in-package "ROS")
;;//! \htmlinclude ObjectConfidenceEnum.msg.html


(intern "*LOW_CONFIDENCE*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTCONFIDENCEENUM"))
(shadow '*LOW_CONFIDENCE* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTCONFIDENCEENUM"))
(defconstant perception_interface_msgs::ObjectConfidenceEnum::*LOW_CONFIDENCE* 0)
(intern "*MIDIUM_CONFIDENCE*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTCONFIDENCEENUM"))
(shadow '*MIDIUM_CONFIDENCE* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTCONFIDENCEENUM"))
(defconstant perception_interface_msgs::ObjectConfidenceEnum::*MIDIUM_CONFIDENCE* 1)
(intern "*HIGH_CONFIDENCE*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTCONFIDENCEENUM"))
(shadow '*HIGH_CONFIDENCE* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTCONFIDENCEENUM"))
(defconstant perception_interface_msgs::ObjectConfidenceEnum::*HIGH_CONFIDENCE* 2)

(defun perception_interface_msgs::ObjectConfidenceEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ObjectConfidenceEnum::*LOW_CONFIDENCE*)
        ((= const 1) 'perception_interface_msgs::ObjectConfidenceEnum::*MIDIUM_CONFIDENCE*)
        ((= const 2) 'perception_interface_msgs::ObjectConfidenceEnum::*HIGH_CONFIDENCE*)
        (t nil)))

(defclass perception_interface_msgs::ObjectConfidenceEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ObjectConfidenceEnum
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

(setf (get perception_interface_msgs::ObjectConfidenceEnum :md5sum-) "e2613edbb52fd2b95b1e83b350ec2886")
(setf (get perception_interface_msgs::ObjectConfidenceEnum :datatype-) "perception_interface_msgs/ObjectConfidenceEnum")
(setf (get perception_interface_msgs::ObjectConfidenceEnum :definition-)
      "uint8 LOW_CONFIDENCE = 0
uint8 MIDIUM_CONFIDENCE = 1
uint8 HIGH_CONFIDENCE = 2
uint8 value

")



(provide :perception_interface_msgs/ObjectConfidenceEnum "e2613edbb52fd2b95b1e83b350ec2886")


