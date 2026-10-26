;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::GoalStatus)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'GoalStatus (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::GOALSTATUS")
  (make-package "ACTIONLIB_MSGS::GOALSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GoalStatus.msg.html


(intern "*PENDING*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*PENDING* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*PENDING* 0)
(intern "*ACTIVE*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*ACTIVE* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*ACTIVE* 1)
(intern "*PREEMPTED*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*PREEMPTED* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*PREEMPTED* 2)
(intern "*SUCCEEDED*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*SUCCEEDED* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*SUCCEEDED* 3)
(intern "*ABORTED*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*ABORTED* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*ABORTED* 4)
(intern "*REJECTED*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*REJECTED* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*REJECTED* 5)
(intern "*PREEMPTING*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*PREEMPTING* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*PREEMPTING* 6)
(intern "*RECALLING*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*RECALLING* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*RECALLING* 7)
(intern "*RECALLED*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*RECALLED* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*RECALLED* 8)
(intern "*LOST*" (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(shadow '*LOST* (find-package "ACTIONLIB_MSGS::GOALSTATUS"))
(defconstant actionlib_msgs::GoalStatus::*LOST* 9)

(defun actionlib_msgs::GoalStatus-to-symbol (const)
  (cond
        ((= const 0) 'actionlib_msgs::GoalStatus::*PENDING*)
        ((= const 1) 'actionlib_msgs::GoalStatus::*ACTIVE*)
        ((= const 2) 'actionlib_msgs::GoalStatus::*PREEMPTED*)
        ((= const 3) 'actionlib_msgs::GoalStatus::*SUCCEEDED*)
        ((= const 4) 'actionlib_msgs::GoalStatus::*ABORTED*)
        ((= const 5) 'actionlib_msgs::GoalStatus::*REJECTED*)
        ((= const 6) 'actionlib_msgs::GoalStatus::*PREEMPTING*)
        ((= const 7) 'actionlib_msgs::GoalStatus::*RECALLING*)
        ((= const 8) 'actionlib_msgs::GoalStatus::*RECALLED*)
        ((= const 9) 'actionlib_msgs::GoalStatus::*LOST*)
        (t nil)))

(defclass actionlib_msgs::GoalStatus
  :super ros::object
  :slots (_goal_id _status _text ))

(defmethod actionlib_msgs::GoalStatus
  (:init
   (&key
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:status __status) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _goal_id __goal_id)
   (setq _status (round __status))
   (setq _text (string __text))
   self)
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; uint8 _status
    1
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; uint8 _status
       (write-byte _status s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get actionlib_msgs::GoalStatus :md5sum-) "3d3c005b84876912c1e35e034e8d68c5")
(setf (get actionlib_msgs::GoalStatus :datatype-) "actionlib_msgs/GoalStatus")
(setf (get actionlib_msgs::GoalStatus :definition-)
      "uint8 PENDING = 0
uint8 ACTIVE = 1
uint8 PREEMPTED = 2
uint8 SUCCEEDED = 3
uint8 ABORTED = 4
uint8 REJECTED = 5
uint8 PREEMPTING = 6
uint8 RECALLING = 7
uint8 RECALLED = 8
uint8 LOST = 9
actionlib_msgs/GoalID goal_id
uint8 status
string text

================================================================================
MSG: actionlib_msgs/GoalID
uint64 stamp
string id

")



(provide :actionlib_msgs/GoalStatus "3d3c005b84876912c1e35e034e8d68c5")


