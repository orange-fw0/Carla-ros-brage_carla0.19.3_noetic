;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::RoutingRequest)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'RoutingRequest (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::ROUTINGREQUEST")
  (make-package "FRAMEWORK_STATUS_MSGS::ROUTINGREQUEST"))

(in-package "ROS")
;;//! \htmlinclude RoutingRequest.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass framework_status_msgs::RoutingRequest
  :super ros::object
  :slots (_header _order_id _type _json_path _route_ends ))

(defmethod framework_status_msgs::RoutingRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:order_id __order_id) 0)
    ((:type __type) (instance framework_status_msgs::RoutingRequestType :init))
    ((:json_path __json_path) "")
    ((:route_ends __route_ends) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _order_id (round __order_id))
   (setq _type __type)
   (setq _json_path (string __json_path))
   (setq _route_ends __route_ends)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:order_id
   (&optional __order_id)
   (if __order_id (setq _order_id __order_id)) _order_id)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:json_path
   (&optional __json_path)
   (if __json_path (setq _json_path __json_path)) _json_path)
  (:route_ends
   (&rest __route_ends)
   (if (keywordp (car __route_ends))
       (send* _route_ends __route_ends)
     (progn
       (if __route_ends (setq _route_ends (car __route_ends)))
       _route_ends)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _order_id
    8
    ;; framework_status_msgs/RoutingRequestType _type
    (send _type :serialization-length)
    ;; string _json_path
    4 (length _json_path)
    ;; geometry_msgs/Point[] _route_ends
    (apply #'+ (send-all _route_ends :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _order_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _order_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _order_id) (= (length (_order_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_order_id . bv) 0) 0) s)
              (write-long (ash (elt (_order_id . bv) 1) -1) s))
             ((and (class _order_id) (= (length (_order_id . bv)) 1)) ;; big1
              (write-long (elt (_order_id . bv) 0) s)
              (write-long (if (>= _order_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _order_id s)(write-long (if (>= _order_id 0) 0 #xffffffff) s)))
     ;; framework_status_msgs/RoutingRequestType _type
       (send _type :serialize s)
     ;; string _json_path
       (write-long (length _json_path) s) (princ _json_path s)
     ;; geometry_msgs/Point[] _route_ends
     (write-long (length _route_ends) s)
     (dolist (elem _route_ends)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _order_id
#+(or :alpha :irix6 :x86_64)
      (setf _order_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _order_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; framework_status_msgs/RoutingRequestType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; string _json_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point[] _route_ends
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _route_ends (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _route_ends)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get framework_status_msgs::RoutingRequest :md5sum-) "ebc20bf1e15843c1c60434850faa0494")
(setf (get framework_status_msgs::RoutingRequest :datatype-) "framework_status_msgs/RoutingRequest")
(setf (get framework_status_msgs::RoutingRequest :definition-)
      "std_msgs/Header header
int64 order_id
framework_status_msgs/RoutingRequestType type
string json_path
geometry_msgs/Point[] route_ends

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

")



(provide :framework_status_msgs/RoutingRequest "ebc20bf1e15843c1c60434850faa0494")


