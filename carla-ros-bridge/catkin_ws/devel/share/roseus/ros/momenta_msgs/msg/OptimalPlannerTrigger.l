;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::OptimalPlannerTrigger)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'OptimalPlannerTrigger (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::OPTIMALPLANNERTRIGGER")
  (make-package "MOMENTA_MSGS::OPTIMALPLANNERTRIGGER"))

(in-package "ROS")
;;//! \htmlinclude OptimalPlannerTrigger.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::OptimalPlannerTrigger
  :super ros::object
  :slots (_header _v_target _a_target _enable _stop_flag _v_limit _stop_distance _which_lane _track_id _lc_request _lc_status _lane_borrow _lane_borrow_range _avd_info _lat_offset ))

(defmethod momenta_msgs::OptimalPlannerTrigger
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:v_target __v_target) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:a_target __a_target) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:enable __enable) nil)
    ((:stop_flag __stop_flag) nil)
    ((:v_limit __v_limit) 0.0)
    ((:stop_distance __stop_distance) 0.0)
    ((:which_lane __which_lane) "")
    ((:track_id __track_id) 0)
    ((:lc_request __lc_request) "")
    ((:lc_status __lc_status) "")
    ((:lane_borrow __lane_borrow) nil)
    ((:lane_borrow_range __lane_borrow_range) 0)
    ((:avd_info __avd_info) ())
    ((:lat_offset __lat_offset) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _v_target __v_target)
   (setq _a_target __a_target)
   (setq _enable __enable)
   (setq _stop_flag __stop_flag)
   (setq _v_limit (float __v_limit))
   (setq _stop_distance (float __stop_distance))
   (setq _which_lane (string __which_lane))
   (setq _track_id (round __track_id))
   (setq _lc_request (string __lc_request))
   (setq _lc_status (string __lc_status))
   (setq _lane_borrow __lane_borrow)
   (setq _lane_borrow_range (round __lane_borrow_range))
   (setq _avd_info __avd_info)
   (setq _lat_offset (float __lat_offset))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:v_target
   (&optional __v_target)
   (if __v_target (setq _v_target __v_target)) _v_target)
  (:a_target
   (&optional __a_target)
   (if __a_target (setq _a_target __a_target)) _a_target)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:stop_flag
   (&optional (__stop_flag :null))
   (if (not (eq __stop_flag :null)) (setq _stop_flag __stop_flag)) _stop_flag)
  (:v_limit
   (&optional __v_limit)
   (if __v_limit (setq _v_limit __v_limit)) _v_limit)
  (:stop_distance
   (&optional __stop_distance)
   (if __stop_distance (setq _stop_distance __stop_distance)) _stop_distance)
  (:which_lane
   (&optional __which_lane)
   (if __which_lane (setq _which_lane __which_lane)) _which_lane)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:lc_request
   (&optional __lc_request)
   (if __lc_request (setq _lc_request __lc_request)) _lc_request)
  (:lc_status
   (&optional __lc_status)
   (if __lc_status (setq _lc_status __lc_status)) _lc_status)
  (:lane_borrow
   (&optional (__lane_borrow :null))
   (if (not (eq __lane_borrow :null)) (setq _lane_borrow __lane_borrow)) _lane_borrow)
  (:lane_borrow_range
   (&optional __lane_borrow_range)
   (if __lane_borrow_range (setq _lane_borrow_range __lane_borrow_range)) _lane_borrow_range)
  (:avd_info
   (&rest __avd_info)
   (if (keywordp (car __avd_info))
       (send* _avd_info __avd_info)
     (progn
       (if __avd_info (setq _avd_info (car __avd_info)))
       _avd_info)))
  (:lat_offset
   (&optional __lat_offset)
   (if __lat_offset (setq _lat_offset __lat_offset)) _lat_offset)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _v_target
    (* 4    (length _v_target)) 4
    ;; float32[] _a_target
    (* 4    (length _a_target)) 4
    ;; bool _enable
    1
    ;; bool _stop_flag
    1
    ;; float32 _v_limit
    4
    ;; float32 _stop_distance
    4
    ;; string _which_lane
    4 (length _which_lane)
    ;; int32 _track_id
    4
    ;; string _lc_request
    4 (length _lc_request)
    ;; string _lc_status
    4 (length _lc_status)
    ;; bool _lane_borrow
    1
    ;; int32 _lane_borrow_range
    4
    ;; momenta_msgs/AvdMsg[] _avd_info
    (apply #'+ (send-all _avd_info :serialization-length)) 4
    ;; float32 _lat_offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _v_target
     (write-long (length _v_target) s)
     (dotimes (i (length _v_target))
       (sys::poke (elt _v_target i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _a_target
     (write-long (length _a_target) s)
     (dotimes (i (length _a_target))
       (sys::poke (elt _a_target i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _stop_flag
       (if _stop_flag (write-byte -1 s) (write-byte 0 s))
     ;; float32 _v_limit
       (sys::poke _v_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stop_distance
       (sys::poke _stop_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _which_lane
       (write-long (length _which_lane) s) (princ _which_lane s)
     ;; int32 _track_id
       (write-long _track_id s)
     ;; string _lc_request
       (write-long (length _lc_request) s) (princ _lc_request s)
     ;; string _lc_status
       (write-long (length _lc_status) s) (princ _lc_status s)
     ;; bool _lane_borrow
       (if _lane_borrow (write-byte -1 s) (write-byte 0 s))
     ;; int32 _lane_borrow_range
       (write-long _lane_borrow_range s)
     ;; momenta_msgs/AvdMsg[] _avd_info
     (write-long (length _avd_info) s)
     (dolist (elem _avd_info)
       (send elem :serialize s)
       )
     ;; float32 _lat_offset
       (sys::poke _lat_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _v_target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v_target (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v_target i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _a_target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _a_target (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _a_target i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stop_flag
     (setq _stop_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _v_limit
     (setq _v_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stop_distance
     (setq _stop_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _which_lane
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _which_lane (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _lc_request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lc_request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _lc_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lc_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _lane_borrow
     (setq _lane_borrow (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _lane_borrow_range
     (setq _lane_borrow_range (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; momenta_msgs/AvdMsg[] _avd_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avd_info (let (r) (dotimes (i n) (push (instance momenta_msgs::AvdMsg :init) r)) r))
     (dolist (elem- _avd_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _lat_offset
     (setq _lat_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::OptimalPlannerTrigger :md5sum-) "453c558757e7f726490a97a21a439248")
(setf (get momenta_msgs::OptimalPlannerTrigger :datatype-) "momenta_msgs/OptimalPlannerTrigger")
(setf (get momenta_msgs::OptimalPlannerTrigger :definition-)
      "std_msgs/Header header
float32[] v_target
float32[] a_target
bool enable
bool stop_flag
float32 v_limit
float32 stop_distance
string which_lane
int32 track_id
string lc_request
string lc_status
bool lane_borrow
int32 lane_borrow_range
momenta_msgs/AvdMsg[] avd_info
float32 lat_offset

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
MSG: momenta_msgs/AvdMsg
int32 Id
string Property
bool Ignore
string AvdDirection

")



(provide :momenta_msgs/OptimalPlannerTrigger "453c558757e7f726490a97a21a439248")


