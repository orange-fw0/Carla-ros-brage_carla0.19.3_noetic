;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::LaneBoundary)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'LaneBoundary (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::LANEBOUNDARY")
  (make-package "MOMENTA_MSGS::LANEBOUNDARY"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundary.msg.html


(defclass momenta_msgs::LaneBoundary
  :super ros::object
  :slots (_polycoeff _head _tail _relative_id _track_id ))

(defmethod momenta_msgs::LaneBoundary
  (:init
   (&key
    ((:polycoeff __polycoeff) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:head __head) 0.0)
    ((:tail __tail) 0.0)
    ((:relative_id __relative_id) 0)
    ((:track_id __track_id) 0)
    )
   (send-super :init)
   (setq _polycoeff __polycoeff)
   (setq _head (float __head))
   (setq _tail (float __tail))
   (setq _relative_id (round __relative_id))
   (setq _track_id (round __track_id))
   self)
  (:polycoeff
   (&optional __polycoeff)
   (if __polycoeff (setq _polycoeff __polycoeff)) _polycoeff)
  (:head
   (&optional __head)
   (if __head (setq _head __head)) _head)
  (:tail
   (&optional __tail)
   (if __tail (setq _tail __tail)) _tail)
  (:relative_id
   (&optional __relative_id)
   (if __relative_id (setq _relative_id __relative_id)) _relative_id)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:serialization-length
   ()
   (+
    ;; float64[] _polycoeff
    (* 8    (length _polycoeff)) 4
    ;; float64 _head
    8
    ;; float64 _tail
    8
    ;; int8 _relative_id
    1
    ;; uint64 _track_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _polycoeff
     (write-long (length _polycoeff) s)
     (dotimes (i (length _polycoeff))
       (sys::poke (elt _polycoeff i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _head
       (sys::poke _head (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tail
       (sys::poke _tail (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _relative_id
       (write-byte _relative_id s)
     ;; uint64 _track_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _track_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _track_id) (= (length (_track_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_track_id . bv) 0) 0) s)
              (write-long (ash (elt (_track_id . bv) 1) -1) s))
             ((and (class _track_id) (= (length (_track_id . bv)) 1)) ;; big1
              (write-long (elt (_track_id . bv) 0) s)
              (write-long (if (>= _track_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _track_id s)(write-long (if (>= _track_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _polycoeff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polycoeff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _polycoeff i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _head
     (setq _head (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tail
     (setq _tail (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _relative_id
     (setq _relative_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _relative_id 127) (setq _relative_id (- _relative_id 256)))
   ;; uint64 _track_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _track_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _track_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get momenta_msgs::LaneBoundary :md5sum-) "68bd62a5e53131b6a34e9fc77a23d08c")
(setf (get momenta_msgs::LaneBoundary :datatype-) "momenta_msgs/LaneBoundary")
(setf (get momenta_msgs::LaneBoundary :definition-)
      "float64[] polycoeff
float64 head
float64 tail
int8 relative_id
uint64 track_id

")



(provide :momenta_msgs/LaneBoundary "68bd62a5e53131b6a34e9fc77a23d08c")


