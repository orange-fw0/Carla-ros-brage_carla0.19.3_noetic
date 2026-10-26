;; Auto-generated. Do not edit!


(when (boundp 'recorder_msgs::BagInfo)
  (if (not (find-package "RECORDER_MSGS"))
    (make-package "RECORDER_MSGS"))
  (shadow 'BagInfo (find-package "RECORDER_MSGS")))
(unless (find-package "RECORDER_MSGS::BAGINFO")
  (make-package "RECORDER_MSGS::BAGINFO"))

(in-package "ROS")
;;//! \htmlinclude BagInfo.msg.html


(defclass recorder_msgs::BagInfo
  :super ros::object
  :slots (_index _filename _start_time _end_time _size _message_cnt _topic_name _topic_date_type _topic_message_cnt ))

(defmethod recorder_msgs::BagInfo
  (:init
   (&key
    ((:index __index) 0)
    ((:filename __filename) "")
    ((:start_time __start_time) 0.0)
    ((:end_time __end_time) 0.0)
    ((:size __size) 0)
    ((:message_cnt __message_cnt) 0)
    ((:topic_name __topic_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:topic_date_type __topic_date_type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:topic_message_cnt __topic_message_cnt) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _filename (string __filename))
   (setq _start_time (float __start_time))
   (setq _end_time (float __end_time))
   (setq _size (round __size))
   (setq _message_cnt (round __message_cnt))
   (setq _topic_name __topic_name)
   (setq _topic_date_type __topic_date_type)
   (setq _topic_message_cnt __topic_message_cnt)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:end_time
   (&optional __end_time)
   (if __end_time (setq _end_time __end_time)) _end_time)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:message_cnt
   (&optional __message_cnt)
   (if __message_cnt (setq _message_cnt __message_cnt)) _message_cnt)
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
    ;; uint32 _index
    4
    ;; string _filename
    4 (length _filename)
    ;; float64 _start_time
    8
    ;; float64 _end_time
    8
    ;; uint64 _size
    8
    ;; uint32 _message_cnt
    4
    ;; string[] _topic_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topic_name)) 4
    ;; string[] _topic_date_type
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topic_date_type)) 4
    ;; uint32[] _topic_message_cnt
    (* 4    (length _topic_message_cnt)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _index
       (write-long _index s)
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;; float64 _start_time
       (sys::poke _start_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_time
       (sys::poke _end_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint64 _size
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _size (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _size) (= (length (_size . bv)) 2)) ;; bignum
              (write-long (ash (elt (_size . bv) 0) 0) s)
              (write-long (ash (elt (_size . bv) 1) -1) s))
             ((and (class _size) (= (length (_size . bv)) 1)) ;; big1
              (write-long (elt (_size . bv) 0) s)
              (write-long (if (>= _size 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _size s)(write-long (if (>= _size 0) 0 #xffffffff) s)))
     ;; uint32 _message_cnt
       (write-long _message_cnt s)
     ;; string[] _topic_name
     (write-long (length _topic_name) s)
     (dolist (elem _topic_name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _topic_date_type
     (write-long (length _topic_date_type) s)
     (dolist (elem _topic_date_type)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32[] _topic_message_cnt
     (write-long (length _topic_message_cnt) s)
     (dotimes (i (length _topic_message_cnt))
       (write-long (elt _topic_message_cnt i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _start_time
     (setq _start_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_time
     (setq _end_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint64 _size
     
#+(or :alpha :irix6 :x86_64)
      (setf _size (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _size (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _message_cnt
     (setq _message_cnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _topic_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topic_name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _topic_name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _topic_date_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topic_date_type (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _topic_date_type i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint32[] _topic_message_cnt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topic_message_cnt (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _topic_message_cnt i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get recorder_msgs::BagInfo :md5sum-) "7f13529155e16c696c2fd4cf7f1997c7")
(setf (get recorder_msgs::BagInfo :datatype-) "recorder_msgs/BagInfo")
(setf (get recorder_msgs::BagInfo :definition-)
      "uint32 index
string filename
float64 start_time
float64 end_time
uint64 size
uint32 message_cnt
string[] topic_name
string[] topic_date_type
uint32[] topic_message_cnt


")



(provide :recorder_msgs/BagInfo "7f13529155e16c696c2fd4cf7f1997c7")


