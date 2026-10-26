;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::MagicCarpetResult)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'MagicCarpetResult (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETRESULT")
  (make-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETRESULT"))

(in-package "ROS")
;;//! \htmlinclude MagicCarpetResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_interface_msgs::MagicCarpetResult
  :super ros::object
  :slots (_header _camera_meta _left_front_objects _right_front_objects _left_front_elevation_points_cm _right_front_elevation_points_cm _raw_objects _system_status _road_scene _source _left_wheel_traj _right_wheel_traj _reserved ))

(defmethod perception_interface_msgs::MagicCarpetResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:camera_meta __camera_meta) ())
    ((:left_front_objects __left_front_objects) ())
    ((:right_front_objects __right_front_objects) ())
    ((:left_front_elevation_points_cm __left_front_elevation_points_cm) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:right_front_elevation_points_cm __right_front_elevation_points_cm) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:raw_objects __raw_objects) ())
    ((:system_status __system_status) 0)
    ((:road_scene __road_scene) 0)
    ((:source __source) "")
    ((:left_wheel_traj __left_wheel_traj) ())
    ((:right_wheel_traj __right_wheel_traj) ())
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _camera_meta __camera_meta)
   (setq _left_front_objects __left_front_objects)
   (setq _right_front_objects __right_front_objects)
   (setq _left_front_elevation_points_cm __left_front_elevation_points_cm)
   (setq _right_front_elevation_points_cm __right_front_elevation_points_cm)
   (setq _raw_objects __raw_objects)
   (setq _system_status (round __system_status))
   (setq _road_scene (round __road_scene))
   (setq _source (string __source))
   (setq _left_wheel_traj __left_wheel_traj)
   (setq _right_wheel_traj __right_wheel_traj)
   (setq _reserved (string __reserved))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:camera_meta
   (&rest __camera_meta)
   (if (keywordp (car __camera_meta))
       (send* _camera_meta __camera_meta)
     (progn
       (if __camera_meta (setq _camera_meta (car __camera_meta)))
       _camera_meta)))
  (:left_front_objects
   (&rest __left_front_objects)
   (if (keywordp (car __left_front_objects))
       (send* _left_front_objects __left_front_objects)
     (progn
       (if __left_front_objects (setq _left_front_objects (car __left_front_objects)))
       _left_front_objects)))
  (:right_front_objects
   (&rest __right_front_objects)
   (if (keywordp (car __right_front_objects))
       (send* _right_front_objects __right_front_objects)
     (progn
       (if __right_front_objects (setq _right_front_objects (car __right_front_objects)))
       _right_front_objects)))
  (:left_front_elevation_points_cm
   (&optional __left_front_elevation_points_cm)
   (if __left_front_elevation_points_cm (setq _left_front_elevation_points_cm __left_front_elevation_points_cm)) _left_front_elevation_points_cm)
  (:right_front_elevation_points_cm
   (&optional __right_front_elevation_points_cm)
   (if __right_front_elevation_points_cm (setq _right_front_elevation_points_cm __right_front_elevation_points_cm)) _right_front_elevation_points_cm)
  (:raw_objects
   (&rest __raw_objects)
   (if (keywordp (car __raw_objects))
       (send* _raw_objects __raw_objects)
     (progn
       (if __raw_objects (setq _raw_objects (car __raw_objects)))
       _raw_objects)))
  (:system_status
   (&optional __system_status)
   (if __system_status (setq _system_status __system_status)) _system_status)
  (:road_scene
   (&optional __road_scene)
   (if __road_scene (setq _road_scene __road_scene)) _road_scene)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:left_wheel_traj
   (&rest __left_wheel_traj)
   (if (keywordp (car __left_wheel_traj))
       (send* _left_wheel_traj __left_wheel_traj)
     (progn
       (if __left_wheel_traj (setq _left_wheel_traj (car __left_wheel_traj)))
       _left_wheel_traj)))
  (:right_wheel_traj
   (&rest __right_wheel_traj)
   (if (keywordp (car __right_wheel_traj))
       (send* _right_wheel_traj __right_wheel_traj)
     (progn
       (if __right_wheel_traj (setq _right_wheel_traj (car __right_wheel_traj)))
       _right_wheel_traj)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_interface_msgs/MagicCarpetMeta[] _camera_meta
    (apply #'+ (send-all _camera_meta :serialization-length)) 4
    ;; perception_interface_msgs/MagicCarpetObject[] _left_front_objects
    (apply #'+ (send-all _left_front_objects :serialization-length)) 4
    ;; perception_interface_msgs/MagicCarpetObject[] _right_front_objects
    (apply #'+ (send-all _right_front_objects :serialization-length)) 4
    ;; float32[] _left_front_elevation_points_cm
    (* 4    (length _left_front_elevation_points_cm)) 4
    ;; float32[] _right_front_elevation_points_cm
    (* 4    (length _right_front_elevation_points_cm)) 4
    ;; perception_interface_msgs/MagicCarpetRawObject[] _raw_objects
    (apply #'+ (send-all _raw_objects :serialization-length)) 4
    ;; uint8 _system_status
    1
    ;; uint8 _road_scene
    1
    ;; string _source
    4 (length _source)
    ;; perception_interface_msgs/Point3f[] _left_wheel_traj
    (apply #'+ (send-all _left_wheel_traj :serialization-length)) 4
    ;; perception_interface_msgs/Point3f[] _right_wheel_traj
    (apply #'+ (send-all _right_wheel_traj :serialization-length)) 4
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_interface_msgs/MagicCarpetMeta[] _camera_meta
     (write-long (length _camera_meta) s)
     (dolist (elem _camera_meta)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/MagicCarpetObject[] _left_front_objects
     (write-long (length _left_front_objects) s)
     (dolist (elem _left_front_objects)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/MagicCarpetObject[] _right_front_objects
     (write-long (length _right_front_objects) s)
     (dolist (elem _right_front_objects)
       (send elem :serialize s)
       )
     ;; float32[] _left_front_elevation_points_cm
     (write-long (length _left_front_elevation_points_cm) s)
     (dotimes (i (length _left_front_elevation_points_cm))
       (sys::poke (elt _left_front_elevation_points_cm i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _right_front_elevation_points_cm
     (write-long (length _right_front_elevation_points_cm) s)
     (dotimes (i (length _right_front_elevation_points_cm))
       (sys::poke (elt _right_front_elevation_points_cm i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; perception_interface_msgs/MagicCarpetRawObject[] _raw_objects
     (write-long (length _raw_objects) s)
     (dolist (elem _raw_objects)
       (send elem :serialize s)
       )
     ;; uint8 _system_status
       (write-byte _system_status s)
     ;; uint8 _road_scene
       (write-byte _road_scene s)
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;; perception_interface_msgs/Point3f[] _left_wheel_traj
     (write-long (length _left_wheel_traj) s)
     (dolist (elem _left_wheel_traj)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point3f[] _right_wheel_traj
     (write-long (length _right_wheel_traj) s)
     (dolist (elem _right_wheel_traj)
       (send elem :serialize s)
       )
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_interface_msgs/MagicCarpetMeta[] _camera_meta
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_meta (let (r) (dotimes (i n) (push (instance perception_interface_msgs::MagicCarpetMeta :init) r)) r))
     (dolist (elem- _camera_meta)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/MagicCarpetObject[] _left_front_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_front_objects (let (r) (dotimes (i n) (push (instance perception_interface_msgs::MagicCarpetObject :init) r)) r))
     (dolist (elem- _left_front_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/MagicCarpetObject[] _right_front_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_front_objects (let (r) (dotimes (i n) (push (instance perception_interface_msgs::MagicCarpetObject :init) r)) r))
     (dolist (elem- _right_front_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _left_front_elevation_points_cm
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_front_elevation_points_cm (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _left_front_elevation_points_cm i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _right_front_elevation_points_cm
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_front_elevation_points_cm (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _right_front_elevation_points_cm i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; perception_interface_msgs/MagicCarpetRawObject[] _raw_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _raw_objects (let (r) (dotimes (i n) (push (instance perception_interface_msgs::MagicCarpetRawObject :init) r)) r))
     (dolist (elem- _raw_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _system_status
     (setq _system_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _road_scene
     (setq _road_scene (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; perception_interface_msgs/Point3f[] _left_wheel_traj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_wheel_traj (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _left_wheel_traj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point3f[] _right_wheel_traj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_wheel_traj (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _right_wheel_traj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::MagicCarpetResult :md5sum-) "663f8b630aabcd0295b8dbcb7cc0c8d5")
(setf (get perception_interface_msgs::MagicCarpetResult :datatype-) "perception_interface_msgs/MagicCarpetResult")
(setf (get perception_interface_msgs::MagicCarpetResult :definition-)
      "std_msgs/Header header
perception_interface_msgs/MagicCarpetMeta[] camera_meta
perception_interface_msgs/MagicCarpetObject[] left_front_objects
perception_interface_msgs/MagicCarpetObject[] right_front_objects
float32[] left_front_elevation_points_cm
float32[] right_front_elevation_points_cm
perception_interface_msgs/MagicCarpetRawObject[] raw_objects
uint8 system_status
uint8 road_scene
string source
perception_interface_msgs/Point3f[] left_wheel_traj
perception_interface_msgs/Point3f[] right_wheel_traj
string reserved

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
MSG: perception_interface_msgs/MagicCarpetMeta
uint32 sensor_timestamp_us
string camera_tag

================================================================================
MSG: perception_interface_msgs/MagicCarpetObject
uint8 UNKNOWN = 0
uint8 MANHOLE = 1
uint8 SPEED_BUMP = 2
uint8 ROAD_CRACK = 3
uint8 BROKEN_ROAD = 4
uint8 ROAD_CURB = 5
uint8 RESERVED_6 = 6
uint8 RESERVED_7 = 7
uint8 RESERVED_8 = 8
uint8 RESERVED_9 = 9
uint8 RESERVED_10 = 10
uint8 type
float32 elevation_cm
float32 longitude_distance_m

================================================================================
MSG: perception_interface_msgs/MagicCarpetRawObject
uint8 type
perception_interface_msgs/Point2f[] polygon_2d
perception_interface_msgs/Point3f[] polygon_3d
float32 score

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :perception_interface_msgs/MagicCarpetResult "663f8b630aabcd0295b8dbcb7cc0c8d5")


