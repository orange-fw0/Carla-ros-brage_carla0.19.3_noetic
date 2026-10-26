;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::ImageTopicConfig)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'ImageTopicConfig (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::IMAGETOPICCONFIG")
  (make-package "RECORDER_MSGS::IMAGETOPICCONFIG"))

(in-package "ROS")
;;//! \htmlinclude ImageTopicConfig.msg.html


(defclass recorder_msgs::ImageTopicConfig
  :super ros::object
  :slots (_base_topics _in_transport _in_suffix _out_transport _out_suffix _out_params ))

(defmethod recorder_msgs::ImageTopicConfig
  (:init
   (&key
    ((:base_topics __base_topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:in_transport __in_transport) "")
    ((:in_suffix __in_suffix) "")
    ((:out_transport __out_transport) "")
    ((:out_suffix __out_suffix) "")
    ((:out_params __out_params) "")
    )
   (send-super :init)
   (setq _base_topics __base_topics)
   (setq _in_transport (string __in_transport))
   (setq _in_suffix (string __in_suffix))
   (setq _out_transport (string __out_transport))
   (setq _out_suffix (string __out_suffix))
   (setq _out_params (string __out_params))
   self)
  (:base_topics
   (&optional __base_topics)
   (if __base_topics (setq _base_topics __base_topics)) _base_topics)
  (:in_transport
   (&optional __in_transport)
   (if __in_transport (setq _in_transport __in_transport)) _in_transport)
  (:in_suffix
   (&optional __in_suffix)
   (if __in_suffix (setq _in_suffix __in_suffix)) _in_suffix)
  (:out_transport
   (&optional __out_transport)
   (if __out_transport (setq _out_transport __out_transport)) _out_transport)
  (:out_suffix
   (&optional __out_suffix)
   (if __out_suffix (setq _out_suffix __out_suffix)) _out_suffix)
  (:out_params
   (&optional __out_params)
   (if __out_params (setq _out_params __out_params)) _out_params)
  (:serialization-length
   ()
   (+
    ;; string[] _base_topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _base_topics)) 4
    ;; string _in_transport
    4 (length _in_transport)
    ;; string _in_suffix
    4 (length _in_suffix)
    ;; string _out_transport
    4 (length _out_transport)
    ;; string _out_suffix
    4 (length _out_suffix)
    ;; string _out_params
    4 (length _out_params)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _base_topics
     (write-long (length _base_topics) s)
     (dolist (elem _base_topics)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _in_transport
       (write-long (length _in_transport) s) (princ _in_transport s)
     ;; string _in_suffix
       (write-long (length _in_suffix) s) (princ _in_suffix s)
     ;; string _out_transport
       (write-long (length _out_transport) s) (princ _out_transport s)
     ;; string _out_suffix
       (write-long (length _out_suffix) s) (princ _out_suffix s)
     ;; string _out_params
       (write-long (length _out_params) s) (princ _out_params s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _base_topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _base_topics (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _base_topics i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _in_transport
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _in_transport (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _in_suffix
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _in_suffix (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _out_transport
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _out_transport (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _out_suffix
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _out_suffix (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _out_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _out_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get recorder_msgs::ImageTopicConfig :md5sum-) "012b848787541c6ee8f6c96e1e8a1d52")
(setf (get recorder_msgs::ImageTopicConfig :datatype-) "recorder_msgs/ImageTopicConfig")
(setf (get recorder_msgs::ImageTopicConfig :definition-)
      "string[] base_topics
string in_transport
string in_suffix
string out_transport
string out_suffix
string out_params

")



(provide :recorder_msgs/ImageTopicConfig "012b848787541c6ee8f6c96e1e8a1d52")


