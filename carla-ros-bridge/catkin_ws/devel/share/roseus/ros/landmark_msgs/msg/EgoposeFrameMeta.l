;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::EgoposeFrameMeta)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'EgoposeFrameMeta (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::EGOPOSEFRAMEMETA")
  (make-package "LANDMARK_MSGS::EGOPOSEFRAMEMETA"))

(in-package "ROS")
;;//! \htmlinclude EgoposeFrameMeta.msg.html


(defclass landmark_msgs::EgoposeFrameMeta
  :super ros::object
  :slots (_timestamp_us _sequence _sync_camera_source _sync_camera_model ))

(defmethod landmark_msgs::EgoposeFrameMeta
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:sequence __sequence) 0)
    ((:sync_camera_source __sync_camera_source) (instance landmark_msgs::CameraSourceEnum :init))
    ((:sync_camera_model __sync_camera_model) (instance landmark_msgs::CameraModelEnum :init))
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _sequence (round __sequence))
   (setq _sync_camera_source __sync_camera_source)
   (setq _sync_camera_model __sync_camera_model)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:sync_camera_source
   (&rest __sync_camera_source)
   (if (keywordp (car __sync_camera_source))
       (send* _sync_camera_source __sync_camera_source)
     (progn
       (if __sync_camera_source (setq _sync_camera_source (car __sync_camera_source)))
       _sync_camera_source)))
  (:sync_camera_model
   (&rest __sync_camera_model)
   (if (keywordp (car __sync_camera_model))
       (send* _sync_camera_model __sync_camera_model)
     (progn
       (if __sync_camera_model (setq _sync_camera_model (car __sync_camera_model)))
       _sync_camera_model)))
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; uint64 _sequence
    8
    ;; landmark_msgs/CameraSourceEnum _sync_camera_source
    (send _sync_camera_source :serialization-length)
    ;; landmark_msgs/CameraModelEnum _sync_camera_model
    (send _sync_camera_model :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; landmark_msgs/CameraSourceEnum _sync_camera_source
       (send _sync_camera_source :serialize s)
     ;; landmark_msgs/CameraModelEnum _sync_camera_model
       (send _sync_camera_model :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; landmark_msgs/CameraSourceEnum _sync_camera_source
     (send _sync_camera_source :deserialize buf ptr-) (incf ptr- (send _sync_camera_source :serialization-length))
   ;; landmark_msgs/CameraModelEnum _sync_camera_model
     (send _sync_camera_model :deserialize buf ptr-) (incf ptr- (send _sync_camera_model :serialization-length))
   ;;
   self)
  )

(setf (get landmark_msgs::EgoposeFrameMeta :md5sum-) "998b78f70bfce54b64a6b4f0cabaef9c")
(setf (get landmark_msgs::EgoposeFrameMeta :datatype-) "landmark_msgs/EgoposeFrameMeta")
(setf (get landmark_msgs::EgoposeFrameMeta :definition-)
      "uint64 timestamp_us
uint64 sequence
landmark_msgs/CameraSourceEnum sync_camera_source
landmark_msgs/CameraModelEnum sync_camera_model

================================================================================
MSG: landmark_msgs/CameraSourceEnum
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
MSG: landmark_msgs/CameraModelEnum
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



(provide :landmark_msgs/EgoposeFrameMeta "998b78f70bfce54b64a6b4f0cabaef9c")


