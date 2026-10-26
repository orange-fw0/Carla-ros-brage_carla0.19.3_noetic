;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::ImageWithAddress)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'ImageWithAddress (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::IMAGEWITHADDRESS")
  (make-package "SENSOR_INTERFACE_MSGS::IMAGEWITHADDRESS"))

(in-package "ROS")
;;//! \htmlinclude ImageWithAddress.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_interface_msgs::ImageWithAddress
  :super ros::object
  :slots (_header _format _device_type _start_address _size ))

(defmethod sensor_interface_msgs::ImageWithAddress
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:format __format) "")
    ((:device_type __device_type) "")
    ((:start_address __start_address) 0)
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _format (string __format))
   (setq _device_type (string __device_type))
   (setq _start_address (round __start_address))
   (setq _size (round __size))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:device_type
   (&optional __device_type)
   (if __device_type (setq _device_type __device_type)) _device_type)
  (:start_address
   (&optional __start_address)
   (if __start_address (setq _start_address __start_address)) _start_address)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _format
    4 (length _format)
    ;; string _device_type
    4 (length _device_type)
    ;; uint64 _start_address
    8
    ;; uint32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _format
       (write-long (length _format) s) (princ _format s)
     ;; string _device_type
       (write-long (length _device_type) s) (princ _device_type s)
     ;; uint64 _start_address
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _start_address (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _start_address) (= (length (_start_address . bv)) 2)) ;; bignum
              (write-long (ash (elt (_start_address . bv) 0) 0) s)
              (write-long (ash (elt (_start_address . bv) 1) -1) s))
             ((and (class _start_address) (= (length (_start_address . bv)) 1)) ;; big1
              (write-long (elt (_start_address . bv) 0) s)
              (write-long (if (>= _start_address 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _start_address s)(write-long (if (>= _start_address 0) 0 #xffffffff) s)))
     ;; uint32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _format
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _device_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _start_address
     
#+(or :alpha :irix6 :x86_64)
      (setf _start_address (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _start_address (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_interface_msgs::ImageWithAddress :md5sum-) "04041cd5163466bc817c7061680e0fe8")
(setf (get sensor_interface_msgs::ImageWithAddress :datatype-) "sensor_interface_msgs/ImageWithAddress")
(setf (get sensor_interface_msgs::ImageWithAddress :definition-)
      "std_msgs/Header header
string format
string device_type
uint64 start_address
uint32 size

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

")



(provide :sensor_interface_msgs/ImageWithAddress "04041cd5163466bc817c7061680e0fe8")


