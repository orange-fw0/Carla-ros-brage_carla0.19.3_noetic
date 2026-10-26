;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::ArsClusterArray)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'ArsClusterArray (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ARSCLUSTERARRAY")
  (make-package "MOMENTA_MSGS::ARSCLUSTERARRAY"))

(in-package "ROS")
;;//! \htmlinclude ArsClusterArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::ArsClusterArray
  :super ros::object
  :slots (_header _cluster_array ))

(defmethod momenta_msgs::ArsClusterArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cluster_array __cluster_array) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _cluster_array __cluster_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cluster_array
   (&rest __cluster_array)
   (if (keywordp (car __cluster_array))
       (send* _cluster_array __cluster_array)
     (progn
       (if __cluster_array (setq _cluster_array (car __cluster_array)))
       _cluster_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/ArsCluster[] _cluster_array
    (apply #'+ (send-all _cluster_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/ArsCluster[] _cluster_array
     (write-long (length _cluster_array) s)
     (dolist (elem _cluster_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/ArsCluster[] _cluster_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cluster_array (let (r) (dotimes (i n) (push (instance momenta_msgs::ArsCluster :init) r)) r))
     (dolist (elem- _cluster_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::ArsClusterArray :md5sum-) "58a0208e74952c88935dceb889251d7a")
(setf (get momenta_msgs::ArsClusterArray :datatype-) "momenta_msgs/ArsClusterArray")
(setf (get momenta_msgs::ArsClusterArray :definition-)
      "std_msgs/Header header
momenta_msgs/ArsCluster[] cluster_array

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
MSG: momenta_msgs/ArsCluster
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
uint8 pdh0
uint8 ambigstate
uint8 invalidstate

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



(provide :momenta_msgs/ArsClusterArray "58a0208e74952c88935dceb889251d7a")


