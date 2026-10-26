;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::ArsObjectArray)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'ArsObjectArray (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ARSOBJECTARRAY")
  (make-package "MOMENTA_MSGS::ARSOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude ArsObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::ArsObjectArray
  :super ros::object
  :slots (_header _object_array ))

(defmethod momenta_msgs::ArsObjectArray
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
    ;; momenta_msgs/ArsObject[] _object_array
    (apply #'+ (send-all _object_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/ArsObject[] _object_array
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
   ;; momenta_msgs/ArsObject[] _object_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_array (let (r) (dotimes (i n) (push (instance momenta_msgs::ArsObject :init) r)) r))
     (dolist (elem- _object_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::ArsObjectArray :md5sum-) "fbbc8cf9e91ea4cac89ddcedbc5d2fe4")
(setf (get momenta_msgs::ArsObjectArray :datatype-) "momenta_msgs/ArsObjectArray")
(setf (get momenta_msgs::ArsObjectArray :definition-)
      "std_msgs/Header header
momenta_msgs/ArsObject[] object_array

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
MSG: momenta_msgs/ArsObject
uint16 detection_id
geometry_msgs/Point position
geometry_msgs/Vector3 velocity
uint8 dyn_prop
float32 rcs
uint8 dislong_rms
uint8 dislat_rms
uint8 verllong_rms
uint8 verllat_rms
uint8 arellong_rms
uint8 arellat_rms
uint8 orientation_rms
uint8 meas_state
uint8 probofexist
float32 are_long
uint8 obj_class
float32 are_lat
float32 orientation_angle
float32 length
float32 width

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :momenta_msgs/ArsObjectArray "fbbc8cf9e91ea4cac89ddcedbc5d2fe4")


