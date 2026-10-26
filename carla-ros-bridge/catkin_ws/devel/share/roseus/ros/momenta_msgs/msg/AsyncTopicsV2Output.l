;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::AsyncTopicsV2Output)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'AsyncTopicsV2Output (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ASYNCTOPICSV2OUTPUT")
  (make-package "MOMENTA_MSGS::ASYNCTOPICSV2OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude AsyncTopicsV2Output.msg.html
(if (not (find-package "RECORDER_MSGS"))
  (ros::roseus-add-msgs "recorder_msgs"))


(defclass momenta_msgs::AsyncTopicsV2Output
  :super ros::object
  :slots (_key_num _service_response _success _message _image_topic_list _non_image_topic_list _latched_topic_list ))

(defmethod momenta_msgs::AsyncTopicsV2Output
  (:init
   (&key
    ((:key_num __key_num) 0)
    ((:service_response __service_response) nil)
    ((:success __success) nil)
    ((:message __message) "")
    ((:image_topic_list __image_topic_list) ())
    ((:non_image_topic_list __non_image_topic_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:latched_topic_list __latched_topic_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _key_num (round __key_num))
   (setq _service_response __service_response)
   (setq _success __success)
   (setq _message (string __message))
   (setq _image_topic_list __image_topic_list)
   (setq _non_image_topic_list __non_image_topic_list)
   (setq _latched_topic_list __latched_topic_list)
   self)
  (:key_num
   (&optional __key_num)
   (if __key_num (setq _key_num __key_num)) _key_num)
  (:service_response
   (&optional (__service_response :null))
   (if (not (eq __service_response :null)) (setq _service_response __service_response)) _service_response)
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
    ;; int64 _key_num
    8
    ;; bool _service_response
    1
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
     ;; int64 _key_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _key_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _key_num) (= (length (_key_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_key_num . bv) 0) 0) s)
              (write-long (ash (elt (_key_num . bv) 1) -1) s))
             ((and (class _key_num) (= (length (_key_num . bv)) 1)) ;; big1
              (write-long (elt (_key_num . bv) 0) s)
              (write-long (if (>= _key_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _key_num s)(write-long (if (>= _key_num 0) 0 #xffffffff) s)))
     ;; bool _service_response
       (if _service_response (write-byte -1 s) (write-byte 0 s))
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
   ;; int64 _key_num
#+(or :alpha :irix6 :x86_64)
      (setf _key_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _key_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _service_response
     (setq _service_response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(setf (get momenta_msgs::AsyncTopicsV2Output :md5sum-) "657b5cddefbc6daddd8d9131c2deeeb0")
(setf (get momenta_msgs::AsyncTopicsV2Output :datatype-) "momenta_msgs/AsyncTopicsV2Output")
(setf (get momenta_msgs::AsyncTopicsV2Output :definition-)
      "int64 key_num
bool service_response
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



(provide :momenta_msgs/AsyncTopicsV2Output "657b5cddefbc6daddd8d9131c2deeeb0")


