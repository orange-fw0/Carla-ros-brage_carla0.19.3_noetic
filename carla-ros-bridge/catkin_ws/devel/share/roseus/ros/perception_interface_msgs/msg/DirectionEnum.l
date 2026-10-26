;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::DirectionEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'DirectionEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::DIRECTIONENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::DIRECTIONENUM"))

(in-package "ROS")
;;//! \htmlinclude DirectionEnum.msg.html


(intern "*UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::DIRECTIONENUM"))
(shadow '*UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::DIRECTIONENUM"))
(defconstant perception_interface_msgs::DirectionEnum::*UNKNOWN* 0)
(intern "*ONCOMING*" (find-package "PERCEPTION_INTERFACE_MSGS::DIRECTIONENUM"))
(shadow '*ONCOMING* (find-package "PERCEPTION_INTERFACE_MSGS::DIRECTIONENUM"))
(defconstant perception_interface_msgs::DirectionEnum::*ONCOMING* 1)
(intern "*PRECEDING*" (find-package "PERCEPTION_INTERFACE_MSGS::DIRECTIONENUM"))
(shadow '*PRECEDING* (find-package "PERCEPTION_INTERFACE_MSGS::DIRECTIONENUM"))
(defconstant perception_interface_msgs::DirectionEnum::*PRECEDING* 2)
(intern "*OTHERS*" (find-package "PERCEPTION_INTERFACE_MSGS::DIRECTIONENUM"))
(shadow '*OTHERS* (find-package "PERCEPTION_INTERFACE_MSGS::DIRECTIONENUM"))
(defconstant perception_interface_msgs::DirectionEnum::*OTHERS* 3)

(defun perception_interface_msgs::DirectionEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::DirectionEnum::*UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::DirectionEnum::*ONCOMING*)
        ((= const 2) 'perception_interface_msgs::DirectionEnum::*PRECEDING*)
        ((= const 3) 'perception_interface_msgs::DirectionEnum::*OTHERS*)
        (t nil)))

(defclass perception_interface_msgs::DirectionEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::DirectionEnum
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

(setf (get perception_interface_msgs::DirectionEnum :md5sum-) "4e31eecbabf072d7c007213439654dbd")
(setf (get perception_interface_msgs::DirectionEnum :datatype-) "perception_interface_msgs/DirectionEnum")
(setf (get perception_interface_msgs::DirectionEnum :definition-)
      "uint8 UNKNOWN = 0
uint8 ONCOMING = 1
uint8 PRECEDING = 2
uint8 OTHERS = 3
uint8 value

")



(provide :perception_interface_msgs/DirectionEnum "4e31eecbabf072d7c007213439654dbd")


