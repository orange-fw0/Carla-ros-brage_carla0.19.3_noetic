;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::PhysicalTrafficLightSingleFrame)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'PhysicalTrafficLightSingleFrame (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PHYSICALTRAFFICLIGHTSINGLEFRAME")
  (make-package "PERCEPTION_INTERFACE_MSGS::PHYSICALTRAFFICLIGHTSINGLEFRAME"))

(in-package "ROS")
;;//! \htmlinclude PhysicalTrafficLightSingleFrame.msg.html


(defclass perception_interface_msgs::PhysicalTrafficLightSingleFrame
  :super ros::object
  :slots (_camera_source _camera_model _score _group_type _group_shape_type _group_property _bulb_num _bulb _bounding_box_2d _track_id _onoff _group_type_scores _shape_scores _onoff_scores _count_number _shape_3d _location_bv _heading_theta_bv _velocity_bv _associated_infos _reserved_info ))

(defmethod perception_interface_msgs::PhysicalTrafficLightSingleFrame
  (:init
   (&key
    ((:camera_source __camera_source) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance perception_interface_msgs::CameraModelEnum :init))
    ((:score __score) 0.0)
    ((:group_type __group_type) (instance perception_interface_msgs::TrafficLightGroupEnum :init))
    ((:group_shape_type __group_shape_type) (instance perception_interface_msgs::TrafficLightGroupShapeEnum :init))
    ((:group_property __group_property) (instance perception_interface_msgs::TrafficLightGroupPropertyEnum :init))
    ((:bulb_num __bulb_num) 0)
    ((:bulb __bulb) ())
    ((:bounding_box_2d __bounding_box_2d) (instance perception_interface_msgs::Rect4f :init))
    ((:track_id __track_id) 0)
    ((:onoff __onoff) ())
    ((:group_type_scores __group_type_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:shape_scores __shape_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:onoff_scores __onoff_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:count_number __count_number) 0)
    ((:shape_3d __shape_3d) (instance perception_interface_msgs::Shape3f :init))
    ((:location_bv __location_bv) (instance perception_interface_msgs::Point3f :init))
    ((:heading_theta_bv __heading_theta_bv) 0.0)
    ((:velocity_bv __velocity_bv) (instance perception_interface_msgs::Vector2f :init))
    ((:associated_infos __associated_infos) ())
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _camera_source __camera_source)
   (setq _camera_model __camera_model)
   (setq _score (float __score))
   (setq _group_type __group_type)
   (setq _group_shape_type __group_shape_type)
   (setq _group_property __group_property)
   (setq _bulb_num (round __bulb_num))
   (setq _bulb __bulb)
   (setq _bounding_box_2d __bounding_box_2d)
   (setq _track_id (round __track_id))
   (setq _onoff __onoff)
   (setq _group_type_scores __group_type_scores)
   (setq _shape_scores __shape_scores)
   (setq _onoff_scores __onoff_scores)
   (setq _count_number (round __count_number))
   (setq _shape_3d __shape_3d)
   (setq _location_bv __location_bv)
   (setq _heading_theta_bv (float __heading_theta_bv))
   (setq _velocity_bv __velocity_bv)
   (setq _associated_infos __associated_infos)
   (setq _reserved_info (string __reserved_info))
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
  (:group_type
   (&rest __group_type)
   (if (keywordp (car __group_type))
       (send* _group_type __group_type)
     (progn
       (if __group_type (setq _group_type (car __group_type)))
       _group_type)))
  (:group_shape_type
   (&rest __group_shape_type)
   (if (keywordp (car __group_shape_type))
       (send* _group_shape_type __group_shape_type)
     (progn
       (if __group_shape_type (setq _group_shape_type (car __group_shape_type)))
       _group_shape_type)))
  (:group_property
   (&rest __group_property)
   (if (keywordp (car __group_property))
       (send* _group_property __group_property)
     (progn
       (if __group_property (setq _group_property (car __group_property)))
       _group_property)))
  (:bulb_num
   (&optional __bulb_num)
   (if __bulb_num (setq _bulb_num __bulb_num)) _bulb_num)
  (:bulb
   (&rest __bulb)
   (if (keywordp (car __bulb))
       (send* _bulb __bulb)
     (progn
       (if __bulb (setq _bulb (car __bulb)))
       _bulb)))
  (:bounding_box_2d
   (&rest __bounding_box_2d)
   (if (keywordp (car __bounding_box_2d))
       (send* _bounding_box_2d __bounding_box_2d)
     (progn
       (if __bounding_box_2d (setq _bounding_box_2d (car __bounding_box_2d)))
       _bounding_box_2d)))
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:onoff
   (&rest __onoff)
   (if (keywordp (car __onoff))
       (send* _onoff __onoff)
     (progn
       (if __onoff (setq _onoff (car __onoff)))
       _onoff)))
  (:group_type_scores
   (&optional __group_type_scores)
   (if __group_type_scores (setq _group_type_scores __group_type_scores)) _group_type_scores)
  (:shape_scores
   (&optional __shape_scores)
   (if __shape_scores (setq _shape_scores __shape_scores)) _shape_scores)
  (:onoff_scores
   (&optional __onoff_scores)
   (if __onoff_scores (setq _onoff_scores __onoff_scores)) _onoff_scores)
  (:count_number
   (&optional __count_number)
   (if __count_number (setq _count_number __count_number)) _count_number)
  (:shape_3d
   (&rest __shape_3d)
   (if (keywordp (car __shape_3d))
       (send* _shape_3d __shape_3d)
     (progn
       (if __shape_3d (setq _shape_3d (car __shape_3d)))
       _shape_3d)))
  (:location_bv
   (&rest __location_bv)
   (if (keywordp (car __location_bv))
       (send* _location_bv __location_bv)
     (progn
       (if __location_bv (setq _location_bv (car __location_bv)))
       _location_bv)))
  (:heading_theta_bv
   (&optional __heading_theta_bv)
   (if __heading_theta_bv (setq _heading_theta_bv __heading_theta_bv)) _heading_theta_bv)
  (:velocity_bv
   (&rest __velocity_bv)
   (if (keywordp (car __velocity_bv))
       (send* _velocity_bv __velocity_bv)
     (progn
       (if __velocity_bv (setq _velocity_bv (car __velocity_bv)))
       _velocity_bv)))
  (:associated_infos
   (&rest __associated_infos)
   (if (keywordp (car __associated_infos))
       (send* _associated_infos __associated_infos)
     (progn
       (if __associated_infos (setq _associated_infos (car __associated_infos)))
       _associated_infos)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/CameraSourceEnum _camera_source
    (send _camera_source :serialization-length)
    ;; perception_interface_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; float32 _score
    4
    ;; perception_interface_msgs/TrafficLightGroupEnum _group_type
    (send _group_type :serialization-length)
    ;; perception_interface_msgs/TrafficLightGroupShapeEnum _group_shape_type
    (send _group_shape_type :serialization-length)
    ;; perception_interface_msgs/TrafficLightGroupPropertyEnum _group_property
    (send _group_property :serialization-length)
    ;; uint8 _bulb_num
    1
    ;; perception_interface_msgs/PhysicalTrafficLightBulb[] _bulb
    (apply #'+ (send-all _bulb :serialization-length)) 4
    ;; perception_interface_msgs/Rect4f _bounding_box_2d
    (send _bounding_box_2d :serialization-length)
    ;; int32 _track_id
    4
    ;; perception_interface_msgs/TrafficLightOnOffEnum[] _onoff
    (apply #'+ (send-all _onoff :serialization-length)) 4
    ;; float32[] _group_type_scores
    (* 4    (length _group_type_scores)) 4
    ;; float32[] _shape_scores
    (* 4    (length _shape_scores)) 4
    ;; float32[] _onoff_scores
    (* 4    (length _onoff_scores)) 4
    ;; uint8 _count_number
    1
    ;; perception_interface_msgs/Shape3f _shape_3d
    (send _shape_3d :serialization-length)
    ;; perception_interface_msgs/Point3f _location_bv
    (send _location_bv :serialization-length)
    ;; float32 _heading_theta_bv
    4
    ;; perception_interface_msgs/Vector2f _velocity_bv
    (send _velocity_bv :serialization-length)
    ;; perception_interface_msgs/TrafficLightAssociatedInfo[] _associated_infos
    (apply #'+ (send-all _associated_infos :serialization-length)) 4
    ;; string _reserved_info
    4 (length _reserved_info)
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
     ;; perception_interface_msgs/TrafficLightGroupEnum _group_type
       (send _group_type :serialize s)
     ;; perception_interface_msgs/TrafficLightGroupShapeEnum _group_shape_type
       (send _group_shape_type :serialize s)
     ;; perception_interface_msgs/TrafficLightGroupPropertyEnum _group_property
       (send _group_property :serialize s)
     ;; uint8 _bulb_num
       (write-byte _bulb_num s)
     ;; perception_interface_msgs/PhysicalTrafficLightBulb[] _bulb
     (write-long (length _bulb) s)
     (dolist (elem _bulb)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Rect4f _bounding_box_2d
       (send _bounding_box_2d :serialize s)
     ;; int32 _track_id
       (write-long _track_id s)
     ;; perception_interface_msgs/TrafficLightOnOffEnum[] _onoff
     (write-long (length _onoff) s)
     (dolist (elem _onoff)
       (send elem :serialize s)
       )
     ;; float32[] _group_type_scores
     (write-long (length _group_type_scores) s)
     (dotimes (i (length _group_type_scores))
       (sys::poke (elt _group_type_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _shape_scores
     (write-long (length _shape_scores) s)
     (dotimes (i (length _shape_scores))
       (sys::poke (elt _shape_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _onoff_scores
     (write-long (length _onoff_scores) s)
     (dotimes (i (length _onoff_scores))
       (sys::poke (elt _onoff_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _count_number
       (write-byte _count_number s)
     ;; perception_interface_msgs/Shape3f _shape_3d
       (send _shape_3d :serialize s)
     ;; perception_interface_msgs/Point3f _location_bv
       (send _location_bv :serialize s)
     ;; float32 _heading_theta_bv
       (sys::poke _heading_theta_bv (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Vector2f _velocity_bv
       (send _velocity_bv :serialize s)
     ;; perception_interface_msgs/TrafficLightAssociatedInfo[] _associated_infos
     (write-long (length _associated_infos) s)
     (dolist (elem _associated_infos)
       (send elem :serialize s)
       )
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
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
   ;; perception_interface_msgs/TrafficLightGroupEnum _group_type
     (send _group_type :deserialize buf ptr-) (incf ptr- (send _group_type :serialization-length))
   ;; perception_interface_msgs/TrafficLightGroupShapeEnum _group_shape_type
     (send _group_shape_type :deserialize buf ptr-) (incf ptr- (send _group_shape_type :serialization-length))
   ;; perception_interface_msgs/TrafficLightGroupPropertyEnum _group_property
     (send _group_property :deserialize buf ptr-) (incf ptr- (send _group_property :serialization-length))
   ;; uint8 _bulb_num
     (setq _bulb_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/PhysicalTrafficLightBulb[] _bulb
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bulb (let (r) (dotimes (i n) (push (instance perception_interface_msgs::PhysicalTrafficLightBulb :init) r)) r))
     (dolist (elem- _bulb)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Rect4f _bounding_box_2d
     (send _bounding_box_2d :deserialize buf ptr-) (incf ptr- (send _bounding_box_2d :serialization-length))
   ;; int32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; perception_interface_msgs/TrafficLightOnOffEnum[] _onoff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _onoff (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficLightOnOffEnum :init) r)) r))
     (dolist (elem- _onoff)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _group_type_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _group_type_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _group_type_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _shape_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _shape_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _onoff_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _onoff_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _onoff_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8 _count_number
     (setq _count_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/Shape3f _shape_3d
     (send _shape_3d :deserialize buf ptr-) (incf ptr- (send _shape_3d :serialization-length))
   ;; perception_interface_msgs/Point3f _location_bv
     (send _location_bv :deserialize buf ptr-) (incf ptr- (send _location_bv :serialization-length))
   ;; float32 _heading_theta_bv
     (setq _heading_theta_bv (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Vector2f _velocity_bv
     (send _velocity_bv :deserialize buf ptr-) (incf ptr- (send _velocity_bv :serialization-length))
   ;; perception_interface_msgs/TrafficLightAssociatedInfo[] _associated_infos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _associated_infos (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficLightAssociatedInfo :init) r)) r))
     (dolist (elem- _associated_infos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::PhysicalTrafficLightSingleFrame :md5sum-) "493fc9d1b4e30252959cfd08068815b9")
(setf (get perception_interface_msgs::PhysicalTrafficLightSingleFrame :datatype-) "perception_interface_msgs/PhysicalTrafficLightSingleFrame")
(setf (get perception_interface_msgs::PhysicalTrafficLightSingleFrame :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/TrafficLightGroupEnum group_type
perception_interface_msgs/TrafficLightGroupShapeEnum group_shape_type
perception_interface_msgs/TrafficLightGroupPropertyEnum group_property
uint8 bulb_num
perception_interface_msgs/PhysicalTrafficLightBulb[] bulb
perception_interface_msgs/Rect4f bounding_box_2d
int32 track_id
perception_interface_msgs/TrafficLightOnOffEnum[] onoff
float32[] group_type_scores
float32[] shape_scores
float32[] onoff_scores
uint8 count_number
perception_interface_msgs/Shape3f shape_3d
perception_interface_msgs/Point3f location_bv
float32 heading_theta_bv
perception_interface_msgs/Vector2f velocity_bv
perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
string reserved_info

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
MSG: perception_interface_msgs/TrafficLightGroupEnum
uint8 TRAFFIC_LIGHT_GROUP_ORIGIN = 0
uint8 TRAFFIC_LIGHT_GROUP_ADDED = 1
uint8 TRAFFIC_LIGHT_GROUP_UNKNOWN = 2
uint8 TRAFFIC_LIGHT_GROUP_RESERVE1 = 3
uint8 TRAFFIC_LIGHT_GROUP_RESERVE2 = 4
uint8 TRAFFIC_LIGHT_GROUP_RESERVE3 = 5
uint8 TRAFFIC_LIGHT_GROUP_RESERVE4 = 6
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightGroupShapeEnum
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightGroupPropertyEnum
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/PhysicalTrafficLightBulb
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/TrafficLightTypeEnum type
perception_interface_msgs/Rect4f bounding_box_2d
int32 track_id
perception_interface_msgs/TrafficLightPatternEnum[] pattern
perception_interface_msgs/TrafficLightStatusEnum[] status
perception_interface_msgs/TrafficLightOnOffEnum[] onoff
perception_interface_msgs/TrafficLightNumberEnum[] number
float32[] glim_type_scores
float32[] pattern_scores
float32[] status_scores
float32[] onoff_scores
float32[] number_scores
uint8 bulb_id
uint8 count_number
perception_interface_msgs/Shape3f shape_3d
perception_interface_msgs/Point3f location_bv
float32 heading_theta_bv
perception_interface_msgs/Vector2f velocity_bv
perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
string reserved_info

================================================================================
MSG: perception_interface_msgs/TrafficLightTypeEnum
uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/Rect4f
float32 left
float32 top
float32 right
float32 bottom

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

================================================================================
MSG: perception_interface_msgs/TrafficLightStatusEnum
uint8 TRAFFIC_LIGHT_STATUS_RED = 0
uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightOnOffEnum
uint8 TRAFFIC_LIGHT_ONOFF_ON = 0
uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1
uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2
uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3
uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4
uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5
uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightNumberEnum
uint8 TRAFFIC_LIGHT_NUMBER_ZERO = 0
uint8 TRAFFIC_LIGHT_NUMBER_ONE = 1
uint8 TRAFFIC_LIGHT_NUMBER_TWO = 2
uint8 TRAFFIC_LIGHT_NUMBER_THREE = 3
uint8 TRAFFIC_LIGHT_NUMBER_FOUR = 4
uint8 TRAFFIC_LIGHT_NUMBER_FIVE = 5
uint8 TRAFFIC_LIGHT_NUMBER_SIX = 6
uint8 TRAFFIC_LIGHT_NUMBER_SEVEN = 7
uint8 TRAFFIC_LIGHT_NUMBER_EIGHT = 8
uint8 TRAFFIC_LIGHT_NUMBER_NINE = 9
uint8 TRAFFIC_LIGHT_NUMBER_OTHER = 10
uint8 TRAFFIC_LIGHT_NUMBER_OFF = 11
uint8 TRAFFIC_LIGHT_NUMBER_UNKNOWN = 12
uint8 TRAFFIC_LIGHT_NUMBER_UNMARKED = 13
uint8 TRAFFIC_LIGHT_NUMBER_RESERVE1 = 14
uint8 TRAFFIC_LIGHT_NUMBER_RESERVE2 = 15
uint8 TRAFFIC_LIGHT_NUMBER_RESERVE3 = 16
uint8 TRAFFIC_LIGHT_NUMBER_RESERVE4 = 17
uint8 value

================================================================================
MSG: perception_interface_msgs/Shape3f
float32 length
float32 height
float32 width

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/Vector2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/TrafficLightAssociatedInfo
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
uint32 track_id

")



(provide :perception_interface_msgs/PhysicalTrafficLightSingleFrame "493fc9d1b4e30252959cfd08068815b9")


