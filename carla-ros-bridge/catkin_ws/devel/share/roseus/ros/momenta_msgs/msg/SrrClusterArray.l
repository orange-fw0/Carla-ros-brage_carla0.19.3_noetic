;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::SrrClusterArray)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'SrrClusterArray (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::SRRCLUSTERARRAY")
  (make-package "MOMENTA_MSGS::SRRCLUSTERARRAY"))

(in-package "ROS")
;;//! \htmlinclude SrrClusterArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::SrrClusterArray
  :super ros::object
  :slots (_header _cluster_array ))

(defmethod momenta_msgs::SrrClusterArray
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
    ;; momenta_msgs/SrrCluster[] _cluster_array
    (apply #'+ (send-all _cluster_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/SrrCluster[] _cluster_array
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
   ;; momenta_msgs/SrrCluster[] _cluster_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cluster_array (let (r) (dotimes (i n) (push (instance momenta_msgs::SrrCluster :init) r)) r))
     (dolist (elem- _cluster_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::SrrClusterArray :md5sum-) "6377e8197ae0222a5e3216e336c703aa")
(setf (get momenta_msgs::SrrClusterArray :datatype-) "momenta_msgs/SrrClusterArray")
(setf (get momenta_msgs::SrrClusterArray :definition-)
      "std_msgs/Header header
momenta_msgs/SrrCluster[] cluster_array

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
MSG: momenta_msgs/SrrCluster
uint16 detection_id
float32 range
float32 azimuth
float32 vrel
uint8 dyn_prop
float32 rcs

")



(provide :momenta_msgs/SrrClusterArray "6377e8197ae0222a5e3216e336c703aa")


