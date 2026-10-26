;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::TestRequestFeedback)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'TestRequestFeedback (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::TESTREQUESTFEEDBACK")
  (make-package "ACTIONLIB_MSGS::TESTREQUESTFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TestRequestFeedback.msg.html


(defclass actionlib_msgs::TestRequestFeedback
  :super ros::object
  :slots (_mfrmsg_empty_value ))

(defmethod actionlib_msgs::TestRequestFeedback
  (:init
   (&key
    ((:mfrmsg_empty_value __mfrmsg_empty_value) nil)
    )
   (send-super :init)
   (setq _mfrmsg_empty_value __mfrmsg_empty_value)
   self)
  (:mfrmsg_empty_value
   (&optional (__mfrmsg_empty_value :null))
   (if (not (eq __mfrmsg_empty_value :null)) (setq _mfrmsg_empty_value __mfrmsg_empty_value)) _mfrmsg_empty_value)
  (:serialization-length
   ()
   (+
    ;; bool _mfrmsg_empty_value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _mfrmsg_empty_value
       (if _mfrmsg_empty_value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _mfrmsg_empty_value
     (setq _mfrmsg_empty_value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get actionlib_msgs::TestRequestFeedback :md5sum-) "73e8a879fb095c7ddf7ef49b93137539")
(setf (get actionlib_msgs::TestRequestFeedback :datatype-) "actionlib_msgs/TestRequestFeedback")
(setf (get actionlib_msgs::TestRequestFeedback :definition-)
      "bool mfrmsg_empty_value

")



(provide :actionlib_msgs/TestRequestFeedback "73e8a879fb095c7ddf7ef49b93137539")


