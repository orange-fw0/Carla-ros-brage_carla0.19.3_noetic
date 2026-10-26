;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::NaviTimeDistance)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'NaviTimeDistance (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE")
  (make-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE"))

(in-package "ROS")
;;//! \htmlinclude NaviTimeDistance.msg.html


(intern "*AGGRESIVE*" (find-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE"))
(shadow '*AGGRESIVE* (find-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE"))
(defconstant system_manager_msgs::NaviTimeDistance::*AGGRESIVE* 0)
(intern "*MODERATE_AGGRESIVE*" (find-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE"))
(shadow '*MODERATE_AGGRESIVE* (find-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE"))
(defconstant system_manager_msgs::NaviTimeDistance::*MODERATE_AGGRESIVE* 1)
(intern "*NORMAL*" (find-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE"))
(shadow '*NORMAL* (find-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE"))
(defconstant system_manager_msgs::NaviTimeDistance::*NORMAL* 2)
(intern "*MODERATE_CONSERVATIVE*" (find-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE"))
(shadow '*MODERATE_CONSERVATIVE* (find-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE"))
(defconstant system_manager_msgs::NaviTimeDistance::*MODERATE_CONSERVATIVE* 3)
(intern "*CONSERVATIVE*" (find-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE"))
(shadow '*CONSERVATIVE* (find-package "SYSTEM_MANAGER_MSGS::NAVITIMEDISTANCE"))
(defconstant system_manager_msgs::NaviTimeDistance::*CONSERVATIVE* 4)

(defun system_manager_msgs::NaviTimeDistance-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::NaviTimeDistance::*AGGRESIVE*)
        ((= const 1) 'system_manager_msgs::NaviTimeDistance::*MODERATE_AGGRESIVE*)
        ((= const 2) 'system_manager_msgs::NaviTimeDistance::*NORMAL*)
        ((= const 3) 'system_manager_msgs::NaviTimeDistance::*MODERATE_CONSERVATIVE*)
        ((= const 4) 'system_manager_msgs::NaviTimeDistance::*CONSERVATIVE*)
        (t nil)))

(defclass system_manager_msgs::NaviTimeDistance
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::NaviTimeDistance
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

(setf (get system_manager_msgs::NaviTimeDistance :md5sum-) "3e08e8e3fc218f1fbd1c4f31dd992a2f")
(setf (get system_manager_msgs::NaviTimeDistance :datatype-) "system_manager_msgs/NaviTimeDistance")
(setf (get system_manager_msgs::NaviTimeDistance :definition-)
      "uint8 AGGRESIVE = 0
uint8 MODERATE_AGGRESIVE = 1
uint8 NORMAL = 2
uint8 MODERATE_CONSERVATIVE = 3
uint8 CONSERVATIVE = 4
uint8 value

")



(provide :system_manager_msgs/NaviTimeDistance "3e08e8e3fc218f1fbd1c4f31dd992a2f")


