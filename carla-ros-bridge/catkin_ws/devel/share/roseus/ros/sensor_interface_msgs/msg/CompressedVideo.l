;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::CompressedVideo)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'CompressedVideo (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::COMPRESSEDVIDEO")
  (make-package "SENSOR_INTERFACE_MSGS::COMPRESSEDVIDEO"))

(in-package "ROS")
;;//! \htmlinclude CompressedVideo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_interface_msgs::CompressedVideo
  :super ros::object
  :slots (_header _format _data ))

(defmethod sensor_interface_msgs::CompressedVideo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:format __format) "")
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _format (string __format))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _format
    4 (length _format)
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _format
       (write-long (length _format) s) (princ _format s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _format
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::CompressedVideo :md5sum-) "8f7a12909da2c9d3332d540a0977563f")
(setf (get sensor_interface_msgs::CompressedVideo :datatype-) "sensor_interface_msgs/CompressedVideo")
(setf (get sensor_interface_msgs::CompressedVideo :definition-)
      "std_msgs/Header header
string format
uint8[] data

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



(provide :sensor_interface_msgs/CompressedVideo "8f7a12909da2c9d3332d540a0977563f")


