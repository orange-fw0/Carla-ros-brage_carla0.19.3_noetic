;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::PhysicalTrafficLightBulb)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'PhysicalTrafficLightBulb (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PHYSICALTRAFFICLIGHTBULB")
  (make-package "PERCEPTION_INTERFACE_MSGS::PHYSICALTRAFFICLIGHTBULB"))

(in-package "ROS")
;;//! \htmlinclude PhysicalTrafficLightBulb.msg.html


(defclass perception_interface_msgs::PhysicalTrafficLightBulb
  :super ros::object
  :slots (_camera_source _camera_model _score _type _bounding_box_2d _track_id _pattern _status _onoff _number _glim_type_scores _pattern_scores _status_scores _onoff_scores _number_scores _bulb_id _count_number _shape_3d _location_bv _heading_theta_bv _velocity_bv _associated_infos _reserved_info ))

(defmethod perception_interface_msgs::PhysicalTrafficLightBulb
  (:init
   (&key
    ((:camera_source __camera_source) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance perception_interface_msgs::CameraModelEnum :init))
    ((:score __score) 0.0)
    ((:type __type) (instance perception_interface_msgs::TrafficLightTypeEnum :init))
    ((:bounding_box_2d __bounding_box_2d) (instance perception_interface_msgs::Rect4f :init))
    ((:track_id __track_id) 0)
    ((:pattern __pattern) ())
    ((:status __status) ())
    ((:onoff __onoff) ())
    ((:number __number) ())
    ((:glim_type_scores __glim_type_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pattern_scores __pattern_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:status_scores __status_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:onoff_scores __onoff_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:number_scores __number_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:bulb_id __bulb_id) 0)
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
   (setq _type __type)
   (setq _bounding_box_2d __bounding_box_2d)
   (setq _track_id (round __track_id))
   (setq _pattern __pattern)
   (setq _status __status)
   (setq _onoff __onoff)
   (setq _number __number)
   (setq _glim_type_scores __glim_type_scores)
   (setq _pattern_scores __pattern_scores)
   (setq _status_scores __status_scores)
   (setq _onoff_scores __onoff_scores)
   (setq _number_scores __number_scores)
   (setq _bulb_id (round __bulb_id))
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
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
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
  (:pattern
   (&rest __pattern)
   (if (keywordp (car __pattern))
       (send* _pattern __pattern)
     (progn
       (if __pattern (setq _pattern (car __pattern)))
       _pattern)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:onoff
   (&rest __onoff)
   (if (keywordp (car __onoff))
       (send* _onoff __onoff)
     (progn
       (if __onoff (setq _onoff (car __onoff)))
       _onoff)))
  (:number
   (&rest __number)
   (if (keywordp (car __number))
       (send* _number __number)
     (progn
       (if __number (setq _number (car __number)))
       _number)))
  (:glim_type_scores
   (&optional __glim_type_scores)
   (if __glim_type_scores (setq _glim_type_scores __glim_type_scores)) _glim_type_scores)
  (:pattern_scores
   (&optional __pattern_scores)
   (if __pattern_scores (setq _pattern_scores __pattern_scores)) _pattern_scores)
  (:status_scores
   (&optional __status_scores)
   (if __status_scores (setq _status_scores __status_scores)) _status_scores)
  (:onoff_scores
   (&optional __onoff_scores)
   (if __onoff_scores (setq _onoff_scores __onoff_scores)) _onoff_scores)
  (:number_scores
   (&optional __number_scores)
   (if __number_scores (setq _number_scores __number_scores)) _number_scores)
  (:bulb_id
   (&optional __bulb_id)
   (if __bulb_id (setq _bulb_id __bulb_id)) _bulb_id)
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
    ;; perception_interface_msgs/TrafficLightTypeEnum _type
    (send _type :serialization-length)
    ;; perception_interface_msgs/Rect4f _bounding_box_2d
    (send _bounding_box_2d :serialization-length)
    ;; int32 _track_id
    4
    ;; perception_interface_msgs/TrafficLightPatternEnum[] _pattern
    (apply #'+ (send-all _pattern :serialization-length)) 4
    ;; perception_interface_msgs/TrafficLightStatusEnum[] _status
    (apply #'+ (send-all _status :serialization-length)) 4
    ;; perception_interface_msgs/TrafficLightOnOffEnum[] _onoff
    (apply #'+ (send-all _onoff :serialization-length)) 4
    ;; perception_interface_msgs/TrafficLightNumberEnum[] _number
    (apply #'+ (send-all _number :serialization-length)) 4
    ;; float32[] _glim_type_scores
    (* 4    (length _glim_type_scores)) 4
    ;; float32[] _pattern_scores
    (* 4    (length _pattern_scores)) 4
    ;; float32[] _status_scores
    (* 4    (length _status_scores)) 4
    ;; float32[] _onoff_scores
    (* 4    (length _onoff_scores)) 4
    ;; float32[] _number_scores
    (* 4    (length _number_scores)) 4
    ;; uint8 _bulb_id
    1
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
     ;; perception_interface_msgs/TrafficLightTypeEnum _type
       (send _type :serialize s)
     ;; perception_interface_msgs/Rect4f _bounding_box_2d
       (send _bounding_box_2d :serialize s)
     ;; int32 _track_id
       (write-long _track_id s)
     ;; perception_interface_msgs/TrafficLightPatternEnum[] _pattern
     (write-long (length _pattern) s)
     (dolist (elem _pattern)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/TrafficLightStatusEnum[] _status
     (write-long (length _status) s)
     (dolist (elem _status)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/TrafficLightOnOffEnum[] _onoff
     (write-long (length _onoff) s)
     (dolist (elem _onoff)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/TrafficLightNumberEnum[] _number
     (write-long (length _number) s)
     (dolist (elem _number)
       (send elem :serialize s)
       )
     ;; float32[] _glim_type_scores
     (write-long (length _glim_type_scores) s)
     (dotimes (i (length _glim_type_scores))
       (sys::poke (elt _glim_type_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pattern_scores
     (write-long (length _pattern_scores) s)
     (dotimes (i (length _pattern_scores))
       (sys::poke (elt _pattern_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _status_scores
     (write-long (length _status_scores) s)
     (dotimes (i (length _status_scores))
       (sys::poke (elt _status_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _onoff_scores
     (write-long (length _onoff_scores) s)
     (dotimes (i (length _onoff_scores))
       (sys::poke (elt _onoff_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _number_scores
     (write-long (length _number_scores) s)
     (dotimes (i (length _number_scores))
       (sys::poke (elt _number_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _bulb_id
       (write-byte _bulb_id s)
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
   ;; perception_interface_msgs/TrafficLightTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; perception_interface_msgs/Rect4f _bounding_box_2d
     (send _bounding_box_2d :deserialize buf ptr-) (incf ptr- (send _bounding_box_2d :serialization-length))
   ;; int32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; perception_interface_msgs/TrafficLightPatternEnum[] _pattern
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pattern (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficLightPatternEnum :init) r)) r))
     (dolist (elem- _pattern)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/TrafficLightStatusEnum[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficLightStatusEnum :init) r)) r))
     (dolist (elem- _status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/TrafficLightOnOffEnum[] _onoff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _onoff (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficLightOnOffEnum :init) r)) r))
     (dolist (elem- _onoff)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/TrafficLightNumberEnum[] _number
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _number (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficLightNumberEnum :init) r)) r))
     (dolist (elem- _number)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _glim_type_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _glim_type_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _glim_type_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pattern_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pattern_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pattern_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _status_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _status_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _onoff_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _onoff_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _onoff_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _number_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _number_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _number_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8 _bulb_id
     (setq _bulb_id (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(setf (get perception_interface_msgs::PhysicalTrafficLightBulb :md5sum-) "748f093997311e936cef09ebba4a5b68")
(setf (get perception_interface_msgs::PhysicalTrafficLightBulb :datatype-) "perception_interface_msgs/PhysicalTrafficLightBulb")
(setf (get perception_interface_msgs::PhysicalTrafficLightBulb :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_source
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



(provide :perception_interface_msgs/PhysicalTrafficLightBulb "748f093997311e936cef09ebba4a5b68")


