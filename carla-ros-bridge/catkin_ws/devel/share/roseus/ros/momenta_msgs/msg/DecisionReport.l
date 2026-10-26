;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::DecisionReport)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'DecisionReport (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::DECISIONREPORT")
  (make-package "MOMENTA_MSGS::DECISIONREPORT"))

(in-package "ROS")
;;//! \htmlinclude DecisionReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::DecisionReport
  :super ros::object
  :slots (_header _current_direction _light_status _light_pattern _dist2stopline _current_state _current_lane_id ))

(defmethod momenta_msgs::DecisionReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current_direction __current_direction) 0)
    ((:light_status __light_status) 0)
    ((:light_pattern __light_pattern) 0)
    ((:dist2stopline __dist2stopline) 0.0)
    ((:current_state __current_state) "")
    ((:current_lane_id __current_lane_id) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _current_direction (round __current_direction))
   (setq _light_status (round __light_status))
   (setq _light_pattern (round __light_pattern))
   (setq _dist2stopline (float __dist2stopline))
   (setq _current_state (string __current_state))
   (setq _current_lane_id (string __current_lane_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current_direction
   (&optional __current_direction)
   (if __current_direction (setq _current_direction __current_direction)) _current_direction)
  (:light_status
   (&optional __light_status)
   (if __light_status (setq _light_status __light_status)) _light_status)
  (:light_pattern
   (&optional __light_pattern)
   (if __light_pattern (setq _light_pattern __light_pattern)) _light_pattern)
  (:dist2stopline
   (&optional __dist2stopline)
   (if __dist2stopline (setq _dist2stopline __dist2stopline)) _dist2stopline)
  (:current_state
   (&optional __current_state)
   (if __current_state (setq _current_state __current_state)) _current_state)
  (:current_lane_id
   (&optional __current_lane_id)
   (if __current_lane_id (setq _current_lane_id __current_lane_id)) _current_lane_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _current_direction
    1
    ;; uint8 _light_status
    1
    ;; uint8 _light_pattern
    1
    ;; float64 _dist2stopline
    8
    ;; string _current_state
    4 (length _current_state)
    ;; string _current_lane_id
    4 (length _current_lane_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _current_direction
       (write-byte _current_direction s)
     ;; uint8 _light_status
       (write-byte _light_status s)
     ;; uint8 _light_pattern
       (write-byte _light_pattern s)
     ;; float64 _dist2stopline
       (sys::poke _dist2stopline (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _current_state
       (write-long (length _current_state) s) (princ _current_state s)
     ;; string _current_lane_id
       (write-long (length _current_lane_id) s) (princ _current_lane_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _current_direction
     (setq _current_direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _light_status
     (setq _light_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _light_pattern
     (setq _light_pattern (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _dist2stopline
     (setq _dist2stopline (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _current_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_lane_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_lane_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get momenta_msgs::DecisionReport :md5sum-) "c4dd61aa0e0369ed7fe9d2ee06fc542c")
(setf (get momenta_msgs::DecisionReport :datatype-) "momenta_msgs/DecisionReport")
(setf (get momenta_msgs::DecisionReport :definition-)
      "std_msgs/Header header
uint8 current_direction
uint8 light_status
uint8 light_pattern
float64 dist2stopline
string current_state
string current_lane_id

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



(provide :momenta_msgs/DecisionReport "c4dd61aa0e0369ed7fe9d2ee06fc542c")


