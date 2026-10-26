;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VisionDataDesensibilisationPerception)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VisionDataDesensibilisationPerception (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VISIONDATADESENSIBILISATIONPERCEPTION")
  (make-package "PERCEPTION_INTERFACE_MSGS::VISIONDATADESENSIBILISATIONPERCEPTION"))

(in-package "ROS")
;;//! \htmlinclude VisionDataDesensibilisationPerception.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_interface_msgs::VisionDataDesensibilisationPerception
  :super ros::object
  :slots (_header _meta _available _vision_data_desensibilisation_objects _reserved_infos ))

(defmethod perception_interface_msgs::VisionDataDesensibilisationPerception
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance perception_interface_msgs::PerceptionMeta :init))
    ((:available __available) 0)
    ((:vision_data_desensibilisation_objects __vision_data_desensibilisation_objects) ())
    ((:reserved_infos __reserved_infos) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _available (round __available))
   (setq _vision_data_desensibilisation_objects __vision_data_desensibilisation_objects)
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
  (:vision_data_desensibilisation_objects
   (&rest __vision_data_desensibilisation_objects)
   (if (keywordp (car __vision_data_desensibilisation_objects))
       (send* _vision_data_desensibilisation_objects __vision_data_desensibilisation_objects)
     (progn
       (if __vision_data_desensibilisation_objects (setq _vision_data_desensibilisation_objects (car __vision_data_desensibilisation_objects)))
       _vision_data_desensibilisation_objects)))
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
    ;; uint8 _available
    1
    ;; perception_interface_msgs/VisionDataDesensibilisationObject[] _vision_data_desensibilisation_objects
    (apply #'+ (send-all _vision_data_desensibilisation_objects :serialization-length)) 4
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
     ;; uint8 _available
       (write-byte _available s)
     ;; perception_interface_msgs/VisionDataDesensibilisationObject[] _vision_data_desensibilisation_objects
     (write-long (length _vision_data_desensibilisation_objects) s)
     (dolist (elem _vision_data_desensibilisation_objects)
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
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/VisionDataDesensibilisationObject[] _vision_data_desensibilisation_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vision_data_desensibilisation_objects (let (r) (dotimes (i n) (push (instance perception_interface_msgs::VisionDataDesensibilisationObject :init) r)) r))
     (dolist (elem- _vision_data_desensibilisation_objects)
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

(setf (get perception_interface_msgs::VisionDataDesensibilisationPerception :md5sum-) "47f4e932c57a61970d0f0c1473c76897")
(setf (get perception_interface_msgs::VisionDataDesensibilisationPerception :datatype-) "perception_interface_msgs/VisionDataDesensibilisationPerception")
(setf (get perception_interface_msgs::VisionDataDesensibilisationPerception :definition-)
      "std_msgs/Header header
perception_interface_msgs/PerceptionMeta meta
uint8 available
perception_interface_msgs/VisionDataDesensibilisationObject[] vision_data_desensibilisation_objects
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
MSG: perception_interface_msgs/VisionDataDesensibilisationObject
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
perception_interface_msgs/DataDesensibilisationTypeEnum type_info
float32 score
perception_interface_msgs/Rect4f bounding_box_2d
perception_interface_msgs/Rect4f bounding_box_2d_raw

================================================================================
MSG: perception_interface_msgs/DataDesensibilisationTypeEnum
uint8 DATA_DESENSIBILISATION_TYPE_UNKNOWN = 0
uint8 DATA_DESENSIBILISATION_TYPE_HUMAN_FACE = 1
uint8 DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/Rect4f
float32 left
float32 top
float32 right
float32 bottom

")



(provide :perception_interface_msgs/VisionDataDesensibilisationPerception "47f4e932c57a61970d0f0c1473c76897")


