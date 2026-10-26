;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::ModuleStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'ModuleStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))

(in-package "ROS")
;;//! \htmlinclude ModuleStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STOP*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*STOP* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*STOP* 0)
(intern "*STARTING*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*STARTING* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*STARTING* 1)
(intern "*RUNNING*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING* 2)
(intern "*STOPPING*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*STOPPING* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*STOPPING* 3)
(intern "*RUNNING_WARNING*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_WARNING* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_WARNING* 4)
(intern "*RUNNING_ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_ERROR* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_ERROR* 5)
(intern "*NONE*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*NONE* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*NONE* 0)
(intern "*RUNNING_UNKNOWN_ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_UNKNOWN_ERROR* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_UNKNOWN_ERROR* 1)
(intern "*RUNNING_OUT_OF_ROUTE*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_OUT_OF_ROUTE* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_OUT_OF_ROUTE* 2)
(intern "*RUNNING_OUT_OF_MAP*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_OUT_OF_MAP* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_OUT_OF_MAP* 3)
(intern "*RUNNING_INVALID_LANE_SCENE*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_INVALID_LANE_SCENE* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_INVALID_LANE_SCENE* 4)
(intern "*RUNNING_TAKING_OVER*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_TAKING_OVER* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_TAKING_OVER* 5)
(intern "*RUNNING_UNEXPECTED_ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_UNEXPECTED_ERROR* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_UNEXPECTED_ERROR* 6)
(intern "*RUNNING_IMAGE_BLACK*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_IMAGE_BLACK* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_IMAGE_BLACK* 7)
(intern "*RUNNING_IMAGE_HIGH_LATENCY*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_IMAGE_HIGH_LATENCY* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_IMAGE_HIGH_LATENCY* 8)
(intern "*RUNNING_IMAGE_LOST*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_IMAGE_LOST* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_IMAGE_LOST* 9)
(intern "*RUNNING_POINT_CLOUD_EMPTY*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_POINT_CLOUD_EMPTY* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_POINT_CLOUD_EMPTY* 10)
(intern "*RUNNING_LOCATION_LOW_ACCURACY*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_LOCATION_LOW_ACCURACY* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_LOCATION_LOW_ACCURACY* 11)
(intern "*RUNNING_MISSING_INPUTS*" (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(shadow '*RUNNING_MISSING_INPUTS* (find-package "FRAMEWORK_STATUS_MSGS::MODULESTATUS"))
(defconstant framework_status_msgs::ModuleStatus::*RUNNING_MISSING_INPUTS* 12)

(defun framework_status_msgs::ModuleStatus-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::ModuleStatus::*STOP*)
        ((= const 1) 'framework_status_msgs::ModuleStatus::*STARTING*)
        ((= const 2) 'framework_status_msgs::ModuleStatus::*RUNNING*)
        ((= const 3) 'framework_status_msgs::ModuleStatus::*STOPPING*)
        ((= const 4) 'framework_status_msgs::ModuleStatus::*RUNNING_WARNING*)
        ((= const 5) 'framework_status_msgs::ModuleStatus::*RUNNING_ERROR*)
        ((= const 0) 'framework_status_msgs::ModuleStatus::*NONE*)
        ((= const 1) 'framework_status_msgs::ModuleStatus::*RUNNING_UNKNOWN_ERROR*)
        ((= const 2) 'framework_status_msgs::ModuleStatus::*RUNNING_OUT_OF_ROUTE*)
        ((= const 3) 'framework_status_msgs::ModuleStatus::*RUNNING_OUT_OF_MAP*)
        ((= const 4) 'framework_status_msgs::ModuleStatus::*RUNNING_INVALID_LANE_SCENE*)
        ((= const 5) 'framework_status_msgs::ModuleStatus::*RUNNING_TAKING_OVER*)
        ((= const 6) 'framework_status_msgs::ModuleStatus::*RUNNING_UNEXPECTED_ERROR*)
        ((= const 7) 'framework_status_msgs::ModuleStatus::*RUNNING_IMAGE_BLACK*)
        ((= const 8) 'framework_status_msgs::ModuleStatus::*RUNNING_IMAGE_HIGH_LATENCY*)
        ((= const 9) 'framework_status_msgs::ModuleStatus::*RUNNING_IMAGE_LOST*)
        ((= const 10) 'framework_status_msgs::ModuleStatus::*RUNNING_POINT_CLOUD_EMPTY*)
        ((= const 11) 'framework_status_msgs::ModuleStatus::*RUNNING_LOCATION_LOW_ACCURACY*)
        ((= const 12) 'framework_status_msgs::ModuleStatus::*RUNNING_MISSING_INPUTS*)
        (t nil)))

(defclass framework_status_msgs::ModuleStatus
  :super ros::object
  :slots (_header _timestamp_us _module_type _status _detail_status _latency_ms _message ))

(defmethod framework_status_msgs::ModuleStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp_us __timestamp_us) 0)
    ((:module_type __module_type) (instance framework_status_msgs::ModuleType :init))
    ((:status __status) 0)
    ((:detail_status __detail_status) 0)
    ((:latency_ms __latency_ms) 0.0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp_us (round __timestamp_us))
   (setq _module_type __module_type)
   (setq _status (round __status))
   (setq _detail_status (round __detail_status))
   (setq _latency_ms (float __latency_ms))
   (setq _message (string __message))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:module_type
   (&rest __module_type)
   (if (keywordp (car __module_type))
       (send* _module_type __module_type)
     (progn
       (if __module_type (setq _module_type (car __module_type)))
       _module_type)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:detail_status
   (&optional __detail_status)
   (if __detail_status (setq _detail_status __detail_status)) _detail_status)
  (:latency_ms
   (&optional __latency_ms)
   (if __latency_ms (setq _latency_ms __latency_ms)) _latency_ms)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _timestamp_us
    8
    ;; framework_status_msgs/ModuleType _module_type
    (send _module_type :serialization-length)
    ;; uint8 _status
    1
    ;; uint8 _detail_status
    1
    ;; float64 _latency_ms
    8
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
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
     ;; framework_status_msgs/ModuleType _module_type
       (send _module_type :serialize s)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _detail_status
       (write-byte _detail_status s)
     ;; float64 _latency_ms
       (sys::poke _latency_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
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
   ;; framework_status_msgs/ModuleType _module_type
     (send _module_type :deserialize buf ptr-) (incf ptr- (send _module_type :serialization-length))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _detail_status
     (setq _detail_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _latency_ms
     (setq _latency_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::ModuleStatus :md5sum-) "2e6d24127e694ab410bf12cdf334cc32")
(setf (get framework_status_msgs::ModuleStatus :datatype-) "framework_status_msgs/ModuleStatus")
(setf (get framework_status_msgs::ModuleStatus :definition-)
      "uint8 STOP = 0
uint8 STARTING = 1
uint8 RUNNING = 2
uint8 STOPPING = 3
uint8 RUNNING_WARNING = 4
uint8 RUNNING_ERROR = 5
uint8 NONE = 0
uint8 RUNNING_UNKNOWN_ERROR = 1
uint8 RUNNING_OUT_OF_ROUTE = 2
uint8 RUNNING_OUT_OF_MAP = 3
uint8 RUNNING_INVALID_LANE_SCENE = 4
uint8 RUNNING_TAKING_OVER = 5
uint8 RUNNING_UNEXPECTED_ERROR = 6
uint8 RUNNING_IMAGE_BLACK = 7
uint8 RUNNING_IMAGE_HIGH_LATENCY = 8
uint8 RUNNING_IMAGE_LOST = 9
uint8 RUNNING_POINT_CLOUD_EMPTY = 10
uint8 RUNNING_LOCATION_LOW_ACCURACY = 11
uint8 RUNNING_MISSING_INPUTS = 12
std_msgs/Header header
uint64 timestamp_us
framework_status_msgs/ModuleType module_type
uint8 status
uint8 detail_status
float64 latency_ms
string message

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
MSG: framework_status_msgs/ModuleType
uint8 PREDICTION = 0
uint8 ROUTING = 1
uint8 PLANNING = 2
uint8 CONTROLLER = 3
uint8 ENDPOINT = 4
uint8 VEHICLE_REPORTER = 5
uint8 WORLDMODEL = 6
uint8 RADAR_PERCEPTION = 7
uint8 VISION_PERCEPTION = 8
uint8 LIDAR_PERCEPTION = 9
uint8 FUSION_PERCEPTION = 10
uint8 LOCATION = 11
uint8 VISION_TFC_PERCEPTION = 12
uint8 SENSOR_SERVICE = 13
uint8 CAMERA_SERVICE = 14
uint8 EGOPOSE_MANAGER = 15
uint8 EGOMOTION = 16
uint8 MAP_MANAGER = 17
uint8 LDP_PLANNING = 18
uint8 PLAC = 19
uint8 ACE = 20
uint8 VISTA = 21
uint8 DYNAMIC_SAFETY_CHECK = 22
uint8 value

")



(provide :framework_status_msgs/ModuleStatus "2e6d24127e694ab410bf12cdf334cc32")


