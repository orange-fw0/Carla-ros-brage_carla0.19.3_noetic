;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::LaneSegment)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'LaneSegment (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENT")
  (make-package "PERCEPTION_INTERFACE_MSGS::LANESEGMENT"))

(in-package "ROS")
;;//! \htmlinclude LaneSegment.msg.html


(defclass perception_interface_msgs::LaneSegment
  :super ros::object
  :slots (_camera_source _camera_model _points_2d _points_3d _points_track_id _points_score _points_type ))

(defmethod perception_interface_msgs::LaneSegment
  (:init
   (&key
    ((:camera_source __camera_source) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance perception_interface_msgs::CameraModelEnum :init))
    ((:points_2d __points_2d) ())
    ((:points_3d __points_3d) ())
    ((:points_track_id __points_track_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:points_score __points_score) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points_type __points_type) ())
    )
   (send-super :init)
   (setq _camera_source __camera_source)
   (setq _camera_model __camera_model)
   (setq _points_2d __points_2d)
   (setq _points_3d __points_3d)
   (setq _points_track_id __points_track_id)
   (setq _points_score __points_score)
   (setq _points_type __points_type)
   self)
  (:camera_source
   (&rest __camera_source)
   (if (keywordp (car __camera_source))
       (send* _camera_source __camera_source)
     (progn
       (if __camera_source (setq _camera_source (car __camera_source)))
       _camera_source)))
  (:camera_model
   (&rest __camera_model)
   (if (keywordp (car __camera_model))
       (send* _camera_model __camera_model)
     (progn
       (if __camera_model (setq _camera_model (car __camera_model)))
       _camera_model)))
  (:points_2d
   (&rest __points_2d)
   (if (keywordp (car __points_2d))
       (send* _points_2d __points_2d)
     (progn
       (if __points_2d (setq _points_2d (car __points_2d)))
       _points_2d)))
  (:points_3d
   (&rest __points_3d)
   (if (keywordp (car __points_3d))
       (send* _points_3d __points_3d)
     (progn
       (if __points_3d (setq _points_3d (car __points_3d)))
       _points_3d)))
  (:points_track_id
   (&optional __points_track_id)
   (if __points_track_id (setq _points_track_id __points_track_id)) _points_track_id)
  (:points_score
   (&optional __points_score)
   (if __points_score (setq _points_score __points_score)) _points_score)
  (:points_type
   (&rest __points_type)
   (if (keywordp (car __points_type))
       (send* _points_type __points_type)
     (progn
       (if __points_type (setq _points_type (car __points_type)))
       _points_type)))
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/CameraSourceEnum _camera_source
    (send _camera_source :serialization-length)
    ;; perception_interface_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; perception_interface_msgs/Point2f[] _points_2d
    (apply #'+ (send-all _points_2d :serialization-length)) 4
    ;; perception_interface_msgs/Point3f[] _points_3d
    (apply #'+ (send-all _points_3d :serialization-length)) 4
    ;; uint32[] _points_track_id
    (* 4    (length _points_track_id)) 4
    ;; float32[] _points_score
    (* 4    (length _points_score)) 4
    ;; perception_interface_msgs/LaneSegmentPointEnum[] _points_type
    (apply #'+ (send-all _points_type :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/CameraSourceEnum _camera_source
       (send _camera_source :serialize s)
     ;; perception_interface_msgs/CameraModelEnum _camera_model
       (send _camera_model :serialize s)
     ;; perception_interface_msgs/Point2f[] _points_2d
     (write-long (length _points_2d) s)
     (dolist (elem _points_2d)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point3f[] _points_3d
     (write-long (length _points_3d) s)
     (dolist (elem _points_3d)
       (send elem :serialize s)
       )
     ;; uint32[] _points_track_id
     (write-long (length _points_track_id) s)
     (dotimes (i (length _points_track_id))
       (write-long (elt _points_track_id i) s)
       )
     ;; float32[] _points_score
     (write-long (length _points_score) s)
     (dotimes (i (length _points_score))
       (sys::poke (elt _points_score i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; perception_interface_msgs/LaneSegmentPointEnum[] _points_type
     (write-long (length _points_type) s)
     (dolist (elem _points_type)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/CameraSourceEnum _camera_source
     (send _camera_source :deserialize buf ptr-) (incf ptr- (send _camera_source :serialization-length))
   ;; perception_interface_msgs/CameraModelEnum _camera_model
     (send _camera_model :deserialize buf ptr-) (incf ptr- (send _camera_model :serialization-length))
   ;; perception_interface_msgs/Point2f[] _points_2d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_2d (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point2f :init) r)) r))
     (dolist (elem- _points_2d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point3f[] _points_3d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_3d (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _points_3d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _points_track_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_track_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _points_track_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _points_score
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_score (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_score i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; perception_interface_msgs/LaneSegmentPointEnum[] _points_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_type (let (r) (dotimes (i n) (push (instance perception_interface_msgs::LaneSegmentPointEnum :init) r)) r))
     (dolist (elem- _points_type)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::LaneSegment :md5sum-) "8607590451aa3fdae38e45f1c9697b3b")
(setf (get perception_interface_msgs::LaneSegment :datatype-) "perception_interface_msgs/LaneSegment")
(setf (get perception_interface_msgs::LaneSegment :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
perception_interface_msgs/Point2f[] points_2d
perception_interface_msgs/Point3f[] points_3d
uint32[] points_track_id
float32[] points_score
perception_interface_msgs/LaneSegmentPointEnum[] points_type

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
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/LaneSegmentPointEnum
uint8 LANE_SEGMENT_POINT_UNKNOWN = 0
uint8 LANE_SEGMENT_POINT_FAKE_POINT = 1
uint8 LANE_SEGMENT_POINT_REAL_POINT = 2
uint8 LANE_SEGMENT_POINT_FARTHEST_POINT = 3
uint8 LANE_SEGMENT_POINT_OCCLUSION_POINT = 4
uint8 value

")



(provide :perception_interface_msgs/LaneSegment "8607590451aa3fdae38e45f1c9697b3b")


