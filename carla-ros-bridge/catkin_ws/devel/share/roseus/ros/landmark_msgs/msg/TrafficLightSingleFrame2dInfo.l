;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightSingleFrame2dInfo)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightSingleFrame2dInfo (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightSingleFrame2dInfo.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*CAMERA_SOURCE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*CAMERA_SOURCE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*CAMERA_SOURCE_VALID* 1)
(intern "*CAMERA_MODEL_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*CAMERA_MODEL_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*CAMERA_MODEL_VALID* 2)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*SCORE_VALID* 4)
(intern "*BOUNDING_BOX_2D_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*BOUNDING_BOX_2D_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*BOUNDING_BOX_2D_VALID* 8)
(intern "*ONOFF_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*ONOFF_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*ONOFF_VALID* 16)
(intern "*GROUP_TYPE_SCORES_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*GROUP_TYPE_SCORES_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*GROUP_TYPE_SCORES_VALID* 32)
(intern "*SHAPE_SCORES_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*SHAPE_SCORES_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*SHAPE_SCORES_VALID* 64)
(intern "*ONOFF_SCORES_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*ONOFF_SCORES_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*ONOFF_SCORES_VALID* 128)
(intern "*COUNT_NUMBER_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*COUNT_NUMBER_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*COUNT_NUMBER_VALID* 256)
(intern "*BBOX_TYPE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*BBOX_TYPE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*BBOX_TYPE_VALID* 512)
(intern "*PATTERN_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*PATTERN_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*PATTERN_VALID* 1024)
(intern "*STATUS_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*STATUS_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*STATUS_VALID* 2048)
(intern "*PATTERN_SCORES_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*PATTERN_SCORES_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*PATTERN_SCORES_VALID* 4096)
(intern "*STATUS_SCORES_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*STATUS_SCORES_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*STATUS_SCORES_VALID* 8192)
(intern "*LOCATION_BV_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*LOCATION_BV_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*LOCATION_BV_VALID* 16384)
(intern "*HEADING_THETA_BV_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(shadow '*HEADING_THETA_BV_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficLightSingleFrame2dInfo::*HEADING_THETA_BV_VALID* 32768)

(defun landmark_msgs::TrafficLightSingleFrame2dInfo-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*CAMERA_SOURCE_VALID*)
        ((= const 2) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*CAMERA_MODEL_VALID*)
        ((= const 4) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*SCORE_VALID*)
        ((= const 8) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*BOUNDING_BOX_2D_VALID*)
        ((= const 16) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*ONOFF_VALID*)
        ((= const 32) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*GROUP_TYPE_SCORES_VALID*)
        ((= const 64) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*SHAPE_SCORES_VALID*)
        ((= const 128) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*ONOFF_SCORES_VALID*)
        ((= const 256) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*COUNT_NUMBER_VALID*)
        ((= const 512) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*BBOX_TYPE_VALID*)
        ((= const 1024) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*PATTERN_VALID*)
        ((= const 2048) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*STATUS_VALID*)
        ((= const 4096) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*PATTERN_SCORES_VALID*)
        ((= const 8192) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*STATUS_SCORES_VALID*)
        ((= const 16384) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*LOCATION_BV_VALID*)
        ((= const 32768) 'landmark_msgs::TrafficLightSingleFrame2dInfo::*HEADING_THETA_BV_VALID*)
        (t nil)))

(defclass landmark_msgs::TrafficLightSingleFrame2dInfo
  :super ros::object
  :slots (_track_id _camera_source _camera_model _score _bounding_box_2d _onoff _group_type_scores _shape_scores _onoff_scores _count_number _bbox_type _pattern _status _pattern_scores _status_scores _location_bv _heading_theta_bv _reserved_info _available ))

(defmethod landmark_msgs::TrafficLightSingleFrame2dInfo
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:camera_source __camera_source) (instance landmark_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance landmark_msgs::CameraModelEnum :init))
    ((:score __score) 0.0)
    ((:bounding_box_2d __bounding_box_2d) (instance perception_interface_msgs::Rect4f :init))
    ((:onoff __onoff) ())
    ((:group_type_scores __group_type_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:shape_scores __shape_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:onoff_scores __onoff_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:count_number __count_number) 0)
    ((:bbox_type __bbox_type) (instance landmark_msgs::TrafficLightBBoxTypeEnum :init))
    ((:pattern __pattern) ())
    ((:status __status) ())
    ((:pattern_scores __pattern_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:status_scores __status_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:location_bv __location_bv) (instance perception_interface_msgs::Point3f :init))
    ((:heading_theta_bv __heading_theta_bv) 0.0)
    ((:reserved_info __reserved_info) "")
    ((:available __available) 0)
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _camera_source __camera_source)
   (setq _camera_model __camera_model)
   (setq _score (float __score))
   (setq _bounding_box_2d __bounding_box_2d)
   (setq _onoff __onoff)
   (setq _group_type_scores __group_type_scores)
   (setq _shape_scores __shape_scores)
   (setq _onoff_scores __onoff_scores)
   (setq _count_number (round __count_number))
   (setq _bbox_type __bbox_type)
   (setq _pattern __pattern)
   (setq _status __status)
   (setq _pattern_scores __pattern_scores)
   (setq _status_scores __status_scores)
   (setq _location_bv __location_bv)
   (setq _heading_theta_bv (float __heading_theta_bv))
   (setq _reserved_info (string __reserved_info))
   (setq _available (round __available))
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
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
  (:bounding_box_2d
   (&rest __bounding_box_2d)
   (if (keywordp (car __bounding_box_2d))
       (send* _bounding_box_2d __bounding_box_2d)
     (progn
       (if __bounding_box_2d (setq _bounding_box_2d (car __bounding_box_2d)))
       _bounding_box_2d)))
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
  (:bbox_type
   (&rest __bbox_type)
   (if (keywordp (car __bbox_type))
       (send* _bbox_type __bbox_type)
     (progn
       (if __bbox_type (setq _bbox_type (car __bbox_type)))
       _bbox_type)))
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
  (:pattern_scores
   (&optional __pattern_scores)
   (if __pattern_scores (setq _pattern_scores __pattern_scores)) _pattern_scores)
  (:status_scores
   (&optional __status_scores)
   (if __status_scores (setq _status_scores __status_scores)) _status_scores)
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
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:serialization-length
   ()
   (+
    ;; int32 _track_id
    4
    ;; landmark_msgs/CameraSourceEnum _camera_source
    (send _camera_source :serialization-length)
    ;; landmark_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; float32 _score
    4
    ;; perception_interface_msgs/Rect4f _bounding_box_2d
    (send _bounding_box_2d :serialization-length)
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
    ;; landmark_msgs/TrafficLightBBoxTypeEnum _bbox_type
    (send _bbox_type :serialization-length)
    ;; landmark_msgs/TrafficLightPatternEnum[] _pattern
    (apply #'+ (send-all _pattern :serialization-length)) 4
    ;; landmark_msgs/TrafficLightStatusEnum[] _status
    (apply #'+ (send-all _status :serialization-length)) 4
    ;; float32[] _pattern_scores
    (* 4    (length _pattern_scores)) 4
    ;; float32[] _status_scores
    (* 4    (length _status_scores)) 4
    ;; perception_interface_msgs/Point3f _location_bv
    (send _location_bv :serialization-length)
    ;; float32 _heading_theta_bv
    4
    ;; string _reserved_info
    4 (length _reserved_info)
    ;; uint32 _available
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _track_id
       (write-long _track_id s)
     ;; landmark_msgs/CameraSourceEnum _camera_source
       (send _camera_source :serialize s)
     ;; landmark_msgs/CameraModelEnum _camera_model
       (send _camera_model :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Rect4f _bounding_box_2d
       (send _bounding_box_2d :serialize s)
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
     ;; landmark_msgs/TrafficLightBBoxTypeEnum _bbox_type
       (send _bbox_type :serialize s)
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
     ;; perception_interface_msgs/Point3f _location_bv
       (send _location_bv :serialize s)
     ;; float32 _heading_theta_bv
       (sys::poke _heading_theta_bv (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;; uint32 _available
       (write-long _available s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; landmark_msgs/CameraSourceEnum _camera_source
     (send _camera_source :deserialize buf ptr-) (incf ptr- (send _camera_source :serialization-length))
   ;; landmark_msgs/CameraModelEnum _camera_model
     (send _camera_model :deserialize buf ptr-) (incf ptr- (send _camera_model :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Rect4f _bounding_box_2d
     (send _bounding_box_2d :deserialize buf ptr-) (incf ptr- (send _bounding_box_2d :serialization-length))
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
   ;; landmark_msgs/TrafficLightBBoxTypeEnum _bbox_type
     (send _bbox_type :deserialize buf ptr-) (incf ptr- (send _bbox_type :serialization-length))
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
   ;; perception_interface_msgs/Point3f _location_bv
     (send _location_bv :deserialize buf ptr-) (incf ptr- (send _location_bv :serialization-length))
   ;; float32 _heading_theta_bv
     (setq _heading_theta_bv (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _available
     (setq _available (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::TrafficLightSingleFrame2dInfo :md5sum-) "727176a124a0bae60e7ec4b77f231a36")
(setf (get landmark_msgs::TrafficLightSingleFrame2dInfo :datatype-) "landmark_msgs/TrafficLightSingleFrame2dInfo")
(setf (get landmark_msgs::TrafficLightSingleFrame2dInfo :definition-)
      "uint32 CAMERA_SOURCE_VALID = 1
uint32 CAMERA_MODEL_VALID = 2
uint32 SCORE_VALID = 4
uint32 BOUNDING_BOX_2D_VALID = 8
uint32 ONOFF_VALID = 16
uint32 GROUP_TYPE_SCORES_VALID = 32
uint32 SHAPE_SCORES_VALID = 64
uint32 ONOFF_SCORES_VALID = 128
uint32 COUNT_NUMBER_VALID = 256
uint32 BBOX_TYPE_VALID = 512
uint32 PATTERN_VALID = 1024
uint32 STATUS_VALID = 2048
uint32 PATTERN_SCORES_VALID = 4096
uint32 STATUS_SCORES_VALID = 8192
uint32 LOCATION_BV_VALID = 16384
uint32 HEADING_THETA_BV_VALID = 32768
int32 track_id
landmark_msgs/CameraSourceEnum camera_source
landmark_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/Rect4f bounding_box_2d
perception_interface_msgs/TrafficLightOnOffEnum[] onoff
float32[] group_type_scores
float32[] shape_scores
float32[] onoff_scores
uint8 count_number
landmark_msgs/TrafficLightBBoxTypeEnum bbox_type
landmark_msgs/TrafficLightPatternEnum[] pattern
landmark_msgs/TrafficLightStatusEnum[] status
float32[] pattern_scores
float32[] status_scores
perception_interface_msgs/Point3f location_bv
float32 heading_theta_bv
string reserved_info
uint32 available

================================================================================
MSG: landmark_msgs/CameraSourceEnum
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
MSG: landmark_msgs/CameraModelEnum
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
MSG: landmark_msgs/TrafficLightBBoxTypeEnum
uint8 LIGHT_GROUP = 0
uint8 LIGHT_BULB = 1
uint8 LIGHT_TYPE_GLIM_HALO = 2
uint8 LIGHT_TYPE_UNKNOWN = 3
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
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :landmark_msgs/TrafficLightSingleFrame2dInfo "727176a124a0bae60e7ec4b77f231a36")


