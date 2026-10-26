;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::ManagerNotify)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'ManagerNotify (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::MANAGERNOTIFY")
  (make-package "FRAMEWORK_STATUS_MSGS::MANAGERNOTIFY"))

(in-package "ROS")
;;//! \htmlinclude ManagerNotify.msg.html


(defclass framework_status_msgs::ManagerNotify
  :super ros::object
  :slots (_message ))

(defmethod framework_status_msgs::ManagerNotify
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::ManagerNotify :md5sum-) "5f003d6bcc824cbd51361d66d8e4f76c")
(setf (get framework_status_msgs::ManagerNotify :datatype-) "framework_status_msgs/ManagerNotify")
(setf (get framework_status_msgs::ManagerNotify :definition-)
      "string message

")



(provide :framework_status_msgs/ManagerNotify "5f003d6bcc824cbd51361d66d8e4f76c")


