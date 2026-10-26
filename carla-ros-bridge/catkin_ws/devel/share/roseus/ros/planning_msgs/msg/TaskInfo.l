;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::TaskInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'TaskInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::TASKINFO")
  (make-package "PLANNING_MSGS::TASKINFO"))

(in-package "ROS")
;;//! \htmlinclude TaskInfo.msg.html
(if (not (find-package "ACTIONLIB_MSGS"))
  (ros::roseus-add-msgs "actionlib_msgs"))


(intern "*REQUEST*" (find-package "PLANNING_MSGS::TASKINFO"))
(shadow '*REQUEST* (find-package "PLANNING_MSGS::TASKINFO"))
(defconstant planning_msgs::TaskInfo::*REQUEST* 1)
(intern "*GOAL_ID*" (find-package "PLANNING_MSGS::TASKINFO"))
(shadow '*GOAL_ID* (find-package "PLANNING_MSGS::TASKINFO"))
(defconstant planning_msgs::TaskInfo::*GOAL_ID* 2)

(defun planning_msgs::TaskInfo-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::TaskInfo::*REQUEST*)
        ((= const 2) 'planning_msgs::TaskInfo::*GOAL_ID*)
        (t nil)))

(defclass planning_msgs::TaskInfo
  :super ros::object
  :slots (_available _request _goal_id ))

(defmethod planning_msgs::TaskInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:request __request) (instance planning_msgs::RequestEnum :init))
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _request __request)
   (setq _goal_id __goal_id)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:request
   (&rest __request)
   (if (keywordp (car __request))
       (send* _request __request)
     (progn
       (if __request (setq _request (car __request)))
       _request)))
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/RequestEnum _request
    (send _request :serialization-length)
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/RequestEnum _request
       (send _request :serialize s)
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/RequestEnum _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::TaskInfo :md5sum-) "3e972068d88fd139e7fc177083ab9353")
(setf (get planning_msgs::TaskInfo :datatype-) "planning_msgs/TaskInfo")
(setf (get planning_msgs::TaskInfo :definition-)
      "uint8 REQUEST = 1
uint8 GOAL_ID = 2
uint8 available
planning_msgs/RequestEnum request
actionlib_msgs/GoalID goal_id

================================================================================
MSG: planning_msgs/RequestEnum
uint8 START_TASK = 1
uint8 ABORT_TASK = 2
uint8 value

================================================================================
MSG: actionlib_msgs/GoalID
uint64 stamp
string id

")



(provide :planning_msgs/TaskInfo "3e972068d88fd139e7fc177083ab9353")


