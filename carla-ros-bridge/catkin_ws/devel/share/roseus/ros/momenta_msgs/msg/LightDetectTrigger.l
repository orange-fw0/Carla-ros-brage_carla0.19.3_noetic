;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::LightDetectTrigger)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'LightDetectTrigger (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::LIGHTDETECTTRIGGER")
  (make-package "MOMENTA_MSGS::LIGHTDETECTTRIGGER"))

(in-package "ROS")
;;//! \htmlinclude LightDetectTrigger.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::LightDetectTrigger
  :super ros::object
  :slots (_header _boundary _num_signals _pattern_signals _light_id ))

(defmethod momenta_msgs::LightDetectTrigger
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:boundary __boundary) ())
    ((:num_signals __num_signals) 0)
    ((:pattern_signals __pattern_signals) (make-array 0 :initial-element 0 :element-type :integer))
    ((:light_id __light_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _boundary __boundary)
   (setq _num_signals (round __num_signals))
   (setq _pattern_signals __pattern_signals)
   (setq _light_id (round __light_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:boundary
   (&rest __boundary)
   (if (keywordp (car __boundary))
       (send* _boundary __boundary)
     (progn
       (if __boundary (setq _boundary (car __boundary)))
       _boundary)))
  (:num_signals
   (&optional __num_signals)
   (if __num_signals (setq _num_signals __num_signals)) _num_signals)
  (:pattern_signals
   (&optional __pattern_signals)
   (if __pattern_signals (setq _pattern_signals __pattern_signals)) _pattern_signals)
  (:light_id
   (&optional __light_id)
   (if __light_id (setq _light_id __light_id)) _light_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point[] _boundary
    (apply #'+ (send-all _boundary :serialization-length)) 4
    ;; int32 _num_signals
    4
    ;; int32[] _pattern_signals
    (* 4    (length _pattern_signals)) 4
    ;; uint64 _light_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point[] _boundary
     (write-long (length _boundary) s)
     (dolist (elem _boundary)
       (send elem :serialize s)
       )
     ;; int32 _num_signals
       (write-long _num_signals s)
     ;; int32[] _pattern_signals
     (write-long (length _pattern_signals) s)
     (dotimes (i (length _pattern_signals))
       (write-long (elt _pattern_signals i) s)
       )
     ;; uint64 _light_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _light_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _light_id) (= (length (_light_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_light_id . bv) 0) 0) s)
              (write-long (ash (elt (_light_id . bv) 1) -1) s))
             ((and (class _light_id) (= (length (_light_id . bv)) 1)) ;; big1
              (write-long (elt (_light_id . bv) 0) s)
              (write-long (if (>= _light_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _light_id s)(write-long (if (>= _light_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point[] _boundary
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boundary (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _boundary)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _num_signals
     (setq _num_signals (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _pattern_signals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pattern_signals (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pattern_signals i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint64 _light_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _light_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _light_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get momenta_msgs::LightDetectTrigger :md5sum-) "8875c216bd3d8b8e2f33f0088d50ca8e")
(setf (get momenta_msgs::LightDetectTrigger :datatype-) "momenta_msgs/LightDetectTrigger")
(setf (get momenta_msgs::LightDetectTrigger :definition-)
      "std_msgs/Header header
geometry_msgs/Point[] boundary
int32 num_signals
int32[] pattern_signals
uint64 light_id

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :momenta_msgs/LightDetectTrigger "8875c216bd3d8b8e2f33f0088d50ca8e")


