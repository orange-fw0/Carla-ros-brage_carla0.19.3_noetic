;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::Lane)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'Lane (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LANE")
  (make-package "PERCEPTION_INTERFACE_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html


(defclass perception_interface_msgs::Lane
  :super ros::object
  :slots (_camera_source _camera_model _score _index _points_2d_x _points_2d_y _points_2d_v _track_id _coefficient_bv _coefficient_bv_sigma _is_failed_3d _lane_type _lane_color _lane_width _is_centerline _points_3d_x _points_3d_y _points_3d_z _is_horizontal_line _lane_horizontal_type _stopline_depth ))

(defmethod perception_interface_msgs::Lane
  (:init
   (&key
    ((:camera_source __camera_source) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance perception_interface_msgs::CameraModelEnum :init))
    ((:score __score) 0.0)
    ((:index __index) 0)
    ((:points_2d_x __points_2d_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points_2d_y __points_2d_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points_2d_v __points_2d_v) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:track_id __track_id) 0)
    ((:coefficient_bv __coefficient_bv) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:coefficient_bv_sigma __coefficient_bv_sigma) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:is_failed_3d __is_failed_3d) nil)
    ((:lane_type __lane_type) (instance perception_interface_msgs::LaneTypeEnum :init))
    ((:lane_color __lane_color) (instance perception_interface_msgs::LaneColorEnum :init))
    ((:lane_width __lane_width) 0.0)
    ((:is_centerline __is_centerline) nil)
    ((:points_3d_x __points_3d_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points_3d_y __points_3d_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points_3d_z __points_3d_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:is_horizontal_line __is_horizontal_line) nil)
    ((:lane_horizontal_type __lane_horizontal_type) (instance perception_interface_msgs::LaneHorizontalTypeEnum :init))
    ((:stopline_depth __stopline_depth) 0.0)
    )
   (send-super :init)
   (setq _camera_source __camera_source)
   (setq _camera_model __camera_model)
   (setq _score (float __score))
   (setq _index (round __index))
   (setq _points_2d_x __points_2d_x)
   (setq _points_2d_y __points_2d_y)
   (setq _points_2d_v __points_2d_v)
   (setq _track_id (round __track_id))
   (setq _coefficient_bv __coefficient_bv)
   (setq _coefficient_bv_sigma __coefficient_bv_sigma)
   (setq _is_failed_3d __is_failed_3d)
   (setq _lane_type __lane_type)
   (setq _lane_color __lane_color)
   (setq _lane_width (float __lane_width))
   (setq _is_centerline __is_centerline)
   (setq _points_3d_x __points_3d_x)
   (setq _points_3d_y __points_3d_y)
   (setq _points_3d_z __points_3d_z)
   (setq _is_horizontal_line __is_horizontal_line)
   (setq _lane_horizontal_type __lane_horizontal_type)
   (setq _stopline_depth (float __stopline_depth))
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
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:points_2d_x
   (&optional __points_2d_x)
   (if __points_2d_x (setq _points_2d_x __points_2d_x)) _points_2d_x)
  (:points_2d_y
   (&optional __points_2d_y)
   (if __points_2d_y (setq _points_2d_y __points_2d_y)) _points_2d_y)
  (:points_2d_v
   (&optional __points_2d_v)
   (if __points_2d_v (setq _points_2d_v __points_2d_v)) _points_2d_v)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:coefficient_bv
   (&optional __coefficient_bv)
   (if __coefficient_bv (setq _coefficient_bv __coefficient_bv)) _coefficient_bv)
  (:coefficient_bv_sigma
   (&optional __coefficient_bv_sigma)
   (if __coefficient_bv_sigma (setq _coefficient_bv_sigma __coefficient_bv_sigma)) _coefficient_bv_sigma)
  (:is_failed_3d
   (&optional (__is_failed_3d :null))
   (if (not (eq __is_failed_3d :null)) (setq _is_failed_3d __is_failed_3d)) _is_failed_3d)
  (:lane_type
   (&rest __lane_type)
   (if (keywordp (car __lane_type))
       (send* _lane_type __lane_type)
     (progn
       (if __lane_type (setq _lane_type (car __lane_type)))
       _lane_type)))
  (:lane_color
   (&rest __lane_color)
   (if (keywordp (car __lane_color))
       (send* _lane_color __lane_color)
     (progn
       (if __lane_color (setq _lane_color (car __lane_color)))
       _lane_color)))
  (:lane_width
   (&optional __lane_width)
   (if __lane_width (setq _lane_width __lane_width)) _lane_width)
  (:is_centerline
   (&optional (__is_centerline :null))
   (if (not (eq __is_centerline :null)) (setq _is_centerline __is_centerline)) _is_centerline)
  (:points_3d_x
   (&optional __points_3d_x)
   (if __points_3d_x (setq _points_3d_x __points_3d_x)) _points_3d_x)
  (:points_3d_y
   (&optional __points_3d_y)
   (if __points_3d_y (setq _points_3d_y __points_3d_y)) _points_3d_y)
  (:points_3d_z
   (&optional __points_3d_z)
   (if __points_3d_z (setq _points_3d_z __points_3d_z)) _points_3d_z)
  (:is_horizontal_line
   (&optional (__is_horizontal_line :null))
   (if (not (eq __is_horizontal_line :null)) (setq _is_horizontal_line __is_horizontal_line)) _is_horizontal_line)
  (:lane_horizontal_type
   (&rest __lane_horizontal_type)
   (if (keywordp (car __lane_horizontal_type))
       (send* _lane_horizontal_type __lane_horizontal_type)
     (progn
       (if __lane_horizontal_type (setq _lane_horizontal_type (car __lane_horizontal_type)))
       _lane_horizontal_type)))
  (:stopline_depth
   (&optional __stopline_depth)
   (if __stopline_depth (setq _stopline_depth __stopline_depth)) _stopline_depth)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/CameraSourceEnum _camera_source
    (send _camera_source :serialization-length)
    ;; perception_interface_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; float32 _score
    4
    ;; int32 _index
    4
    ;; float32[] _points_2d_x
    (* 4    (length _points_2d_x)) 4
    ;; float32[] _points_2d_y
    (* 4    (length _points_2d_y)) 4
    ;; float32[] _points_2d_v
    (* 4    (length _points_2d_v)) 4
    ;; uint32 _track_id
    4
    ;; float32[] _coefficient_bv
    (* 4    (length _coefficient_bv)) 4
    ;; float32[] _coefficient_bv_sigma
    (* 4    (length _coefficient_bv_sigma)) 4
    ;; bool _is_failed_3d
    1
    ;; perception_interface_msgs/LaneTypeEnum _lane_type
    (send _lane_type :serialization-length)
    ;; perception_interface_msgs/LaneColorEnum _lane_color
    (send _lane_color :serialization-length)
    ;; float32 _lane_width
    4
    ;; bool _is_centerline
    1
    ;; float32[] _points_3d_x
    (* 4    (length _points_3d_x)) 4
    ;; float32[] _points_3d_y
    (* 4    (length _points_3d_y)) 4
    ;; float32[] _points_3d_z
    (* 4    (length _points_3d_z)) 4
    ;; bool _is_horizontal_line
    1
    ;; perception_interface_msgs/LaneHorizontalTypeEnum _lane_horizontal_type
    (send _lane_horizontal_type :serialization-length)
    ;; float32 _stopline_depth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/CameraSourceEnum _camera_source
       (send _camera_source :serialize s)
     ;; perception_interface_msgs/CameraModelEnum _camera_model
       (send _camera_model :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _index
       (write-long _index s)
     ;; float32[] _points_2d_x
     (write-long (length _points_2d_x) s)
     (dotimes (i (length _points_2d_x))
       (sys::poke (elt _points_2d_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _points_2d_y
     (write-long (length _points_2d_y) s)
     (dotimes (i (length _points_2d_y))
       (sys::poke (elt _points_2d_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _points_2d_v
     (write-long (length _points_2d_v) s)
     (dotimes (i (length _points_2d_v))
       (sys::poke (elt _points_2d_v i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _track_id
       (write-long _track_id s)
     ;; float32[] _coefficient_bv
     (write-long (length _coefficient_bv) s)
     (dotimes (i (length _coefficient_bv))
       (sys::poke (elt _coefficient_bv i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _coefficient_bv_sigma
     (write-long (length _coefficient_bv_sigma) s)
     (dotimes (i (length _coefficient_bv_sigma))
       (sys::poke (elt _coefficient_bv_sigma i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _is_failed_3d
       (if _is_failed_3d (write-byte -1 s) (write-byte 0 s))
     ;; perception_interface_msgs/LaneTypeEnum _lane_type
       (send _lane_type :serialize s)
     ;; perception_interface_msgs/LaneColorEnum _lane_color
       (send _lane_color :serialize s)
     ;; float32 _lane_width
       (sys::poke _lane_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_centerline
       (if _is_centerline (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _points_3d_x
     (write-long (length _points_3d_x) s)
     (dotimes (i (length _points_3d_x))
       (sys::poke (elt _points_3d_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _points_3d_y
     (write-long (length _points_3d_y) s)
     (dotimes (i (length _points_3d_y))
       (sys::poke (elt _points_3d_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _points_3d_z
     (write-long (length _points_3d_z) s)
     (dotimes (i (length _points_3d_z))
       (sys::poke (elt _points_3d_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _is_horizontal_line
       (if _is_horizontal_line (write-byte -1 s) (write-byte 0 s))
     ;; perception_interface_msgs/LaneHorizontalTypeEnum _lane_horizontal_type
       (send _lane_horizontal_type :serialize s)
     ;; float32 _stopline_depth
       (sys::poke _stopline_depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/CameraSourceEnum _camera_source
     (send _camera_source :deserialize buf ptr-) (incf ptr- (send _camera_source :serialization-length))
   ;; perception_interface_msgs/CameraModelEnum _camera_model
     (send _camera_model :deserialize buf ptr-) (incf ptr- (send _camera_model :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _points_2d_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_2d_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_2d_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _points_2d_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_2d_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_2d_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _points_2d_v
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_2d_v (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_2d_v i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _coefficient_bv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coefficient_bv (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _coefficient_bv i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _coefficient_bv_sigma
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coefficient_bv_sigma (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _coefficient_bv_sigma i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _is_failed_3d
     (setq _is_failed_3d (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_interface_msgs/LaneTypeEnum _lane_type
     (send _lane_type :deserialize buf ptr-) (incf ptr- (send _lane_type :serialization-length))
   ;; perception_interface_msgs/LaneColorEnum _lane_color
     (send _lane_color :deserialize buf ptr-) (incf ptr- (send _lane_color :serialization-length))
   ;; float32 _lane_width
     (setq _lane_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_centerline
     (setq _is_centerline (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _points_3d_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_3d_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_3d_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _points_3d_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_3d_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_3d_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _points_3d_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_3d_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_3d_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _is_horizontal_line
     (setq _is_horizontal_line (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_interface_msgs/LaneHorizontalTypeEnum _lane_horizontal_type
     (send _lane_horizontal_type :deserialize buf ptr-) (incf ptr- (send _lane_horizontal_type :serialization-length))
   ;; float32 _stopline_depth
     (setq _stopline_depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::Lane :md5sum-) "c090d577c839919bdddc3cf4b5544027")
(setf (get perception_interface_msgs::Lane :datatype-) "perception_interface_msgs/Lane")
(setf (get perception_interface_msgs::Lane :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
int32 index
float32[] points_2d_x
float32[] points_2d_y
float32[] points_2d_v
uint32 track_id
float32[] coefficient_bv
float32[] coefficient_bv_sigma
bool is_failed_3d
perception_interface_msgs/LaneTypeEnum lane_type
perception_interface_msgs/LaneColorEnum lane_color
float32 lane_width
bool is_centerline
float32[] points_3d_x
float32[] points_3d_y
float32[] points_3d_z
bool is_horizontal_line
perception_interface_msgs/LaneHorizontalTypeEnum lane_horizontal_type
float32 stopline_depth

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
MSG: perception_interface_msgs/LaneTypeEnum
uint8 LANE_TYPE_UNKNOWN = 0
uint8 LANE_TYPE_DASHED = 1
uint8 LANE_TYPE_SOLID = 2
uint8 LANE_TYPE_DOUBLE_SOLID = 3
uint8 LANE_TYPE_DOUBLE_DASHED_SOLID = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/LaneColorEnum
uint8 LANE_COLOR_UNKNOWN = 0
uint8 LANE_COLOR_WHITE = 1
uint8 LANE_COLOR_YELLOW = 2
uint8 LANE_COLOR_RED = 3
uint8 LANE_COLOR_BLUE = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/LaneHorizontalTypeEnum
uint8 LANE_HORIZENTAL_TYPE_UNKNOWN = 0
uint8 LANE_HORIZENTAL_TYPE_STOP_LINE = 1
uint8 LANE_HORIZENTAL_TYPE_ZEBRA_LINE = 2
uint8 LANE_HORIZENTAL_TYPE_SPEED_BUMP = 3
uint8 value

")



(provide :perception_interface_msgs/Lane "c090d577c839919bdddc3cf4b5544027")


