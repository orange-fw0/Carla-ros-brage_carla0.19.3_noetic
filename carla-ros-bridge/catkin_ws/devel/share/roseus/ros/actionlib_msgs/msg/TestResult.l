;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::TestResult)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'TestResult (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::TESTRESULT")
  (make-package "ACTIONLIB_MSGS::TESTRESULT"))

(in-package "ROS")
;;//! \htmlinclude TestResult.msg.html


(defclass actionlib_msgs::TestResult
  :super ros::object
  :slots (_result ))

(defmethod actionlib_msgs::TestResult
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get actionlib_msgs::TestResult :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get actionlib_msgs::TestResult :datatype-) "actionlib_msgs/TestResult")
(setf (get actionlib_msgs::TestResult :definition-)
      "int32 result

")



(provide :actionlib_msgs/TestResult "034a8e20d6a306665e3a5b340fab3f09")


