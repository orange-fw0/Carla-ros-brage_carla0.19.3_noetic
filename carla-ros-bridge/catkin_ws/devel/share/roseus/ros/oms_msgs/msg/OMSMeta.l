;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSMeta)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSMeta (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSMETA")
  (make-package "OMS_MSGS::OMSMETA"))

(in-package "ROS")
;;//! \htmlinclude OMSMeta.msg.html


(intern "*FACE_RESULT_AVAILABLE*" (find-package "OMS_MSGS::OMSMETA"))
(shadow '*FACE_RESULT_AVAILABLE* (find-package "OMS_MSGS::OMSMETA"))
(defconstant oms_msgs::OMSMeta::*FACE_RESULT_AVAILABLE* 1)
(intern "*BODY_RESULT_AVAILABLE*" (find-package "OMS_MSGS::OMSMETA"))
(shadow '*BODY_RESULT_AVAILABLE* (find-package "OMS_MSGS::OMSMETA"))
(defconstant oms_msgs::OMSMeta::*BODY_RESULT_AVAILABLE* 2)
(intern "*GESTURE_RESULT_AVAILABLE*" (find-package "OMS_MSGS::OMSMETA"))
(shadow '*GESTURE_RESULT_AVAILABLE* (find-package "OMS_MSGS::OMSMETA"))
(defconstant oms_msgs::OMSMeta::*GESTURE_RESULT_AVAILABLE* 4)
(intern "*OBJECT_RESULT_AVAILABLE*" (find-package "OMS_MSGS::OMSMETA"))
(shadow '*OBJECT_RESULT_AVAILABLE* (find-package "OMS_MSGS::OMSMETA"))
(defconstant oms_msgs::OMSMeta::*OBJECT_RESULT_AVAILABLE* 8)

(defun oms_msgs::OMSMeta-to-symbol (const)
  (cond
        ((= const 1) 'oms_msgs::OMSMeta::*FACE_RESULT_AVAILABLE*)
        ((= const 2) 'oms_msgs::OMSMeta::*BODY_RESULT_AVAILABLE*)
        ((= const 4) 'oms_msgs::OMSMeta::*GESTURE_RESULT_AVAILABLE*)
        ((= const 8) 'oms_msgs::OMSMeta::*OBJECT_RESULT_AVAILABLE*)
        (t nil)))

(defclass oms_msgs::OMSMeta
  :super ros::object
  :slots (_available _timestamp_us _frame_id ))

(defmethod oms_msgs::OMSMeta
  (:init
   (&key
    ((:available __available) 0)
    ((:timestamp_us __timestamp_us) 0)
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _timestamp_us (round __timestamp_us))
   (setq _frame_id (string __frame_id))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; uint64 _timestamp_us
    8
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
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
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
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
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get oms_msgs::OMSMeta :md5sum-) "3b9d7c2cee78877eb1b6fbc52c5afcb0")
(setf (get oms_msgs::OMSMeta :datatype-) "oms_msgs/OMSMeta")
(setf (get oms_msgs::OMSMeta :definition-)
      "uint8 FACE_RESULT_AVAILABLE = 1
uint8 BODY_RESULT_AVAILABLE = 2
uint8 GESTURE_RESULT_AVAILABLE = 4
uint8 OBJECT_RESULT_AVAILABLE = 8
uint8 available
uint64 timestamp_us
string frame_id

")



(provide :oms_msgs/OMSMeta "3b9d7c2cee78877eb1b6fbc52c5afcb0")


