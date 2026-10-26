;; Auto-generated. Do not edit!


(when (boundp 'recorder_srvs::DiskListV2)
  (if (not (find-package "RECORDER_SRVS"))
    (make-package "RECORDER_SRVS"))
  (shadow 'DiskListV2 (find-package "RECORDER_SRVS")))
(unless (find-package "RECORDER_SRVS::DISKLISTV2")
  (make-package "RECORDER_SRVS::DISKLISTV2"))
(unless (find-package "RECORDER_SRVS::DISKLISTV2REQUEST")
  (make-package "RECORDER_SRVS::DISKLISTV2REQUEST"))
(unless (find-package "RECORDER_SRVS::DISKLISTV2RESPONSE")
  (make-package "RECORDER_SRVS::DISKLISTV2RESPONSE"))

(in-package "ROS")





(defclass recorder_srvs::DiskListV2Request
  :super ros::object
  :slots ())

(defmethod recorder_srvs::DiskListV2Request
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

(defclass recorder_srvs::DiskListV2Response
  :super ros::object
  :slots (_sn _disk_type _status _space_size _space_used ))

(defmethod recorder_srvs::DiskListV2Response
  (:init
   (&key
    ((:sn __sn) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:disk_type __disk_type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:status __status) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:space_size __space_size) (make-array 0 :initial-element 0 :element-type :integer))
    ((:space_used __space_used) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _sn __sn)
   (setq _disk_type __disk_type)
   (setq _status __status)
   (setq _space_size __space_size)
   (setq _space_used __space_used)
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
   ;;
   self)
  )

(defclass recorder_srvs::DiskListV2
  :super ros::object
  :slots ())

(setf (get recorder_srvs::DiskListV2 :md5sum-) "cea5615780f36a0fa62f6ee15f1aeb6b")
(setf (get recorder_srvs::DiskListV2 :datatype-) "recorder_srvs/DiskListV2")
(setf (get recorder_srvs::DiskListV2 :request) recorder_srvs::DiskListV2Request)
(setf (get recorder_srvs::DiskListV2 :response) recorder_srvs::DiskListV2Response)

(defmethod recorder_srvs::DiskListV2Request
  (:response () (instance recorder_srvs::DiskListV2Response :init)))

(setf (get recorder_srvs::DiskListV2Request :md5sum-) "cea5615780f36a0fa62f6ee15f1aeb6b")
(setf (get recorder_srvs::DiskListV2Request :datatype-) "recorder_srvs/DiskListV2Request")
(setf (get recorder_srvs::DiskListV2Request :definition-)
      "---
string[] sn
string[] disk_type
string[] status
int64[] space_size # bytes
int64[] space_used # bytes

")

(setf (get recorder_srvs::DiskListV2Response :md5sum-) "cea5615780f36a0fa62f6ee15f1aeb6b")
(setf (get recorder_srvs::DiskListV2Response :datatype-) "recorder_srvs/DiskListV2Response")
(setf (get recorder_srvs::DiskListV2Response :definition-)
      "---
string[] sn
string[] disk_type
string[] status
int64[] space_size # bytes
int64[] space_used # bytes

")



(provide :recorder_srvs/DiskListV2 "cea5615780f36a0fa62f6ee15f1aeb6b")


