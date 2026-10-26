;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::TopicIsCheck)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'TopicIsCheck (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::TOPICISCHECK")
  (make-package "MOMENTA_MSGS::TOPICISCHECK"))
(unless (find-package "MOMENTA_MSGS::TOPICISCHECKREQUEST")
  (make-package "MOMENTA_MSGS::TOPICISCHECKREQUEST"))
(unless (find-package "MOMENTA_MSGS::TOPICISCHECKRESPONSE")
  (make-package "MOMENTA_MSGS::TOPICISCHECKRESPONSE"))

(in-package "ROS")





(defclass momenta_msgs::TopicIsCheckRequest
  :super ros::object
  :slots (_topic_name _is_check ))

(defmethod momenta_msgs::TopicIsCheckRequest
  (:init
   (&key
    ((:topic_name __topic_name) "")
    ((:is_check __is_check) nil)
    )
   (send-super :init)
   (setq _topic_name (string __topic_name))
   (setq _is_check __is_check)
   self)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:is_check
   (&optional (__is_check :null))
   (if (not (eq __is_check :null)) (setq _is_check __is_check)) _is_check)
  (:serialization-length
   ()
   (+
    ;; string _topic_name
    4 (length _topic_name)
    ;; bool _is_check
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; bool _is_check
       (if _is_check (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_check
     (setq _is_check (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass momenta_msgs::TopicIsCheckResponse
  :super ros::object
  :slots (_success ))

(defmethod momenta_msgs::TopicIsCheckResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass momenta_msgs::TopicIsCheck
  :super ros::object
  :slots ())

(setf (get momenta_msgs::TopicIsCheck :md5sum-) "908ae21036f996586c2f824d2c3764ad")
(setf (get momenta_msgs::TopicIsCheck :datatype-) "momenta_msgs/TopicIsCheck")
(setf (get momenta_msgs::TopicIsCheck :request) momenta_msgs::TopicIsCheckRequest)
(setf (get momenta_msgs::TopicIsCheck :response) momenta_msgs::TopicIsCheckResponse)

(defmethod momenta_msgs::TopicIsCheckRequest
  (:response () (instance momenta_msgs::TopicIsCheckResponse :init)))

(setf (get momenta_msgs::TopicIsCheckRequest :md5sum-) "908ae21036f996586c2f824d2c3764ad")
(setf (get momenta_msgs::TopicIsCheckRequest :datatype-) "momenta_msgs/TopicIsCheckRequest")
(setf (get momenta_msgs::TopicIsCheckRequest :definition-)
      "string topic_name
bool is_check
---
bool success

")

(setf (get momenta_msgs::TopicIsCheckResponse :md5sum-) "908ae21036f996586c2f824d2c3764ad")
(setf (get momenta_msgs::TopicIsCheckResponse :datatype-) "momenta_msgs/TopicIsCheckResponse")
(setf (get momenta_msgs::TopicIsCheckResponse :definition-)
      "string topic_name
bool is_check
---
bool success

")



(provide :momenta_msgs/TopicIsCheck "908ae21036f996586c2f824d2c3764ad")


