;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::TrafficLight)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'TrafficLight (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::TRAFFICLIGHT")
  (make-package "MOMENTA_MSGS::TRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude TrafficLight.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::TrafficLight
  :super ros::object
  :slots (_header _left _right _mid _can_go_straight _can_right_turn _can_left_turn _can_u_turn _bbox_pts _bbox_cnt ))

(defmethod momenta_msgs::TrafficLight
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left __left) 0)
    ((:right __right) 0)
    ((:mid __mid) 0)
    ((:can_go_straight __can_go_straight) nil)
    ((:can_right_turn __can_right_turn) nil)
    ((:can_left_turn __can_left_turn) nil)
    ((:can_u_turn __can_u_turn) nil)
    ((:bbox_pts __bbox_pts) ())
    ((:bbox_cnt __bbox_cnt) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left (round __left))
   (setq _right (round __right))
   (setq _mid (round __mid))
   (setq _can_go_straight __can_go_straight)
   (setq _can_right_turn __can_right_turn)
   (setq _can_left_turn __can_left_turn)
   (setq _can_u_turn __can_u_turn)
   (setq _bbox_pts __bbox_pts)
   (setq _bbox_cnt (round __bbox_cnt))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:mid
   (&optional __mid)
   (if __mid (setq _mid __mid)) _mid)
  (:can_go_straight
   (&optional (__can_go_straight :null))
   (if (not (eq __can_go_straight :null)) (setq _can_go_straight __can_go_straight)) _can_go_straight)
  (:can_right_turn
   (&optional (__can_right_turn :null))
   (if (not (eq __can_right_turn :null)) (setq _can_right_turn __can_right_turn)) _can_right_turn)
  (:can_left_turn
   (&optional (__can_left_turn :null))
   (if (not (eq __can_left_turn :null)) (setq _can_left_turn __can_left_turn)) _can_left_turn)
  (:can_u_turn
   (&optional (__can_u_turn :null))
   (if (not (eq __can_u_turn :null)) (setq _can_u_turn __can_u_turn)) _can_u_turn)
  (:bbox_pts
   (&rest __bbox_pts)
   (if (keywordp (car __bbox_pts))
       (send* _bbox_pts __bbox_pts)
     (progn
       (if __bbox_pts (setq _bbox_pts (car __bbox_pts)))
       _bbox_pts)))
  (:bbox_cnt
   (&optional __bbox_cnt)
   (if __bbox_cnt (setq _bbox_cnt __bbox_cnt)) _bbox_cnt)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _left
    1
    ;; int8 _right
    1
    ;; int8 _mid
    1
    ;; bool _can_go_straight
    1
    ;; bool _can_right_turn
    1
    ;; bool _can_left_turn
    1
    ;; bool _can_u_turn
    1
    ;; geometry_msgs/Pose2D[] _bbox_pts
    (apply #'+ (send-all _bbox_pts :serialization-length)) 4
    ;; uint8 _bbox_cnt
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _left
       (write-byte _left s)
     ;; int8 _right
       (write-byte _right s)
     ;; int8 _mid
       (write-byte _mid s)
     ;; bool _can_go_straight
       (if _can_go_straight (write-byte -1 s) (write-byte 0 s))
     ;; bool _can_right_turn
       (if _can_right_turn (write-byte -1 s) (write-byte 0 s))
     ;; bool _can_left_turn
       (if _can_left_turn (write-byte -1 s) (write-byte 0 s))
     ;; bool _can_u_turn
       (if _can_u_turn (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose2D[] _bbox_pts
     (write-long (length _bbox_pts) s)
     (dolist (elem _bbox_pts)
       (send elem :serialize s)
       )
     ;; uint8 _bbox_cnt
       (write-byte _bbox_cnt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _left
     (setq _left (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _left 127) (setq _left (- _left 256)))
   ;; int8 _right
     (setq _right (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _right 127) (setq _right (- _right 256)))
   ;; int8 _mid
     (setq _mid (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mid 127) (setq _mid (- _mid 256)))
   ;; bool _can_go_straight
     (setq _can_go_straight (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _can_right_turn
     (setq _can_right_turn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _can_left_turn
     (setq _can_left_turn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _can_u_turn
     (setq _can_u_turn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose2D[] _bbox_pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bbox_pts (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _bbox_pts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _bbox_cnt
     (setq _bbox_cnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::TrafficLight :md5sum-) "42b80712527dc831c63b18d66634ee39")
(setf (get momenta_msgs::TrafficLight :datatype-) "momenta_msgs/TrafficLight")
(setf (get momenta_msgs::TrafficLight :definition-)
      "std_msgs/Header header
int8 left
int8 right
int8 mid
bool can_go_straight
bool can_right_turn
bool can_left_turn
bool can_u_turn
geometry_msgs/Pose2D[] bbox_pts
uint8 bbox_cnt

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



(provide :momenta_msgs/TrafficLight "42b80712527dc831c63b18d66634ee39")


