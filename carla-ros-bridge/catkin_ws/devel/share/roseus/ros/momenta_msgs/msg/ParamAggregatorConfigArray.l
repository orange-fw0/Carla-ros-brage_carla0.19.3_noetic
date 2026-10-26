;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::ParamAggregatorConfigArray)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'ParamAggregatorConfigArray (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PARAMAGGREGATORCONFIGARRAY")
  (make-package "MOMENTA_MSGS::PARAMAGGREGATORCONFIGARRAY"))

(in-package "ROS")
;;//! \htmlinclude ParamAggregatorConfigArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::ParamAggregatorConfigArray
  :super ros::object
  :slots (_header _config_array ))

(defmethod momenta_msgs::ParamAggregatorConfigArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:config_array __config_array) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _config_array __config_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:config_array
   (&rest __config_array)
   (if (keywordp (car __config_array))
       (send* _config_array __config_array)
     (progn
       (if __config_array (setq _config_array (car __config_array)))
       _config_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/ParamAggregatorConfig[] _config_array
    (apply #'+ (send-all _config_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/ParamAggregatorConfig[] _config_array
     (write-long (length _config_array) s)
     (dolist (elem _config_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/ParamAggregatorConfig[] _config_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _config_array (let (r) (dotimes (i n) (push (instance momenta_msgs::ParamAggregatorConfig :init) r)) r))
     (dolist (elem- _config_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::ParamAggregatorConfigArray :md5sum-) "24b5eac89139060be3eae4197c8b5d02")
(setf (get momenta_msgs::ParamAggregatorConfigArray :datatype-) "momenta_msgs/ParamAggregatorConfigArray")
(setf (get momenta_msgs::ParamAggregatorConfigArray :definition-)
      "std_msgs/Header header
momenta_msgs/ParamAggregatorConfig[] config_array

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
MSG: momenta_msgs/ParamAggregatorConfig
string name
string data
string type

")



(provide :momenta_msgs/ParamAggregatorConfigArray "24b5eac89139060be3eae4197c8b5d02")


