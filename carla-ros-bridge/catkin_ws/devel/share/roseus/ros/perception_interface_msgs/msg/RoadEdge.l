;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::RoadEdge)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'RoadEdge (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::ROADEDGE")
  (make-package "PERCEPTION_INTERFACE_MSGS::ROADEDGE"))

(in-package "ROS")
;;//! \htmlinclude RoadEdge.msg.html


(defclass perception_interface_msgs::RoadEdge
  :super ros::object
  :slots (_camera_source _camera_model _score _index _points_2d_x _points_2d_y _points_2d_v _track_id _coefficient_bv _coefficient_bv_sigma _is_failed_3d _points_3d_x _points_3d_y _points_3d_z _lidar_roadedge_type _points_3d_hmi_x _points_3d_hmi_y _points_3d_hmi_z ))

(defmethod perception_interface_msgs::RoadEdge
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
    ((:points_3d_x __points_3d_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points_3d_y __points_3d_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points_3d_z __points_3d_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lidar_roadedge_type __lidar_roadedge_type) (instance perception_interface_msgs::LidarRoadEdgeTypeEnum :init))
    ((:points_3d_hmi_x __points_3d_hmi_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points_3d_hmi_y __points_3d_hmi_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points_3d_hmi_z __points_3d_hmi_z) (make-array 0 :initial-element 0.0 :element-type :float))
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
   (setq _points_3d_x __points_3d_x)
   (setq _points_3d_y __points_3d_y)
   (setq _points_3d_z __points_3d_z)
   (setq _lidar_roadedge_type __lidar_roadedge_type)
   (setq _points_3d_hmi_x __points_3d_hmi_x)
   (setq _points_3d_hmi_y __points_3d_hmi_y)
   (setq _points_3d_hmi_z __points_3d_hmi_z)
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
  (:points_3d_x
   (&optional __points_3d_x)
   (if __points_3d_x (setq _points_3d_x __points_3d_x)) _points_3d_x)
  (:points_3d_y
   (&optional __points_3d_y)
   (if __points_3d_y (setq _points_3d_y __points_3d_y)) _points_3d_y)
  (:points_3d_z
   (&optional __points_3d_z)
   (if __points_3d_z (setq _points_3d_z __points_3d_z)) _points_3d_z)
  (:lidar_roadedge_type
   (&rest __lidar_roadedge_type)
   (if (keywordp (car __lidar_roadedge_type))
       (send* _lidar_roadedge_type __lidar_roadedge_type)
     (progn
       (if __lidar_roadedge_type (setq _lidar_roadedge_type (car __lidar_roadedge_type)))
       _lidar_roadedge_type)))
  (:points_3d_hmi_x
   (&optional __points_3d_hmi_x)
   (if __points_3d_hmi_x (setq _points_3d_hmi_x __points_3d_hmi_x)) _points_3d_hmi_x)
  (:points_3d_hmi_y
   (&optional __points_3d_hmi_y)
   (if __points_3d_hmi_y (setq _points_3d_hmi_y __points_3d_hmi_y)) _points_3d_hmi_y)
  (:points_3d_hmi_z
   (&optional __points_3d_hmi_z)
   (if __points_3d_hmi_z (setq _points_3d_hmi_z __points_3d_hmi_z)) _points_3d_hmi_z)
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
    ;; float32[] _points_3d_x
    (* 4    (length _points_3d_x)) 4
    ;; float32[] _points_3d_y
    (* 4    (length _points_3d_y)) 4
    ;; float32[] _points_3d_z
    (* 4    (length _points_3d_z)) 4
    ;; perception_interface_msgs/LidarRoadEdgeTypeEnum _lidar_roadedge_type
    (send _lidar_roadedge_type :serialization-length)
    ;; float32[] _points_3d_hmi_x
    (* 4    (length _points_3d_hmi_x)) 4
    ;; float32[] _points_3d_hmi_y
    (* 4    (length _points_3d_hmi_y)) 4
    ;; float32[] _points_3d_hmi_z
    (* 4    (length _points_3d_hmi_z)) 4
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
     ;; perception_interface_msgs/LidarRoadEdgeTypeEnum _lidar_roadedge_type
       (send _lidar_roadedge_type :serialize s)
     ;; float32[] _points_3d_hmi_x
     (write-long (length _points_3d_hmi_x) s)
     (dotimes (i (length _points_3d_hmi_x))
       (sys::poke (elt _points_3d_hmi_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _points_3d_hmi_y
     (write-long (length _points_3d_hmi_y) s)
     (dotimes (i (length _points_3d_hmi_y))
       (sys::poke (elt _points_3d_hmi_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _points_3d_hmi_z
     (write-long (length _points_3d_hmi_z) s)
     (dotimes (i (length _points_3d_hmi_z))
       (sys::poke (elt _points_3d_hmi_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
   ;; perception_interface_msgs/LidarRoadEdgeTypeEnum _lidar_roadedge_type
     (send _lidar_roadedge_type :deserialize buf ptr-) (incf ptr- (send _lidar_roadedge_type :serialization-length))
   ;; float32[] _points_3d_hmi_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_3d_hmi_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_3d_hmi_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _points_3d_hmi_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_3d_hmi_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_3d_hmi_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _points_3d_hmi_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_3d_hmi_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_3d_hmi_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::RoadEdge :md5sum-) "69e4eb37a4fd3fdfa7e21c9c8cf96d82")
(setf (get perception_interface_msgs::RoadEdge :datatype-) "perception_interface_msgs/RoadEdge")
(setf (get perception_interface_msgs::RoadEdge :definition-)
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
float32[] points_3d_x
float32[] points_3d_y
float32[] points_3d_z
perception_interface_msgs/LidarRoadEdgeTypeEnum lidar_roadedge_type
float32[] points_3d_hmi_x
float32[] points_3d_hmi_y
float32[] points_3d_hmi_z

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
MSG: perception_interface_msgs/LidarRoadEdgeTypeEnum
uint8 LIDAR_ROADEDGE_TYPE_CONTINUOUS = 0
uint8 LIDAR_ROADEDGE_TYPE_DISCONTINUOUS = 1
uint8 LIDAR_ROADEDGE_TYPE_CONSTRUCTION = 2
uint8 LIDAR_ROADEDGE_TYPE_RESERVED = 3
uint8 value

")



(provide :perception_interface_msgs/RoadEdge "69e4eb37a4fd3fdfa7e21c9c8cf96d82")


