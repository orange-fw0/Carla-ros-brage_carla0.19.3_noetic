;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::MPointCloud)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'MPointCloud (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::MPOINTCLOUD")
  (make-package "SENSOR_INTERFACE_MSGS::MPOINTCLOUD"))

(in-package "ROS")
;;//! \htmlinclude MPointCloud.msg.html


(defclass sensor_interface_msgs::MPointCloud
  :super ros::object
  :slots (_timestamp_us _cloud _ptr_cloud _available _lidar_position _reserved _status ))

(defmethod sensor_interface_msgs::MPointCloud
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:cloud __cloud) (instance sensor_interface_msgs::Pointcloud2 :init))
    ((:ptr_cloud __ptr_cloud) 0)
    ((:available __available) 0)
    ((:lidar_position __lidar_position) 0)
    ((:reserved __reserved) "")
    ((:status __status) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _cloud __cloud)
   (setq _ptr_cloud (round __ptr_cloud))
   (setq _available (round __available))
   (setq _lidar_position (round __lidar_position))
   (setq _reserved (string __reserved))
   (setq _status __status)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:ptr_cloud
   (&optional __ptr_cloud)
   (if __ptr_cloud (setq _ptr_cloud __ptr_cloud)) _ptr_cloud)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:lidar_position
   (&optional __lidar_position)
   (if __lidar_position (setq _lidar_position __lidar_position)) _lidar_position)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; sensor_interface_msgs/Pointcloud2 _cloud
    (send _cloud :serialization-length)
    ;; uint64 _ptr_cloud
    8
    ;; uint8 _available
    1
    ;; uint16 _lidar_position
    2
    ;; string _reserved
    4 (length _reserved)
    ;; uint8[] _status
    (* 1    (length _status)) 4
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
     ;; sensor_interface_msgs/Pointcloud2 _cloud
       (send _cloud :serialize s)
     ;; uint64 _ptr_cloud
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ptr_cloud (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ptr_cloud) (= (length (_ptr_cloud . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ptr_cloud . bv) 0) 0) s)
              (write-long (ash (elt (_ptr_cloud . bv) 1) -1) s))
             ((and (class _ptr_cloud) (= (length (_ptr_cloud . bv)) 1)) ;; big1
              (write-long (elt (_ptr_cloud . bv) 0) s)
              (write-long (if (>= _ptr_cloud 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ptr_cloud s)(write-long (if (>= _ptr_cloud 0) 0 #xffffffff) s)))
     ;; uint8 _available
       (write-byte _available s)
     ;; uint16 _lidar_position
       (write-word _lidar_position s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;; uint8[] _status
     (write-long (length _status) s)
     (princ _status s)
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
   ;; sensor_interface_msgs/Pointcloud2 _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;; uint64 _ptr_cloud
     
#+(or :alpha :irix6 :x86_64)
      (setf _ptr_cloud (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ptr_cloud (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _lidar_position
     (setq _lidar_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _status
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status (make-array n :element-type :char))
     (replace _status buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::MPointCloud :md5sum-) "0e0e75773a2d4d0560240ba05a3113be")
(setf (get sensor_interface_msgs::MPointCloud :datatype-) "sensor_interface_msgs/MPointCloud")
(setf (get sensor_interface_msgs::MPointCloud :definition-)
      "uint64 timestamp_us
sensor_interface_msgs/Pointcloud2 cloud
uint64 ptr_cloud
uint8 available
uint16 lidar_position
string reserved
uint8[] status

================================================================================
MSG: sensor_interface_msgs/Pointcloud2
std_msgs/Header header
uint32 height
uint32 width
sensor_interface_msgs/PointField[] fields
bool is_bigendian
uint32 point_step
uint32 row_step
uint8[] data
bool is_dense

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
MSG: sensor_interface_msgs/PointField
uint8 INT8 = 1
uint8 UINT8 = 2
uint8 INT16 = 3
uint8 UINT16 = 4
uint8 INT32 = 5
uint8 UINT32 = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8
string name
uint32 offset
uint8 datatype
uint32 count

")



(provide :sensor_interface_msgs/MPointCloud "0e0e75773a2d4d0560240ba05a3113be")


