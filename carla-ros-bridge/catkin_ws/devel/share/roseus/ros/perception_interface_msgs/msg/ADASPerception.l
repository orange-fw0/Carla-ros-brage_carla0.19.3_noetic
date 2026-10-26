;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ADASPerception)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ADASPerception (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::ADASPERCEPTION")
  (make-package "PERCEPTION_INTERFACE_MSGS::ADASPERCEPTION"))

(in-package "ROS")
;;//! \htmlinclude ADASPerception.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*VISION_PERCEPTION_ADAS_PERCEPTION_RESULT*" (find-package "PERCEPTION_INTERFACE_MSGS::ADASPERCEPTION"))
(shadow '*VISION_PERCEPTION_ADAS_PERCEPTION_RESULT* (find-package "PERCEPTION_INTERFACE_MSGS::ADASPERCEPTION"))
(defconstant perception_interface_msgs::ADASPerception::*VISION_PERCEPTION_ADAS_PERCEPTION_RESULT* 1)

(defun perception_interface_msgs::ADASPerception-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::ADASPerception::*VISION_PERCEPTION_ADAS_PERCEPTION_RESULT*)
        (t nil)))

(defclass perception_interface_msgs::ADASPerception
  :super ros::object
  :slots (_header _meta _available _adas_perception_result ))

(defmethod perception_interface_msgs::ADASPerception
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance perception_interface_msgs::PerceptionMeta :init))
    ((:available __available) 0)
    ((:adas_perception_result __adas_perception_result) (instance perception_interface_msgs::ADASPerceptionResult :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _available (round __available))
   (setq _adas_perception_result __adas_perception_result)
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
  (:adas_perception_result
   (&rest __adas_perception_result)
   (if (keywordp (car __adas_perception_result))
       (send* _adas_perception_result __adas_perception_result)
     (progn
       (if __adas_perception_result (setq _adas_perception_result (car __adas_perception_result)))
       _adas_perception_result)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_interface_msgs/PerceptionMeta _meta
    (send _meta :serialization-length)
    ;; uint64 _available
    8
    ;; perception_interface_msgs/ADASPerceptionResult _adas_perception_result
    (send _adas_perception_result :serialization-length)
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
     ;; perception_interface_msgs/ADASPerceptionResult _adas_perception_result
       (send _adas_perception_result :serialize s)
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
   ;; perception_interface_msgs/ADASPerceptionResult _adas_perception_result
     (send _adas_perception_result :deserialize buf ptr-) (incf ptr- (send _adas_perception_result :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::ADASPerception :md5sum-) "6cf89c4ea609bed42d56384ed2447972")
(setf (get perception_interface_msgs::ADASPerception :datatype-) "perception_interface_msgs/ADASPerception")
(setf (get perception_interface_msgs::ADASPerception :definition-)
      "uint8 VISION_PERCEPTION_ADAS_PERCEPTION_RESULT = 1
std_msgs/Header header
perception_interface_msgs/PerceptionMeta meta
uint64 available
perception_interface_msgs/ADASPerceptionResult adas_perception_result

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
MSG: perception_interface_msgs/ADASPerceptionResult
uint8 ihc_highbeam_on
float64 ihc_highbeam_score

")



(provide :perception_interface_msgs/ADASPerception "6cf89c4ea609bed42d56384ed2447972")


