;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficSignPerception)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficSignPerception (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNPERCEPTION")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNPERCEPTION"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignPerception.msg.html


(intern "*VISION_PERCEPTION_TRAFFIC_SIGN_RESULT*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNPERCEPTION"))
(shadow '*VISION_PERCEPTION_TRAFFIC_SIGN_RESULT* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNPERCEPTION"))
(defconstant perception_interface_msgs::TrafficSignPerception::*VISION_PERCEPTION_TRAFFIC_SIGN_RESULT* 1)
(intern "*VISION_PERCEPTION_TRAFFIC_SIGN_RESERVED_INFOS*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNPERCEPTION"))
(shadow '*VISION_PERCEPTION_TRAFFIC_SIGN_RESERVED_INFOS* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNPERCEPTION"))
(defconstant perception_interface_msgs::TrafficSignPerception::*VISION_PERCEPTION_TRAFFIC_SIGN_RESERVED_INFOS* 2)

(defun perception_interface_msgs::TrafficSignPerception-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::TrafficSignPerception::*VISION_PERCEPTION_TRAFFIC_SIGN_RESULT*)
        ((= const 2) 'perception_interface_msgs::TrafficSignPerception::*VISION_PERCEPTION_TRAFFIC_SIGN_RESERVED_INFOS*)
        (t nil)))

(defclass perception_interface_msgs::TrafficSignPerception
  :super ros::object
  :slots (_available _traffic_signs _reserved_infos ))

(defmethod perception_interface_msgs::TrafficSignPerception
  (:init
   (&key
    ((:available __available) 0)
    ((:traffic_signs __traffic_signs) ())
    ((:reserved_infos __reserved_infos) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _traffic_signs __traffic_signs)
   (setq _reserved_infos __reserved_infos)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:traffic_signs
   (&rest __traffic_signs)
   (if (keywordp (car __traffic_signs))
       (send* _traffic_signs __traffic_signs)
     (progn
       (if __traffic_signs (setq _traffic_signs (car __traffic_signs)))
       _traffic_signs)))
  (:reserved_infos
   (&optional __reserved_infos)
   (if __reserved_infos (setq _reserved_infos __reserved_infos)) _reserved_infos)
  (:serialization-length
   ()
   (+
    ;; uint64 _available
    8
    ;; perception_interface_msgs/TrafficSign[] _traffic_signs
    (apply #'+ (send-all _traffic_signs :serialization-length)) 4
    ;; string[] _reserved_infos
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _reserved_infos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; perception_interface_msgs/TrafficSign[] _traffic_signs
     (write-long (length _traffic_signs) s)
     (dolist (elem _traffic_signs)
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
   ;; perception_interface_msgs/TrafficSign[] _traffic_signs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_signs (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficSign :init) r)) r))
     (dolist (elem- _traffic_signs)
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

(setf (get perception_interface_msgs::TrafficSignPerception :md5sum-) "0b94d805030c7ff576c6a1ef723a5a81")
(setf (get perception_interface_msgs::TrafficSignPerception :datatype-) "perception_interface_msgs/TrafficSignPerception")
(setf (get perception_interface_msgs::TrafficSignPerception :definition-)
      "uint8 VISION_PERCEPTION_TRAFFIC_SIGN_RESULT = 1
uint8 VISION_PERCEPTION_TRAFFIC_SIGN_RESERVED_INFOS = 2
uint64 available
perception_interface_msgs/TrafficSign[] traffic_signs
string[] reserved_infos

================================================================================
MSG: perception_interface_msgs/TrafficSign
perception_interface_msgs/CameraSourceEnum camera_source
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



(provide :perception_interface_msgs/TrafficSignPerception "0b94d805030c7ff576c6a1ef723a5a81")


