;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::FusionTrafficLightArray)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'FusionTrafficLightArray (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::FUSIONTRAFFICLIGHTARRAY")
  (make-package "MOMENTA_MSGS::FUSIONTRAFFICLIGHTARRAY"))

(in-package "ROS")
;;//! \htmlinclude FusionTrafficLightArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::FusionTrafficLightArray
  :super ros::object
  :slots (_header _traffic_light_array ))

(defmethod momenta_msgs::FusionTrafficLightArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:traffic_light_array __traffic_light_array) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _traffic_light_array __traffic_light_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:traffic_light_array
   (&rest __traffic_light_array)
   (if (keywordp (car __traffic_light_array))
       (send* _traffic_light_array __traffic_light_array)
     (progn
       (if __traffic_light_array (setq _traffic_light_array (car __traffic_light_array)))
       _traffic_light_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/FusionTrafficLight[] _traffic_light_array
    (apply #'+ (send-all _traffic_light_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/FusionTrafficLight[] _traffic_light_array
     (write-long (length _traffic_light_array) s)
     (dolist (elem _traffic_light_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/FusionTrafficLight[] _traffic_light_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_array (let (r) (dotimes (i n) (push (instance momenta_msgs::FusionTrafficLight :init) r)) r))
     (dolist (elem- _traffic_light_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::FusionTrafficLightArray :md5sum-) "a71f672d381692d63c96a18bb202b374")
(setf (get momenta_msgs::FusionTrafficLightArray :datatype-) "momenta_msgs/FusionTrafficLightArray")
(setf (get momenta_msgs::FusionTrafficLightArray :definition-)
      "std_msgs/Header header
momenta_msgs/FusionTrafficLight[] traffic_light_array

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
MSG: momenta_msgs/FusionTrafficLight
int32 pattern
int32 status
float64 duration
float64 remaining

")



(provide :momenta_msgs/FusionTrafficLightArray "a71f672d381692d63c96a18bb202b374")


