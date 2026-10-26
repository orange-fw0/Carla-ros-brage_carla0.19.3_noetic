;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::IntentionType)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'IntentionType (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::INTENTIONTYPE")
  (make-package "WORLDMODEL_MSGS::INTENTIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude IntentionType.msg.html


(intern "*INVALID*" (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(shadow '*INVALID* (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(defconstant worldmodel_msgs::IntentionType::*INVALID* -1)
(intern "*FREE_MOVE*" (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(shadow '*FREE_MOVE* (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(defconstant worldmodel_msgs::IntentionType::*FREE_MOVE* 0)
(intern "*KEEP_LANE*" (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(shadow '*KEEP_LANE* (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(defconstant worldmodel_msgs::IntentionType::*KEEP_LANE* 1)
(intern "*LEFT_CHANGE_LANE_OUT*" (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(shadow '*LEFT_CHANGE_LANE_OUT* (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(defconstant worldmodel_msgs::IntentionType::*LEFT_CHANGE_LANE_OUT* 2)
(intern "*LEFT_CHANGE_LANE_IN*" (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(shadow '*LEFT_CHANGE_LANE_IN* (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(defconstant worldmodel_msgs::IntentionType::*LEFT_CHANGE_LANE_IN* 3)
(intern "*RIGHT_CHANGE_LANE_OUT*" (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(shadow '*RIGHT_CHANGE_LANE_OUT* (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(defconstant worldmodel_msgs::IntentionType::*RIGHT_CHANGE_LANE_OUT* 4)
(intern "*RIGHT_CHANGE_LANE_IN*" (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(shadow '*RIGHT_CHANGE_LANE_IN* (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(defconstant worldmodel_msgs::IntentionType::*RIGHT_CHANGE_LANE_IN* 5)
(intern "*GO_STRAIGHT*" (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(shadow '*GO_STRAIGHT* (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(defconstant worldmodel_msgs::IntentionType::*GO_STRAIGHT* 11)
(intern "*TURN_LEFT*" (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(shadow '*TURN_LEFT* (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(defconstant worldmodel_msgs::IntentionType::*TURN_LEFT* 12)
(intern "*TURN_RIGHT*" (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(shadow '*TURN_RIGHT* (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(defconstant worldmodel_msgs::IntentionType::*TURN_RIGHT* 13)
(intern "*U_TURN*" (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(shadow '*U_TURN* (find-package "WORLDMODEL_MSGS::INTENTIONTYPE"))
(defconstant worldmodel_msgs::IntentionType::*U_TURN* 14)

(defun worldmodel_msgs::IntentionType-to-symbol (const)
  (cond
        ((= const -1) 'worldmodel_msgs::IntentionType::*INVALID*)
        ((= const 0) 'worldmodel_msgs::IntentionType::*FREE_MOVE*)
        ((= const 1) 'worldmodel_msgs::IntentionType::*KEEP_LANE*)
        ((= const 2) 'worldmodel_msgs::IntentionType::*LEFT_CHANGE_LANE_OUT*)
        ((= const 3) 'worldmodel_msgs::IntentionType::*LEFT_CHANGE_LANE_IN*)
        ((= const 4) 'worldmodel_msgs::IntentionType::*RIGHT_CHANGE_LANE_OUT*)
        ((= const 5) 'worldmodel_msgs::IntentionType::*RIGHT_CHANGE_LANE_IN*)
        ((= const 11) 'worldmodel_msgs::IntentionType::*GO_STRAIGHT*)
        ((= const 12) 'worldmodel_msgs::IntentionType::*TURN_LEFT*)
        ((= const 13) 'worldmodel_msgs::IntentionType::*TURN_RIGHT*)
        ((= const 14) 'worldmodel_msgs::IntentionType::*U_TURN*)
        (t nil)))

(defclass worldmodel_msgs::IntentionType
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::IntentionType
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
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get worldmodel_msgs::IntentionType :md5sum-) "4e708cc3ef7472c7d503a4eef7f7300d")
(setf (get worldmodel_msgs::IntentionType :datatype-) "worldmodel_msgs/IntentionType")
(setf (get worldmodel_msgs::IntentionType :definition-)
      "int32 INVALID = -1
int32 FREE_MOVE = 0
int32 KEEP_LANE = 1
int32 LEFT_CHANGE_LANE_OUT = 2
int32 LEFT_CHANGE_LANE_IN = 3
int32 RIGHT_CHANGE_LANE_OUT = 4
int32 RIGHT_CHANGE_LANE_IN = 5
int32 GO_STRAIGHT = 11
int32 TURN_LEFT = 12
int32 TURN_RIGHT = 13
int32 U_TURN = 14
int32 value

")



(provide :worldmodel_msgs/IntentionType "4e708cc3ef7472c7d503a4eef7f7300d")


