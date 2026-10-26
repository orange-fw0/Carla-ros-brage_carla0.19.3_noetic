;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::DiskListV3)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'DiskListV3 (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::DISKLISTV3")
  (make-package "RECORDER_SRVS::DISKLISTV3"))
(unless (find-package "RECORDER_SRVS::DISKLISTV3REQUEST")
  (make-package "RECORDER_SRVS::DISKLISTV3REQUEST"))
(unless (find-package "RECORDER_SRVS::DISKLISTV3RESPONSE")
  (make-package "RECORDER_SRVS::DISKLISTV3RESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::DiskListV3Request
  :super ros::object
  :slots ())

(defmethod recorder_srvs::DiskListV3Request
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

(defclass recorder_srvs::DiskListV3Response
  :super ros::object
  :slots (_sn _disk_type _status _space_size _space_used _driver _speed _availability ))

(defmethod recorder_srvs::DiskListV3Response
  (:init
   (&key
    ((:sn __sn) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:disk_type __disk_type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:status __status) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:space_size __space_size) (make-array 0 :initial-element 0 :element-type :integer))
    ((:space_used __space_used) (make-array 0 :initial-element 0 :element-type :integer))
    ((:driver __driver) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:speed __speed) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:availability __availability) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _sn __sn)
   (setq _disk_type __disk_type)
   (setq _status __status)
   (setq _space_size __space_size)
   (setq _space_used __space_used)
   (setq _driver __driver)
   (setq _speed __speed)
   (setq _availability __availability)
   self)
  (:sn
   (&optional __sn)
   (if __sn (setq _sn __sn)) _sn)
  (:disk_type
   (&optional __disk_type)
   (if __disk_type (setq _disk_type __disk_type)) _disk_type)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:space_size
   (&optional __space_size)
   (if __space_size (setq _space_size __space_size)) _space_size)
  (:space_used
   (&optional __space_used)
   (if __space_used (setq _space_used __space_used)) _space_used)
  (:driver
   (&optional __driver)
   (if __driver (setq _driver __driver)) _driver)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:availability
   (&optional __availability)
   (if __availability (setq _availability __availability)) _availability)
  (:serialization-length
   ()
   (+
    ;; string[] _sn
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _sn)) 4
    ;; string[] _disk_type
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _disk_type)) 4
    ;; string[] _status
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _status)) 4
    ;; int64[] _space_size
    (* 8    (length _space_size)) 4
    ;; int64[] _space_used
    (* 8    (length _space_used)) 4
    ;; string[] _driver
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _driver)) 4
    ;; string[] _speed
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _speed)) 4
    ;; int64[] _availability
    (* 8    (length _availability)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _sn
     (write-long (length _sn) s)
     (dolist (elem _sn)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _disk_type
     (write-long (length _disk_type) s)
     (dolist (elem _disk_type)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _status
     (write-long (length _status) s)
     (dolist (elem _status)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int64[] _space_size
     (write-long (length _space_size) s)
     (dotimes (i (length _space_size))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _space_size i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _space_size i)) (= (length ((elt _space_size i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _space_size i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _space_size i) . bv) 1) -1) s))
             ((and (class (elt _space_size i)) (= (length ((elt _space_size i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _space_size i) . bv) 0) s)
              (write-long (if (>= (elt _space_size i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _space_size i) s)(write-long (if (>= (elt _space_size i) 0) 0 #xffffffff) s)))
       )
     ;; int64[] _space_used
     (write-long (length _space_used) s)
     (dotimes (i (length _space_used))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _space_used i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _space_used i)) (= (length ((elt _space_used i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _space_used i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _space_used i) . bv) 1) -1) s))
             ((and (class (elt _space_used i)) (= (length ((elt _space_used i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _space_used i) . bv) 0) s)
              (write-long (if (>= (elt _space_used i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _space_used i) s)(write-long (if (>= (elt _space_used i) 0) 0 #xffffffff) s)))
       )
     ;; string[] _driver
     (write-long (length _driver) s)
     (dolist (elem _driver)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _speed
     (write-long (length _speed) s)
     (dolist (elem _speed)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int64[] _availability
     (write-long (length _availability) s)
     (dotimes (i (length _availability))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _availability i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _availability i)) (= (length ((elt _availability i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _availability i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _availability i) . bv) 1) -1) s))
             ((and (class (elt _availability i)) (= (length ((elt _availability i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _availability i) . bv) 0) s)
              (write-long (if (>= (elt _availability i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _availability i) s)(write-long (if (>= (elt _availability i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _sn
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sn (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _sn i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _disk_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _disk_type (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _disk_type i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _status i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int64[] _space_size
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _space_size (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _space_size i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _space_size i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; int64[] _space_used
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _space_used (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _space_used i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _space_used i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; string[] _driver
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _driver (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _driver i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _speed i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int64[] _availability
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _availability (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _availability i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _availability i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass recorder_srvs::DiskListV3
  :super ros::object
  :slots ())

(setf (get recorder_srvs::DiskListV3 :md5sum-) "1ed0a43cc763b6b3b747fffd64ea2b5d")
(setf (get recorder_srvs::DiskListV3 :datatype-) "recorder_srvs/DiskListV3")
(setf (get recorder_srvs::DiskListV3 :request) recorder_srvs::DiskListV3Request)
(setf (get recorder_srvs::DiskListV3 :response) recorder_srvs::DiskListV3Response)

(defmethod recorder_srvs::DiskListV3Request
  (:response () (instance recorder_srvs::DiskListV3Response :init)))

(setf (get recorder_srvs::DiskListV3Request :md5sum-) "1ed0a43cc763b6b3b747fffd64ea2b5d")
(setf (get recorder_srvs::DiskListV3Request :datatype-) "recorder_srvs/DiskListV3Request")
(setf (get recorder_srvs::DiskListV3Request :definition-)
      "---
string[] sn
string[] disk_type
string[] status
int64[] space_size # bytes
int64[] space_used # bytes
string[] driver
string[] speed
int64[] availability # percentage
")

(setf (get recorder_srvs::DiskListV3Response :md5sum-) "1ed0a43cc763b6b3b747fffd64ea2b5d")
(setf (get recorder_srvs::DiskListV3Response :datatype-) "recorder_srvs/DiskListV3Response")
(setf (get recorder_srvs::DiskListV3Response :definition-)
      "---
string[] sn
string[] disk_type
string[] status
int64[] space_size # bytes
int64[] space_used # bytes
string[] driver
string[] speed
int64[] availability # percentage
")



(provide :recorder_srvs/DiskListV3 "1ed0a43cc763b6b3b747fffd64ea2b5d")


