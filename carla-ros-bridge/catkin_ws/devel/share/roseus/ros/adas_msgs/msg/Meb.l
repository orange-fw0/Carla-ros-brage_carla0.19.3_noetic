;; Auto-generated. Do not edit!


(when (boundp 'adas_msgs::Meb)
  (if (not (find-package "ADAS_MSGS"))
    (make-package "ADAS_MSGS"))
  (shadow 'Meb (find-package "ADAS_MSGS")))
(unless (find-package "ADAS_MSGS::MEB")
  (make-package "ADAS_MSGS::MEB"))

(in-package "ROS")
;;//! \htmlinclude Meb.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass adas_msgs::Meb
  :super ros::object
  :slots (_header _ttc ))

(defmethod adas_msgs::Meb
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ttc __ttc) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ttc (float __ttc))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ttc
   (&optional __ttc)
   (if __ttc (setq _ttc __ttc)) _ttc)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _ttc
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _ttc
       (sys::poke _ttc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _ttc
     (setq _ttc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get adas_msgs::Meb :md5sum-) "306158f58935c451e3ddf5846dd01474")
(setf (get adas_msgs::Meb :datatype-) "adas_msgs/Meb")
(setf (get adas_msgs::Meb :definition-)
      "std_msgs/Header header
float64 ttc

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



(provide :adas_msgs/Meb "306158f58935c451e3ddf5846dd01474")


