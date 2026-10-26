;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::ParkingOutInfo)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'ParkingOutInfo (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PARKINGOUTINFO")
  (make-package "MOMENTA_MSGS::PARKINGOUTINFO"))

(in-package "ROS")
;;//! \htmlinclude ParkingOutInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::ParkingOutInfo
  :super ros::object
  :slots (_header _id _type _corners _apoa_yaw _apoa_enu ))

(defmethod momenta_msgs::ParkingOutInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:type __type) "")
    ((:corners __corners) ())
    ((:apoa_yaw __apoa_yaw) 0.0)
    ((:apoa_enu __apoa_enu) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _type (string __type))
   (setq _corners __corners)
   (setq _apoa_yaw (float __apoa_yaw))
   (setq _apoa_enu __apoa_enu)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:corners
   (&rest __corners)
   (if (keywordp (car __corners))
       (send* _corners __corners)
     (progn
       (if __corners (setq _corners (car __corners)))
       _corners)))
  (:apoa_yaw
   (&optional __apoa_yaw)
   (if __apoa_yaw (setq _apoa_yaw __apoa_yaw)) _apoa_yaw)
  (:apoa_enu
   (&rest __apoa_enu)
   (if (keywordp (car __apoa_enu))
       (send* _apoa_enu __apoa_enu)
     (progn
       (if __apoa_enu (setq _apoa_enu (car __apoa_enu)))
       _apoa_enu)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _id
    2
    ;; string _type
    4 (length _type)
    ;; geometry_msgs/Point[] _corners
    (apply #'+ (send-all _corners :serialization-length)) 4
    ;; float64 _apoa_yaw
    8
    ;; geometry_msgs/Point _apoa_enu
    (send _apoa_enu :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _id
       (write-word _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; geometry_msgs/Point[] _corners
     (write-long (length _corners) s)
     (dolist (elem _corners)
       (send elem :serialize s)
       )
     ;; float64 _apoa_yaw
       (sys::poke _apoa_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _apoa_enu
       (send _apoa_enu :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point[] _corners
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _corners (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _corners)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _apoa_yaw
     (setq _apoa_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _apoa_enu
     (send _apoa_enu :deserialize buf ptr-) (incf ptr- (send _apoa_enu :serialization-length))
   ;;
   self)
  )

(setf (get momenta_msgs::ParkingOutInfo :md5sum-) "8c2a99e8375b17e279eee0726e77a6ca")
(setf (get momenta_msgs::ParkingOutInfo :datatype-) "momenta_msgs/ParkingOutInfo")
(setf (get momenta_msgs::ParkingOutInfo :definition-)
      "std_msgs/Header header
uint16 id
string type
geometry_msgs/Point[] corners
float64 apoa_yaw
geometry_msgs/Point apoa_enu

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :momenta_msgs/ParkingOutInfo "8c2a99e8375b17e279eee0726e77a6ca")


