;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TransferEgoPose)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TransferEgoPose (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRANSFEREGOPOSE")
  (make-package "LANDMARK_MSGS::TRANSFEREGOPOSE"))

(in-package "ROS")
;;//! \htmlinclude TransferEgoPose.msg.html


(defclass landmark_msgs::TransferEgoPose
  :super ros::object
  :slots (_available _is_high_precision_mode _sensor_timestamp_us _longitude _latitude _altitude _global_roll _global_pitch _global_yaw _reserved ))

(defmethod landmark_msgs::TransferEgoPose
  (:init
   (&key
    ((:available __available) nil)
    ((:is_high_precision_mode __is_high_precision_mode) nil)
    ((:sensor_timestamp_us __sensor_timestamp_us) 0)
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:global_roll __global_roll) 0.0)
    ((:global_pitch __global_pitch) 0.0)
    ((:global_yaw __global_yaw) 0.0)
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _available __available)
   (setq _is_high_precision_mode __is_high_precision_mode)
   (setq _sensor_timestamp_us (round __sensor_timestamp_us))
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   (setq _altitude (float __altitude))
   (setq _global_roll (float __global_roll))
   (setq _global_pitch (float __global_pitch))
   (setq _global_yaw (float __global_yaw))
   (setq _reserved (string __reserved))
   self)
  (:available
   (&optional (__available :null))
   (if (not (eq __available :null)) (setq _available __available)) _available)
  (:is_high_precision_mode
   (&optional (__is_high_precision_mode :null))
   (if (not (eq __is_high_precision_mode :null)) (setq _is_high_precision_mode __is_high_precision_mode)) _is_high_precision_mode)
  (:sensor_timestamp_us
   (&optional __sensor_timestamp_us)
   (if __sensor_timestamp_us (setq _sensor_timestamp_us __sensor_timestamp_us)) _sensor_timestamp_us)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:global_roll
   (&optional __global_roll)
   (if __global_roll (setq _global_roll __global_roll)) _global_roll)
  (:global_pitch
   (&optional __global_pitch)
   (if __global_pitch (setq _global_pitch __global_pitch)) _global_pitch)
  (:global_yaw
   (&optional __global_yaw)
   (if __global_yaw (setq _global_yaw __global_yaw)) _global_yaw)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; bool _available
    1
    ;; bool _is_high_precision_mode
    1
    ;; uint64 _sensor_timestamp_us
    8
    ;; float64 _longitude
    8
    ;; float64 _latitude
    8
    ;; float64 _altitude
    8
    ;; float64 _global_roll
    8
    ;; float64 _global_pitch
    8
    ;; float64 _global_yaw
    8
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _available
       (if _available (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_high_precision_mode
       (if _is_high_precision_mode (write-byte -1 s) (write-byte 0 s))
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
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_roll
       (sys::poke _global_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_pitch
       (sys::poke _global_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_yaw
       (sys::poke _global_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _available
     (setq _available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_high_precision_mode
     (setq _is_high_precision_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_roll
     (setq _global_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_pitch
     (setq _global_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_yaw
     (setq _global_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::TransferEgoPose :md5sum-) "eae6e5af52ef316062cafab41ec0a7a1")
(setf (get landmark_msgs::TransferEgoPose :datatype-) "landmark_msgs/TransferEgoPose")
(setf (get landmark_msgs::TransferEgoPose :definition-)
      "bool available
bool is_high_precision_mode
uint64 sensor_timestamp_us
float64 longitude
float64 latitude
float64 altitude
float64 global_roll
float64 global_pitch
float64 global_yaw
string reserved

")



(provide :landmark_msgs/TransferEgoPose "eae6e5af52ef316062cafab41ec0a7a1")


