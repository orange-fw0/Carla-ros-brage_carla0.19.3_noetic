;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FeaturePointPerception)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FeaturePointPerception (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTPERCEPTION")
  (make-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTPERCEPTION"))

(in-package "ROS")
;;//! \htmlinclude FeaturePointPerception.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*VISION_PERCEPTION_FEATURE_POINT_RESULT*" (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTPERCEPTION"))
(shadow '*VISION_PERCEPTION_FEATURE_POINT_RESULT* (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTPERCEPTION"))
(defconstant perception_interface_msgs::FeaturePointPerception::*VISION_PERCEPTION_FEATURE_POINT_RESULT* 1)

(defun perception_interface_msgs::FeaturePointPerception-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::FeaturePointPerception::*VISION_PERCEPTION_FEATURE_POINT_RESULT*)
        (t nil)))

(defclass perception_interface_msgs::FeaturePointPerception
  :super ros::object
  :slots (_header _meta _available _feature_point_arrays ))

(defmethod perception_interface_msgs::FeaturePointPerception
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance perception_interface_msgs::PerceptionMeta :init))
    ((:available __available) 0)
    ((:feature_point_arrays __feature_point_arrays) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _available (round __available))
   (setq _feature_point_arrays __feature_point_arrays)
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
  (:feature_point_arrays
   (&rest __feature_point_arrays)
   (if (keywordp (car __feature_point_arrays))
       (send* _feature_point_arrays __feature_point_arrays)
     (progn
       (if __feature_point_arrays (setq _feature_point_arrays (car __feature_point_arrays)))
       _feature_point_arrays)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_interface_msgs/PerceptionMeta _meta
    (send _meta :serialization-length)
    ;; uint8 _available
    1
    ;; perception_interface_msgs/FeaturePointArray[] _feature_point_arrays
    (apply #'+ (send-all _feature_point_arrays :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_interface_msgs/PerceptionMeta _meta
       (send _meta :serialize s)
     ;; uint8 _available
       (write-byte _available s)
     ;; perception_interface_msgs/FeaturePointArray[] _feature_point_arrays
     (write-long (length _feature_point_arrays) s)
     (dolist (elem _feature_point_arrays)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_interface_msgs/PerceptionMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/FeaturePointArray[] _feature_point_arrays
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feature_point_arrays (let (r) (dotimes (i n) (push (instance perception_interface_msgs::FeaturePointArray :init) r)) r))
     (dolist (elem- _feature_point_arrays)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::FeaturePointPerception :md5sum-) "0d193d1b9d16255b54f377847d356285")
(setf (get perception_interface_msgs::FeaturePointPerception :datatype-) "perception_interface_msgs/FeaturePointPerception")
(setf (get perception_interface_msgs::FeaturePointPerception :definition-)
      "uint8 VISION_PERCEPTION_FEATURE_POINT_RESULT = 1
std_msgs/Header header
perception_interface_msgs/PerceptionMeta meta
uint8 available
perception_interface_msgs/FeaturePointArray[] feature_point_arrays

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
MSG: perception_interface_msgs/FeaturePointArray
string tag
uint8 available
int32 num_point
uint32[] track_ids
float32[] point_xs
float32[] point_ys
int32 descriptor_size
float32[] descriptors
string log_info_2d
string reserved_info

")



(provide :perception_interface_msgs/FeaturePointPerception "0d193d1b9d16255b54f377847d356285")


