;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SuspensionLevel)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SuspensionLevel (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL")
  (make-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))

(in-package "ROS")
;;//! \htmlinclude SuspensionLevel.msg.html


(intern "*SUSPENSION_NONE*" (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(shadow '*SUSPENSION_NONE* (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(defconstant endpoint_msgs::SuspensionLevel::*SUSPENSION_NONE* 0)
(intern "*SUSPENSION_LEVEL1*" (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(shadow '*SUSPENSION_LEVEL1* (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(defconstant endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL1* 1)
(intern "*SUSPENSION_LEVEL2*" (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(shadow '*SUSPENSION_LEVEL2* (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(defconstant endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL2* 2)
(intern "*SUSPENSION_LEVEL3*" (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(shadow '*SUSPENSION_LEVEL3* (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(defconstant endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL3* 3)
(intern "*SUSPENSION_LEVEL4*" (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(shadow '*SUSPENSION_LEVEL4* (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(defconstant endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL4* 4)
(intern "*SUSPENSION_LEVEL5*" (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(shadow '*SUSPENSION_LEVEL5* (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(defconstant endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL5* 5)
(intern "*SUSPENSION_LEVEL6*" (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(shadow '*SUSPENSION_LEVEL6* (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(defconstant endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL6* 6)
(intern "*SUSPENSION_LEVEL7*" (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(shadow '*SUSPENSION_LEVEL7* (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(defconstant endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL7* 7)
(intern "*SUSPENSION_LEVEL8*" (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(shadow '*SUSPENSION_LEVEL8* (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(defconstant endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL8* 8)
(intern "*SUSPENSION_LEVEL9*" (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(shadow '*SUSPENSION_LEVEL9* (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(defconstant endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL9* 9)
(intern "*SUSPENSION_LEVEL10*" (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(shadow '*SUSPENSION_LEVEL10* (find-package "ENDPOINT_MSGS::SUSPENSIONLEVEL"))
(defconstant endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL10* 10)

(defun endpoint_msgs::SuspensionLevel-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::SuspensionLevel::*SUSPENSION_NONE*)
        ((= const 1) 'endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL1*)
        ((= const 2) 'endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL2*)
        ((= const 3) 'endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL3*)
        ((= const 4) 'endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL4*)
        ((= const 5) 'endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL5*)
        ((= const 6) 'endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL6*)
        ((= const 7) 'endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL7*)
        ((= const 8) 'endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL8*)
        ((= const 9) 'endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL9*)
        ((= const 10) 'endpoint_msgs::SuspensionLevel::*SUSPENSION_LEVEL10*)
        (t nil)))

(defclass endpoint_msgs::SuspensionLevel
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::SuspensionLevel
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

(setf (get endpoint_msgs::SuspensionLevel :md5sum-) "fba8ad37228388a6d9c5b9febd7b77e7")
(setf (get endpoint_msgs::SuspensionLevel :datatype-) "endpoint_msgs/SuspensionLevel")
(setf (get endpoint_msgs::SuspensionLevel :definition-)
      "uint8 SUSPENSION_NONE = 0
uint8 SUSPENSION_LEVEL1 = 1
uint8 SUSPENSION_LEVEL2 = 2
uint8 SUSPENSION_LEVEL3 = 3
uint8 SUSPENSION_LEVEL4 = 4
uint8 SUSPENSION_LEVEL5 = 5
uint8 SUSPENSION_LEVEL6 = 6
uint8 SUSPENSION_LEVEL7 = 7
uint8 SUSPENSION_LEVEL8 = 8
uint8 SUSPENSION_LEVEL9 = 9
uint8 SUSPENSION_LEVEL10 = 10
uint8 value

")



(provide :endpoint_msgs/SuspensionLevel "fba8ad37228388a6d9c5b9febd7b77e7")


