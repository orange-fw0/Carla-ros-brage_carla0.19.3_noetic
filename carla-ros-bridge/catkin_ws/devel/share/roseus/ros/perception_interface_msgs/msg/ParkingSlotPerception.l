;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ParkingSlotPerception)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ParkingSlotPerception (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPERCEPTION")
  (make-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPERCEPTION"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotPerception.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*VISION_PERCEPTION_PARKING_SLOT_RESULT*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPERCEPTION"))
(shadow '*VISION_PERCEPTION_PARKING_SLOT_RESULT* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPERCEPTION"))
(defconstant perception_interface_msgs::ParkingSlotPerception::*VISION_PERCEPTION_PARKING_SLOT_RESULT* 1)
(intern "*VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPERCEPTION"))
(shadow '*VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPERCEPTION"))
(defconstant perception_interface_msgs::ParkingSlotPerception::*VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS* 2)

(defun perception_interface_msgs::ParkingSlotPerception-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::ParkingSlotPerception::*VISION_PERCEPTION_PARKING_SLOT_RESULT*)
        ((= const 2) 'perception_interface_msgs::ParkingSlotPerception::*VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS*)
        (t nil)))

(defclass perception_interface_msgs::ParkingSlotPerception
  :super ros::object
  :slots (_header _meta _available _parking_slots _reserved_infos ))

(defmethod perception_interface_msgs::ParkingSlotPerception
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance perception_interface_msgs::PerceptionMeta :init))
    ((:available __available) 0)
    ((:parking_slots __parking_slots) ())
    ((:reserved_infos __reserved_infos) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _available (round __available))
   (setq _parking_slots __parking_slots)
   (setq _reserved_infos __reserved_infos)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:parking_slots
   (&rest __parking_slots)
   (if (keywordp (car __parking_slots))
       (send* _parking_slots __parking_slots)
     (progn
       (if __parking_slots (setq _parking_slots (car __parking_slots)))
       _parking_slots)))
  (:reserved_infos
   (&optional __reserved_infos)
   (if __reserved_infos (setq _reserved_infos __reserved_infos)) _reserved_infos)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_interface_msgs/PerceptionMeta _meta
    (send _meta :serialization-length)
    ;; uint64 _available
    8
    ;; perception_interface_msgs/ParkingSlot[] _parking_slots
    (apply #'+ (send-all _parking_slots :serialization-length)) 4
    ;; string[] _reserved_infos
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _reserved_infos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_interface_msgs/PerceptionMeta _meta
       (send _meta :serialize s)
     ;; uint64 _available
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _available (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _available) (= (length (_available . bv)) 2)) ;; bignum
              (write-long (ash (elt (_available . bv) 0) 0) s)
              (write-long (ash (elt (_available . bv) 1) -1) s))
             ((and (class _available) (= (length (_available . bv)) 1)) ;; big1
              (write-long (elt (_available . bv) 0) s)
              (write-long (if (>= _available 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _available s)(write-long (if (>= _available 0) 0 #xffffffff) s)))
     ;; perception_interface_msgs/ParkingSlot[] _parking_slots
     (write-long (length _parking_slots) s)
     (dolist (elem _parking_slots)
       (send elem :serialize s)
       )
     ;; string[] _reserved_infos
     (write-long (length _reserved_infos) s)
     (dolist (elem _reserved_infos)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_interface_msgs/PerceptionMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; uint64 _available
     
#+(or :alpha :irix6 :x86_64)
      (setf _available (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _available (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; perception_interface_msgs/ParkingSlot[] _parking_slots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_slots (let (r) (dotimes (i n) (push (instance perception_interface_msgs::ParkingSlot :init) r)) r))
     (dolist (elem- _parking_slots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _reserved_infos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_infos (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _reserved_infos i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::ParkingSlotPerception :md5sum-) "39f01e8e4feaace55b9cc034ecd0d055")
(setf (get perception_interface_msgs::ParkingSlotPerception :datatype-) "perception_interface_msgs/ParkingSlotPerception")
(setf (get perception_interface_msgs::ParkingSlotPerception :definition-)
      "uint8 VISION_PERCEPTION_PARKING_SLOT_RESULT = 1
uint8 VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS = 2
std_msgs/Header header
perception_interface_msgs/PerceptionMeta meta
uint64 available
perception_interface_msgs/ParkingSlot[] parking_slots
string[] reserved_infos

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
MSG: perception_interface_msgs/PerceptionMeta
string algorithm_name
string instance_name
uint64 sensor_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us
perception_interface_msgs/FrameMeta[] relevant_frames
string version_tag
string ts_log
uint64 sequence
string task_tag

================================================================================
MSG: perception_interface_msgs/FrameMeta
uint64 timestamp_us
uint64 sequence
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model

================================================================================
MSG: perception_interface_msgs/CameraSourceEnum
uint8 CAMERA_SOURCE_FRONT_FAR = 0
uint8 CAMERA_SOURCE_FRONT_MID = 1
uint8 CAMERA_SOURCE_FRONT_WIDE = 2
uint8 CAMERA_SOURCE_LEFT_FRONT = 3
uint8 CAMERA_SOURCE_LEFT_REAR = 4
uint8 CAMERA_SOURCE_REAR_MID = 5
uint8 CAMERA_SOURCE_REAR_MID_UP = 6
uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
uint8 CAMERA_SOURCE_RIGHT_REAR = 9
uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
uint8 CAMERA_SOURCE_FISHEYE = 14
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
uint8 CAMERA_SOURCE_BEV = 25
uint8 value

================================================================================
MSG: perception_interface_msgs/CameraModelEnum
uint8 CAMERA_MODEL_UNKNOWN = 0
uint8 CAMERA_MODEL_RAW = 1
uint8 CAMERA_MODEL_CYLINDER = 2
uint8 CAMERA_MODEL_DEDISTORT = 3
uint8 CAMERA_MODEL_PSTITCH = 4
uint8 CAMERA_MODEL_RESERVED_A = 5
uint8 CAMERA_MODEL_RESERVED_B = 6
uint8 CAMERA_MODEL_RESERVED_C = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlot
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
uint8 available
perception_interface_msgs/ParkingSlotPoint[] corner_points
perception_interface_msgs/ParkingSlotCenterPoint center_point
perception_interface_msgs/Point2f[] wheel_stop_points
perception_interface_msgs/ParkingSlotPoint3d[] points_3d

================================================================================
MSG: perception_interface_msgs/ParkingSlotPoint
perception_interface_msgs/Point2f position
float32 confidence
perception_interface_msgs/ParkingSlotPointTypeEnum type

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/ParkingSlotPointTypeEnum
uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_POINT_TYPE_REAL = 1
uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotCenterPoint
perception_interface_msgs/Point2f position
perception_interface_msgs/ParkingSlotTypeEnum available_type
float32 confidence
float32 center_line_angle
perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type
perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type
float32 special_confidence

================================================================================
MSG: perception_interface_msgs/ParkingSlotTypeEnum
uint8 PARKING_SLOT_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_TYPE_AVAILABLE = 1
uint8 PARKING_SLOT_TYPE_OCCUPIED = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum
uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1
uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum
uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1
uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2
uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3
uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotPoint3d
perception_interface_msgs/Point3f position
float32 confidence
perception_interface_msgs/ParkingSlotPointTypeEnum type

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :perception_interface_msgs/ParkingSlotPerception "39f01e8e4feaace55b9cc034ecd0d055")


