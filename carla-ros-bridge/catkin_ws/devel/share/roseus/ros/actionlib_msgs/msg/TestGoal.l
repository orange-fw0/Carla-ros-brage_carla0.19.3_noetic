;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::TestGoal)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'TestGoal (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::TESTGOAL")
  (make-package "ACTIONLIB_MSGS::TESTGOAL"))

(in-package "ROS")
;;//! \htmlinclude TestGoal.msg.html


(defclass actionlib_msgs::TestGoal
  :super ros::object
  :slots (_goal ))

(defmethod actionlib_msgs::TestGoal
  (:init
   (&key
    ((:goal __goal) 0)
    )
   (send-super :init)
   (setq _goal (round __goal))
   self)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:serialization-length
   ()
   (+
    ;; int32 _goal
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _goal
       (write-long _goal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _goal
     (setq _goal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get actionlib_msgs::TestGoal :md5sum-) "18df0149936b7aa95588e3862476ebde")
(setf (get actionlib_msgs::TestGoal :datatype-) "actionlib_msgs/TestGoal")
(setf (get actionlib_msgs::TestGoal :definition-)
      "int32 goal

")



(provide :actionlib_msgs/TestGoal "18df0149936b7aa95588e3862476ebde")


