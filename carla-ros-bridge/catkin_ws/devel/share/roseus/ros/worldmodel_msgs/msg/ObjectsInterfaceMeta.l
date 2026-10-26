;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ObjectsInterfaceMeta)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ObjectsInterfaceMeta (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::OBJECTSINTERFACEMETA")
  (make-package "WORLDMODEL_MSGS::OBJECTSINTERFACEMETA"))

(in-package "ROS")
;;//! \htmlinclude ObjectsInterfaceMeta.msg.html


(defclass worldmodel_msgs::ObjectsInterfaceMeta
  :super ros::object
  :slots (_sensor_timestamp_us _pipeline_start_timestamp_us _pipeline_finish_timestamp_us _frame_id ))

(defmethod worldmodel_msgs::ObjectsInterfaceMeta
  (:init
   (&key
    ((:sensor_timestamp_us __sensor_timestamp_us) 0)
    ((:pipeline_start_timestamp_us __pipeline_start_timestamp_us) 0)
    ((:pipeline_finish_timestamp_us __pipeline_finish_timestamp_us) 0)
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _sensor_timestamp_us (round __sensor_timestamp_us))
   (setq _pipeline_start_timestamp_us (round __pipeline_start_timestamp_us))
   (setq _pipeline_finish_timestamp_us (round __pipeline_finish_timestamp_us))
   (setq _frame_id (string __frame_id))
   self)
  (:sensor_timestamp_us
   (&optional __sensor_timestamp_us)
   (if __sensor_timestamp_us (setq _sensor_timestamp_us __sensor_timestamp_us)) _sensor_timestamp_us)
  (:pipeline_start_timestamp_us
   (&optional __pipeline_start_timestamp_us)
   (if __pipeline_start_timestamp_us (setq _pipeline_start_timestamp_us __pipeline_start_timestamp_us)) _pipeline_start_timestamp_us)
  (:pipeline_finish_timestamp_us
   (&optional __pipeline_finish_timestamp_us)
   (if __pipeline_finish_timestamp_us (setq _pipeline_finish_timestamp_us __pipeline_finish_timestamp_us)) _pipeline_finish_timestamp_us)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; uint64 _sensor_timestamp_us
    8
    ;; uint64 _pipeline_start_timestamp_us
    8
    ;; uint64 _pipeline_finish_timestamp_us
    8
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _sensor_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sensor_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sensor_timestamp_us) (= (length (_sensor_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sensor_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_sensor_timestamp_us . bv) 1) -1) s))
             ((and (class _sensor_timestamp_us) (= (length (_sensor_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_sensor_timestamp_us . bv) 0) s)
              (write-long (if (>= _sensor_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sensor_timestamp_us s)(write-long (if (>= _sensor_timestamp_us 0) 0 #xffffffff) s)))
     ;; uint64 _pipeline_start_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pipeline_start_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pipeline_start_timestamp_us) (= (length (_pipeline_start_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pipeline_start_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_pipeline_start_timestamp_us . bv) 1) -1) s))
             ((and (class _pipeline_start_timestamp_us) (= (length (_pipeline_start_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_pipeline_start_timestamp_us . bv) 0) s)
              (write-long (if (>= _pipeline_start_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pipeline_start_timestamp_us s)(write-long (if (>= _pipeline_start_timestamp_us 0) 0 #xffffffff) s)))
     ;; uint64 _pipeline_finish_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pipeline_finish_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pipeline_finish_timestamp_us) (= (length (_pipeline_finish_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pipeline_finish_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_pipeline_finish_timestamp_us . bv) 1) -1) s))
             ((and (class _pipeline_finish_timestamp_us) (= (length (_pipeline_finish_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_pipeline_finish_timestamp_us . bv) 0) s)
              (write-long (if (>= _pipeline_finish_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pipeline_finish_timestamp_us s)(write-long (if (>= _pipeline_finish_timestamp_us 0) 0 #xffffffff) s)))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _sensor_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _sensor_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sensor_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _pipeline_start_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _pipeline_start_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pipeline_start_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _pipeline_finish_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _pipeline_finish_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pipeline_finish_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get worldmodel_msgs::ObjectsInterfaceMeta :md5sum-) "ca1db8fdea922c3985c22426c44ba00c")
(setf (get worldmodel_msgs::ObjectsInterfaceMeta :datatype-) "worldmodel_msgs/ObjectsInterfaceMeta")
(setf (get worldmodel_msgs::ObjectsInterfaceMeta :definition-)
      "uint64 sensor_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us
string frame_id

")



(provide :worldmodel_msgs/ObjectsInterfaceMeta "ca1db8fdea922c3985c22426c44ba00c")


