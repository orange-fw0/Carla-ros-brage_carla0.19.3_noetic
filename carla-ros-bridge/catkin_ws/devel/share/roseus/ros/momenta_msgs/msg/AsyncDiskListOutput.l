;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::AsyncDiskListOutput)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'AsyncDiskListOutput (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ASYNCDISKLISTOUTPUT")
  (make-package "MOMENTA_MSGS::ASYNCDISKLISTOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude AsyncDiskListOutput.msg.html


(defclass momenta_msgs::AsyncDiskListOutput
  :super ros::object
  :slots (_key_num _service_response _sn _disk_type _status _space_size _space_used ))

(defmethod momenta_msgs::AsyncDiskListOutput
  (:init
   (&key
    ((:key_num __key_num) 0)
    ((:service_response __service_response) nil)
    ((:sn __sn) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:disk_type __disk_type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:status __status) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:space_size __space_size) (make-array 0 :initial-element 0 :element-type :integer))
    ((:space_used __space_used) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _key_num (round __key_num))
   (setq _service_response __service_response)
   (setq _sn __sn)
   (setq _disk_type __disk_type)
   (setq _status __status)
   (setq _space_size __space_size)
   (setq _space_used __space_used)
   self)
  (:key_num
   (&optional __key_num)
   (if __key_num (setq _key_num __key_num)) _key_num)
  (:service_response
   (&optional (__service_response :null))
   (if (not (eq __service_response :null)) (setq _service_response __service_response)) _service_response)
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
    ;; int64 _key_num
    8
    ;; bool _service_response
    1
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

(setf (get momenta_msgs::AsyncDiskListOutput :md5sum-) "38b9a2693302e9bdd38fda18348c41eb")
(setf (get momenta_msgs::AsyncDiskListOutput :datatype-) "momenta_msgs/AsyncDiskListOutput")
(setf (get momenta_msgs::AsyncDiskListOutput :definition-)
      "int64 key_num
bool service_response
string[] sn
string[] disk_type
string[] status
int64[] space_size
int64[] space_used

")



(provide :momenta_msgs/AsyncDiskListOutput "38b9a2693302e9bdd38fda18348c41eb")


