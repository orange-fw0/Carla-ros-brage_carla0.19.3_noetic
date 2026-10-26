;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficSign)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficSign (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGN")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGN"))

(in-package "ROS")
;;//! \htmlinclude TrafficSign.msg.html


(defclass perception_interface_msgs::TrafficSign
  :super ros::object
  :slots (_camera_source _camera_model _score _points_2d _track_id _shape_info _bounding_box_2d _is_speed_sign _speed_type _speed_num _is_road_mark _road_mark_type _type_info _speedsign_category _is_restriction_sign _restriction_type _restriction_value _reseved_parking_subtype _is_multi_cam _position _arrow_direction _region _is_condition_weather _is_condition_arrow _is_condition_period _is_condition_ramp _is_condition_exit _is_condition_vehicle_type _is_condition_school _is_condition_arrow_left _is_condition_arrow_right _is_condition_arrow_front _is_condition_regional ))

(defmethod perception_interface_msgs::TrafficSign
  (:init
   (&key
    ((:camera_source __camera_source) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance perception_interface_msgs::CameraModelEnum :init))
    ((:score __score) 0.0)
    ((:points_2d __points_2d) ())
    ((:track_id __track_id) 0)
    ((:shape_info __shape_info) (instance perception_interface_msgs::TrafficSignShapeEnum :init))
    ((:bounding_box_2d __bounding_box_2d) (instance perception_interface_msgs::Rect4f :init))
    ((:is_speed_sign __is_speed_sign) nil)
    ((:speed_type __speed_type) (instance perception_interface_msgs::SpeedSignTypeEnum :init))
    ((:speed_num __speed_num) (instance perception_interface_msgs::SpeedSignSpeedEnum :init))
    ((:is_road_mark __is_road_mark) nil)
    ((:road_mark_type __road_mark_type) (instance perception_interface_msgs::RoadMarkTypeEnum :init))
    ((:type_info __type_info) (instance perception_interface_msgs::TrafficSignTypeEnum :init))
    ((:speedsign_category __speedsign_category) (instance perception_interface_msgs::SpeedSignCategoryEnum :init))
    ((:is_restriction_sign __is_restriction_sign) nil)
    ((:restriction_type __restriction_type) (instance perception_interface_msgs::RestrictionSignTypeEnum :init))
    ((:restriction_value __restriction_value) 0.0)
    ((:reseved_parking_subtype __reseved_parking_subtype) (instance perception_interface_msgs::ReservedParkingSignSubtypeEnum :init))
    ((:is_multi_cam __is_multi_cam) nil)
    ((:position __position) (instance perception_interface_msgs::Point3d :init))
    ((:arrow_direction __arrow_direction) (instance perception_interface_msgs::TrafficSignArrowDirectionEnum :init))
    ((:region __region) (instance perception_interface_msgs::TrafficSignRegionEnum :init))
    ((:is_condition_weather __is_condition_weather) nil)
    ((:is_condition_arrow __is_condition_arrow) nil)
    ((:is_condition_period __is_condition_period) nil)
    ((:is_condition_ramp __is_condition_ramp) nil)
    ((:is_condition_exit __is_condition_exit) nil)
    ((:is_condition_vehicle_type __is_condition_vehicle_type) nil)
    ((:is_condition_school __is_condition_school) nil)
    ((:is_condition_arrow_left __is_condition_arrow_left) nil)
    ((:is_condition_arrow_right __is_condition_arrow_right) nil)
    ((:is_condition_arrow_front __is_condition_arrow_front) nil)
    ((:is_condition_regional __is_condition_regional) nil)
    )
   (send-super :init)
   (setq _camera_source __camera_source)
   (setq _camera_model __camera_model)
   (setq _score (float __score))
   (setq _points_2d __points_2d)
   (setq _track_id (round __track_id))
   (setq _shape_info __shape_info)
   (setq _bounding_box_2d __bounding_box_2d)
   (setq _is_speed_sign __is_speed_sign)
   (setq _speed_type __speed_type)
   (setq _speed_num __speed_num)
   (setq _is_road_mark __is_road_mark)
   (setq _road_mark_type __road_mark_type)
   (setq _type_info __type_info)
   (setq _speedsign_category __speedsign_category)
   (setq _is_restriction_sign __is_restriction_sign)
   (setq _restriction_type __restriction_type)
   (setq _restriction_value (float __restriction_value))
   (setq _reseved_parking_subtype __reseved_parking_subtype)
   (setq _is_multi_cam __is_multi_cam)
   (setq _position __position)
   (setq _arrow_direction __arrow_direction)
   (setq _region __region)
   (setq _is_condition_weather __is_condition_weather)
   (setq _is_condition_arrow __is_condition_arrow)
   (setq _is_condition_period __is_condition_period)
   (setq _is_condition_ramp __is_condition_ramp)
   (setq _is_condition_exit __is_condition_exit)
   (setq _is_condition_vehicle_type __is_condition_vehicle_type)
   (setq _is_condition_school __is_condition_school)
   (setq _is_condition_arrow_left __is_condition_arrow_left)
   (setq _is_condition_arrow_right __is_condition_arrow_right)
   (setq _is_condition_arrow_front __is_condition_arrow_front)
   (setq _is_condition_regional __is_condition_regional)
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
  (:points_2d
   (&rest __points_2d)
   (if (keywordp (car __points_2d))
       (send* _points_2d __points_2d)
     (progn
       (if __points_2d (setq _points_2d (car __points_2d)))
       _points_2d)))
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:shape_info
   (&rest __shape_info)
   (if (keywordp (car __shape_info))
       (send* _shape_info __shape_info)
     (progn
       (if __shape_info (setq _shape_info (car __shape_info)))
       _shape_info)))
  (:bounding_box_2d
   (&rest __bounding_box_2d)
   (if (keywordp (car __bounding_box_2d))
       (send* _bounding_box_2d __bounding_box_2d)
     (progn
       (if __bounding_box_2d (setq _bounding_box_2d (car __bounding_box_2d)))
       _bounding_box_2d)))
  (:is_speed_sign
   (&optional (__is_speed_sign :null))
   (if (not (eq __is_speed_sign :null)) (setq _is_speed_sign __is_speed_sign)) _is_speed_sign)
  (:speed_type
   (&rest __speed_type)
   (if (keywordp (car __speed_type))
       (send* _speed_type __speed_type)
     (progn
       (if __speed_type (setq _speed_type (car __speed_type)))
       _speed_type)))
  (:speed_num
   (&rest __speed_num)
   (if (keywordp (car __speed_num))
       (send* _speed_num __speed_num)
     (progn
       (if __speed_num (setq _speed_num (car __speed_num)))
       _speed_num)))
  (:is_road_mark
   (&optional (__is_road_mark :null))
   (if (not (eq __is_road_mark :null)) (setq _is_road_mark __is_road_mark)) _is_road_mark)
  (:road_mark_type
   (&rest __road_mark_type)
   (if (keywordp (car __road_mark_type))
       (send* _road_mark_type __road_mark_type)
     (progn
       (if __road_mark_type (setq _road_mark_type (car __road_mark_type)))
       _road_mark_type)))
  (:type_info
   (&rest __type_info)
   (if (keywordp (car __type_info))
       (send* _type_info __type_info)
     (progn
       (if __type_info (setq _type_info (car __type_info)))
       _type_info)))
  (:speedsign_category
   (&rest __speedsign_category)
   (if (keywordp (car __speedsign_category))
       (send* _speedsign_category __speedsign_category)
     (progn
       (if __speedsign_category (setq _speedsign_category (car __speedsign_category)))
       _speedsign_category)))
  (:is_restriction_sign
   (&optional (__is_restriction_sign :null))
   (if (not (eq __is_restriction_sign :null)) (setq _is_restriction_sign __is_restriction_sign)) _is_restriction_sign)
  (:restriction_type
   (&rest __restriction_type)
   (if (keywordp (car __restriction_type))
       (send* _restriction_type __restriction_type)
     (progn
       (if __restriction_type (setq _restriction_type (car __restriction_type)))
       _restriction_type)))
  (:restriction_value
   (&optional __restriction_value)
   (if __restriction_value (setq _restriction_value __restriction_value)) _restriction_value)
  (:reseved_parking_subtype
   (&rest __reseved_parking_subtype)
   (if (keywordp (car __reseved_parking_subtype))
       (send* _reseved_parking_subtype __reseved_parking_subtype)
     (progn
       (if __reseved_parking_subtype (setq _reseved_parking_subtype (car __reseved_parking_subtype)))
       _reseved_parking_subtype)))
  (:is_multi_cam
   (&optional (__is_multi_cam :null))
   (if (not (eq __is_multi_cam :null)) (setq _is_multi_cam __is_multi_cam)) _is_multi_cam)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:arrow_direction
   (&rest __arrow_direction)
   (if (keywordp (car __arrow_direction))
       (send* _arrow_direction __arrow_direction)
     (progn
       (if __arrow_direction (setq _arrow_direction (car __arrow_direction)))
       _arrow_direction)))
  (:region
   (&rest __region)
   (if (keywordp (car __region))
       (send* _region __region)
     (progn
       (if __region (setq _region (car __region)))
       _region)))
  (:is_condition_weather
   (&optional (__is_condition_weather :null))
   (if (not (eq __is_condition_weather :null)) (setq _is_condition_weather __is_condition_weather)) _is_condition_weather)
  (:is_condition_arrow
   (&optional (__is_condition_arrow :null))
   (if (not (eq __is_condition_arrow :null)) (setq _is_condition_arrow __is_condition_arrow)) _is_condition_arrow)
  (:is_condition_period
   (&optional (__is_condition_period :null))
   (if (not (eq __is_condition_period :null)) (setq _is_condition_period __is_condition_period)) _is_condition_period)
  (:is_condition_ramp
   (&optional (__is_condition_ramp :null))
   (if (not (eq __is_condition_ramp :null)) (setq _is_condition_ramp __is_condition_ramp)) _is_condition_ramp)
  (:is_condition_exit
   (&optional (__is_condition_exit :null))
   (if (not (eq __is_condition_exit :null)) (setq _is_condition_exit __is_condition_exit)) _is_condition_exit)
  (:is_condition_vehicle_type
   (&optional (__is_condition_vehicle_type :null))
   (if (not (eq __is_condition_vehicle_type :null)) (setq _is_condition_vehicle_type __is_condition_vehicle_type)) _is_condition_vehicle_type)
  (:is_condition_school
   (&optional (__is_condition_school :null))
   (if (not (eq __is_condition_school :null)) (setq _is_condition_school __is_condition_school)) _is_condition_school)
  (:is_condition_arrow_left
   (&optional (__is_condition_arrow_left :null))
   (if (not (eq __is_condition_arrow_left :null)) (setq _is_condition_arrow_left __is_condition_arrow_left)) _is_condition_arrow_left)
  (:is_condition_arrow_right
   (&optional (__is_condition_arrow_right :null))
   (if (not (eq __is_condition_arrow_right :null)) (setq _is_condition_arrow_right __is_condition_arrow_right)) _is_condition_arrow_right)
  (:is_condition_arrow_front
   (&optional (__is_condition_arrow_front :null))
   (if (not (eq __is_condition_arrow_front :null)) (setq _is_condition_arrow_front __is_condition_arrow_front)) _is_condition_arrow_front)
  (:is_condition_regional
   (&optional (__is_condition_regional :null))
   (if (not (eq __is_condition_regional :null)) (setq _is_condition_regional __is_condition_regional)) _is_condition_regional)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/CameraSourceEnum _camera_source
    (send _camera_source :serialization-length)
    ;; perception_interface_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; float32 _score
    4
    ;; perception_interface_msgs/TrafficSignPoint[] _points_2d
    (apply #'+ (send-all _points_2d :serialization-length)) 4
    ;; uint32 _track_id
    4
    ;; perception_interface_msgs/TrafficSignShapeEnum _shape_info
    (send _shape_info :serialization-length)
    ;; perception_interface_msgs/Rect4f _bounding_box_2d
    (send _bounding_box_2d :serialization-length)
    ;; bool _is_speed_sign
    1
    ;; perception_interface_msgs/SpeedSignTypeEnum _speed_type
    (send _speed_type :serialization-length)
    ;; perception_interface_msgs/SpeedSignSpeedEnum _speed_num
    (send _speed_num :serialization-length)
    ;; bool _is_road_mark
    1
    ;; perception_interface_msgs/RoadMarkTypeEnum _road_mark_type
    (send _road_mark_type :serialization-length)
    ;; perception_interface_msgs/TrafficSignTypeEnum _type_info
    (send _type_info :serialization-length)
    ;; perception_interface_msgs/SpeedSignCategoryEnum _speedsign_category
    (send _speedsign_category :serialization-length)
    ;; bool _is_restriction_sign
    1
    ;; perception_interface_msgs/RestrictionSignTypeEnum _restriction_type
    (send _restriction_type :serialization-length)
    ;; float32 _restriction_value
    4
    ;; perception_interface_msgs/ReservedParkingSignSubtypeEnum _reseved_parking_subtype
    (send _reseved_parking_subtype :serialization-length)
    ;; bool _is_multi_cam
    1
    ;; perception_interface_msgs/Point3d _position
    (send _position :serialization-length)
    ;; perception_interface_msgs/TrafficSignArrowDirectionEnum _arrow_direction
    (send _arrow_direction :serialization-length)
    ;; perception_interface_msgs/TrafficSignRegionEnum _region
    (send _region :serialization-length)
    ;; bool _is_condition_weather
    1
    ;; bool _is_condition_arrow
    1
    ;; bool _is_condition_period
    1
    ;; bool _is_condition_ramp
    1
    ;; bool _is_condition_exit
    1
    ;; bool _is_condition_vehicle_type
    1
    ;; bool _is_condition_school
    1
    ;; bool _is_condition_arrow_left
    1
    ;; bool _is_condition_arrow_right
    1
    ;; bool _is_condition_arrow_front
    1
    ;; bool _is_condition_regional
    1
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
     ;; perception_interface_msgs/TrafficSignPoint[] _points_2d
     (write-long (length _points_2d) s)
     (dolist (elem _points_2d)
       (send elem :serialize s)
       )
     ;; uint32 _track_id
       (write-long _track_id s)
     ;; perception_interface_msgs/TrafficSignShapeEnum _shape_info
       (send _shape_info :serialize s)
     ;; perception_interface_msgs/Rect4f _bounding_box_2d
       (send _bounding_box_2d :serialize s)
     ;; bool _is_speed_sign
       (if _is_speed_sign (write-byte -1 s) (write-byte 0 s))
     ;; perception_interface_msgs/SpeedSignTypeEnum _speed_type
       (send _speed_type :serialize s)
     ;; perception_interface_msgs/SpeedSignSpeedEnum _speed_num
       (send _speed_num :serialize s)
     ;; bool _is_road_mark
       (if _is_road_mark (write-byte -1 s) (write-byte 0 s))
     ;; perception_interface_msgs/RoadMarkTypeEnum _road_mark_type
       (send _road_mark_type :serialize s)
     ;; perception_interface_msgs/TrafficSignTypeEnum _type_info
       (send _type_info :serialize s)
     ;; perception_interface_msgs/SpeedSignCategoryEnum _speedsign_category
       (send _speedsign_category :serialize s)
     ;; bool _is_restriction_sign
       (if _is_restriction_sign (write-byte -1 s) (write-byte 0 s))
     ;; perception_interface_msgs/RestrictionSignTypeEnum _restriction_type
       (send _restriction_type :serialize s)
     ;; float32 _restriction_value
       (sys::poke _restriction_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/ReservedParkingSignSubtypeEnum _reseved_parking_subtype
       (send _reseved_parking_subtype :serialize s)
     ;; bool _is_multi_cam
       (if _is_multi_cam (write-byte -1 s) (write-byte 0 s))
     ;; perception_interface_msgs/Point3d _position
       (send _position :serialize s)
     ;; perception_interface_msgs/TrafficSignArrowDirectionEnum _arrow_direction
       (send _arrow_direction :serialize s)
     ;; perception_interface_msgs/TrafficSignRegionEnum _region
       (send _region :serialize s)
     ;; bool _is_condition_weather
       (if _is_condition_weather (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_condition_arrow
       (if _is_condition_arrow (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_condition_period
       (if _is_condition_period (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_condition_ramp
       (if _is_condition_ramp (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_condition_exit
       (if _is_condition_exit (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_condition_vehicle_type
       (if _is_condition_vehicle_type (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_condition_school
       (if _is_condition_school (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_condition_arrow_left
       (if _is_condition_arrow_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_condition_arrow_right
       (if _is_condition_arrow_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_condition_arrow_front
       (if _is_condition_arrow_front (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_condition_regional
       (if _is_condition_regional (write-byte -1 s) (write-byte 0 s))
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
   ;; perception_interface_msgs/TrafficSignPoint[] _points_2d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_2d (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficSignPoint :init) r)) r))
     (dolist (elem- _points_2d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; perception_interface_msgs/TrafficSignShapeEnum _shape_info
     (send _shape_info :deserialize buf ptr-) (incf ptr- (send _shape_info :serialization-length))
   ;; perception_interface_msgs/Rect4f _bounding_box_2d
     (send _bounding_box_2d :deserialize buf ptr-) (incf ptr- (send _bounding_box_2d :serialization-length))
   ;; bool _is_speed_sign
     (setq _is_speed_sign (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_interface_msgs/SpeedSignTypeEnum _speed_type
     (send _speed_type :deserialize buf ptr-) (incf ptr- (send _speed_type :serialization-length))
   ;; perception_interface_msgs/SpeedSignSpeedEnum _speed_num
     (send _speed_num :deserialize buf ptr-) (incf ptr- (send _speed_num :serialization-length))
   ;; bool _is_road_mark
     (setq _is_road_mark (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_interface_msgs/RoadMarkTypeEnum _road_mark_type
     (send _road_mark_type :deserialize buf ptr-) (incf ptr- (send _road_mark_type :serialization-length))
   ;; perception_interface_msgs/TrafficSignTypeEnum _type_info
     (send _type_info :deserialize buf ptr-) (incf ptr- (send _type_info :serialization-length))
   ;; perception_interface_msgs/SpeedSignCategoryEnum _speedsign_category
     (send _speedsign_category :deserialize buf ptr-) (incf ptr- (send _speedsign_category :serialization-length))
   ;; bool _is_restriction_sign
     (setq _is_restriction_sign (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_interface_msgs/RestrictionSignTypeEnum _restriction_type
     (send _restriction_type :deserialize buf ptr-) (incf ptr- (send _restriction_type :serialization-length))
   ;; float32 _restriction_value
     (setq _restriction_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/ReservedParkingSignSubtypeEnum _reseved_parking_subtype
     (send _reseved_parking_subtype :deserialize buf ptr-) (incf ptr- (send _reseved_parking_subtype :serialization-length))
   ;; bool _is_multi_cam
     (setq _is_multi_cam (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_interface_msgs/Point3d _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; perception_interface_msgs/TrafficSignArrowDirectionEnum _arrow_direction
     (send _arrow_direction :deserialize buf ptr-) (incf ptr- (send _arrow_direction :serialization-length))
   ;; perception_interface_msgs/TrafficSignRegionEnum _region
     (send _region :deserialize buf ptr-) (incf ptr- (send _region :serialization-length))
   ;; bool _is_condition_weather
     (setq _is_condition_weather (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_condition_arrow
     (setq _is_condition_arrow (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_condition_period
     (setq _is_condition_period (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_condition_ramp
     (setq _is_condition_ramp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_condition_exit
     (setq _is_condition_exit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_condition_vehicle_type
     (setq _is_condition_vehicle_type (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_condition_school
     (setq _is_condition_school (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_condition_arrow_left
     (setq _is_condition_arrow_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_condition_arrow_right
     (setq _is_condition_arrow_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_condition_arrow_front
     (setq _is_condition_arrow_front (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_condition_regional
     (setq _is_condition_regional (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get perception_interface_msgs::TrafficSign :md5sum-) "b221ebe00b8ecd77beefa0c3305aa309")
(setf (get perception_interface_msgs::TrafficSign :datatype-) "perception_interface_msgs/TrafficSign")
(setf (get perception_interface_msgs::TrafficSign :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/TrafficSignPoint[] points_2d
uint32 track_id
perception_interface_msgs/TrafficSignShapeEnum shape_info
perception_interface_msgs/Rect4f bounding_box_2d
bool is_speed_sign
perception_interface_msgs/SpeedSignTypeEnum speed_type
perception_interface_msgs/SpeedSignSpeedEnum speed_num
bool is_road_mark
perception_interface_msgs/RoadMarkTypeEnum road_mark_type
perception_interface_msgs/TrafficSignTypeEnum type_info
perception_interface_msgs/SpeedSignCategoryEnum speedsign_category
bool is_restriction_sign
perception_interface_msgs/RestrictionSignTypeEnum restriction_type
float32 restriction_value
perception_interface_msgs/ReservedParkingSignSubtypeEnum reseved_parking_subtype
bool is_multi_cam
perception_interface_msgs/Point3d position
perception_interface_msgs/TrafficSignArrowDirectionEnum arrow_direction
perception_interface_msgs/TrafficSignRegionEnum region
bool is_condition_weather
bool is_condition_arrow
bool is_condition_period
bool is_condition_ramp
bool is_condition_exit
bool is_condition_vehicle_type
bool is_condition_school
bool is_condition_arrow_left
bool is_condition_arrow_right
bool is_condition_arrow_front
bool is_condition_regional

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
MSG: perception_interface_msgs/TrafficSignPoint
perception_interface_msgs/Point2f position
float32 visibility

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/TrafficSignShapeEnum
uint8 TRAFFIC_SIGN_SHAPE_UNKNOWN = 0
uint8 TRAFFIC_SIGN_SHAPE_BACKGROUND = 1
uint8 TRAFFIC_SIGN_SHAPE_HEXAGON = 2
uint8 TRAFFIC_SIGN_SHAPE_DIAMOND = 3
uint8 TRAFFIC_SIGN_SHAPE_RECTANGLE = 4
uint8 TRAFFIC_SIGN_SHAPE_TRIANGLE = 5
uint8 TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE = 6
uint8 TRAFFIC_SIGN_SHAPE_POLYGON = 7
uint8 TRAFFIC_SIGN_SHAPE_CIRCLE = 8
uint8 value

================================================================================
MSG: perception_interface_msgs/Rect4f
float32 left
float32 top
float32 right
float32 bottom

================================================================================
MSG: perception_interface_msgs/SpeedSignTypeEnum
uint8 SPEED_SIGN_TYPE_UNKNOWN = 0
uint8 SPEED_SIGN_TYPE_HIGH_SPEED = 1
uint8 SPEED_SIGN_TYPE_LOW_SPEED = 2
uint8 SPEED_SIGN_TYPE_DESPEED = 3
uint8 SPEED_SIGN_TYPE_RECOMMENDED = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/SpeedSignSpeedEnum
uint8 SPEED_SIGN_SPEED_UNKNOWN = 0
uint8 SPEED_SIGN_SPEED_5 = 1
uint8 SPEED_SIGN_SPEED_10 = 2
uint8 SPEED_SIGN_SPEED_15 = 3
uint8 SPEED_SIGN_SPEED_20 = 4
uint8 SPEED_SIGN_SPEED_25 = 5
uint8 SPEED_SIGN_SPEED_30 = 6
uint8 SPEED_SIGN_SPEED_35 = 7
uint8 SPEED_SIGN_SPEED_40 = 8
uint8 SPEED_SIGN_SPEED_50 = 9
uint8 SPEED_SIGN_SPEED_60 = 10
uint8 SPEED_SIGN_SPEED_70 = 11
uint8 SPEED_SIGN_SPEED_80 = 12
uint8 SPEED_SIGN_SPEED_90 = 13
uint8 SPEED_SIGN_SPEED_100 = 14
uint8 SPEED_SIGN_SPEED_110 = 15
uint8 SPEED_SIGN_SPEED_120 = 16
uint8 SPEED_SIGN_SPEED_130 = 17
uint8 SPEED_SIGN_SPEED_140 = 18
uint8 SPEED_SIGN_SPEED_45 = 19
uint8 SPEED_SIGN_SPEED_55 = 20
uint8 SPEED_SIGN_SPEED_65 = 21
uint8 SPEED_SIGN_SPEED_75 = 22
uint8 SPEED_SIGN_SPEED_85 = 23
uint8 value

================================================================================
MSG: perception_interface_msgs/RoadMarkTypeEnum
uint8 ROAD_MARK_TYPE_UNKNOWN = 0
uint8 ROAD_MARK_TYPE_GO_STRAIGHT = 1
uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT = 2
uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT = 3
uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK = 4
uint8 ROAD_MARK_TYPE_TURN_LEFT = 5
uint8 ROAD_MARK_TYPE_TURN_RIGHT = 6
uint8 ROAD_MARK_TYPE_TURN_BACK = 7
uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK = 8
uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT = 9
uint8 ROAD_MARK_TYPE_LEFT_CONFLUENCE = 10
uint8 ROAD_MARK_TYPE_RIGHT_CONFLUENCE = 11
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficSignTypeEnum
uint8 TRAFFIC_SIGN_TYPE_UNKNOWN = 0
uint8 TRAFFIC_SIGN_TYPE_OTHER = 1
uint8 TRAFFIC_SIGN_TYPE_STOP = 2
uint8 TRAFFIC_SIGN_TYPE_GIVE_WAY = 3
uint8 TRAFFIC_SIGN_TYPE_NO_OVERTAKING = 4
uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING = 5
uint8 TRAFFIC_SIGN_TYPE_NO_ENTRANCE = 6
uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE = 7
uint8 TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS = 8
uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE = 9
uint8 TRAFFIC_SIGN_TYPE_RAMP = 10
uint8 TRAFFIC_SIGN_TYPE_EXIT = 11
uint8 TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING = 12
uint8 TRAFFIC_SIGN_TYPE_TIME = 13
uint8 TRAFFIC_SIGN_TYPE_NO_MINIBUSES = 14
uint8 TRAFFIC_SIGN_TYPE_NO_LEFT_TURN = 15
uint8 TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN = 16
uint8 TRAFFIC_SIGN_TYPE_NO_U_TURN = 17
uint8 TRAFFIC_SIGN_TYPE_NO_HONKING = 18
uint8 TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD = 19
uint8 TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING = 20
uint8 TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING = 21
uint8 TRAFFIC_SIGN_TYPE_ROAD_WORK = 22
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN = 23
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS = 24
uint8 TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE = 25
uint8 TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION = 26
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 27
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 28
uint8 TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD = 29
uint8 TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD = 30
uint8 TRAFFIC_SIGN_TYPE_UPHILL_AHEAD = 31
uint8 TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD = 32
uint8 TRAFFIC_SIGN_TYPE_NO_PARKING = 33
uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING = 34
uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING = 35
uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING = 36
uint8 TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE = 37
uint8 TRAFFIC_SIGN_TYPE_EXPWAY_EXIT = 38
uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS = 39
uint8 TRAFFIC_SIGN_TYPE_PARKING = 40
uint8 TRAFFIC_SIGN_TYPE_RESERVED_PARKING = 41
uint8 TRAFFIC_SIGN_TYPE_PAYMENT_PARKING = 42
uint8 value

================================================================================
MSG: perception_interface_msgs/SpeedSignCategoryEnum
uint8 SPEED_SIGN_CATEGORY_UNKNOWN = 0
uint8 SPEED_SIGN_CATEGORY_ORDINARY = 1
uint8 SPEED_SIGN_CATEGORY_ELECTRONIC = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/RestrictionSignTypeEnum
uint8 RESTRINCTION_SIGN_TYPE_UNKNOWN = 0
uint8 RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT = 1
uint8 RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT = 2
uint8 RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/ReservedParkingSignSubtypeEnum
uint8 RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN = 0
uint8 RESERVED_PARKING_SIGN_SUBTYPE_OTHER = 1
uint8 RESERVED_PARKING_SIGN_SUBTYPE_TAXI = 2
uint8 RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS = 3
uint8 RESERVED_PARKING_SIGN_SUBTYPE_BUS = 4
uint8 RESERVED_PARKING_SIGN_SUBTYPE_DISABLED = 5
uint8 RESERVED_PARKING_SIGN_SUBTYPE_FEMALE = 6
uint8 RESERVED_PARKING_SIGN_SUBTYPE_CHARGING = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

================================================================================
MSG: perception_interface_msgs/TrafficSignArrowDirectionEnum
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_NONE = 1
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_LEFT = 2
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE = 3
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficSignRegionEnum
uint8 TRAFFIC_SIGN_REGION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_REGION_CN = 1
uint8 TRAFFIC_SIGN_REGION_EU = 2
uint8 TRAFFIC_SIGN_REGION_US = 3
uint8 value

")



(provide :perception_interface_msgs/TrafficSign "b221ebe00b8ecd77beefa0c3305aa309")


