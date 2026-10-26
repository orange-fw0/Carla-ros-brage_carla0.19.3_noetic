;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysMapProviderParkingResponse)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysMapProviderParkingResponse (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSMAPPROVIDERPARKINGRESPONSE")
  (make-package "SYSTEM_MANAGER_MSGS::SYSMAPPROVIDERPARKINGRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude SysMapProviderParkingResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass system_manager_msgs::SysMapProviderParkingResponse
  :super ros::object
  :slots (_header _request_seq _error_code _parking_lot_lists _storage_size ))

(defmethod system_manager_msgs::SysMapProviderParkingResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:request_seq __request_seq) 0)
    ((:error_code __error_code) (instance system_manager_msgs::ParkingResponseErrorEnum :init))
    ((:parking_lot_lists __parking_lot_lists) ())
    ((:storage_size __storage_size) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _request_seq (round __request_seq))
   (setq _error_code __error_code)
   (setq _parking_lot_lists __parking_lot_lists)
   (setq _storage_size (round __storage_size))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:request_seq
   (&optional __request_seq)
   (if __request_seq (setq _request_seq __request_seq)) _request_seq)
  (:error_code
   (&rest __error_code)
   (if (keywordp (car __error_code))
       (send* _error_code __error_code)
     (progn
       (if __error_code (setq _error_code (car __error_code)))
       _error_code)))
  (:parking_lot_lists
   (&rest __parking_lot_lists)
   (if (keywordp (car __parking_lot_lists))
       (send* _parking_lot_lists __parking_lot_lists)
     (progn
       (if __parking_lot_lists (setq _parking_lot_lists (car __parking_lot_lists)))
       _parking_lot_lists)))
  (:storage_size
   (&optional __storage_size)
   (if __storage_size (setq _storage_size __storage_size)) _storage_size)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _request_seq
    4
    ;; system_manager_msgs/ParkingResponseErrorEnum _error_code
    (send _error_code :serialization-length)
    ;; system_manager_msgs/ParkingLotInfo[] _parking_lot_lists
    (apply #'+ (send-all _parking_lot_lists :serialization-length)) 4
    ;; int64 _storage_size
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _request_seq
       (write-long _request_seq s)
     ;; system_manager_msgs/ParkingResponseErrorEnum _error_code
       (send _error_code :serialize s)
     ;; system_manager_msgs/ParkingLotInfo[] _parking_lot_lists
     (write-long (length _parking_lot_lists) s)
     (dolist (elem _parking_lot_lists)
       (send elem :serialize s)
       )
     ;; int64 _storage_size
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _storage_size (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _storage_size) (= (length (_storage_size . bv)) 2)) ;; bignum
              (write-long (ash (elt (_storage_size . bv) 0) 0) s)
              (write-long (ash (elt (_storage_size . bv) 1) -1) s))
             ((and (class _storage_size) (= (length (_storage_size . bv)) 1)) ;; big1
              (write-long (elt (_storage_size . bv) 0) s)
              (write-long (if (>= _storage_size 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _storage_size s)(write-long (if (>= _storage_size 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _request_seq
     (setq _request_seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; system_manager_msgs/ParkingResponseErrorEnum _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;; system_manager_msgs/ParkingLotInfo[] _parking_lot_lists
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_lot_lists (let (r) (dotimes (i n) (push (instance system_manager_msgs::ParkingLotInfo :init) r)) r))
     (dolist (elem- _parking_lot_lists)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int64 _storage_size
#+(or :alpha :irix6 :x86_64)
      (setf _storage_size (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _storage_size (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get system_manager_msgs::SysMapProviderParkingResponse :md5sum-) "70d19a26cbb38866f66e1250a27f6e64")
(setf (get system_manager_msgs::SysMapProviderParkingResponse :datatype-) "system_manager_msgs/SysMapProviderParkingResponse")
(setf (get system_manager_msgs::SysMapProviderParkingResponse :definition-)
      "std_msgs/Header header
uint32 request_seq
system_manager_msgs/ParkingResponseErrorEnum error_code
system_manager_msgs/ParkingLotInfo[] parking_lot_lists
int64 storage_size

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
MSG: system_manager_msgs/ParkingResponseErrorEnum
uint8 SUCCESS = 0
uint8 SEARCH_RESULT_EMPTY = 1
uint8 LOAD_LPNP_FAILED = 2
uint8 LOAD_PNP_FAILED = 3
uint8 DELETE_FAILED = 4
uint8 RENAME_FAILED = 5
uint8 value

================================================================================
MSG: system_manager_msgs/ParkingLotInfo
float32 dist
uint32 id
string name
mla_localization_msgs/MLAPosGlobal position
uint32 parking_space_id
mla_localization_msgs/MLAPosGlobal[] parking_space_positions
mla_localization_msgs/MLAPosGlobal trace_start_position
mla_localization_msgs/MLAPosGlobal trace_end_position
system_manager_msgs/ParkingLotTypeEnum type
string render_data
string address
uint32 trajectory_length
string label
string reversed

================================================================================
MSG: mla_localization_msgs/MLAPosGlobal
float64 latitude
float64 longitude
float64 altitude

================================================================================
MSG: system_manager_msgs/ParkingLotTypeEnum
uint8 PNP = 0
uint8 LPNP = 1
uint8 BOTH = 2
uint8 type

")



(provide :system_manager_msgs/SysMapProviderParkingResponse "70d19a26cbb38866f66e1250a27f6e64")


