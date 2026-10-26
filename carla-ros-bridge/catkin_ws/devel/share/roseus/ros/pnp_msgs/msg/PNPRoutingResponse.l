;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::PNPRoutingResponse)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'PNPRoutingResponse (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::PNPROUTINGRESPONSE")
  (make-package "PNP_MSGS::PNPROUTINGRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude PNPRoutingResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pnp_msgs::PNPRoutingResponse
  :super ros::object
  :slots (_header _request_id _response_id _status _main_tour_id _tour _error_msg ))

(defmethod pnp_msgs::PNPRoutingResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:request_id __request_id) 0)
    ((:response_id __response_id) 0)
    ((:status __status) (instance pnp_msgs::RoutingStatusEnum :init))
    ((:main_tour_id __main_tour_id) 0)
    ((:tour __tour) (instance pnp_msgs::PNPRoutingTour :init))
    ((:error_msg __error_msg) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _request_id (round __request_id))
   (setq _response_id (round __response_id))
   (setq _status __status)
   (setq _main_tour_id (round __main_tour_id))
   (setq _tour __tour)
   (setq _error_msg (string __error_msg))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:response_id
   (&optional __response_id)
   (if __response_id (setq _response_id __response_id)) _response_id)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:main_tour_id
   (&optional __main_tour_id)
   (if __main_tour_id (setq _main_tour_id __main_tour_id)) _main_tour_id)
  (:tour
   (&rest __tour)
   (if (keywordp (car __tour))
       (send* _tour __tour)
     (progn
       (if __tour (setq _tour (car __tour)))
       _tour)))
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _request_id
    8
    ;; uint64 _response_id
    8
    ;; pnp_msgs/RoutingStatusEnum _status
    (send _status :serialization-length)
    ;; uint64 _main_tour_id
    8
    ;; pnp_msgs/PNPRoutingTour _tour
    (send _tour :serialization-length)
    ;; string _error_msg
    4 (length _error_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _request_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _request_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _request_id) (= (length (_request_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_request_id . bv) 0) 0) s)
              (write-long (ash (elt (_request_id . bv) 1) -1) s))
             ((and (class _request_id) (= (length (_request_id . bv)) 1)) ;; big1
              (write-long (elt (_request_id . bv) 0) s)
              (write-long (if (>= _request_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _request_id s)(write-long (if (>= _request_id 0) 0 #xffffffff) s)))
     ;; uint64 _response_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _response_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _response_id) (= (length (_response_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_response_id . bv) 0) 0) s)
              (write-long (ash (elt (_response_id . bv) 1) -1) s))
             ((and (class _response_id) (= (length (_response_id . bv)) 1)) ;; big1
              (write-long (elt (_response_id . bv) 0) s)
              (write-long (if (>= _response_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _response_id s)(write-long (if (>= _response_id 0) 0 #xffffffff) s)))
     ;; pnp_msgs/RoutingStatusEnum _status
       (send _status :serialize s)
     ;; uint64 _main_tour_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _main_tour_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _main_tour_id) (= (length (_main_tour_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_main_tour_id . bv) 0) 0) s)
              (write-long (ash (elt (_main_tour_id . bv) 1) -1) s))
             ((and (class _main_tour_id) (= (length (_main_tour_id . bv)) 1)) ;; big1
              (write-long (elt (_main_tour_id . bv) 0) s)
              (write-long (if (>= _main_tour_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _main_tour_id s)(write-long (if (>= _main_tour_id 0) 0 #xffffffff) s)))
     ;; pnp_msgs/PNPRoutingTour _tour
       (send _tour :serialize s)
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _request_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _request_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _request_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _response_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _response_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _response_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; pnp_msgs/RoutingStatusEnum _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; uint64 _main_tour_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _main_tour_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _main_tour_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; pnp_msgs/PNPRoutingTour _tour
     (send _tour :deserialize buf ptr-) (incf ptr- (send _tour :serialization-length))
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pnp_msgs::PNPRoutingResponse :md5sum-) "f057f9fbc8c3afd8178c0d4175aa4107")
(setf (get pnp_msgs::PNPRoutingResponse :datatype-) "pnp_msgs/PNPRoutingResponse")
(setf (get pnp_msgs::PNPRoutingResponse :definition-)
      "std_msgs/Header header
uint64 request_id
uint64 response_id
pnp_msgs/RoutingStatusEnum status
uint64 main_tour_id
pnp_msgs/PNPRoutingTour tour
string error_msg

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
MSG: pnp_msgs/RoutingStatusEnum
uint8 ROUTING_SUCCESS = 0
uint8 NO_ROUTING_FOUND = 1
uint8 NO_ROADS_NEARBY_VEHICLE = 2
uint8 NO_PARKING_LOT = 3
uint8 NO_PARKING_SPACE = 4
uint8 NO_ROADS_BOUNDED_SPACE = 5
uint8 TOO_SHORT_PATH = 6
uint8 TOO_LONG_PATH = 7
uint8 MAP_DATA_ERROR = 8
uint8 SYSTEM_ERROR = 255
uint8 status

================================================================================
MSG: pnp_msgs/PNPRoutingTour
uint64 tour_id
pnp_msgs/Path[] path_list
float32 total_length

================================================================================
MSG: pnp_msgs/Path
pnp_msgs/IdxRoadId[] road_list
float32 length
pnp_msgs/RoadCursor start_road_cursor
pnp_msgs/RoadCursor end_road_cursor

================================================================================
MSG: pnp_msgs/IdxRoadId
pnp_msgs/PNPRoadId road_id
uint32 index_at_tour

================================================================================
MSG: pnp_msgs/PNPRoadId
uint16 ur_id
uint32 tile_id
uint32 road_count

================================================================================
MSG: pnp_msgs/RoadCursor
pnp_msgs/IdxRoadId index_road_id
float32 offset

")



(provide :pnp_msgs/PNPRoutingResponse "f057f9fbc8c3afd8178c0d4175aa4107")


