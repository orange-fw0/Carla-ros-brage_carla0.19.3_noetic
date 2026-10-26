;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::ModuleControl)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'ModuleControl (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::MODULECONTROL")
  (make-package "FRAMEWORK_STATUS_MSGS::MODULECONTROL"))

(in-package "ROS")
;;//! \htmlinclude ModuleControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STOP*" (find-package "FRAMEWORK_STATUS_MSGS::MODULECONTROL"))
(shadow '*STOP* (find-package "FRAMEWORK_STATUS_MSGS::MODULECONTROL"))
(defconstant framework_status_msgs::ModuleControl::*STOP* 0)
(intern "*START*" (find-package "FRAMEWORK_STATUS_MSGS::MODULECONTROL"))
(shadow '*START* (find-package "FRAMEWORK_STATUS_MSGS::MODULECONTROL"))
(defconstant framework_status_msgs::ModuleControl::*START* 1)

(defun framework_status_msgs::ModuleControl-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::ModuleControl::*STOP*)
        ((= const 1) 'framework_status_msgs::ModuleControl::*START*)
        (t nil)))

(defclass framework_status_msgs::ModuleControl
  :super ros::object
  :slots (_header _timestamp_us _module_type _action ))

(defmethod framework_status_msgs::ModuleControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp_us __timestamp_us) 0)
    ((:module_type __module_type) (instance framework_status_msgs::ModuleType :init))
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp_us (round __timestamp_us))
   (setq _module_type __module_type)
   (setq _action (round __action))
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
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _timestamp_us
    8
    ;; framework_status_msgs/ModuleType _module_type
    (send _module_type :serialization-length)
    ;; uint8 _action
    1
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
     ;; uint8 _action
       (write-byte _action s)
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
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get framework_status_msgs::ModuleControl :md5sum-) "abff0e71cedf4e41f7acb471b6a5e192")
(setf (get framework_status_msgs::ModuleControl :datatype-) "framework_status_msgs/ModuleControl")
(setf (get framework_status_msgs::ModuleControl :definition-)
      "uint8 STOP = 0
uint8 START = 1
std_msgs/Header header
uint64 timestamp_us
framework_status_msgs/ModuleType module_type
uint8 action

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



(provide :framework_status_msgs/ModuleControl "abff0e71cedf4e41f7acb471b6a5e192")


