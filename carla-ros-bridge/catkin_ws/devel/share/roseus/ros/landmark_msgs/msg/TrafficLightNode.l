;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*TYPE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*TYPE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*TYPE_VALID* 1)
(intern "*PATTERN_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*PATTERN_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*PATTERN_VALID* 2)
(intern "*STATUS_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*STATUS_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*STATUS_VALID* 4)
(intern "*PATTERN_SCORE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*PATTERN_SCORE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*PATTERN_SCORE_VALID* 8)
(intern "*STATUS_SCORE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*STATUS_SCORE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*STATUS_SCORE_VALID* 16)
(intern "*DURATION_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*DURATION_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*DURATION_VALID* 32)
(intern "*REMAINING_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*REMAINING_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*REMAINING_VALID* 64)
(intern "*COUNT_NUMBER_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*COUNT_NUMBER_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*COUNT_NUMBER_VALID* 128)
(intern "*SHAPE_3D_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*SHAPE_3D_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*SHAPE_3D_VALID* 256)
(intern "*SHAPE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*SHAPE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*SHAPE_VALID* 512)
(intern "*DIRECTIONS_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*DIRECTIONS_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*DIRECTIONS_VALID* 1024)
(intern "*LOCATION_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*LOCATION_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*LOCATION_VALID* 2048)
(intern "*TRAFFIC_LIGHT_DECISION_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*TRAFFIC_LIGHT_DECISION_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*TRAFFIC_LIGHT_DECISION_VALID* 4096)
(intern "*IN_INTERSECTION_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*IN_INTERSECTION_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*IN_INTERSECTION_VALID* 8192)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*SCORE_VALID* 16384)
(intern "*HEADING_THETA_BV_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*HEADING_THETA_BV_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*HEADING_THETA_BV_VALID* 32768)
(intern "*DIGITS_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*DIGITS_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*DIGITS_VALID* 65536)
(intern "*DIGIT_SCORES_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*DIGIT_SCORES_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*DIGIT_SCORES_VALID* 131072)
(intern "*GROUP_SHAPE_TYPE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*GROUP_SHAPE_TYPE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*GROUP_SHAPE_TYPE_VALID* 262144)
(intern "*GROUP_SHAPE_SCORE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*GROUP_SHAPE_SCORE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*GROUP_SHAPE_SCORE_VALID* 524288)
(intern "*GROUP_PROPERTY_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*GROUP_PROPERTY_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*GROUP_PROPERTY_VALID* 1048576)
(intern "*TRACK_ID_2D_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*TRACK_ID_2D_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*TRACK_ID_2D_VALID* 2097152)
(intern "*OBSERVED_BY_EGO_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*OBSERVED_BY_EGO_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*OBSERVED_BY_EGO_VALID* 4194304)
(intern "*OBSERVED_BY_CURRENT_ROAD_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*OBSERVED_BY_CURRENT_ROAD_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*OBSERVED_BY_CURRENT_ROAD_VALID* 8388608)
(intern "*OBSERVED_BY_CURRENT_LANE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(shadow '*OBSERVED_BY_CURRENT_LANE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTNODE"))
(defconstant landmark_msgs::TrafficLightNode::*OBSERVED_BY_CURRENT_LANE_VALID* 16777216)

(defun landmark_msgs::TrafficLightNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::TrafficLightNode::*TYPE_VALID*)
        ((= const 2) 'landmark_msgs::TrafficLightNode::*PATTERN_VALID*)
        ((= const 4) 'landmark_msgs::TrafficLightNode::*STATUS_VALID*)
        ((= const 8) 'landmark_msgs::TrafficLightNode::*PATTERN_SCORE_VALID*)
        ((= const 16) 'landmark_msgs::TrafficLightNode::*STATUS_SCORE_VALID*)
        ((= const 32) 'landmark_msgs::TrafficLightNode::*DURATION_VALID*)
        ((= const 64) 'landmark_msgs::TrafficLightNode::*REMAINING_VALID*)
        ((= const 128) 'landmark_msgs::TrafficLightNode::*COUNT_NUMBER_VALID*)
        ((= const 256) 'landmark_msgs::TrafficLightNode::*SHAPE_3D_VALID*)
        ((= const 512) 'landmark_msgs::TrafficLightNode::*SHAPE_VALID*)
        ((= const 1024) 'landmark_msgs::TrafficLightNode::*DIRECTIONS_VALID*)
        ((= const 2048) 'landmark_msgs::TrafficLightNode::*LOCATION_VALID*)
        ((= const 4096) 'landmark_msgs::TrafficLightNode::*TRAFFIC_LIGHT_DECISION_VALID*)
        ((= const 8192) 'landmark_msgs::TrafficLightNode::*IN_INTERSECTION_VALID*)
        ((= const 16384) 'landmark_msgs::TrafficLightNode::*SCORE_VALID*)
        ((= const 32768) 'landmark_msgs::TrafficLightNode::*HEADING_THETA_BV_VALID*)
        ((= const 65536) 'landmark_msgs::TrafficLightNode::*DIGITS_VALID*)
        ((= const 131072) 'landmark_msgs::TrafficLightNode::*DIGIT_SCORES_VALID*)
        ((= const 262144) 'landmark_msgs::TrafficLightNode::*GROUP_SHAPE_TYPE_VALID*)
        ((= const 524288) 'landmark_msgs::TrafficLightNode::*GROUP_SHAPE_SCORE_VALID*)
        ((= const 1048576) 'landmark_msgs::TrafficLightNode::*GROUP_PROPERTY_VALID*)
        ((= const 2097152) 'landmark_msgs::TrafficLightNode::*TRACK_ID_2D_VALID*)
        ((= const 4194304) 'landmark_msgs::TrafficLightNode::*OBSERVED_BY_EGO_VALID*)
        ((= const 8388608) 'landmark_msgs::TrafficLightNode::*OBSERVED_BY_CURRENT_ROAD_VALID*)
        ((= const 16777216) 'landmark_msgs::TrafficLightNode::*OBSERVED_BY_CURRENT_LANE_VALID*)
        (t nil)))

(defclass landmark_msgs::TrafficLightNode
  :super ros::object
  :slots (_available _track_id _type _pattern _status _pattern_score _status_score _duration _remaining _count_number _shape_3d _shape _directions _location _traffic_light_decision _in_intersection _score _heading_theta_bv _digits _digit_scores _group_shape_type _group_shape_score _group_property _track_id_2d _observed_by_ego _observed_by_current_road _observed_by_current_lane _reserved_info ))

(defmethod landmark_msgs::TrafficLightNode
  (:init
   (&key
    ((:available __available) 0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:type __type) (instance landmark_msgs::TrafficLightTypeEnum :init))
    ((:pattern __pattern) ())
    ((:status __status) ())
    ((:pattern_score __pattern_score) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:status_score __status_score) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:duration __duration) 0.0)
    ((:remaining __remaining) 0.0)
    ((:count_number __count_number) 0)
    ((:shape_3d __shape_3d) (instance perception_interface_msgs::Shape3f :init))
    ((:shape __shape) ())
    ((:directions __directions) ())
    ((:location __location) (instance perception_interface_msgs::Point3f :init))
    ((:traffic_light_decision __traffic_light_decision) ())
    ((:in_intersection __in_intersection) nil)
    ((:score __score) 0.0)
    ((:heading_theta_bv __heading_theta_bv) 0.0)
    ((:digits __digits) (make-array 0 :initial-element 0 :element-type :char))
    ((:digit_scores __digit_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:group_shape_type __group_shape_type) (instance landmark_msgs::TrafficLightGroupShapeEnum :init))
    ((:group_shape_score __group_shape_score) 0.0)
    ((:group_property __group_property) (instance landmark_msgs::TrafficLightGroupPropertyEnum :init))
    ((:track_id_2d __track_id_2d) (make-array 0 :initial-element 0 :element-type :integer))
    ((:observed_by_ego __observed_by_ego) (instance landmark_msgs::TrafficLightObservedByEgoEnum :init))
    ((:observed_by_current_road __observed_by_current_road) (instance landmark_msgs::TrafficLightObservedByEgoEnum :init))
    ((:observed_by_current_lane __observed_by_current_lane) (instance landmark_msgs::TrafficLightObservedByEgoEnum :init))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _track_id __track_id)
   (setq _type __type)
   (setq _pattern __pattern)
   (setq _status __status)
   (setq _pattern_score __pattern_score)
   (setq _status_score __status_score)
   (setq _duration (float __duration))
   (setq _remaining (float __remaining))
   (setq _count_number (round __count_number))
   (setq _shape_3d __shape_3d)
   (setq _shape __shape)
   (setq _directions __directions)
   (setq _location __location)
   (setq _traffic_light_decision __traffic_light_decision)
   (setq _in_intersection __in_intersection)
   (setq _score (float __score))
   (setq _heading_theta_bv (float __heading_theta_bv))
   (setq _digits __digits)
   (setq _digit_scores __digit_scores)
   (setq _group_shape_type __group_shape_type)
   (setq _group_shape_score (float __group_shape_score))
   (setq _group_property __group_property)
   (setq _track_id_2d __track_id_2d)
   (setq _observed_by_ego __observed_by_ego)
   (setq _observed_by_current_road __observed_by_current_road)
   (setq _observed_by_current_lane __observed_by_current_lane)
   (setq _reserved_info (string __reserved_info))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:track_id
   (&rest __track_id)
   (if (keywordp (car __track_id))
       (send* _track_id __track_id)
     (progn
       (if __track_id (setq _track_id (car __track_id)))
       _track_id)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
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
  (:pattern_score
   (&optional __pattern_score)
   (if __pattern_score (setq _pattern_score __pattern_score)) _pattern_score)
  (:status_score
   (&optional __status_score)
   (if __status_score (setq _status_score __status_score)) _status_score)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:remaining
   (&optional __remaining)
   (if __remaining (setq _remaining __remaining)) _remaining)
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
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:directions
   (&rest __directions)
   (if (keywordp (car __directions))
       (send* _directions __directions)
     (progn
       (if __directions (setq _directions (car __directions)))
       _directions)))
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:traffic_light_decision
   (&rest __traffic_light_decision)
   (if (keywordp (car __traffic_light_decision))
       (send* _traffic_light_decision __traffic_light_decision)
     (progn
       (if __traffic_light_decision (setq _traffic_light_decision (car __traffic_light_decision)))
       _traffic_light_decision)))
  (:in_intersection
   (&optional (__in_intersection :null))
   (if (not (eq __in_intersection :null)) (setq _in_intersection __in_intersection)) _in_intersection)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:heading_theta_bv
   (&optional __heading_theta_bv)
   (if __heading_theta_bv (setq _heading_theta_bv __heading_theta_bv)) _heading_theta_bv)
  (:digits
   (&optional __digits)
   (if __digits (setq _digits __digits)) _digits)
  (:digit_scores
   (&optional __digit_scores)
   (if __digit_scores (setq _digit_scores __digit_scores)) _digit_scores)
  (:group_shape_type
   (&rest __group_shape_type)
   (if (keywordp (car __group_shape_type))
       (send* _group_shape_type __group_shape_type)
     (progn
       (if __group_shape_type (setq _group_shape_type (car __group_shape_type)))
       _group_shape_type)))
  (:group_shape_score
   (&optional __group_shape_score)
   (if __group_shape_score (setq _group_shape_score __group_shape_score)) _group_shape_score)
  (:group_property
   (&rest __group_property)
   (if (keywordp (car __group_property))
       (send* _group_property __group_property)
     (progn
       (if __group_property (setq _group_property (car __group_property)))
       _group_property)))
  (:track_id_2d
   (&optional __track_id_2d)
   (if __track_id_2d (setq _track_id_2d __track_id_2d)) _track_id_2d)
  (:observed_by_ego
   (&rest __observed_by_ego)
   (if (keywordp (car __observed_by_ego))
       (send* _observed_by_ego __observed_by_ego)
     (progn
       (if __observed_by_ego (setq _observed_by_ego (car __observed_by_ego)))
       _observed_by_ego)))
  (:observed_by_current_road
   (&rest __observed_by_current_road)
   (if (keywordp (car __observed_by_current_road))
       (send* _observed_by_current_road __observed_by_current_road)
     (progn
       (if __observed_by_current_road (setq _observed_by_current_road (car __observed_by_current_road)))
       _observed_by_current_road)))
  (:observed_by_current_lane
   (&rest __observed_by_current_lane)
   (if (keywordp (car __observed_by_current_lane))
       (send* _observed_by_current_lane __observed_by_current_lane)
     (progn
       (if __observed_by_current_lane (setq _observed_by_current_lane (car __observed_by_current_lane)))
       _observed_by_current_lane)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint32 _available
    4
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; landmark_msgs/TrafficLightTypeEnum _type
    (send _type :serialization-length)
    ;; landmark_msgs/TrafficLightPatternEnum[] _pattern
    (apply #'+ (send-all _pattern :serialization-length)) 4
    ;; landmark_msgs/TrafficLightStatusEnum[] _status
    (apply #'+ (send-all _status :serialization-length)) 4
    ;; float32[] _pattern_score
    (* 4    (length _pattern_score)) 4
    ;; float32[] _status_score
    (* 4    (length _status_score)) 4
    ;; float32 _duration
    4
    ;; float32 _remaining
    4
    ;; uint8 _count_number
    1
    ;; perception_interface_msgs/Shape3f _shape_3d
    (send _shape_3d :serialization-length)
    ;; perception_interface_msgs/Point3f[] _shape
    (apply #'+ (send-all _shape :serialization-length)) 4
    ;; landmark_msgs/TrafficLightDirectionEnum[] _directions
    (apply #'+ (send-all _directions :serialization-length)) 4
    ;; perception_interface_msgs/Point3f _location
    (send _location :serialization-length)
    ;; landmark_msgs/TrafficLightDecision[] _traffic_light_decision
    (apply #'+ (send-all _traffic_light_decision :serialization-length)) 4
    ;; bool _in_intersection
    1
    ;; float32 _score
    4
    ;; float32 _heading_theta_bv
    4
    ;; uint8[] _digits
    (* 1    (length _digits)) 4
    ;; float32[] _digit_scores
    (* 4    (length _digit_scores)) 4
    ;; landmark_msgs/TrafficLightGroupShapeEnum _group_shape_type
    (send _group_shape_type :serialization-length)
    ;; float32 _group_shape_score
    4
    ;; landmark_msgs/TrafficLightGroupPropertyEnum _group_property
    (send _group_property :serialization-length)
    ;; int32[] _track_id_2d
    (* 4    (length _track_id_2d)) 4
    ;; landmark_msgs/TrafficLightObservedByEgoEnum _observed_by_ego
    (send _observed_by_ego :serialization-length)
    ;; landmark_msgs/TrafficLightObservedByEgoEnum _observed_by_current_road
    (send _observed_by_current_road :serialization-length)
    ;; landmark_msgs/TrafficLightObservedByEgoEnum _observed_by_current_lane
    (send _observed_by_current_lane :serialization-length)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _available
       (write-long _available s)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; landmark_msgs/TrafficLightTypeEnum _type
       (send _type :serialize s)
     ;; landmark_msgs/TrafficLightPatternEnum[] _pattern
     (write-long (length _pattern) s)
     (dolist (elem _pattern)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficLightStatusEnum[] _status
     (write-long (length _status) s)
     (dolist (elem _status)
       (send elem :serialize s)
       )
     ;; float32[] _pattern_score
     (write-long (length _pattern_score) s)
     (dotimes (i (length _pattern_score))
       (sys::poke (elt _pattern_score i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _status_score
     (write-long (length _status_score) s)
     (dotimes (i (length _status_score))
       (sys::poke (elt _status_score i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _remaining
       (sys::poke _remaining (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _count_number
       (write-byte _count_number s)
     ;; perception_interface_msgs/Shape3f _shape_3d
       (send _shape_3d :serialize s)
     ;; perception_interface_msgs/Point3f[] _shape
     (write-long (length _shape) s)
     (dolist (elem _shape)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficLightDirectionEnum[] _directions
     (write-long (length _directions) s)
     (dolist (elem _directions)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point3f _location
       (send _location :serialize s)
     ;; landmark_msgs/TrafficLightDecision[] _traffic_light_decision
     (write-long (length _traffic_light_decision) s)
     (dolist (elem _traffic_light_decision)
       (send elem :serialize s)
       )
     ;; bool _in_intersection
       (if _in_intersection (write-byte -1 s) (write-byte 0 s))
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading_theta_bv
       (sys::poke _heading_theta_bv (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8[] _digits
     (write-long (length _digits) s)
     (princ _digits s)
     ;; float32[] _digit_scores
     (write-long (length _digit_scores) s)
     (dotimes (i (length _digit_scores))
       (sys::poke (elt _digit_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; landmark_msgs/TrafficLightGroupShapeEnum _group_shape_type
       (send _group_shape_type :serialize s)
     ;; float32 _group_shape_score
       (sys::poke _group_shape_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; landmark_msgs/TrafficLightGroupPropertyEnum _group_property
       (send _group_property :serialize s)
     ;; int32[] _track_id_2d
     (write-long (length _track_id_2d) s)
     (dotimes (i (length _track_id_2d))
       (write-long (elt _track_id_2d i) s)
       )
     ;; landmark_msgs/TrafficLightObservedByEgoEnum _observed_by_ego
       (send _observed_by_ego :serialize s)
     ;; landmark_msgs/TrafficLightObservedByEgoEnum _observed_by_current_road
       (send _observed_by_current_road :serialize s)
     ;; landmark_msgs/TrafficLightObservedByEgoEnum _observed_by_current_lane
       (send _observed_by_current_lane :serialize s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _available
     (setq _available (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;; landmark_msgs/TrafficLightTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; landmark_msgs/TrafficLightPatternEnum[] _pattern
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pattern (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficLightPatternEnum :init) r)) r))
     (dolist (elem- _pattern)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficLightStatusEnum[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficLightStatusEnum :init) r)) r))
     (dolist (elem- _status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _pattern_score
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pattern_score (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pattern_score i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _status_score
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status_score (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _status_score i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _remaining
     (setq _remaining (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _count_number
     (setq _count_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/Shape3f _shape_3d
     (send _shape_3d :deserialize buf ptr-) (incf ptr- (send _shape_3d :serialization-length))
   ;; perception_interface_msgs/Point3f[] _shape
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _shape)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficLightDirectionEnum[] _directions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _directions (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficLightDirectionEnum :init) r)) r))
     (dolist (elem- _directions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point3f _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;; landmark_msgs/TrafficLightDecision[] _traffic_light_decision
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_decision (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficLightDecision :init) r)) r))
     (dolist (elem- _traffic_light_decision)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _in_intersection
     (setq _in_intersection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading_theta_bv
     (setq _heading_theta_bv (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8[] _digits
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _digits (make-array n :element-type :char))
     (replace _digits buf :start2 ptr-) (incf ptr- n))
   ;; float32[] _digit_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digit_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _digit_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; landmark_msgs/TrafficLightGroupShapeEnum _group_shape_type
     (send _group_shape_type :deserialize buf ptr-) (incf ptr- (send _group_shape_type :serialization-length))
   ;; float32 _group_shape_score
     (setq _group_shape_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; landmark_msgs/TrafficLightGroupPropertyEnum _group_property
     (send _group_property :deserialize buf ptr-) (incf ptr- (send _group_property :serialization-length))
   ;; int32[] _track_id_2d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _track_id_2d (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _track_id_2d i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; landmark_msgs/TrafficLightObservedByEgoEnum _observed_by_ego
     (send _observed_by_ego :deserialize buf ptr-) (incf ptr- (send _observed_by_ego :serialization-length))
   ;; landmark_msgs/TrafficLightObservedByEgoEnum _observed_by_current_road
     (send _observed_by_current_road :deserialize buf ptr-) (incf ptr- (send _observed_by_current_road :serialization-length))
   ;; landmark_msgs/TrafficLightObservedByEgoEnum _observed_by_current_lane
     (send _observed_by_current_lane :deserialize buf ptr-) (incf ptr- (send _observed_by_current_lane :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::TrafficLightNode :md5sum-) "fb829ca2295905f4fe0fc8ec134858a5")
(setf (get landmark_msgs::TrafficLightNode :datatype-) "landmark_msgs/TrafficLightNode")
(setf (get landmark_msgs::TrafficLightNode :definition-)
      "uint32 TYPE_VALID = 1
uint32 PATTERN_VALID = 2
uint32 STATUS_VALID = 4
uint32 PATTERN_SCORE_VALID = 8
uint32 STATUS_SCORE_VALID = 16
uint32 DURATION_VALID = 32
uint32 REMAINING_VALID = 64
uint32 COUNT_NUMBER_VALID = 128
uint32 SHAPE_3D_VALID = 256
uint32 SHAPE_VALID = 512
uint32 DIRECTIONS_VALID = 1024
uint32 LOCATION_VALID = 2048
uint32 TRAFFIC_LIGHT_DECISION_VALID = 4096
uint32 IN_INTERSECTION_VALID = 8192
uint32 SCORE_VALID = 16384
uint32 HEADING_THETA_BV_VALID = 32768
uint32 DIGITS_VALID = 65536
uint32 DIGIT_SCORES_VALID = 131072
uint32 GROUP_SHAPE_TYPE_VALID = 262144
uint32 GROUP_SHAPE_SCORE_VALID = 524288
uint32 GROUP_PROPERTY_VALID = 1048576
uint32 TRACK_ID_2D_VALID = 2097152
uint32 OBSERVED_BY_EGO_VALID = 4194304
uint32 OBSERVED_BY_CURRENT_ROAD_VALID = 8388608
uint32 OBSERVED_BY_CURRENT_LANE_VALID = 16777216
uint32 available
landmark_msgs/TrackId track_id
landmark_msgs/TrafficLightTypeEnum type
landmark_msgs/TrafficLightPatternEnum[] pattern
landmark_msgs/TrafficLightStatusEnum[] status
float32[] pattern_score
float32[] status_score
float32 duration
float32 remaining
uint8 count_number
perception_interface_msgs/Shape3f shape_3d
perception_interface_msgs/Point3f[] shape
landmark_msgs/TrafficLightDirectionEnum[] directions
perception_interface_msgs/Point3f location
landmark_msgs/TrafficLightDecision[] traffic_light_decision
bool in_intersection
float32 score
float32 heading_theta_bv
uint8[] digits
float32[] digit_scores
landmark_msgs/TrafficLightGroupShapeEnum group_shape_type
float32 group_shape_score
landmark_msgs/TrafficLightGroupPropertyEnum group_property
int32[] track_id_2d
landmark_msgs/TrafficLightObservedByEgoEnum observed_by_ego
landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_road
landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_lane
string reserved_info

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: landmark_msgs/TrafficLightTypeEnum
uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
uint8 value

================================================================================
MSG: landmark_msgs/TrafficLightPatternEnum
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
uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23
uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24
uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25
uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26
uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50
uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51
uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52
uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82
uint8 value

================================================================================
MSG: landmark_msgs/TrafficLightStatusEnum
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
uint8 TRAFFIC_LIGHT_STATUS_ON = 13
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
MSG: landmark_msgs/TrafficLightDirectionEnum
uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 3
uint8 U_TURN_LEFT = 4
uint8 U_TURN_RIGHT = 5
uint8 LEFT_CONFLUENCE = 6
uint8 RIGHT_CONFLUENCE = 7
uint8 value

================================================================================
MSG: landmark_msgs/TrafficLightDecision
uint32 PATTERN_VALID = 1
uint32 STATUS_VALID = 2
uint32 DURATION_VALID = 4
uint32 REMAINING_VALID = 8
uint32 COUNT_NUMBER_VALID = 16
uint32 SCORE_VALID = 32
uint32 RESERVED_INFO_VALID = 64
uint32 POS_FEATURE_VALID = 128
uint32 PHYSICAL_NODE_LIST_VALID = 256
landmark_msgs/TrafficLightPatternEnum pattern
landmark_msgs/TrafficLightStatusEnum status
float32 duration
float32 remaining
uint8 count_number
float32 score
string reserved_info
landmark_msgs/TrafficLightPositionFeature pos_feature
landmark_msgs/TrackId[] physical_node_list
uint32 available

================================================================================
MSG: landmark_msgs/TrafficLightPositionFeature
perception_interface_msgs/Point3f position
float32 yaw

================================================================================
MSG: landmark_msgs/TrafficLightGroupShapeEnum
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
MSG: landmark_msgs/TrafficLightGroupPropertyEnum
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
MSG: landmark_msgs/TrafficLightObservedByEgoEnum
uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN = 0
uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE = 1
uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE = 2
uint8 value

")



(provide :landmark_msgs/TrafficLightNode "fb829ca2295905f4fe0fc8ec134858a5")


