;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::CarConfig)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'CarConfig (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::CARCONFIG")
  (make-package "MOMENTA_MSGS::CARCONFIG"))

(in-package "ROS")
;;//! \htmlinclude CarConfig.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::CarConfig
  :super ros::object
  :slots (_header _lidar_type _camera_type _location_type ))

(defmethod momenta_msgs::CarConfig
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lidar_type __lidar_type) "")
    ((:camera_type __camera_type) "")
    ((:location_type __location_type) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _lidar_type (string __lidar_type))
   (setq _camera_type (string __camera_type))
   (setq _location_type (string __location_type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lidar_type
   (&optional __lidar_type)
   (if __lidar_type (setq _lidar_type __lidar_type)) _lidar_type)
  (:camera_type
   (&optional __camera_type)
   (if __camera_type (setq _camera_type __camera_type)) _camera_type)
  (:location_type
   (&optional __location_type)
   (if __location_type (setq _location_type __location_type)) _location_type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _lidar_type
    4 (length _lidar_type)
    ;; string _camera_type
    4 (length _camera_type)
    ;; string _location_type
    4 (length _location_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _lidar_type
       (write-long (length _lidar_type) s) (princ _lidar_type s)
     ;; string _camera_type
       (write-long (length _camera_type) s) (princ _camera_type s)
     ;; string _location_type
       (write-long (length _location_type) s) (princ _location_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _lidar_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lidar_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _camera_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _location_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get momenta_msgs::CarConfig :md5sum-) "422fbf7a25d29ea17904f99623359848")
(setf (get momenta_msgs::CarConfig :datatype-) "momenta_msgs/CarConfig")
(setf (get momenta_msgs::CarConfig :definition-)
      "std_msgs/Header header
string lidar_type
string camera_type
string location_type

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



(provide :momenta_msgs/CarConfig "422fbf7a25d29ea17904f99623359848")


