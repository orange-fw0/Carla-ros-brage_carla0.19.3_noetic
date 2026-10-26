;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::PerceptionMeta)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'PerceptionMeta (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONMETA")
  (make-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONMETA"))

(in-package "ROS")
;;//! \htmlinclude PerceptionMeta.msg.html


(defclass perception_interface_msgs::PerceptionMeta
  :super ros::object
  :slots (_algorithm_name _instance_name _sensor_timestamp_us _pipeline_start_timestamp_us _pipeline_finish_timestamp_us _relevant_frames _version_tag _ts_log _sequence _task_tag ))

(defmethod perception_interface_msgs::PerceptionMeta
  (:init
   (&key
    ((:algorithm_name __algorithm_name) "")
    ((:instance_name __instance_name) "")
    ((:sensor_timestamp_us __sensor_timestamp_us) 0)
    ((:pipeline_start_timestamp_us __pipeline_start_timestamp_us) 0)
    ((:pipeline_finish_timestamp_us __pipeline_finish_timestamp_us) 0)
    ((:relevant_frames __relevant_frames) ())
    ((:version_tag __version_tag) "")
    ((:ts_log __ts_log) "")
    ((:sequence __sequence) 0)
    ((:task_tag __task_tag) "")
    )
   (send-super :init)
   (setq _algorithm_name (string __algorithm_name))
   (setq _instance_name (string __instance_name))
   (setq _sensor_timestamp_us (round __sensor_timestamp_us))
   (setq _pipeline_start_timestamp_us (round __pipeline_start_timestamp_us))
   (setq _pipeline_finish_timestamp_us (round __pipeline_finish_timestamp_us))
   (setq _relevant_frames __relevant_frames)
   (setq _version_tag (string __version_tag))
   (setq _ts_log (string __ts_log))
   (setq _sequence (round __sequence))
   (setq _task_tag (string __task_tag))
   self)
  (:algorithm_name
   (&optional __algorithm_name)
   (if __algorithm_name (setq _algorithm_name __algorithm_name)) _algorithm_name)
  (:instance_name
   (&optional __instance_name)
   (if __instance_name (setq _instance_name __instance_name)) _instance_name)
  (:sensor_timestamp_us
   (&optional __sensor_timestamp_us)
   (if __sensor_timestamp_us (setq _sensor_timestamp_us __sensor_timestamp_us)) _sensor_timestamp_us)
  (:pipeline_start_timestamp_us
   (&optional __pipeline_start_timestamp_us)
   (if __pipeline_start_timestamp_us (setq _pipeline_start_timestamp_us __pipeline_start_timestamp_us)) _pipeline_start_timestamp_us)
  (:pipeline_finish_timestamp_us
   (&optional __pipeline_finish_timestamp_us)
   (if __pipeline_finish_timestamp_us (setq _pipeline_finish_timestamp_us __pipeline_finish_timestamp_us)) _pipeline_finish_timestamp_us)
  (:relevant_frames
   (&rest __relevant_frames)
   (if (keywordp (car __relevant_frames))
       (send* _relevant_frames __relevant_frames)
     (progn
       (if __relevant_frames (setq _relevant_frames (car __relevant_frames)))
       _relevant_frames)))
  (:version_tag
   (&optional __version_tag)
   (if __version_tag (setq _version_tag __version_tag)) _version_tag)
  (:ts_log
   (&optional __ts_log)
   (if __ts_log (setq _ts_log __ts_log)) _ts_log)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:task_tag
   (&optional __task_tag)
   (if __task_tag (setq _task_tag __task_tag)) _task_tag)
  (:serialization-length
   ()
   (+
    ;; string _algorithm_name
    4 (length _algorithm_name)
    ;; string _instance_name
    4 (length _instance_name)
    ;; uint64 _sensor_timestamp_us
    8
    ;; uint64 _pipeline_start_timestamp_us
    8
    ;; uint64 _pipeline_finish_timestamp_us
    8
    ;; perception_interface_msgs/FrameMeta[] _relevant_frames
    (apply #'+ (send-all _relevant_frames :serialization-length)) 4
    ;; string _version_tag
    4 (length _version_tag)
    ;; string _ts_log
    4 (length _ts_log)
    ;; uint64 _sequence
    8
    ;; string _task_tag
    4 (length _task_tag)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _algorithm_name
       (write-long (length _algorithm_name) s) (princ _algorithm_name s)
     ;; string _instance_name
       (write-long (length _instance_name) s) (princ _instance_name s)
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
     ;; perception_interface_msgs/FrameMeta[] _relevant_frames
     (write-long (length _relevant_frames) s)
     (dolist (elem _relevant_frames)
       (send elem :serialize s)
       )
     ;; string _version_tag
       (write-long (length _version_tag) s) (princ _version_tag s)
     ;; string _ts_log
       (write-long (length _ts_log) s) (princ _ts_log s)
     ;; uint64 _sequence
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sequence (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sequence) (= (length (_sequence . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sequence . bv) 0) 0) s)
              (write-long (ash (elt (_sequence . bv) 1) -1) s))
             ((and (class _sequence) (= (length (_sequence . bv)) 1)) ;; big1
              (write-long (elt (_sequence . bv) 0) s)
              (write-long (if (>= _sequence 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sequence s)(write-long (if (>= _sequence 0) 0 #xffffffff) s)))
     ;; string _task_tag
       (write-long (length _task_tag) s) (princ _task_tag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _algorithm_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _algorithm_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _instance_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _instance_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;; perception_interface_msgs/FrameMeta[] _relevant_frames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _relevant_frames (let (r) (dotimes (i n) (push (instance perception_interface_msgs::FrameMeta :init) r)) r))
     (dolist (elem- _relevant_frames)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _version_tag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version_tag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ts_log
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ts_log (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _sequence
     
#+(or :alpha :irix6 :x86_64)
      (setf _sequence (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sequence (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _task_tag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_tag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::PerceptionMeta :md5sum-) "f20ea8dc528d367843d686f5fbfbe659")
(setf (get perception_interface_msgs::PerceptionMeta :datatype-) "perception_interface_msgs/PerceptionMeta")
(setf (get perception_interface_msgs::PerceptionMeta :definition-)
      "string algorithm_name
string instance_name
uint64 sensor_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us
perception_interface_msgs/FrameMeta[] relevant_frames
string version_tag
string ts_log
uint64 sequence
string task_tag

================================================================================
MSG: perception_interface_msgs/FrameMeta
uint64 timestamp_us
uint64 sequence
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model

================================================================================
MSG: perception_interface_msgs/CameraSourceEnum
uint8 CAMERA_SOURCE_FRONT_FAR = 0
uint8 CAMERA_SOURCE_FRONT_MID = 1
uint8 CAMERA_SOURCE_FRONT_WIDE = 2
uint8 CAMERA_SOURCE_LEFT_FRONT = 3
uint8 CAMERA_SOURCE_LEFT_REAR = 4
uint8 CAMERA_SOURCE_REAR_MID = 5
uint8 CAMERA_SOURCE_REAR_MID_UP = 6
uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
uint8 CAMERA_SOURCE_RIGHT_REAR = 9
uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
uint8 CAMERA_SOURCE_FISHEYE = 14
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
uint8 CAMERA_SOURCE_BEV = 25
uint8 value

================================================================================
MSG: perception_interface_msgs/CameraModelEnum
uint8 CAMERA_MODEL_UNKNOWN = 0
uint8 CAMERA_MODEL_RAW = 1
uint8 CAMERA_MODEL_CYLINDER = 2
uint8 CAMERA_MODEL_DEDISTORT = 3
uint8 CAMERA_MODEL_PSTITCH = 4
uint8 CAMERA_MODEL_RESERVED_A = 5
uint8 CAMERA_MODEL_RESERVED_B = 6
uint8 CAMERA_MODEL_RESERVED_C = 7
uint8 value

")



(provide :perception_interface_msgs/PerceptionMeta "f20ea8dc528d367843d686f5fbfbe659")


