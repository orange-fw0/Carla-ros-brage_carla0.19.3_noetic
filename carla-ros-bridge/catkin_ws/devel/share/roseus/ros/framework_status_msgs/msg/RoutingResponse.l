;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::RoutingResponse)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'RoutingResponse (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::ROUTINGRESPONSE")
  (make-package "FRAMEWORK_STATUS_MSGS::ROUTINGRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude RoutingResponse.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass framework_status_msgs::RoutingResponse
  :super ros::object
  :slots (_header _request _success _di_roads _road_points ))

(defmethod framework_status_msgs::RoutingResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:request __request) (instance framework_status_msgs::RoutingRequest :init))
    ((:success __success) nil)
    ((:di_roads __di_roads) ())
    ((:road_points __road_points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _request __request)
   (setq _success __success)
   (setq _di_roads __di_roads)
   (setq _road_points __road_points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:request
   (&rest __request)
   (if (keywordp (car __request))
       (send* _request __request)
     (progn
       (if __request (setq _request (car __request)))
       _request)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:di_roads
   (&rest __di_roads)
   (if (keywordp (car __di_roads))
       (send* _di_roads __di_roads)
     (progn
       (if __di_roads (setq _di_roads (car __di_roads)))
       _di_roads)))
  (:road_points
   (&rest __road_points)
   (if (keywordp (car __road_points))
       (send* _road_points __road_points)
     (progn
       (if __road_points (setq _road_points (car __road_points)))
       _road_points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; framework_status_msgs/RoutingRequest _request
    (send _request :serialization-length)
    ;; bool _success
    1
    ;; framework_status_msgs/MDKDiRoadId[] _di_roads
    (apply #'+ (send-all _di_roads :serialization-length)) 4
    ;; geometry_msgs/Point[] _road_points
    (apply #'+ (send-all _road_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; framework_status_msgs/RoutingRequest _request
       (send _request :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; framework_status_msgs/MDKDiRoadId[] _di_roads
     (write-long (length _di_roads) s)
     (dolist (elem _di_roads)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _road_points
     (write-long (length _road_points) s)
     (dolist (elem _road_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; framework_status_msgs/RoutingRequest _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; framework_status_msgs/MDKDiRoadId[] _di_roads
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _di_roads (let (r) (dotimes (i n) (push (instance framework_status_msgs::MDKDiRoadId :init) r)) r))
     (dolist (elem- _di_roads)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _road_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _road_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get framework_status_msgs::RoutingResponse :md5sum-) "915e22414641ea31361c68ceb1642d31")
(setf (get framework_status_msgs::RoutingResponse :datatype-) "framework_status_msgs/RoutingResponse")
(setf (get framework_status_msgs::RoutingResponse :definition-)
      "std_msgs/Header header
framework_status_msgs/RoutingRequest request
bool success
framework_status_msgs/MDKDiRoadId[] di_roads
geometry_msgs/Point[] road_points

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
MSG: framework_status_msgs/RoutingRequest
std_msgs/Header header
int64 order_id
framework_status_msgs/RoutingRequestType type
string json_path
geometry_msgs/Point[] route_ends

================================================================================
MSG: framework_status_msgs/RoutingRequestType
uint8 ROUTE_ENDS = 0
uint8 JSON_FILE = 1
uint8 value

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: framework_status_msgs/MDKDiRoadId
int64 tile_id
int64 road_count
bool dir_reversed

")



(provide :framework_status_msgs/RoutingResponse "915e22414641ea31361c68ceb1642d31")


