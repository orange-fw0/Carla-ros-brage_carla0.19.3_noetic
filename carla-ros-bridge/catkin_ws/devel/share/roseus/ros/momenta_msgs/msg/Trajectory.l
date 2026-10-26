;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::Trajectory)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'Trajectory (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::TRAJECTORY")
  (make-package "MOMENTA_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::Trajectory
  :super ros::object
  :slots (_header _path _vel_array _curvature _accleration _s _relative_time _is_replan _type ))

(defmethod momenta_msgs::Trajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:path __path) (instance momenta_msgs::Line :init))
    ((:vel_array __vel_array) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:curvature __curvature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:accleration __accleration) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:s __s) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:relative_time __relative_time) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:is_replan __is_replan) nil)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _path __path)
   (setq _vel_array __vel_array)
   (setq _curvature __curvature)
   (setq _accleration __accleration)
   (setq _s __s)
   (setq _relative_time __relative_time)
   (setq _is_replan __is_replan)
   (setq _type (round __type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:vel_array
   (&optional __vel_array)
   (if __vel_array (setq _vel_array __vel_array)) _vel_array)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:accleration
   (&optional __accleration)
   (if __accleration (setq _accleration __accleration)) _accleration)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:relative_time
   (&optional __relative_time)
   (if __relative_time (setq _relative_time __relative_time)) _relative_time)
  (:is_replan
   (&optional (__is_replan :null))
   (if (not (eq __is_replan :null)) (setq _is_replan __is_replan)) _is_replan)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/Line _path
    (send _path :serialization-length)
    ;; float32[] _vel_array
    (* 4    (length _vel_array)) 4
    ;; float32[] _curvature
    (* 4    (length _curvature)) 4
    ;; float32[] _accleration
    (* 4    (length _accleration)) 4
    ;; float32[] _s
    (* 4    (length _s)) 4
    ;; float32[] _relative_time
    (* 4    (length _relative_time)) 4
    ;; bool _is_replan
    1
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/Line _path
       (send _path :serialize s)
     ;; float32[] _vel_array
     (write-long (length _vel_array) s)
     (dotimes (i (length _vel_array))
       (sys::poke (elt _vel_array i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _curvature
     (write-long (length _curvature) s)
     (dotimes (i (length _curvature))
       (sys::poke (elt _curvature i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _accleration
     (write-long (length _accleration) s)
     (dotimes (i (length _accleration))
       (sys::poke (elt _accleration i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _s
     (write-long (length _s) s)
     (dotimes (i (length _s))
       (sys::poke (elt _s i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _relative_time
     (write-long (length _relative_time) s)
     (dotimes (i (length _relative_time))
       (sys::poke (elt _relative_time i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _is_replan
       (if _is_replan (write-byte -1 s) (write-byte 0 s))
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/Line _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; float32[] _vel_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vel_array (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vel_array i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _curvature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _curvature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _curvature i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _accleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accleration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _accleration i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _s
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _s (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _s i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _relative_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _relative_time (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _relative_time i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _is_replan
     (setq _is_replan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::Trajectory :md5sum-) "f56d7780cca9f3f4654351edab447c5f")
(setf (get momenta_msgs::Trajectory :datatype-) "momenta_msgs/Trajectory")
(setf (get momenta_msgs::Trajectory :definition-)
      "std_msgs/Header header
momenta_msgs/Line path
float32[] vel_array
float32[] curvature
float32[] accleration
float32[] s
float32[] relative_time
bool is_replan
int32 type

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
MSG: momenta_msgs/Line
geometry_msgs/Pose2D[] pose_array

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :momenta_msgs/Trajectory "f56d7780cca9f3f4654351edab447c5f")


