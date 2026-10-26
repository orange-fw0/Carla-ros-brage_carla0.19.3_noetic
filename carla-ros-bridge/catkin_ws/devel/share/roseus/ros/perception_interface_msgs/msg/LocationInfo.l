;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::LocationInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'LocationInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LOCATIONINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::LOCATIONINFO"))

(in-package "ROS")
;;//! \htmlinclude LocationInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_interface_msgs::LocationInfo
  :super ros::object
  :slots (_header _is_valid _qw _qx _qy _qz _tx _ty _tz ))

(defmethod perception_interface_msgs::LocationInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_valid __is_valid) nil)
    ((:qw __qw) 0.0)
    ((:qx __qx) 0.0)
    ((:qy __qy) 0.0)
    ((:qz __qz) 0.0)
    ((:tx __tx) 0.0)
    ((:ty __ty) 0.0)
    ((:tz __tz) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_valid __is_valid)
   (setq _qw (float __qw))
   (setq _qx (float __qx))
   (setq _qy (float __qy))
   (setq _qz (float __qz))
   (setq _tx (float __tx))
   (setq _ty (float __ty))
   (setq _tz (float __tz))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_valid
   (&optional (__is_valid :null))
   (if (not (eq __is_valid :null)) (setq _is_valid __is_valid)) _is_valid)
  (:qw
   (&optional __qw)
   (if __qw (setq _qw __qw)) _qw)
  (:qx
   (&optional __qx)
   (if __qx (setq _qx __qx)) _qx)
  (:qy
   (&optional __qy)
   (if __qy (setq _qy __qy)) _qy)
  (:qz
   (&optional __qz)
   (if __qz (setq _qz __qz)) _qz)
  (:tx
   (&optional __tx)
   (if __tx (setq _tx __tx)) _tx)
  (:ty
   (&optional __ty)
   (if __ty (setq _ty __ty)) _ty)
  (:tz
   (&optional __tz)
   (if __tz (setq _tz __tz)) _tz)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_valid
    1
    ;; float32 _qw
    4
    ;; float32 _qx
    4
    ;; float32 _qy
    4
    ;; float32 _qz
    4
    ;; float32 _tx
    4
    ;; float32 _ty
    4
    ;; float32 _tz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _qw
       (sys::poke _qw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _qx
       (sys::poke _qx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _qy
       (sys::poke _qy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _qz
       (sys::poke _qz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tx
       (sys::poke _tx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ty
       (sys::poke _ty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tz
       (sys::poke _tz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _qw
     (setq _qw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _qx
     (setq _qx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _qy
     (setq _qy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _qz
     (setq _qz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tx
     (setq _tx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ty
     (setq _ty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tz
     (setq _tz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::LocationInfo :md5sum-) "baefd7a9d9eeeb6de8e84a99f6c9939f")
(setf (get perception_interface_msgs::LocationInfo :datatype-) "perception_interface_msgs/LocationInfo")
(setf (get perception_interface_msgs::LocationInfo :definition-)
      "std_msgs/Header header
bool is_valid
float32 qw
float32 qx
float32 qy
float32 qz
float32 tx
float32 ty
float32 tz

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



(provide :perception_interface_msgs/LocationInfo "baefd7a9d9eeeb6de8e84a99f6c9939f")


