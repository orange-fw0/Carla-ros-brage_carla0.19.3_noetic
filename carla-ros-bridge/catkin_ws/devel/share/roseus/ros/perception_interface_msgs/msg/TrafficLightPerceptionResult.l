;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficLightPerceptionResult)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficLightPerceptionResult (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTPERCEPTIONRESULT")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTPERCEPTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightPerceptionResult.msg.html


(defclass perception_interface_msgs::TrafficLightPerceptionResult
  :super ros::object
  :slots (_cross_id _in_fov _traffic_light_roi _traffic_light_single_frame _traffic_light_multi_frame _traffic_light_decision _hdmap_traffic_light_information _physical_traffic_light_single_frame _physical_traffic_light_multi_frame ))

(defmethod perception_interface_msgs::TrafficLightPerceptionResult
  (:init
   (&key
    ((:cross_id __cross_id) 0)
    ((:in_fov __in_fov) (instance perception_interface_msgs::TrafficLightInFov :init))
    ((:traffic_light_roi __traffic_light_roi) ())
    ((:traffic_light_single_frame __traffic_light_single_frame) ())
    ((:traffic_light_multi_frame __traffic_light_multi_frame) ())
    ((:traffic_light_decision __traffic_light_decision) ())
    ((:hdmap_traffic_light_information __hdmap_traffic_light_information) (instance perception_interface_msgs::HDMapTafficLightInformation :init))
    ((:physical_traffic_light_single_frame __physical_traffic_light_single_frame) ())
    ((:physical_traffic_light_multi_frame __physical_traffic_light_multi_frame) ())
    )
   (send-super :init)
   (setq _cross_id (round __cross_id))
   (setq _in_fov __in_fov)
   (setq _traffic_light_roi __traffic_light_roi)
   (setq _traffic_light_single_frame __traffic_light_single_frame)
   (setq _traffic_light_multi_frame __traffic_light_multi_frame)
   (setq _traffic_light_decision __traffic_light_decision)
   (setq _hdmap_traffic_light_information __hdmap_traffic_light_information)
   (setq _physical_traffic_light_single_frame __physical_traffic_light_single_frame)
   (setq _physical_traffic_light_multi_frame __physical_traffic_light_multi_frame)
   self)
  (:cross_id
   (&optional __cross_id)
   (if __cross_id (setq _cross_id __cross_id)) _cross_id)
  (:in_fov
   (&rest __in_fov)
   (if (keywordp (car __in_fov))
       (send* _in_fov __in_fov)
     (progn
       (if __in_fov (setq _in_fov (car __in_fov)))
       _in_fov)))
  (:traffic_light_roi
   (&rest __traffic_light_roi)
   (if (keywordp (car __traffic_light_roi))
       (send* _traffic_light_roi __traffic_light_roi)
     (progn
       (if __traffic_light_roi (setq _traffic_light_roi (car __traffic_light_roi)))
       _traffic_light_roi)))
  (:traffic_light_single_frame
   (&rest __traffic_light_single_frame)
   (if (keywordp (car __traffic_light_single_frame))
       (send* _traffic_light_single_frame __traffic_light_single_frame)
     (progn
       (if __traffic_light_single_frame (setq _traffic_light_single_frame (car __traffic_light_single_frame)))
       _traffic_light_single_frame)))
  (:traffic_light_multi_frame
   (&rest __traffic_light_multi_frame)
   (if (keywordp (car __traffic_light_multi_frame))
       (send* _traffic_light_multi_frame __traffic_light_multi_frame)
     (progn
       (if __traffic_light_multi_frame (setq _traffic_light_multi_frame (car __traffic_light_multi_frame)))
       _traffic_light_multi_frame)))
  (:traffic_light_decision
   (&rest __traffic_light_decision)
   (if (keywordp (car __traffic_light_decision))
       (send* _traffic_light_decision __traffic_light_decision)
     (progn
       (if __traffic_light_decision (setq _traffic_light_decision (car __traffic_light_decision)))
       _traffic_light_decision)))
  (:hdmap_traffic_light_information
   (&rest __hdmap_traffic_light_information)
   (if (keywordp (car __hdmap_traffic_light_information))
       (send* _hdmap_traffic_light_information __hdmap_traffic_light_information)
     (progn
       (if __hdmap_traffic_light_information (setq _hdmap_traffic_light_information (car __hdmap_traffic_light_information)))
       _hdmap_traffic_light_information)))
  (:physical_traffic_light_single_frame
   (&rest __physical_traffic_light_single_frame)
   (if (keywordp (car __physical_traffic_light_single_frame))
       (send* _physical_traffic_light_single_frame __physical_traffic_light_single_frame)
     (progn
       (if __physical_traffic_light_single_frame (setq _physical_traffic_light_single_frame (car __physical_traffic_light_single_frame)))
       _physical_traffic_light_single_frame)))
  (:physical_traffic_light_multi_frame
   (&rest __physical_traffic_light_multi_frame)
   (if (keywordp (car __physical_traffic_light_multi_frame))
       (send* _physical_traffic_light_multi_frame __physical_traffic_light_multi_frame)
     (progn
       (if __physical_traffic_light_multi_frame (setq _physical_traffic_light_multi_frame (car __physical_traffic_light_multi_frame)))
       _physical_traffic_light_multi_frame)))
  (:serialization-length
   ()
   (+
    ;; uint64 _cross_id
    8
    ;; perception_interface_msgs/TrafficLightInFov _in_fov
    (send _in_fov :serialization-length)
    ;; perception_interface_msgs/TrafficLightROI[] _traffic_light_roi
    (apply #'+ (send-all _traffic_light_roi :serialization-length)) 4
    ;; perception_interface_msgs/TrafficLightSingleFrame[] _traffic_light_single_frame
    (apply #'+ (send-all _traffic_light_single_frame :serialization-length)) 4
    ;; perception_interface_msgs/TrafficLightMultiFrame[] _traffic_light_multi_frame
    (apply #'+ (send-all _traffic_light_multi_frame :serialization-length)) 4
    ;; perception_interface_msgs/TrafficLightDecision[] _traffic_light_decision
    (apply #'+ (send-all _traffic_light_decision :serialization-length)) 4
    ;; perception_interface_msgs/HDMapTafficLightInformation _hdmap_traffic_light_information
    (send _hdmap_traffic_light_information :serialization-length)
    ;; perception_interface_msgs/PhysicalTrafficLightSingleFrame[] _physical_traffic_light_single_frame
    (apply #'+ (send-all _physical_traffic_light_single_frame :serialization-length)) 4
    ;; perception_interface_msgs/PhysicalTrafficLightMultiFrame[] _physical_traffic_light_multi_frame
    (apply #'+ (send-all _physical_traffic_light_multi_frame :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _cross_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _cross_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _cross_id) (= (length (_cross_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_cross_id . bv) 0) 0) s)
              (write-long (ash (elt (_cross_id . bv) 1) -1) s))
             ((and (class _cross_id) (= (length (_cross_id . bv)) 1)) ;; big1
              (write-long (elt (_cross_id . bv) 0) s)
              (write-long (if (>= _cross_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _cross_id s)(write-long (if (>= _cross_id 0) 0 #xffffffff) s)))
     ;; perception_interface_msgs/TrafficLightInFov _in_fov
       (send _in_fov :serialize s)
     ;; perception_interface_msgs/TrafficLightROI[] _traffic_light_roi
     (write-long (length _traffic_light_roi) s)
     (dolist (elem _traffic_light_roi)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/TrafficLightSingleFrame[] _traffic_light_single_frame
     (write-long (length _traffic_light_single_frame) s)
     (dolist (elem _traffic_light_single_frame)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/TrafficLightMultiFrame[] _traffic_light_multi_frame
     (write-long (length _traffic_light_multi_frame) s)
     (dolist (elem _traffic_light_multi_frame)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/TrafficLightDecision[] _traffic_light_decision
     (write-long (length _traffic_light_decision) s)
     (dolist (elem _traffic_light_decision)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/HDMapTafficLightInformation _hdmap_traffic_light_information
       (send _hdmap_traffic_light_information :serialize s)
     ;; perception_interface_msgs/PhysicalTrafficLightSingleFrame[] _physical_traffic_light_single_frame
     (write-long (length _physical_traffic_light_single_frame) s)
     (dolist (elem _physical_traffic_light_single_frame)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/PhysicalTrafficLightMultiFrame[] _physical_traffic_light_multi_frame
     (write-long (length _physical_traffic_light_multi_frame) s)
     (dolist (elem _physical_traffic_light_multi_frame)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _cross_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _cross_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _cross_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; perception_interface_msgs/TrafficLightInFov _in_fov
     (send _in_fov :deserialize buf ptr-) (incf ptr- (send _in_fov :serialization-length))
   ;; perception_interface_msgs/TrafficLightROI[] _traffic_light_roi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_roi (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficLightROI :init) r)) r))
     (dolist (elem- _traffic_light_roi)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/TrafficLightSingleFrame[] _traffic_light_single_frame
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_single_frame (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficLightSingleFrame :init) r)) r))
     (dolist (elem- _traffic_light_single_frame)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/TrafficLightMultiFrame[] _traffic_light_multi_frame
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_multi_frame (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficLightMultiFrame :init) r)) r))
     (dolist (elem- _traffic_light_multi_frame)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/TrafficLightDecision[] _traffic_light_decision
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_decision (let (r) (dotimes (i n) (push (instance perception_interface_msgs::TrafficLightDecision :init) r)) r))
     (dolist (elem- _traffic_light_decision)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/HDMapTafficLightInformation _hdmap_traffic_light_information
     (send _hdmap_traffic_light_information :deserialize buf ptr-) (incf ptr- (send _hdmap_traffic_light_information :serialization-length))
   ;; perception_interface_msgs/PhysicalTrafficLightSingleFrame[] _physical_traffic_light_single_frame
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _physical_traffic_light_single_frame (let (r) (dotimes (i n) (push (instance perception_interface_msgs::PhysicalTrafficLightSingleFrame :init) r)) r))
     (dolist (elem- _physical_traffic_light_single_frame)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/PhysicalTrafficLightMultiFrame[] _physical_traffic_light_multi_frame
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _physical_traffic_light_multi_frame (let (r) (dotimes (i n) (push (instance perception_interface_msgs::PhysicalTrafficLightMultiFrame :init) r)) r))
     (dolist (elem- _physical_traffic_light_multi_frame)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::TrafficLightPerceptionResult :md5sum-) "06bac2504e379afdf9b0c9e8de2bb35f")
(setf (get perception_interface_msgs::TrafficLightPerceptionResult :datatype-) "perception_interface_msgs/TrafficLightPerceptionResult")
(setf (get perception_interface_msgs::TrafficLightPerceptionResult :definition-)
      "uint64 cross_id
perception_interface_msgs/TrafficLightInFov in_fov
perception_interface_msgs/TrafficLightROI[] traffic_light_roi
perception_interface_msgs/TrafficLightSingleFrame[] traffic_light_single_frame
perception_interface_msgs/TrafficLightMultiFrame[] traffic_light_multi_frame
perception_interface_msgs/TrafficLightDecision[] traffic_light_decision
perception_interface_msgs/HDMapTafficLightInformation hdmap_traffic_light_information
perception_interface_msgs/PhysicalTrafficLightSingleFrame[] physical_traffic_light_single_frame
perception_interface_msgs/PhysicalTrafficLightMultiFrame[] physical_traffic_light_multi_frame

================================================================================
MSG: perception_interface_msgs/TrafficLightInFov
uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN = 1
uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW = 2
uint8 TRAFFIC_LIGHT_IN_FOV_UP_ARROW = 4
uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW = 8
uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN = 16
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightROI
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
perception_interface_msgs/Rect4f roi

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
MSG: perception_interface_msgs/Rect4f
float32 left
float32 top
float32 right
float32 bottom

================================================================================
MSG: perception_interface_msgs/TrafficLightSingleFrame
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/TrafficLightTypeEnum type
perception_interface_msgs/Rect4f bounding_box_2d
float32[] features
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

================================================================================
MSG: perception_interface_msgs/TrafficLightMultiFrame
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
perception_interface_msgs/TrafficLightTypeEnum type
int32 track_id
perception_interface_msgs/TrafficLightPatternEnum[] pattern
perception_interface_msgs/TrafficLightStatusEnum[] status
float32[] pattern_score
float32[] status_score
float32 duration
float32 remaining
uint8 count_number
perception_interface_msgs/Shape3f shape_3d
perception_interface_msgs/Point3f location_bv
float32 heading_theta_bv
perception_interface_msgs/Vector2f velocity_bv
perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
string reserved_info

================================================================================
MSG: perception_interface_msgs/TrafficLightDecision
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
perception_interface_msgs/TrafficLightPatternEnum pattern
perception_interface_msgs/TrafficLightStatusEnum status
float32 duration
float32 remaining
uint8 count_number
float32 score
string reserved_info
perception_interface_msgs/TrafficLightPositionFeature pos_feature

================================================================================
MSG: perception_interface_msgs/TrafficLightPositionFeature
perception_interface_msgs/Point3f position
float32 yaw

================================================================================
MSG: perception_interface_msgs/HDMapTafficLightInformation
bool valid
bool in_intersection
perception_interface_msgs/HDMapIntersection[] hdmap_intersecions

================================================================================
MSG: perception_interface_msgs/HDMapIntersection
perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line
perception_interface_msgs/HDMapTrafficLightGroup[] traffic_light_groups

================================================================================
MSG: perception_interface_msgs/HDMapIntersectionStopLine
float64 distance_to_stop_line
float64 distance_buffer

================================================================================
MSG: perception_interface_msgs/HDMapTrafficLightGroup
uint64 track_id
perception_interface_msgs/HDMapTrafficLight[] traffic_lights

================================================================================
MSG: perception_interface_msgs/HDMapTrafficLight
perception_interface_msgs/Point3d[] boundary
perception_interface_msgs/TrafficLightPatternEnum pattern
bool on_route

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

================================================================================
MSG: perception_interface_msgs/PhysicalTrafficLightSingleFrame
perception_interface_msgs/CameraSourceEnum camera_source
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
MSG: perception_interface_msgs/PhysicalTrafficLightMultiFrame
perception_interface_msgs/CameraSourceEnum camera_source
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

")



(provide :perception_interface_msgs/TrafficLightPerceptionResult "06bac2504e379afdf9b0c9e8de2bb35f")


