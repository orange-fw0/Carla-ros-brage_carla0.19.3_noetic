;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::CameraSurfaceCondition)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'CameraSurfaceCondition (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION")
  (make-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))

(in-package "ROS")
;;//! \htmlinclude CameraSurfaceCondition.msg.html


(intern "*INVALID*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*INVALID* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*INVALID* 0)
(intern "*NORMAL*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*NORMAL* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*NORMAL* 1)
(intern "*WATER*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*WATER* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*WATER* 2)
(intern "*MOISTURE*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*MOISTURE* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*MOISTURE* 3)
(intern "*BLOCKAGE*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*BLOCKAGE* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*BLOCKAGE* 4)
(intern "*DIZZY*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*DIZZY* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*DIZZY* 5)
(intern "*DARKNESS*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*DARKNESS* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*DARKNESS* 6)
(intern "*DIRTY*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*DIRTY* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*DIRTY* 7)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*RESERVED1* 8)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*RESERVED2* 9)
(intern "*RESERVED3*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*RESERVED3* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*RESERVED3* 10)
(intern "*RESERVED4*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*RESERVED4* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*RESERVED4* 11)
(intern "*RESERVED5*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*RESERVED5* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*RESERVED5* 12)
(intern "*RESERVED6*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*RESERVED6* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*RESERVED6* 13)
(intern "*RESERVED7*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*RESERVED7* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*RESERVED7* 14)
(intern "*RESERVED8*" (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(shadow '*RESERVED8* (find-package "ENDPOINT_MSGS::CAMERASURFACECONDITION"))
(defconstant endpoint_msgs::CameraSurfaceCondition::*RESERVED8* 15)

(defun endpoint_msgs::CameraSurfaceCondition-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::CameraSurfaceCondition::*INVALID*)
        ((= const 1) 'endpoint_msgs::CameraSurfaceCondition::*NORMAL*)
        ((= const 2) 'endpoint_msgs::CameraSurfaceCondition::*WATER*)
        ((= const 3) 'endpoint_msgs::CameraSurfaceCondition::*MOISTURE*)
        ((= const 4) 'endpoint_msgs::CameraSurfaceCondition::*BLOCKAGE*)
        ((= const 5) 'endpoint_msgs::CameraSurfaceCondition::*DIZZY*)
        ((= const 6) 'endpoint_msgs::CameraSurfaceCondition::*DARKNESS*)
        ((= const 7) 'endpoint_msgs::CameraSurfaceCondition::*DIRTY*)
        ((= const 8) 'endpoint_msgs::CameraSurfaceCondition::*RESERVED1*)
        ((= const 9) 'endpoint_msgs::CameraSurfaceCondition::*RESERVED2*)
        ((= const 10) 'endpoint_msgs::CameraSurfaceCondition::*RESERVED3*)
        ((= const 11) 'endpoint_msgs::CameraSurfaceCondition::*RESERVED4*)
        ((= const 12) 'endpoint_msgs::CameraSurfaceCondition::*RESERVED5*)
        ((= const 13) 'endpoint_msgs::CameraSurfaceCondition::*RESERVED6*)
        ((= const 14) 'endpoint_msgs::CameraSurfaceCondition::*RESERVED7*)
        ((= const 15) 'endpoint_msgs::CameraSurfaceCondition::*RESERVED8*)
        (t nil)))

(defclass endpoint_msgs::CameraSurfaceCondition
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::CameraSurfaceCondition
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

(setf (get endpoint_msgs::CameraSurfaceCondition :md5sum-) "badd689fdf2fef60e5b33f730764d29e")
(setf (get endpoint_msgs::CameraSurfaceCondition :datatype-) "endpoint_msgs/CameraSurfaceCondition")
(setf (get endpoint_msgs::CameraSurfaceCondition :definition-)
      "uint8 INVALID = 0
uint8 NORMAL = 1
uint8 WATER = 2
uint8 MOISTURE = 3
uint8 BLOCKAGE = 4
uint8 DIZZY = 5
uint8 DARKNESS = 6
uint8 DIRTY = 7
uint8 RESERVED1 = 8
uint8 RESERVED2 = 9
uint8 RESERVED3 = 10
uint8 RESERVED4 = 11
uint8 RESERVED5 = 12
uint8 RESERVED6 = 13
uint8 RESERVED7 = 14
uint8 RESERVED8 = 15
uint8 value

")



(provide :endpoint_msgs/CameraSurfaceCondition "badd689fdf2fef60e5b33f730764d29e")


