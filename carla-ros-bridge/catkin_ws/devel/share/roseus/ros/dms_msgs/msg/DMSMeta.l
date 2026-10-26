;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSMeta)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSMeta (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSMETA")
  (make-package "DMS_MSGS::DMSMETA"))

(in-package "ROS")
;;//! \htmlinclude DMSMeta.msg.html


(intern "*FRAME_RESULT_AVAILABLE*" (find-package "DMS_MSGS::DMSMETA"))
(shadow '*FRAME_RESULT_AVAILABLE* (find-package "DMS_MSGS::DMSMETA"))
(defconstant dms_msgs::DMSMeta::*FRAME_RESULT_AVAILABLE* 1)
(intern "*EVENT_RESULT_AVAILABLE*" (find-package "DMS_MSGS::DMSMETA"))
(shadow '*EVENT_RESULT_AVAILABLE* (find-package "DMS_MSGS::DMSMETA"))
(defconstant dms_msgs::DMSMeta::*EVENT_RESULT_AVAILABLE* 2)
(intern "*FUSA_RESULT_AVAILABLE*" (find-package "DMS_MSGS::DMSMETA"))
(shadow '*FUSA_RESULT_AVAILABLE* (find-package "DMS_MSGS::DMSMETA"))
(defconstant dms_msgs::DMSMeta::*FUSA_RESULT_AVAILABLE* 4)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSMETA"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSMETA"))
(defconstant dms_msgs::DMSMeta::*RESERVED* 8)
(intern "*RESERVED2*" (find-package "DMS_MSGS::DMSMETA"))
(shadow '*RESERVED2* (find-package "DMS_MSGS::DMSMETA"))
(defconstant dms_msgs::DMSMeta::*RESERVED2* 16)

(defun dms_msgs::DMSMeta-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSMeta::*FRAME_RESULT_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSMeta::*EVENT_RESULT_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSMeta::*FUSA_RESULT_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSMeta::*RESERVED*)
        ((= const 16) 'dms_msgs::DMSMeta::*RESERVED2*)
        (t nil)))

(defclass dms_msgs::DMSMeta
  :super ros::object
  :slots (_available _frame_id _timestamp_us _delay_timestamp_us _consumption_time_us ))

(defmethod dms_msgs::DMSMeta
  (:init
   (&key
    ((:available __available) 0)
    ((:frame_id __frame_id) 0)
    ((:timestamp_us __timestamp_us) 0)
    ((:delay_timestamp_us __delay_timestamp_us) 0)
    ((:consumption_time_us __consumption_time_us) 0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _frame_id (round __frame_id))
   (setq _timestamp_us (round __timestamp_us))
   (setq _delay_timestamp_us (round __delay_timestamp_us))
   (setq _consumption_time_us (round __consumption_time_us))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:delay_timestamp_us
   (&optional __delay_timestamp_us)
   (if __delay_timestamp_us (setq _delay_timestamp_us __delay_timestamp_us)) _delay_timestamp_us)
  (:consumption_time_us
   (&optional __consumption_time_us)
   (if __consumption_time_us (setq _consumption_time_us __consumption_time_us)) _consumption_time_us)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; uint64 _frame_id
    8
    ;; uint64 _timestamp_us
    8
    ;; uint64 _delay_timestamp_us
    8
    ;; uint64 _consumption_time_us
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; uint64 _frame_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame_id) (= (length (_frame_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame_id . bv) 0) 0) s)
              (write-long (ash (elt (_frame_id . bv) 1) -1) s))
             ((and (class _frame_id) (= (length (_frame_id . bv)) 1)) ;; big1
              (write-long (elt (_frame_id . bv) 0) s)
              (write-long (if (>= _frame_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame_id s)(write-long (if (>= _frame_id 0) 0 #xffffffff) s)))
     ;; uint64 _timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp_us . bv) 1) -1) s))
             ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_timestamp_us . bv) 0) s)
              (write-long (if (>= _timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp_us s)(write-long (if (>= _timestamp_us 0) 0 #xffffffff) s)))
     ;; uint64 _delay_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _delay_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _delay_timestamp_us) (= (length (_delay_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_delay_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_delay_timestamp_us . bv) 1) -1) s))
             ((and (class _delay_timestamp_us) (= (length (_delay_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_delay_timestamp_us . bv) 0) s)
              (write-long (if (>= _delay_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _delay_timestamp_us s)(write-long (if (>= _delay_timestamp_us 0) 0 #xffffffff) s)))
     ;; uint64 _consumption_time_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _consumption_time_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _consumption_time_us) (= (length (_consumption_time_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_consumption_time_us . bv) 0) 0) s)
              (write-long (ash (elt (_consumption_time_us . bv) 1) -1) s))
             ((and (class _consumption_time_us) (= (length (_consumption_time_us . bv)) 1)) ;; big1
              (write-long (elt (_consumption_time_us . bv) 0) s)
              (write-long (if (>= _consumption_time_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _consumption_time_us s)(write-long (if (>= _consumption_time_us 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64 _frame_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _frame_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _delay_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _delay_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _delay_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _consumption_time_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _consumption_time_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _consumption_time_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get dms_msgs::DMSMeta :md5sum-) "08a1c8c7562788c33afc722fd4b5bc1f")
(setf (get dms_msgs::DMSMeta :datatype-) "dms_msgs/DMSMeta")
(setf (get dms_msgs::DMSMeta :definition-)
      "uint16 FRAME_RESULT_AVAILABLE = 1
uint16 EVENT_RESULT_AVAILABLE = 2
uint16 FUSA_RESULT_AVAILABLE = 4
uint16 RESERVED = 8
uint16 RESERVED2 = 16
uint16 available
uint64 frame_id
uint64 timestamp_us
uint64 delay_timestamp_us
uint64 consumption_time_us

")



(provide :dms_msgs/DMSMeta "08a1c8c7562788c33afc722fd4b5bc1f")


