;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::HeightLevel)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'HeightLevel (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::HEIGHTLEVEL")
  (make-package "ENDPOINT_MSGS::HEIGHTLEVEL"))

(in-package "ROS")
;;//! \htmlinclude HeightLevel.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*NONE* 0)
(intern "*LEVEL1*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*LEVEL1* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*LEVEL1* 1)
(intern "*LEVEL2*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*LEVEL2* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*LEVEL2* 2)
(intern "*LEVEL3*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*LEVEL3* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*LEVEL3* 3)
(intern "*LEVEL4*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*LEVEL4* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*LEVEL4* 4)
(intern "*LEVEL5*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*LEVEL5* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*LEVEL5* 5)
(intern "*LEVEL6*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*LEVEL6* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*LEVEL6* 6)
(intern "*LEVEL7*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*LEVEL7* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*LEVEL7* 7)
(intern "*LEVEL8*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*LEVEL8* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*LEVEL8* 8)
(intern "*LEVEL9*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*LEVEL9* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*LEVEL9* 9)
(intern "*LEVEL10*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*LEVEL10* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*LEVEL10* 10)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*RESERVED1* 11)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*RESERVED2* 12)
(intern "*RESERVED3*" (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(shadow '*RESERVED3* (find-package "ENDPOINT_MSGS::HEIGHTLEVEL"))
(defconstant endpoint_msgs::HeightLevel::*RESERVED3* 13)

(defun endpoint_msgs::HeightLevel-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::HeightLevel::*NONE*)
        ((= const 1) 'endpoint_msgs::HeightLevel::*LEVEL1*)
        ((= const 2) 'endpoint_msgs::HeightLevel::*LEVEL2*)
        ((= const 3) 'endpoint_msgs::HeightLevel::*LEVEL3*)
        ((= const 4) 'endpoint_msgs::HeightLevel::*LEVEL4*)
        ((= const 5) 'endpoint_msgs::HeightLevel::*LEVEL5*)
        ((= const 6) 'endpoint_msgs::HeightLevel::*LEVEL6*)
        ((= const 7) 'endpoint_msgs::HeightLevel::*LEVEL7*)
        ((= const 8) 'endpoint_msgs::HeightLevel::*LEVEL8*)
        ((= const 9) 'endpoint_msgs::HeightLevel::*LEVEL9*)
        ((= const 10) 'endpoint_msgs::HeightLevel::*LEVEL10*)
        ((= const 11) 'endpoint_msgs::HeightLevel::*RESERVED1*)
        ((= const 12) 'endpoint_msgs::HeightLevel::*RESERVED2*)
        ((= const 13) 'endpoint_msgs::HeightLevel::*RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::HeightLevel
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::HeightLevel
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

(setf (get endpoint_msgs::HeightLevel :md5sum-) "7329d4ad5e200b7dd0c6496f8af32cf0")
(setf (get endpoint_msgs::HeightLevel :datatype-) "endpoint_msgs/HeightLevel")
(setf (get endpoint_msgs::HeightLevel :definition-)
      "uint8 NONE = 0
uint8 LEVEL1 = 1
uint8 LEVEL2 = 2
uint8 LEVEL3 = 3
uint8 LEVEL4 = 4
uint8 LEVEL5 = 5
uint8 LEVEL6 = 6
uint8 LEVEL7 = 7
uint8 LEVEL8 = 8
uint8 LEVEL9 = 9
uint8 LEVEL10 = 10
uint8 RESERVED1 = 11
uint8 RESERVED2 = 12
uint8 RESERVED3 = 13
uint8 value

")



(provide :endpoint_msgs/HeightLevel "7329d4ad5e200b7dd0c6496f8af32cf0")


