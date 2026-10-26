;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::AsyncExportDetailsV2Input)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'AsyncExportDetailsV2Input (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ASYNCEXPORTDETAILSV2INPUT")
  (make-package "MOMENTA_MSGS::ASYNCEXPORTDETAILSV2INPUT"))

(in-package "ROS")
;;//! \htmlinclude AsyncExportDetailsV2Input.msg.html


(defclass momenta_msgs::AsyncExportDetailsV2Input
  :super ros::object
  :slots (_key_num _collect_type _name _export_type _since _latest ))

(defmethod momenta_msgs::AsyncExportDetailsV2Input
  (:init
   (&key
    ((:key_num __key_num) 0)
    ((:collect_type __collect_type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:export_type __export_type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:since __since) 0)
    ((:latest __latest) 0)
    )
   (send-super :init)
   (setq _key_num (round __key_num))
   (setq _collect_type __collect_type)
   (setq _name __name)
   (setq _export_type __export_type)
   (setq _since (round __since))
   (setq _latest (round __latest))
   self)
  (:key_num
   (&optional __key_num)
   (if __key_num (setq _key_num __key_num)) _key_num)
  (:collect_type
   (&optional __collect_type)
   (if __collect_type (setq _collect_type __collect_type)) _collect_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:export_type
   (&optional __export_type)
   (if __export_type (setq _export_type __export_type)) _export_type)
  (:since
   (&optional __since)
   (if __since (setq _since __since)) _since)
  (:latest
   (&optional __latest)
   (if __latest (setq _latest __latest)) _latest)
  (:serialization-length
   ()
   (+
    ;; int64 _key_num
    8
    ;; string[] _collect_type
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _collect_type)) 4
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; string[] _export_type
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _export_type)) 4
    ;; uint64 _since
    8
    ;; uint32 _latest
    4
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
     ;; string[] _collect_type
     (write-long (length _collect_type) s)
     (dolist (elem _collect_type)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _export_type
     (write-long (length _export_type) s)
     (dolist (elem _export_type)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint64 _since
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _since (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _since) (= (length (_since . bv)) 2)) ;; bignum
              (write-long (ash (elt (_since . bv) 0) 0) s)
              (write-long (ash (elt (_since . bv) 1) -1) s))
             ((and (class _since) (= (length (_since . bv)) 1)) ;; big1
              (write-long (elt (_since . bv) 0) s)
              (write-long (if (>= _since 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _since s)(write-long (if (>= _since 0) 0 #xffffffff) s)))
     ;; uint32 _latest
       (write-long _latest s)
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
   ;; string[] _collect_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _collect_type (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _collect_type i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _export_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _export_type (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _export_type i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint64 _since
     
#+(or :alpha :irix6 :x86_64)
      (setf _since (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _since (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _latest
     (setq _latest (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::AsyncExportDetailsV2Input :md5sum-) "3bba06780e7cc684d22b8a13ab94d053")
(setf (get momenta_msgs::AsyncExportDetailsV2Input :datatype-) "momenta_msgs/AsyncExportDetailsV2Input")
(setf (get momenta_msgs::AsyncExportDetailsV2Input :definition-)
      "int64 key_num
string[] collect_type
string[] name
string[] export_type
uint64 since
uint32 latest

")



(provide :momenta_msgs/AsyncExportDetailsV2Input "3bba06780e7cc684d22b8a13ab94d053")


