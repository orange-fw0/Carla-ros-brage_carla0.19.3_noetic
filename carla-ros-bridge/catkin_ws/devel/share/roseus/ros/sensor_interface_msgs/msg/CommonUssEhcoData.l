;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::CommonUssEhcoData)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'CommonUssEhcoData (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::COMMONUSSEHCODATA")
  (make-package "SENSOR_INTERFACE_MSGS::COMMONUSSEHCODATA"))

(in-package "ROS")
;;//! \htmlinclude CommonUssEhcoData.msg.html


(defclass sensor_interface_msgs::CommonUssEhcoData
  :super ros::object
  :slots (_available _meta _uss_echo_distance _uss_echo_prob _uss_echo_width _first_echo_amplitude _uss_rt_width _uss_echo_quality _echo_send_id _reserved ))

(defmethod sensor_interface_msgs::CommonUssEhcoData
  (:init
   (&key
    ((:available __available) 0)
    ((:meta __meta) (instance sensor_interface_msgs::UltrasonicResultMeta :init))
    ((:uss_echo_distance __uss_echo_distance) 0.0)
    ((:uss_echo_prob __uss_echo_prob) 0.0)
    ((:uss_echo_width __uss_echo_width) 0)
    ((:first_echo_amplitude __first_echo_amplitude) 0)
    ((:uss_rt_width __uss_rt_width) 0)
    ((:uss_echo_quality __uss_echo_quality) 0)
    ((:echo_send_id __echo_send_id) 0)
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _meta __meta)
   (setq _uss_echo_distance (float __uss_echo_distance))
   (setq _uss_echo_prob (float __uss_echo_prob))
   (setq _uss_echo_width (round __uss_echo_width))
   (setq _first_echo_amplitude (round __first_echo_amplitude))
   (setq _uss_rt_width (round __uss_rt_width))
   (setq _uss_echo_quality (round __uss_echo_quality))
   (setq _echo_send_id (round __echo_send_id))
   (setq _reserved (round __reserved))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:uss_echo_distance
   (&optional __uss_echo_distance)
   (if __uss_echo_distance (setq _uss_echo_distance __uss_echo_distance)) _uss_echo_distance)
  (:uss_echo_prob
   (&optional __uss_echo_prob)
   (if __uss_echo_prob (setq _uss_echo_prob __uss_echo_prob)) _uss_echo_prob)
  (:uss_echo_width
   (&optional __uss_echo_width)
   (if __uss_echo_width (setq _uss_echo_width __uss_echo_width)) _uss_echo_width)
  (:first_echo_amplitude
   (&optional __first_echo_amplitude)
   (if __first_echo_amplitude (setq _first_echo_amplitude __first_echo_amplitude)) _first_echo_amplitude)
  (:uss_rt_width
   (&optional __uss_rt_width)
   (if __uss_rt_width (setq _uss_rt_width __uss_rt_width)) _uss_rt_width)
  (:uss_echo_quality
   (&optional __uss_echo_quality)
   (if __uss_echo_quality (setq _uss_echo_quality __uss_echo_quality)) _uss_echo_quality)
  (:echo_send_id
   (&optional __echo_send_id)
   (if __echo_send_id (setq _echo_send_id __echo_send_id)) _echo_send_id)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; sensor_interface_msgs/UltrasonicResultMeta _meta
    (send _meta :serialization-length)
    ;; float32 _uss_echo_distance
    4
    ;; float32 _uss_echo_prob
    4
    ;; uint64 _uss_echo_width
    8
    ;; uint16 _first_echo_amplitude
    2
    ;; uint16 _uss_rt_width
    2
    ;; uint16 _uss_echo_quality
    2
    ;; uint16 _echo_send_id
    2
    ;; uint64 _reserved
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; sensor_interface_msgs/UltrasonicResultMeta _meta
       (send _meta :serialize s)
     ;; float32 _uss_echo_distance
       (sys::poke _uss_echo_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _uss_echo_prob
       (sys::poke _uss_echo_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint64 _uss_echo_width
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _uss_echo_width (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _uss_echo_width) (= (length (_uss_echo_width . bv)) 2)) ;; bignum
              (write-long (ash (elt (_uss_echo_width . bv) 0) 0) s)
              (write-long (ash (elt (_uss_echo_width . bv) 1) -1) s))
             ((and (class _uss_echo_width) (= (length (_uss_echo_width . bv)) 1)) ;; big1
              (write-long (elt (_uss_echo_width . bv) 0) s)
              (write-long (if (>= _uss_echo_width 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _uss_echo_width s)(write-long (if (>= _uss_echo_width 0) 0 #xffffffff) s)))
     ;; uint16 _first_echo_amplitude
       (write-word _first_echo_amplitude s)
     ;; uint16 _uss_rt_width
       (write-word _uss_rt_width s)
     ;; uint16 _uss_echo_quality
       (write-word _uss_echo_quality s)
     ;; uint16 _echo_send_id
       (write-word _echo_send_id s)
     ;; uint64 _reserved
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _reserved (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _reserved) (= (length (_reserved . bv)) 2)) ;; bignum
              (write-long (ash (elt (_reserved . bv) 0) 0) s)
              (write-long (ash (elt (_reserved . bv) 1) -1) s))
             ((and (class _reserved) (= (length (_reserved . bv)) 1)) ;; big1
              (write-long (elt (_reserved . bv) 0) s)
              (write-long (if (>= _reserved 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _reserved s)(write-long (if (>= _reserved 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; sensor_interface_msgs/UltrasonicResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; float32 _uss_echo_distance
     (setq _uss_echo_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _uss_echo_prob
     (setq _uss_echo_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint64 _uss_echo_width
     
#+(or :alpha :irix6 :x86_64)
      (setf _uss_echo_width (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _uss_echo_width (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint16 _first_echo_amplitude
     (setq _first_echo_amplitude (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _uss_rt_width
     (setq _uss_rt_width (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _uss_echo_quality
     (setq _uss_echo_quality (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _echo_send_id
     (setq _echo_send_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64 _reserved
     
#+(or :alpha :irix6 :x86_64)
      (setf _reserved (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _reserved (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get sensor_interface_msgs::CommonUssEhcoData :md5sum-) "a8040a35339c7a69a482519e4981d6c1")
(setf (get sensor_interface_msgs::CommonUssEhcoData :datatype-) "sensor_interface_msgs/CommonUssEhcoData")
(setf (get sensor_interface_msgs::CommonUssEhcoData :definition-)
      "uint8 available
sensor_interface_msgs/UltrasonicResultMeta meta
float32 uss_echo_distance
float32 uss_echo_prob
uint64 uss_echo_width
uint16 first_echo_amplitude
uint16 uss_rt_width
uint16 uss_echo_quality
uint16 echo_send_id
uint64 reserved

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

")



(provide :sensor_interface_msgs/CommonUssEhcoData "a8040a35339c7a69a482519e4981d6c1")


