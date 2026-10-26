;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::TopicInfo)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'TopicInfo (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::TOPICINFO")
  (make-package "RECORDER_MSGS::TOPICINFO"))

(in-package "ROS")
;;//! \htmlinclude TopicInfo.msg.html


(defclass recorder_msgs::TopicInfo
  :super ros::object
  :slots (_topic_name _topic_date_type _topic_message_cnt ))

(defmethod recorder_msgs::TopicInfo
  (:init
   (&key
    ((:topic_name __topic_name) "")
    ((:topic_date_type __topic_date_type) "")
    ((:topic_message_cnt __topic_message_cnt) 0)
    )
   (send-super :init)
   (setq _topic_name (string __topic_name))
   (setq _topic_date_type (string __topic_date_type))
   (setq _topic_message_cnt (round __topic_message_cnt))
   self)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:topic_date_type
   (&optional __topic_date_type)
   (if __topic_date_type (setq _topic_date_type __topic_date_type)) _topic_date_type)
  (:topic_message_cnt
   (&optional __topic_message_cnt)
   (if __topic_message_cnt (setq _topic_message_cnt __topic_message_cnt)) _topic_message_cnt)
  (:serialization-length
   ()
   (+
    ;; string _topic_name
    4 (length _topic_name)
    ;; string _topic_date_type
    4 (length _topic_date_type)
    ;; uint32 _topic_message_cnt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; string _topic_date_type
       (write-long (length _topic_date_type) s) (princ _topic_date_type s)
     ;; uint32 _topic_message_cnt
       (write-long _topic_message_cnt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _topic_date_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_date_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _topic_message_cnt
     (setq _topic_message_cnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get recorder_msgs::TopicInfo :md5sum-) "d57aeca1857eaf16f14c0fc2fcbaf5d1")
(setf (get recorder_msgs::TopicInfo :datatype-) "recorder_msgs/TopicInfo")
(setf (get recorder_msgs::TopicInfo :definition-)
      "string topic_name
string topic_date_type
uint32 topic_message_cnt
")



(provide :recorder_msgs/TopicInfo "d57aeca1857eaf16f14c0fc2fcbaf5d1")


