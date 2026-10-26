;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ContiRadarDynamicProperty)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ContiRadarDynamicProperty (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY")
  (make-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))

(in-package "ROS")
;;//! \htmlinclude ContiRadarDynamicProperty.msg.html


(intern "*MOVING*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(shadow '*MOVING* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(defconstant perception_interface_msgs::ContiRadarDynamicProperty::*MOVING* 0)
(intern "*STATIONARY*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(shadow '*STATIONARY* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(defconstant perception_interface_msgs::ContiRadarDynamicProperty::*STATIONARY* 1)
(intern "*ON_COMING*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(shadow '*ON_COMING* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(defconstant perception_interface_msgs::ContiRadarDynamicProperty::*ON_COMING* 2)
(intern "*STATIONARY_CANDIDATE*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(shadow '*STATIONARY_CANDIDATE* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(defconstant perception_interface_msgs::ContiRadarDynamicProperty::*STATIONARY_CANDIDATE* 3)
(intern "*UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(shadow '*UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(defconstant perception_interface_msgs::ContiRadarDynamicProperty::*UNKNOWN* 4)
(intern "*CROSSING_STATIONARY*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(shadow '*CROSSING_STATIONARY* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(defconstant perception_interface_msgs::ContiRadarDynamicProperty::*CROSSING_STATIONARY* 5)
(intern "*CROSSING_MOVING*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(shadow '*CROSSING_MOVING* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(defconstant perception_interface_msgs::ContiRadarDynamicProperty::*CROSSING_MOVING* 6)
(intern "*STOPPED*" (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(shadow '*STOPPED* (find-package "PERCEPTION_INTERFACE_MSGS::CONTIRADARDYNAMICPROPERTY"))
(defconstant perception_interface_msgs::ContiRadarDynamicProperty::*STOPPED* 7)

(defun perception_interface_msgs::ContiRadarDynamicProperty-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ContiRadarDynamicProperty::*MOVING*)
        ((= const 1) 'perception_interface_msgs::ContiRadarDynamicProperty::*STATIONARY*)
        ((= const 2) 'perception_interface_msgs::ContiRadarDynamicProperty::*ON_COMING*)
        ((= const 3) 'perception_interface_msgs::ContiRadarDynamicProperty::*STATIONARY_CANDIDATE*)
        ((= const 4) 'perception_interface_msgs::ContiRadarDynamicProperty::*UNKNOWN*)
        ((= const 5) 'perception_interface_msgs::ContiRadarDynamicProperty::*CROSSING_STATIONARY*)
        ((= const 6) 'perception_interface_msgs::ContiRadarDynamicProperty::*CROSSING_MOVING*)
        ((= const 7) 'perception_interface_msgs::ContiRadarDynamicProperty::*STOPPED*)
        (t nil)))

(defclass perception_interface_msgs::ContiRadarDynamicProperty
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ContiRadarDynamicProperty
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

(setf (get perception_interface_msgs::ContiRadarDynamicProperty :md5sum-) "6e471f871d33152c9d22605c4d065ec4")
(setf (get perception_interface_msgs::ContiRadarDynamicProperty :datatype-) "perception_interface_msgs/ContiRadarDynamicProperty")
(setf (get perception_interface_msgs::ContiRadarDynamicProperty :definition-)
      "uint8 MOVING = 0
uint8 STATIONARY = 1
uint8 ON_COMING = 2
uint8 STATIONARY_CANDIDATE = 3
uint8 UNKNOWN = 4
uint8 CROSSING_STATIONARY = 5
uint8 CROSSING_MOVING = 6
uint8 STOPPED = 7
uint8 value

")



(provide :perception_interface_msgs/ContiRadarDynamicProperty "6e471f871d33152c9d22605c4d065ec4")


