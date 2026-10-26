;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::TestFeedback)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'TestFeedback (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::TESTFEEDBACK")
  (make-package "ACTIONLIB_MSGS::TESTFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TestFeedback.msg.html


(defclass actionlib_msgs::TestFeedback
  :super ros::object
  :slots (_feedback ))

(defmethod actionlib_msgs::TestFeedback
  (:init
   (&key
    ((:feedback __feedback) 0)
    )
   (send-super :init)
   (setq _feedback (round __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; int32 _feedback
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _feedback
       (write-long _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _feedback
     (setq _feedback (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get actionlib_msgs::TestFeedback :md5sum-) "49ceb5b32ea3af22073ede4a0328249e")
(setf (get actionlib_msgs::TestFeedback :datatype-) "actionlib_msgs/TestFeedback")
(setf (get actionlib_msgs::TestFeedback :definition-)
      "int32 feedback

")



(provide :actionlib_msgs/TestFeedback "49ceb5b32ea3af22073ede4a0328249e")


