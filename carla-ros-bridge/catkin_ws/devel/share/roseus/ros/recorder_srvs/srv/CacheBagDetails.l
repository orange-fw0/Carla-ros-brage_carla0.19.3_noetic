;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::CacheBagDetails)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'CacheBagDetails (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::CACHEBAGDETAILS")
  (make-package "RECORDER_SRVS::CACHEBAGDETAILS"))
(unless (find-package "RECORDER_SRVS::CACHEBAGDETAILSREQUEST")
  (make-package "RECORDER_SRVS::CACHEBAGDETAILSREQUEST"))
(unless (find-package "RECORDER_SRVS::CACHEBAGDETAILSRESPONSE")
  (make-package "RECORDER_SRVS::CACHEBAGDETAILSRESPONSE"))

(in-package "ROS")



(if (not (find-package "RECORDER_MSGS"))
  (ros::roseus-add-msgs "recorder_msgs"))


(defclass recorder_srvs::CacheBagDetailsRequest
  :super ros::object
  :slots (_since _until ))

(defmethod recorder_srvs::CacheBagDetailsRequest
  (:init
   (&key
    ((:since __since) (instance ros::time :init))
    ((:until __until) (instance ros::time :init))
    )
   (send-super :init)
   (setq _since __since)
   (setq _until __until)
   self)
  (:since
   (&optional __since)
   (if __since (setq _since __since)) _since)
  (:until
   (&optional __until)
   (if __until (setq _until __until)) _until)
  (:serialization-length
   ()
   (+
    ;; time _since
    8
    ;; time _until
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _since
       (write-long (send _since :sec) s) (write-long (send _since :nsec) s)
     ;; time _until
       (write-long (send _until :sec) s) (write-long (send _until :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _since
     (send _since :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _since :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _until
     (send _until :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _until :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass recorder_srvs::CacheBagDetailsResponse
  :super ros::object
  :slots (_success _message _bags_info _start_time _end_time _duration _topics_info ))

(defmethod recorder_srvs::CacheBagDetailsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:bags_info __bags_info) ())
    ((:start_time __start_time) 0.0)
    ((:end_time __end_time) 0.0)
    ((:duration __duration) 0.0)
    ((:topics_info __topics_info) ())
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _bags_info __bags_info)
   (setq _start_time (float __start_time))
   (setq _end_time (float __end_time))
   (setq _duration (float __duration))
   (setq _topics_info __topics_info)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:bags_info
   (&rest __bags_info)
   (if (keywordp (car __bags_info))
       (send* _bags_info __bags_info)
     (progn
       (if __bags_info (setq _bags_info (car __bags_info)))
       _bags_info)))
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:end_time
   (&optional __end_time)
   (if __end_time (setq _end_time __end_time)) _end_time)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:topics_info
   (&rest __topics_info)
   (if (keywordp (car __topics_info))
       (send* _topics_info __topics_info)
     (progn
       (if __topics_info (setq _topics_info (car __topics_info)))
       _topics_info)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; recorder_msgs/BagInfo[] _bags_info
    (apply #'+ (send-all _bags_info :serialization-length)) 4
    ;; float64 _start_time
    8
    ;; float64 _end_time
    8
    ;; float64 _duration
    8
    ;; recorder_msgs/TopicInfo[] _topics_info
    (apply #'+ (send-all _topics_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; recorder_msgs/BagInfo[] _bags_info
     (write-long (length _bags_info) s)
     (dolist (elem _bags_info)
       (send elem :serialize s)
       )
     ;; float64 _start_time
       (sys::poke _start_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_time
       (sys::poke _end_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; recorder_msgs/TopicInfo[] _topics_info
     (write-long (length _topics_info) s)
     (dolist (elem _topics_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; recorder_msgs/BagInfo[] _bags_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bags_info (let (r) (dotimes (i n) (push (instance recorder_msgs::BagInfo :init) r)) r))
     (dolist (elem- _bags_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _start_time
     (setq _start_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_time
     (setq _end_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; recorder_msgs/TopicInfo[] _topics_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topics_info (let (r) (dotimes (i n) (push (instance recorder_msgs::TopicInfo :init) r)) r))
     (dolist (elem- _topics_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass recorder_srvs::CacheBagDetails
  :super ros::object
  :slots ())

(setf (get recorder_srvs::CacheBagDetails :md5sum-) "f5f1198d0d264dd461d59b1d040ba963")
(setf (get recorder_srvs::CacheBagDetails :datatype-) "recorder_srvs/CacheBagDetails")
(setf (get recorder_srvs::CacheBagDetails :request) recorder_srvs::CacheBagDetailsRequest)
(setf (get recorder_srvs::CacheBagDetails :response) recorder_srvs::CacheBagDetailsResponse)

(defmethod recorder_srvs::CacheBagDetailsRequest
  (:response () (instance recorder_srvs::CacheBagDetailsResponse :init)))

(setf (get recorder_srvs::CacheBagDetailsRequest :md5sum-) "f5f1198d0d264dd461d59b1d040ba963")
(setf (get recorder_srvs::CacheBagDetailsRequest :datatype-) "recorder_srvs/CacheBagDetailsRequest")
(setf (get recorder_srvs::CacheBagDetailsRequest :definition-)
      "time since
time until
---
bool success
string message
recorder_msgs/BagInfo[] bags_info
float64 start_time
float64 end_time
float64 duration
recorder_msgs/TopicInfo[] topics_info

================================================================================
MSG: recorder_msgs/BagInfo
uint32 index
string filename
float64 start_time
float64 end_time
uint64 size
uint32 message_cnt
string[] topic_name
string[] topic_date_type
uint32[] topic_message_cnt


================================================================================
MSG: recorder_msgs/TopicInfo
string topic_name
string topic_date_type
")

(setf (get recorder_srvs::CacheBagDetailsResponse :md5sum-) "f5f1198d0d264dd461d59b1d040ba963")
(setf (get recorder_srvs::CacheBagDetailsResponse :datatype-) "recorder_srvs/CacheBagDetailsResponse")
(setf (get recorder_srvs::CacheBagDetailsResponse :definition-)
      "time since
time until
---
bool success
string message
recorder_msgs/BagInfo[] bags_info
float64 start_time
float64 end_time
float64 duration
recorder_msgs/TopicInfo[] topics_info

================================================================================
MSG: recorder_msgs/BagInfo
uint32 index
string filename
float64 start_time
float64 end_time
uint64 size
uint32 message_cnt
string[] topic_name
string[] topic_date_type
uint32[] topic_message_cnt


================================================================================
MSG: recorder_msgs/TopicInfo
string topic_name
string topic_date_type
")



(provide :recorder_srvs/CacheBagDetails "f5f1198d0d264dd461d59b1d040ba963")


