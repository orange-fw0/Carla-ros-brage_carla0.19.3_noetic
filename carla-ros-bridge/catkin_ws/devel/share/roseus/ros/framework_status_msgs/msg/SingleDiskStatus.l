;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::SingleDiskStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'SingleDiskStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::SINGLEDISKSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::SINGLEDISKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SingleDiskStatus.msg.html


(defclass framework_status_msgs::SingleDiskStatus
  :super ros::object
  :slots (_sn _disk_type _status _space_size _space_used _driver _speed _availability _reserved_info ))

(defmethod framework_status_msgs::SingleDiskStatus
  (:init
   (&key
    ((:sn __sn) "")
    ((:disk_type __disk_type) "")
    ((:status __status) "")
    ((:space_size __space_size) 0)
    ((:space_used __space_used) 0)
    ((:driver __driver) "")
    ((:speed __speed) "")
    ((:availability __availability) 0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _sn (string __sn))
   (setq _disk_type (string __disk_type))
   (setq _status (string __status))
   (setq _space_size (round __space_size))
   (setq _space_used (round __space_used))
   (setq _driver (string __driver))
   (setq _speed (string __speed))
   (setq _availability (round __availability))
   (setq _reserved_info (string __reserved_info))
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
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; string _sn
    4 (length _sn)
    ;; string _disk_type
    4 (length _disk_type)
    ;; string _status
    4 (length _status)
    ;; uint64 _space_size
    8
    ;; uint64 _space_used
    8
    ;; string _driver
    4 (length _driver)
    ;; string _speed
    4 (length _speed)
    ;; int64 _availability
    8
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sn
       (write-long (length _sn) s) (princ _sn s)
     ;; string _disk_type
       (write-long (length _disk_type) s) (princ _disk_type s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; uint64 _space_size
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _space_size (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _space_size) (= (length (_space_size . bv)) 2)) ;; bignum
              (write-long (ash (elt (_space_size . bv) 0) 0) s)
              (write-long (ash (elt (_space_size . bv) 1) -1) s))
             ((and (class _space_size) (= (length (_space_size . bv)) 1)) ;; big1
              (write-long (elt (_space_size . bv) 0) s)
              (write-long (if (>= _space_size 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _space_size s)(write-long (if (>= _space_size 0) 0 #xffffffff) s)))
     ;; uint64 _space_used
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _space_used (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _space_used) (= (length (_space_used . bv)) 2)) ;; bignum
              (write-long (ash (elt (_space_used . bv) 0) 0) s)
              (write-long (ash (elt (_space_used . bv) 1) -1) s))
             ((and (class _space_used) (= (length (_space_used . bv)) 1)) ;; big1
              (write-long (elt (_space_used . bv) 0) s)
              (write-long (if (>= _space_used 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _space_used s)(write-long (if (>= _space_used 0) 0 #xffffffff) s)))
     ;; string _driver
       (write-long (length _driver) s) (princ _driver s)
     ;; string _speed
       (write-long (length _speed) s) (princ _speed s)
     ;; int64 _availability
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _availability (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _availability) (= (length (_availability . bv)) 2)) ;; bignum
              (write-long (ash (elt (_availability . bv) 0) 0) s)
              (write-long (ash (elt (_availability . bv) 1) -1) s))
             ((and (class _availability) (= (length (_availability . bv)) 1)) ;; big1
              (write-long (elt (_availability . bv) 0) s)
              (write-long (if (>= _availability 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _availability s)(write-long (if (>= _availability 0) 0 #xffffffff) s)))
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sn
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sn (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _disk_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _disk_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _space_size
     
#+(or :alpha :irix6 :x86_64)
      (setf _space_size (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _space_size (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _space_used
     
#+(or :alpha :irix6 :x86_64)
      (setf _space_used (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _space_used (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _driver
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _driver (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _speed
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speed (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _availability
#+(or :alpha :irix6 :x86_64)
      (setf _availability (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _availability (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::SingleDiskStatus :md5sum-) "f18eeaddb65692f0bd0c34f396a97cbe")
(setf (get framework_status_msgs::SingleDiskStatus :datatype-) "framework_status_msgs/SingleDiskStatus")
(setf (get framework_status_msgs::SingleDiskStatus :definition-)
      "string sn
string disk_type
string status
uint64 space_size
uint64 space_used
string driver
string speed
int64 availability
string reserved_info

")



(provide :framework_status_msgs/SingleDiskStatus "f18eeaddb65692f0bd0c34f396a97cbe")


