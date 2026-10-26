;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::ManagerStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'ManagerStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ManagerStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*INITIALIZING*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*INITIALIZING* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*INITIALIZING* 0)
(intern "*READY*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*READY* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*READY* 1)
(intern "*ENGAGE_PENDING*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*ENGAGE_PENDING* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*ENGAGE_PENDING* 2)
(intern "*ENGAGED*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*ENGAGED* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*ENGAGED* 3)
(intern "*DISENGAGE_PENDING*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*DISENGAGE_PENDING* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*DISENGAGE_PENDING* 4)
(intern "*FAULT*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*FAULT* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*FAULT* 5)
(intern "*NAVIGATE*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*NAVIGATE* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*NAVIGATE* 0)
(intern "*CRUISE*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*CRUISE* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*CRUISE* 1)
(intern "*OFF_MAP*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*OFF_MAP* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*OFF_MAP* 2)
(intern "*AUTO_STATUS*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*AUTO_STATUS* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*AUTO_STATUS* 1)
(intern "*MAP_ENGINE_STATUS*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*MAP_ENGINE_STATUS* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*MAP_ENGINE_STATUS* 2)
(intern "*MAP_ROUTING_RESPONSE*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*MAP_ROUTING_RESPONSE* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*MAP_ROUTING_RESPONSE* 4)
(intern "*NOTIFY*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*NOTIFY* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*NOTIFY* 8)
(intern "*HDMAP_AVAILABLE*" (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(shadow '*HDMAP_AVAILABLE* (find-package "FRAMEWORK_STATUS_MSGS::MANAGERSTATUS"))
(defconstant framework_status_msgs::ManagerStatus::*HDMAP_AVAILABLE* 16)

(defun framework_status_msgs::ManagerStatus-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::ManagerStatus::*INITIALIZING*)
        ((= const 1) 'framework_status_msgs::ManagerStatus::*READY*)
        ((= const 2) 'framework_status_msgs::ManagerStatus::*ENGAGE_PENDING*)
        ((= const 3) 'framework_status_msgs::ManagerStatus::*ENGAGED*)
        ((= const 4) 'framework_status_msgs::ManagerStatus::*DISENGAGE_PENDING*)
        ((= const 5) 'framework_status_msgs::ManagerStatus::*FAULT*)
        ((= const 0) 'framework_status_msgs::ManagerStatus::*NAVIGATE*)
        ((= const 1) 'framework_status_msgs::ManagerStatus::*CRUISE*)
        ((= const 2) 'framework_status_msgs::ManagerStatus::*OFF_MAP*)
        ((= const 1) 'framework_status_msgs::ManagerStatus::*AUTO_STATUS*)
        ((= const 2) 'framework_status_msgs::ManagerStatus::*MAP_ENGINE_STATUS*)
        ((= const 4) 'framework_status_msgs::ManagerStatus::*MAP_ROUTING_RESPONSE*)
        ((= const 8) 'framework_status_msgs::ManagerStatus::*NOTIFY*)
        ((= const 16) 'framework_status_msgs::ManagerStatus::*HDMAP_AVAILABLE*)
        (t nil)))

(defclass framework_status_msgs::ManagerStatus
  :super ros::object
  :slots (_header _available _auto_status _map_engine_status _map_routing_response _notify _hdmap_available ))

(defmethod framework_status_msgs::ManagerStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:available __available) 0)
    ((:auto_status __auto_status) 0)
    ((:map_engine_status __map_engine_status) 0)
    ((:map_routing_response __map_routing_response) (instance framework_status_msgs::RoutingResponse :init))
    ((:notify __notify) ())
    ((:hdmap_available __hdmap_available) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _available (round __available))
   (setq _auto_status (round __auto_status))
   (setq _map_engine_status (round __map_engine_status))
   (setq _map_routing_response __map_routing_response)
   (setq _notify __notify)
   (setq _hdmap_available __hdmap_available)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:auto_status
   (&optional __auto_status)
   (if __auto_status (setq _auto_status __auto_status)) _auto_status)
  (:map_engine_status
   (&optional __map_engine_status)
   (if __map_engine_status (setq _map_engine_status __map_engine_status)) _map_engine_status)
  (:map_routing_response
   (&rest __map_routing_response)
   (if (keywordp (car __map_routing_response))
       (send* _map_routing_response __map_routing_response)
     (progn
       (if __map_routing_response (setq _map_routing_response (car __map_routing_response)))
       _map_routing_response)))
  (:notify
   (&rest __notify)
   (if (keywordp (car __notify))
       (send* _notify __notify)
     (progn
       (if __notify (setq _notify (car __notify)))
       _notify)))
  (:hdmap_available
   (&optional (__hdmap_available :null))
   (if (not (eq __hdmap_available :null)) (setq _hdmap_available __hdmap_available)) _hdmap_available)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _available
    1
    ;; uint8 _auto_status
    1
    ;; uint8 _map_engine_status
    1
    ;; framework_status_msgs/RoutingResponse _map_routing_response
    (send _map_routing_response :serialization-length)
    ;; framework_status_msgs/ManagerNotify[] _notify
    (apply #'+ (send-all _notify :serialization-length)) 4
    ;; bool _hdmap_available
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _available
       (write-byte _available s)
     ;; uint8 _auto_status
       (write-byte _auto_status s)
     ;; uint8 _map_engine_status
       (write-byte _map_engine_status s)
     ;; framework_status_msgs/RoutingResponse _map_routing_response
       (send _map_routing_response :serialize s)
     ;; framework_status_msgs/ManagerNotify[] _notify
     (write-long (length _notify) s)
     (dolist (elem _notify)
       (send elem :serialize s)
       )
     ;; bool _hdmap_available
       (if _hdmap_available (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _auto_status
     (setq _auto_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _map_engine_status
     (setq _map_engine_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/RoutingResponse _map_routing_response
     (send _map_routing_response :deserialize buf ptr-) (incf ptr- (send _map_routing_response :serialization-length))
   ;; framework_status_msgs/ManagerNotify[] _notify
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _notify (let (r) (dotimes (i n) (push (instance framework_status_msgs::ManagerNotify :init) r)) r))
     (dolist (elem- _notify)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _hdmap_available
     (setq _hdmap_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get framework_status_msgs::ManagerStatus :md5sum-) "2bee84429af0bd75d8feb94d49983977")
(setf (get framework_status_msgs::ManagerStatus :datatype-) "framework_status_msgs/ManagerStatus")
(setf (get framework_status_msgs::ManagerStatus :definition-)
      "uint8 INITIALIZING = 0
uint8 READY = 1
uint8 ENGAGE_PENDING = 2
uint8 ENGAGED = 3
uint8 DISENGAGE_PENDING = 4
uint8 FAULT = 5
uint8 NAVIGATE = 0
uint8 CRUISE = 1
uint8 OFF_MAP = 2
uint8 AUTO_STATUS = 1
uint8 MAP_ENGINE_STATUS = 2
uint8 MAP_ROUTING_RESPONSE = 4
uint8 NOTIFY = 8
uint8 HDMAP_AVAILABLE = 16
std_msgs/Header header
uint8 available
uint8 auto_status
uint8 map_engine_status
framework_status_msgs/RoutingResponse map_routing_response
framework_status_msgs/ManagerNotify[] notify
bool hdmap_available

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
MSG: framework_status_msgs/RoutingResponse
std_msgs/Header header
framework_status_msgs/RoutingRequest request
bool success
framework_status_msgs/MDKDiRoadId[] di_roads
geometry_msgs/Point[] road_points

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

================================================================================
MSG: framework_status_msgs/ManagerNotify
string message

")



(provide :framework_status_msgs/ManagerStatus "2bee84429af0bd75d8feb94d49983977")


