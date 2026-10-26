;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MTPCarObjectArray)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MTPCarObjectArray (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MTPCAROBJECTARRAY")
  (make-package "MOMENTA_MSGS::MTPCAROBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude MTPCarObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::MTPCarObjectArray
  :super ros::object
  :slots (_header _object_array ))

(defmethod momenta_msgs::MTPCarObjectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:object_array __object_array) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _object_array __object_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:object_array
   (&rest __object_array)
   (if (keywordp (car __object_array))
       (send* _object_array __object_array)
     (progn
       (if __object_array (setq _object_array (car __object_array)))
       _object_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/MTPCarObject[] _object_array
    (apply #'+ (send-all _object_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/MTPCarObject[] _object_array
     (write-long (length _object_array) s)
     (dolist (elem _object_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/MTPCarObject[] _object_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_array (let (r) (dotimes (i n) (push (instance momenta_msgs::MTPCarObject :init) r)) r))
     (dolist (elem- _object_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::MTPCarObjectArray :md5sum-) "16cd1162891106a5e503fb0f646c393c")
(setf (get momenta_msgs::MTPCarObjectArray :datatype-) "momenta_msgs/MTPCarObjectArray")
(setf (get momenta_msgs::MTPCarObjectArray :definition-)
      "std_msgs/Header header
momenta_msgs/MTPCarObject[] object_array

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
MSG: momenta_msgs/MTPCarObject
uint64 available
float32 left
float32 top
float32 right
float32 bottom
float32 score
int32 visibility
float32[] wheels_position_x
float32[] wheels_position_y
float32[] wheels_visibility
int32 wheels_count
float32[] pillars_position_x
float32[] pillars_visibility
int32 pillars_count
uint32 heading
uint64 track_id
uint64 track_times
int32 live
float32 angle_yaw
uint32 backlamp
uint32 type
uint32 reid_feature_length
float32[] reid_feature

")



(provide :momenta_msgs/MTPCarObjectArray "16cd1162891106a5e503fb0f646c393c")


