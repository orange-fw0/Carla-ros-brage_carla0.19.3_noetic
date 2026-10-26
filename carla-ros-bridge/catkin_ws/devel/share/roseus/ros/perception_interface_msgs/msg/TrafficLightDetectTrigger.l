;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficLightDetectTrigger)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficLightDetectTrigger (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTDETECTTRIGGER")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTDETECTTRIGGER"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightDetectTrigger.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_interface_msgs::TrafficLightDetectTrigger
  :super ros::object
  :slots (_header _id _num _indications ))

(defmethod perception_interface_msgs::TrafficLightDetectTrigger
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:num __num) 0)
    ((:indications __indications) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _num (round __num))
   (setq _indications __indications)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:indications
   (&rest __indications)
   (if (keywordp (car __indications))
       (send* _indications __indications)
     (progn
       (if __indications (setq _indications (car __indications)))
       _indications)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _id
    8
    ;; int32 _num
    4
    ;; perception_interface_msgs/TrafficLightIndication[] _indications
    (apply #'+ (send-all _indications :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; int32 _num
       (write-long _num s)
     ;; perception_interface_msgs/TrafficLightIndication[] _indications
     (write-long (length _indications) s)
     (dolist (elem _indications)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _id
     
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; perception_interface_msgs/TrafficLightIndication[] _indications
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _indications (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficLightIndication :init) r)) r))
     (dolist (elem- _indications)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::TrafficLightDetectTrigger :md5sum-) "e7ab8a2c0a2c2d5df32f4b0c61861411")
(setf (get perception_interface_msgs::TrafficLightDetectTrigger :datatype-) "perception_interface_msgs/TrafficLightDetectTrigger")
(setf (get perception_interface_msgs::TrafficLightDetectTrigger :definition-)
      "std_msgs/Header header
uint64 id
int32 num
perception_interface_msgs/TrafficLightIndication[] indications

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
MSG: perception_interface_msgs/TrafficLightIndication
perception_interface_msgs/Point3f[] bounding_box_3d
perception_interface_msgs/TrafficLightPatternEnum pattern

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/TrafficLightPatternEnum
uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23
uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24
uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25
uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29
uint8 value

")



(provide :perception_interface_msgs/TrafficLightDetectTrigger "e7ab8a2c0a2c2d5df32f4b0c61861411")


