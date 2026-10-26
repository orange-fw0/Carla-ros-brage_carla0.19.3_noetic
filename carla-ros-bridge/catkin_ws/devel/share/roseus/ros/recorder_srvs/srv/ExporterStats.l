;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::ExporterStats)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'ExporterStats (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::EXPORTERSTATS")
  (make-package "RECORDER_SRVS::EXPORTERSTATS"))
(unless (find-package "RECORDER_SRVS::EXPORTERSTATSREQUEST")
  (make-package "RECORDER_SRVS::EXPORTERSTATSREQUEST"))
(unless (find-package "RECORDER_SRVS::EXPORTERSTATSRESPONSE")
  (make-package "RECORDER_SRVS::EXPORTERSTATSRESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::ExporterStatsRequest
  :super ros::object
  :slots ())

(defmethod recorder_srvs::ExporterStatsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass recorder_srvs::ExporterStatsResponse
  :super ros::object
  :slots (_success _message _export_running _export_disk_recording _error_msg _processed_time _reporting_size _reported_size _reading_capacity _read_capacity _writing_capacity _written_capacity _request_items _enqueued_items _exporting_items _exported_items ))

(defmethod recorder_srvs::ExporterStatsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:export_running __export_running) nil)
    ((:export_disk_recording __export_disk_recording) nil)
    ((:error_msg __error_msg) "")
    ((:processed_time __processed_time) (instance ros::time :init))
    ((:reporting_size __reporting_size) 0)
    ((:reported_size __reported_size) 0)
    ((:reading_capacity __reading_capacity) 0)
    ((:read_capacity __read_capacity) 0)
    ((:writing_capacity __writing_capacity) 0)
    ((:written_capacity __written_capacity) 0)
    ((:request_items __request_items) 0)
    ((:enqueued_items __enqueued_items) 0)
    ((:exporting_items __exporting_items) 0)
    ((:exported_items __exported_items) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _export_running __export_running)
   (setq _export_disk_recording __export_disk_recording)
   (setq _error_msg (string __error_msg))
   (setq _processed_time __processed_time)
   (setq _reporting_size (round __reporting_size))
   (setq _reported_size (round __reported_size))
   (setq _reading_capacity (round __reading_capacity))
   (setq _read_capacity (round __read_capacity))
   (setq _writing_capacity (round __writing_capacity))
   (setq _written_capacity (round __written_capacity))
   (setq _request_items (round __request_items))
   (setq _enqueued_items (round __enqueued_items))
   (setq _exporting_items (round __exporting_items))
   (setq _exported_items (round __exported_items))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:export_running
   (&optional (__export_running :null))
   (if (not (eq __export_running :null)) (setq _export_running __export_running)) _export_running)
  (:export_disk_recording
   (&optional (__export_disk_recording :null))
   (if (not (eq __export_disk_recording :null)) (setq _export_disk_recording __export_disk_recording)) _export_disk_recording)
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:processed_time
   (&optional __processed_time)
   (if __processed_time (setq _processed_time __processed_time)) _processed_time)
  (:reporting_size
   (&optional __reporting_size)
   (if __reporting_size (setq _reporting_size __reporting_size)) _reporting_size)
  (:reported_size
   (&optional __reported_size)
   (if __reported_size (setq _reported_size __reported_size)) _reported_size)
  (:reading_capacity
   (&optional __reading_capacity)
   (if __reading_capacity (setq _reading_capacity __reading_capacity)) _reading_capacity)
  (:read_capacity
   (&optional __read_capacity)
   (if __read_capacity (setq _read_capacity __read_capacity)) _read_capacity)
  (:writing_capacity
   (&optional __writing_capacity)
   (if __writing_capacity (setq _writing_capacity __writing_capacity)) _writing_capacity)
  (:written_capacity
   (&optional __written_capacity)
   (if __written_capacity (setq _written_capacity __written_capacity)) _written_capacity)
  (:request_items
   (&optional __request_items)
   (if __request_items (setq _request_items __request_items)) _request_items)
  (:enqueued_items
   (&optional __enqueued_items)
   (if __enqueued_items (setq _enqueued_items __enqueued_items)) _enqueued_items)
  (:exporting_items
   (&optional __exporting_items)
   (if __exporting_items (setq _exporting_items __exporting_items)) _exporting_items)
  (:exported_items
   (&optional __exported_items)
   (if __exported_items (setq _exported_items __exported_items)) _exported_items)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; bool _export_running
    1
    ;; bool _export_disk_recording
    1
    ;; string _error_msg
    4 (length _error_msg)
    ;; time _processed_time
    8
    ;; uint32 _reporting_size
    4
    ;; uint32 _reported_size
    4
    ;; uint64 _reading_capacity
    8
    ;; uint64 _read_capacity
    8
    ;; uint64 _writing_capacity
    8
    ;; uint64 _written_capacity
    8
    ;; uint32 _request_items
    4
    ;; uint32 _enqueued_items
    4
    ;; uint32 _exporting_items
    4
    ;; uint32 _exported_items
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _export_running
       (if _export_running (write-byte -1 s) (write-byte 0 s))
     ;; bool _export_disk_recording
       (if _export_disk_recording (write-byte -1 s) (write-byte 0 s))
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;; time _processed_time
       (write-long (send _processed_time :sec) s) (write-long (send _processed_time :nsec) s)
     ;; uint32 _reporting_size
       (write-long _reporting_size s)
     ;; uint32 _reported_size
       (write-long _reported_size s)
     ;; uint64 _reading_capacity
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _reading_capacity (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _reading_capacity) (= (length (_reading_capacity . bv)) 2)) ;; bignum
              (write-long (ash (elt (_reading_capacity . bv) 0) 0) s)
              (write-long (ash (elt (_reading_capacity . bv) 1) -1) s))
             ((and (class _reading_capacity) (= (length (_reading_capacity . bv)) 1)) ;; big1
              (write-long (elt (_reading_capacity . bv) 0) s)
              (write-long (if (>= _reading_capacity 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _reading_capacity s)(write-long (if (>= _reading_capacity 0) 0 #xffffffff) s)))
     ;; uint64 _read_capacity
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _read_capacity (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _read_capacity) (= (length (_read_capacity . bv)) 2)) ;; bignum
              (write-long (ash (elt (_read_capacity . bv) 0) 0) s)
              (write-long (ash (elt (_read_capacity . bv) 1) -1) s))
             ((and (class _read_capacity) (= (length (_read_capacity . bv)) 1)) ;; big1
              (write-long (elt (_read_capacity . bv) 0) s)
              (write-long (if (>= _read_capacity 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _read_capacity s)(write-long (if (>= _read_capacity 0) 0 #xffffffff) s)))
     ;; uint64 _writing_capacity
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _writing_capacity (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _writing_capacity) (= (length (_writing_capacity . bv)) 2)) ;; bignum
              (write-long (ash (elt (_writing_capacity . bv) 0) 0) s)
              (write-long (ash (elt (_writing_capacity . bv) 1) -1) s))
             ((and (class _writing_capacity) (= (length (_writing_capacity . bv)) 1)) ;; big1
              (write-long (elt (_writing_capacity . bv) 0) s)
              (write-long (if (>= _writing_capacity 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _writing_capacity s)(write-long (if (>= _writing_capacity 0) 0 #xffffffff) s)))
     ;; uint64 _written_capacity
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _written_capacity (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _written_capacity) (= (length (_written_capacity . bv)) 2)) ;; bignum
              (write-long (ash (elt (_written_capacity . bv) 0) 0) s)
              (write-long (ash (elt (_written_capacity . bv) 1) -1) s))
             ((and (class _written_capacity) (= (length (_written_capacity . bv)) 1)) ;; big1
              (write-long (elt (_written_capacity . bv) 0) s)
              (write-long (if (>= _written_capacity 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _written_capacity s)(write-long (if (>= _written_capacity 0) 0 #xffffffff) s)))
     ;; uint32 _request_items
       (write-long _request_items s)
     ;; uint32 _enqueued_items
       (write-long _enqueued_items s)
     ;; uint32 _exporting_items
       (write-long _exporting_items s)
     ;; uint32 _exported_items
       (write-long _exported_items s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _export_running
     (setq _export_running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _export_disk_recording
     (setq _export_disk_recording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _processed_time
     (send _processed_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _processed_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reporting_size
     (setq _reporting_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reported_size
     (setq _reported_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _reading_capacity
     
#+(or :alpha :irix6 :x86_64)
      (setf _reading_capacity (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _reading_capacity (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _read_capacity
     
#+(or :alpha :irix6 :x86_64)
      (setf _read_capacity (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _read_capacity (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _writing_capacity
     
#+(or :alpha :irix6 :x86_64)
      (setf _writing_capacity (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _writing_capacity (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _written_capacity
     
#+(or :alpha :irix6 :x86_64)
      (setf _written_capacity (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _written_capacity (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _request_items
     (setq _request_items (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _enqueued_items
     (setq _enqueued_items (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _exporting_items
     (setq _exporting_items (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _exported_items
     (setq _exported_items (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass recorder_srvs::ExporterStats
  :super ros::object
  :slots ())

(setf (get recorder_srvs::ExporterStats :md5sum-) "111f10718e56a34dd9ce0e4e2ba876fa")
(setf (get recorder_srvs::ExporterStats :datatype-) "recorder_srvs/ExporterStats")
(setf (get recorder_srvs::ExporterStats :request) recorder_srvs::ExporterStatsRequest)
(setf (get recorder_srvs::ExporterStats :response) recorder_srvs::ExporterStatsResponse)

(defmethod recorder_srvs::ExporterStatsRequest
  (:response () (instance recorder_srvs::ExporterStatsResponse :init)))

(setf (get recorder_srvs::ExporterStatsRequest :md5sum-) "111f10718e56a34dd9ce0e4e2ba876fa")
(setf (get recorder_srvs::ExporterStatsRequest :datatype-) "recorder_srvs/ExporterStatsRequest")
(setf (get recorder_srvs::ExporterStatsRequest :definition-)
      "---
bool success
string message
bool export_running
bool export_disk_recording
string error_msg
time processed_time
uint32 reporting_size
uint32 reported_size
uint64 reading_capacity
uint64 read_capacity
uint64 writing_capacity
uint64 written_capacity
uint32 request_items
uint32 enqueued_items
uint32 exporting_items
uint32 exported_items

")

(setf (get recorder_srvs::ExporterStatsResponse :md5sum-) "111f10718e56a34dd9ce0e4e2ba876fa")
(setf (get recorder_srvs::ExporterStatsResponse :datatype-) "recorder_srvs/ExporterStatsResponse")
(setf (get recorder_srvs::ExporterStatsResponse :definition-)
      "---
bool success
string message
bool export_running
bool export_disk_recording
string error_msg
time processed_time
uint32 reporting_size
uint32 reported_size
uint64 reading_capacity
uint64 read_capacity
uint64 writing_capacity
uint64 written_capacity
uint32 request_items
uint32 enqueued_items
uint32 exporting_items
uint32 exported_items

")



(provide :recorder_srvs/ExporterStats "111f10718e56a34dd9ce0e4e2ba876fa")


