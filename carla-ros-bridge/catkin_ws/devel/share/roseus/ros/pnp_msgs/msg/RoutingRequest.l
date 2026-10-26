;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::RoutingRequest)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'RoutingRequest (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::ROUTINGREQUEST")
  (make-package "PNP_MSGS::ROUTINGREQUEST"))

(in-package "ROS")
;;//! \htmlinclude RoutingRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pnp_msgs::RoutingRequest
  :super ros::object
  :slots (_header _request_id _action _parking_lotId _ego_parking_spaceId _parking_spaceId _target_roadId _target_road_offset _obstacle_roadId_list ))

(defmethod pnp_msgs::RoutingRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:request_id __request_id) 0)
    ((:action __action) (instance pnp_msgs::RoutingActionEnum :init))
    ((:parking_lotId __parking_lotId) 0)
    ((:ego_parking_spaceId __ego_parking_spaceId) 0)
    ((:parking_spaceId __parking_spaceId) 0)
    ((:target_roadId __target_roadId) (instance pnp_msgs::PNPRoadId :init))
    ((:target_road_offset __target_road_offset) 0.0)
    ((:obstacle_roadId_list __obstacle_roadId_list) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _request_id (round __request_id))
   (setq _action __action)
   (setq _parking_lotId (round __parking_lotId))
   (setq _ego_parking_spaceId (round __ego_parking_spaceId))
   (setq _parking_spaceId (round __parking_spaceId))
   (setq _target_roadId __target_roadId)
   (setq _target_road_offset (float __target_road_offset))
   (setq _obstacle_roadId_list __obstacle_roadId_list)
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
  (:action
   (&rest __action)
   (if (keywordp (car __action))
       (send* _action __action)
     (progn
       (if __action (setq _action (car __action)))
       _action)))
  (:parking_lotId
   (&optional __parking_lotId)
   (if __parking_lotId (setq _parking_lotId __parking_lotId)) _parking_lotId)
  (:ego_parking_spaceId
   (&optional __ego_parking_spaceId)
   (if __ego_parking_spaceId (setq _ego_parking_spaceId __ego_parking_spaceId)) _ego_parking_spaceId)
  (:parking_spaceId
   (&optional __parking_spaceId)
   (if __parking_spaceId (setq _parking_spaceId __parking_spaceId)) _parking_spaceId)
  (:target_roadId
   (&rest __target_roadId)
   (if (keywordp (car __target_roadId))
       (send* _target_roadId __target_roadId)
     (progn
       (if __target_roadId (setq _target_roadId (car __target_roadId)))
       _target_roadId)))
  (:target_road_offset
   (&optional __target_road_offset)
   (if __target_road_offset (setq _target_road_offset __target_road_offset)) _target_road_offset)
  (:obstacle_roadId_list
   (&rest __obstacle_roadId_list)
   (if (keywordp (car __obstacle_roadId_list))
       (send* _obstacle_roadId_list __obstacle_roadId_list)
     (progn
       (if __obstacle_roadId_list (setq _obstacle_roadId_list (car __obstacle_roadId_list)))
       _obstacle_roadId_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _request_id
    8
    ;; pnp_msgs/RoutingActionEnum _action
    (send _action :serialization-length)
    ;; uint32 _parking_lotId
    4
    ;; uint32 _ego_parking_spaceId
    4
    ;; uint32 _parking_spaceId
    4
    ;; pnp_msgs/PNPRoadId _target_roadId
    (send _target_roadId :serialization-length)
    ;; float32 _target_road_offset
    4
    ;; pnp_msgs/PNPRoadId[] _obstacle_roadId_list
    (apply #'+ (send-all _obstacle_roadId_list :serialization-length)) 4
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
     ;; pnp_msgs/RoutingActionEnum _action
       (send _action :serialize s)
     ;; uint32 _parking_lotId
       (write-long _parking_lotId s)
     ;; uint32 _ego_parking_spaceId
       (write-long _ego_parking_spaceId s)
     ;; uint32 _parking_spaceId
       (write-long _parking_spaceId s)
     ;; pnp_msgs/PNPRoadId _target_roadId
       (send _target_roadId :serialize s)
     ;; float32 _target_road_offset
       (sys::poke _target_road_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; pnp_msgs/PNPRoadId[] _obstacle_roadId_list
     (write-long (length _obstacle_roadId_list) s)
     (dolist (elem _obstacle_roadId_list)
       (send elem :serialize s)
       )
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
   ;; pnp_msgs/RoutingActionEnum _action
     (send _action :deserialize buf ptr-) (incf ptr- (send _action :serialization-length))
   ;; uint32 _parking_lotId
     (setq _parking_lotId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ego_parking_spaceId
     (setq _ego_parking_spaceId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _parking_spaceId
     (setq _parking_spaceId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pnp_msgs/PNPRoadId _target_roadId
     (send _target_roadId :deserialize buf ptr-) (incf ptr- (send _target_roadId :serialization-length))
   ;; float32 _target_road_offset
     (setq _target_road_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; pnp_msgs/PNPRoadId[] _obstacle_roadId_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_roadId_list (let (r) (dotimes (i n) (push (instance pnp_msgs::PNPRoadId :init) r)) r))
     (dolist (elem- _obstacle_roadId_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pnp_msgs::RoutingRequest :md5sum-) "0a0c73549abc12da5175bf72c6e347ac")
(setf (get pnp_msgs::RoutingRequest :datatype-) "pnp_msgs/RoutingRequest")
(setf (get pnp_msgs::RoutingRequest :definition-)
      "std_msgs/Header header
uint64 request_id
pnp_msgs/RoutingActionEnum action
uint32 parking_lotId
uint32 ego_parking_spaceId
uint32 parking_spaceId
pnp_msgs/PNPRoadId target_roadId
float32 target_road_offset
pnp_msgs/PNPRoadId[] obstacle_roadId_list

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
MSG: pnp_msgs/RoutingActionEnum
uint8 PARKING_ENTER = 0
uint8 PARKING_EXIT = 1
uint8 value

================================================================================
MSG: pnp_msgs/PNPRoadId
uint16 ur_id
uint32 tile_id
uint32 road_count

")



(provide :pnp_msgs/RoutingRequest "0a0c73549abc12da5175bf72c6e347ac")


