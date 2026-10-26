;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::TopicsV2)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'TopicsV2 (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::TOPICSV2")
  (make-package "RECORDER_SRVS::TOPICSV2"))
(unless (find-package "RECORDER_SRVS::TOPICSV2REQUEST")
  (make-package "RECORDER_SRVS::TOPICSV2REQUEST"))
(unless (find-package "RECORDER_SRVS::TOPICSV2RESPONSE")
  (make-package "RECORDER_SRVS::TOPICSV2RESPONSE"))

(in-package "ROS")

(if (not (find-package "RECORDER_MSGS"))
  (ros::roseus-add-msgs "recorder_msgs"))


(if (not (find-package "RECORDER_MSGS"))
  (ros::roseus-add-msgs "recorder_msgs"))


(defclass recorder_srvs::TopicsV2Request
  :super ros::object
  :slots (_set _image_topic_list _non_image_topic_list _latched_topic_list ))

(defmethod recorder_srvs::TopicsV2Request
  (:init
   (&key
    ((:set __set) nil)
    ((:image_topic_list __image_topic_list) ())
    ((:non_image_topic_list __non_image_topic_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:latched_topic_list __latched_topic_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _set __set)
   (setq _image_topic_list __image_topic_list)
   (setq _non_image_topic_list __non_image_topic_list)
   (setq _latched_topic_list __latched_topic_list)
   self)
  (:set
   (&optional (__set :null))
   (if (not (eq __set :null)) (setq _set __set)) _set)
  (:image_topic_list
   (&rest __image_topic_list)
   (if (keywordp (car __image_topic_list))
       (send* _image_topic_list __image_topic_list)
     (progn
       (if __image_topic_list (setq _image_topic_list (car __image_topic_list)))
       _image_topic_list)))
  (:non_image_topic_list
   (&optional __non_image_topic_list)
   (if __non_image_topic_list (setq _non_image_topic_list __non_image_topic_list)) _non_image_topic_list)
  (:latched_topic_list
   (&optional __latched_topic_list)
   (if __latched_topic_list (setq _latched_topic_list __latched_topic_list)) _latched_topic_list)
  (:serialization-length
   ()
   (+
    ;; bool _set
    1
    ;; recorder_msgs/ImageTopicConfig[] _image_topic_list
    (apply #'+ (send-all _image_topic_list :serialization-length)) 4
    ;; string[] _non_image_topic_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _non_image_topic_list)) 4
    ;; string[] _latched_topic_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _latched_topic_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set
       (if _set (write-byte -1 s) (write-byte 0 s))
     ;; recorder_msgs/ImageTopicConfig[] _image_topic_list
     (write-long (length _image_topic_list) s)
     (dolist (elem _image_topic_list)
       (send elem :serialize s)
       )
     ;; string[] _non_image_topic_list
     (write-long (length _non_image_topic_list) s)
     (dolist (elem _non_image_topic_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _latched_topic_list
     (write-long (length _latched_topic_list) s)
     (dolist (elem _latched_topic_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set
     (setq _set (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; recorder_msgs/ImageTopicConfig[] _image_topic_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_topic_list (let (r) (dotimes (i n) (push (instance recorder_msgs::ImageTopicConfig :init) r)) r))
     (dolist (elem- _image_topic_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _non_image_topic_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _non_image_topic_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _non_image_topic_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _latched_topic_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _latched_topic_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _latched_topic_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass recorder_srvs::TopicsV2Response
  :super ros::object
  :slots (_success _message _image_topic_list _non_image_topic_list _latched_topic_list ))

(defmethod recorder_srvs::TopicsV2Response
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:image_topic_list __image_topic_list) ())
    ((:non_image_topic_list __non_image_topic_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:latched_topic_list __latched_topic_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _image_topic_list __image_topic_list)
   (setq _non_image_topic_list __non_image_topic_list)
   (setq _latched_topic_list __latched_topic_list)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:image_topic_list
   (&rest __image_topic_list)
   (if (keywordp (car __image_topic_list))
       (send* _image_topic_list __image_topic_list)
     (progn
       (if __image_topic_list (setq _image_topic_list (car __image_topic_list)))
       _image_topic_list)))
  (:non_image_topic_list
   (&optional __non_image_topic_list)
   (if __non_image_topic_list (setq _non_image_topic_list __non_image_topic_list)) _non_image_topic_list)
  (:latched_topic_list
   (&optional __latched_topic_list)
   (if __latched_topic_list (setq _latched_topic_list __latched_topic_list)) _latched_topic_list)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; recorder_msgs/ImageTopicConfig[] _image_topic_list
    (apply #'+ (send-all _image_topic_list :serialization-length)) 4
    ;; string[] _non_image_topic_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _non_image_topic_list)) 4
    ;; string[] _latched_topic_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _latched_topic_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; recorder_msgs/ImageTopicConfig[] _image_topic_list
     (write-long (length _image_topic_list) s)
     (dolist (elem _image_topic_list)
       (send elem :serialize s)
       )
     ;; string[] _non_image_topic_list
     (write-long (length _non_image_topic_list) s)
     (dolist (elem _non_image_topic_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _latched_topic_list
     (write-long (length _latched_topic_list) s)
     (dolist (elem _latched_topic_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; recorder_msgs/ImageTopicConfig[] _image_topic_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_topic_list (let (r) (dotimes (i n) (push (instance recorder_msgs::ImageTopicConfig :init) r)) r))
     (dolist (elem- _image_topic_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _non_image_topic_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _non_image_topic_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _non_image_topic_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _latched_topic_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _latched_topic_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _latched_topic_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass recorder_srvs::TopicsV2
  :super ros::object
  :slots ())

(setf (get recorder_srvs::TopicsV2 :md5sum-) "286ac081385c5ace40f429d151709f9e")
(setf (get recorder_srvs::TopicsV2 :datatype-) "recorder_srvs/TopicsV2")
(setf (get recorder_srvs::TopicsV2 :request) recorder_srvs::TopicsV2Request)
(setf (get recorder_srvs::TopicsV2 :response) recorder_srvs::TopicsV2Response)

(defmethod recorder_srvs::TopicsV2Request
  (:response () (instance recorder_srvs::TopicsV2Response :init)))

(setf (get recorder_srvs::TopicsV2Request :md5sum-) "286ac081385c5ace40f429d151709f9e")
(setf (get recorder_srvs::TopicsV2Request :datatype-) "recorder_srvs/TopicsV2Request")
(setf (get recorder_srvs::TopicsV2Request :definition-)
      "bool set
recorder_msgs/ImageTopicConfig[] image_topic_list
string[] non_image_topic_list
string[] latched_topic_list

================================================================================
MSG: recorder_msgs/ImageTopicConfig
string[] base_topics
string in_transport
string in_suffix
string out_transport
string out_suffix
string out_params
---
bool success
string message
recorder_msgs/ImageTopicConfig[] image_topic_list
string[] non_image_topic_list
string[] latched_topic_list


================================================================================
MSG: recorder_msgs/ImageTopicConfig
string[] base_topics
string in_transport
string in_suffix
string out_transport
string out_suffix
string out_params
")

(setf (get recorder_srvs::TopicsV2Response :md5sum-) "286ac081385c5ace40f429d151709f9e")
(setf (get recorder_srvs::TopicsV2Response :datatype-) "recorder_srvs/TopicsV2Response")
(setf (get recorder_srvs::TopicsV2Response :definition-)
      "bool set
recorder_msgs/ImageTopicConfig[] image_topic_list
string[] non_image_topic_list
string[] latched_topic_list

================================================================================
MSG: recorder_msgs/ImageTopicConfig
string[] base_topics
string in_transport
string in_suffix
string out_transport
string out_suffix
string out_params
---
bool success
string message
recorder_msgs/ImageTopicConfig[] image_topic_list
string[] non_image_topic_list
string[] latched_topic_list


================================================================================
MSG: recorder_msgs/ImageTopicConfig
string[] base_topics
string in_transport
string in_suffix
string out_transport
string out_suffix
string out_params
")



(provide :recorder_srvs/TopicsV2 "286ac081385c5ace40f429d151709f9e")


