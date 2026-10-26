;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSAgeGroup)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSAgeGroup (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSAGEGROUP")
  (make-package "OMS_MSGS::OMSAGEGROUP"))

(in-package "ROS")
;;//! \htmlinclude OMSAgeGroup.msg.html


(intern "*UNAVAILABLE*" (find-package "OMS_MSGS::OMSAGEGROUP"))
(shadow '*UNAVAILABLE* (find-package "OMS_MSGS::OMSAGEGROUP"))
(defconstant oms_msgs::OMSAgeGroup::*UNAVAILABLE* 0)
(intern "*BABY*" (find-package "OMS_MSGS::OMSAGEGROUP"))
(shadow '*BABY* (find-package "OMS_MSGS::OMSAGEGROUP"))
(defconstant oms_msgs::OMSAgeGroup::*BABY* 1)
(intern "*CHILD*" (find-package "OMS_MSGS::OMSAGEGROUP"))
(shadow '*CHILD* (find-package "OMS_MSGS::OMSAGEGROUP"))
(defconstant oms_msgs::OMSAgeGroup::*CHILD* 2)
(intern "*YOUTH*" (find-package "OMS_MSGS::OMSAGEGROUP"))
(shadow '*YOUTH* (find-package "OMS_MSGS::OMSAGEGROUP"))
(defconstant oms_msgs::OMSAgeGroup::*YOUTH* 3)
(intern "*OLD*" (find-package "OMS_MSGS::OMSAGEGROUP"))
(shadow '*OLD* (find-package "OMS_MSGS::OMSAGEGROUP"))
(defconstant oms_msgs::OMSAgeGroup::*OLD* 4)
(intern "*UNCERTAIN*" (find-package "OMS_MSGS::OMSAGEGROUP"))
(shadow '*UNCERTAIN* (find-package "OMS_MSGS::OMSAGEGROUP"))
(defconstant oms_msgs::OMSAgeGroup::*UNCERTAIN* 5)

(defun oms_msgs::OMSAgeGroup-to-symbol (const)
  (cond
        ((= const 0) 'oms_msgs::OMSAgeGroup::*UNAVAILABLE*)
        ((= const 1) 'oms_msgs::OMSAgeGroup::*BABY*)
        ((= const 2) 'oms_msgs::OMSAgeGroup::*CHILD*)
        ((= const 3) 'oms_msgs::OMSAgeGroup::*YOUTH*)
        ((= const 4) 'oms_msgs::OMSAgeGroup::*OLD*)
        ((= const 5) 'oms_msgs::OMSAgeGroup::*UNCERTAIN*)
        (t nil)))

(defclass oms_msgs::OMSAgeGroup
  :super ros::object
  :slots (_value _score ))

(defmethod oms_msgs::OMSAgeGroup
  (:init
   (&key
    ((:value __value) 0)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _score (float __score))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get oms_msgs::OMSAgeGroup :md5sum-) "73f547e7c7e09cb75437ad8e401e6a45")
(setf (get oms_msgs::OMSAgeGroup :datatype-) "oms_msgs/OMSAgeGroup")
(setf (get oms_msgs::OMSAgeGroup :definition-)
      "uint8 UNAVAILABLE = 0
uint8 BABY = 1
uint8 CHILD = 2
uint8 YOUTH = 3
uint8 OLD = 4
uint8 UNCERTAIN = 5
uint8 value
float32 score

")



(provide :oms_msgs/OMSAgeGroup "73f547e7c7e09cb75437ad8e401e6a45")


