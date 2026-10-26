;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xPerceptionObjectType)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xPerceptionObjectType (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE")
  (make-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE"))

(in-package "ROS")
;;//! \htmlinclude V2xPerceptionObjectType.msg.html


(intern "*UNKNOWN*" (find-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE"))
(shadow '*UNKNOWN* (find-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE"))
(defconstant v2x_msgs::V2xPerceptionObjectType::*UNKNOWN* 0)
(intern "*PEDESTRIAN*" (find-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE"))
(shadow '*PEDESTRIAN* (find-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE"))
(defconstant v2x_msgs::V2xPerceptionObjectType::*PEDESTRIAN* 1)
(intern "*NON_MOTOR*" (find-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE"))
(shadow '*NON_MOTOR* (find-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE"))
(defconstant v2x_msgs::V2xPerceptionObjectType::*NON_MOTOR* 2)
(intern "*MOTOR*" (find-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE"))
(shadow '*MOTOR* (find-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE"))
(defconstant v2x_msgs::V2xPerceptionObjectType::*MOTOR* 3)
(intern "*OTHER*" (find-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE"))
(shadow '*OTHER* (find-package "V2X_MSGS::V2XPERCEPTIONOBJECTTYPE"))
(defconstant v2x_msgs::V2xPerceptionObjectType::*OTHER* 4)

(defun v2x_msgs::V2xPerceptionObjectType-to-symbol (const)
  (cond
        ((= const 0) 'v2x_msgs::V2xPerceptionObjectType::*UNKNOWN*)
        ((= const 1) 'v2x_msgs::V2xPerceptionObjectType::*PEDESTRIAN*)
        ((= const 2) 'v2x_msgs::V2xPerceptionObjectType::*NON_MOTOR*)
        ((= const 3) 'v2x_msgs::V2xPerceptionObjectType::*MOTOR*)
        ((= const 4) 'v2x_msgs::V2xPerceptionObjectType::*OTHER*)
        (t nil)))

(defclass v2x_msgs::V2xPerceptionObjectType
  :super ros::object
  :slots (_value ))

(defmethod v2x_msgs::V2xPerceptionObjectType
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
    ;; uint32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get v2x_msgs::V2xPerceptionObjectType :md5sum-) "e39096ee7f4de975b80be797cac9f4d7")
(setf (get v2x_msgs::V2xPerceptionObjectType :datatype-) "v2x_msgs/V2xPerceptionObjectType")
(setf (get v2x_msgs::V2xPerceptionObjectType :definition-)
      "uint32 UNKNOWN = 0
uint32 PEDESTRIAN = 1
uint32 NON_MOTOR = 2
uint32 MOTOR = 3
uint32 OTHER = 4
uint32 value

")



(provide :v2x_msgs/V2xPerceptionObjectType "e39096ee7f4de975b80be797cac9f4d7")


