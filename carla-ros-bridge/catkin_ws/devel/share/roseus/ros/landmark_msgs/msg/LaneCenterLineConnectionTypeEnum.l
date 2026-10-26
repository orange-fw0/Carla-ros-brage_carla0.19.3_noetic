;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterLineConnectionTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterLineConnectionTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM")
  (make-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterLineConnectionTypeEnum.msg.html


(intern "*POINT_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(shadow '*POINT_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_UNKNOWN* 0)
(intern "*POINT_TYPE_NORMAL*" (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(shadow '*POINT_TYPE_NORMAL* (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_NORMAL* 1)
(intern "*POINT_TYPE_TURN_LEFT*" (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(shadow '*POINT_TYPE_TURN_LEFT* (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_TURN_LEFT* 2)
(intern "*POINT_TYPE_TURN_RIGHT*" (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(shadow '*POINT_TYPE_TURN_RIGHT* (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_TURN_RIGHT* 3)
(intern "*POINT_TYPE_SPLIT*" (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(shadow '*POINT_TYPE_SPLIT* (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_SPLIT* 4)
(intern "*POINT_TYPE_MERGE*" (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(shadow '*POINT_TYPE_MERGE* (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_MERGE* 5)
(intern "*POINT_TYPE_LEFT_TURN_BACK*" (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(shadow '*POINT_TYPE_LEFT_TURN_BACK* (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_LEFT_TURN_BACK* 6)
(intern "*POINT_TYPE_RIGHT_TURN_BACK*" (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(shadow '*POINT_TYPE_RIGHT_TURN_BACK* (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_RIGHT_TURN_BACK* 7)
(intern "*POINT_TYPE_SPLIT_CONTINUE*" (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(shadow '*POINT_TYPE_SPLIT_CONTINUE* (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_SPLIT_CONTINUE* 8)
(intern "*POINT_TYPE_MERGE_CONTINUE*" (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(shadow '*POINT_TYPE_MERGE_CONTINUE* (find-package "LANDMARK_MSGS::LANECENTERLINECONNECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_MERGE_CONTINUE* 9)

(defun landmark_msgs::LaneCenterLineConnectionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_NORMAL*)
        ((= const 2) 'landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_TURN_LEFT*)
        ((= const 3) 'landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_TURN_RIGHT*)
        ((= const 4) 'landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_SPLIT*)
        ((= const 5) 'landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_MERGE*)
        ((= const 6) 'landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_LEFT_TURN_BACK*)
        ((= const 7) 'landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_RIGHT_TURN_BACK*)
        ((= const 8) 'landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_SPLIT_CONTINUE*)
        ((= const 9) 'landmark_msgs::LaneCenterLineConnectionTypeEnum::*POINT_TYPE_MERGE_CONTINUE*)
        (t nil)))

(defclass landmark_msgs::LaneCenterLineConnectionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LaneCenterLineConnectionTypeEnum
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

(setf (get landmark_msgs::LaneCenterLineConnectionTypeEnum :md5sum-) "31b13c4ca9e441142aa4be25eea7df26")
(setf (get landmark_msgs::LaneCenterLineConnectionTypeEnum :datatype-) "landmark_msgs/LaneCenterLineConnectionTypeEnum")
(setf (get landmark_msgs::LaneCenterLineConnectionTypeEnum :definition-)
      "uint8 POINT_TYPE_UNKNOWN = 0
uint8 POINT_TYPE_NORMAL = 1
uint8 POINT_TYPE_TURN_LEFT = 2
uint8 POINT_TYPE_TURN_RIGHT = 3
uint8 POINT_TYPE_SPLIT = 4
uint8 POINT_TYPE_MERGE = 5
uint8 POINT_TYPE_LEFT_TURN_BACK = 6
uint8 POINT_TYPE_RIGHT_TURN_BACK = 7
uint8 POINT_TYPE_SPLIT_CONTINUE = 8
uint8 POINT_TYPE_MERGE_CONTINUE = 9
uint8 value

")



(provide :landmark_msgs/LaneCenterLineConnectionTypeEnum "31b13c4ca9e441142aa4be25eea7df26")


