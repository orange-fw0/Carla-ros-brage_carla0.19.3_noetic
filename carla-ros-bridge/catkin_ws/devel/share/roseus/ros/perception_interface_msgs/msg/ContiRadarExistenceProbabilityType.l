;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ContiRadarExistenceProbabilityType)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ContiRadarExistenceProbabilityType (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE")
  (make-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))

(in-package "ROS")
;;//! \htmlinclude ContiRadarExistenceProbabilityType.msg.html


(intern "*INVALID*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(shadow '*INVALID* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(defconstant perception_interface_msgs::ContiRadarExistenceProbabilityType::*INVALID* 0)
(intern "*PROBABILITY_25*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(shadow '*PROBABILITY_25* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(defconstant perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_25* 1)
(intern "*PROBABILITY_50*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(shadow '*PROBABILITY_50* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(defconstant perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_50* 2)
(intern "*PROBABILITY_75*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(shadow '*PROBABILITY_75* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(defconstant perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_75* 3)
(intern "*PROBABILITY_90*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(shadow '*PROBABILITY_90* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(defconstant perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_90* 4)
(intern "*PROBABILITY_99*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(shadow '*PROBABILITY_99* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(defconstant perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_99* 5)
(intern "*PROBABILITY_99_9*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(shadow '*PROBABILITY_99_9* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(defconstant perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_99_9* 6)
(intern "*PROBABILITY_100*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(shadow '*PROBABILITY_100* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADAREXISTENCEPROBABILITYTYPE"))
(defconstant perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_100* 7)

(defun perception_interface_msgs::ContiRadarExistenceProbabilityType-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ContiRadarExistenceProbabilityType::*INVALID*)
        ((= const 1) 'perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_25*)
        ((= const 2) 'perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_50*)
        ((= const 3) 'perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_75*)
        ((= const 4) 'perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_90*)
        ((= const 5) 'perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_99*)
        ((= const 6) 'perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_99_9*)
        ((= const 7) 'perception_interface_msgs::ContiRadarExistenceProbabilityType::*PROBABILITY_100*)
        (t nil)))

(defclass perception_interface_msgs::ContiRadarExistenceProbabilityType
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ContiRadarExistenceProbabilityType
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

(setf (get perception_interface_msgs::ContiRadarExistenceProbabilityType :md5sum-) "b3c8877c39dff786a917bb770c546b6c")
(setf (get perception_interface_msgs::ContiRadarExistenceProbabilityType :datatype-) "perception_interface_msgs/ContiRadarExistenceProbabilityType")
(setf (get perception_interface_msgs::ContiRadarExistenceProbabilityType :definition-)
      "uint8 INVALID = 0
uint8 PROBABILITY_25 = 1
uint8 PROBABILITY_50 = 2
uint8 PROBABILITY_75 = 3
uint8 PROBABILITY_90 = 4
uint8 PROBABILITY_99 = 5
uint8 PROBABILITY_99_9 = 6
uint8 PROBABILITY_100 = 7
uint8 value

")



(provide :perception_interface_msgs/ContiRadarExistenceProbabilityType "b3c8877c39dff786a917bb770c546b6c")


