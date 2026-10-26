;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FusionGroundLineData)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FusionGroundLineData (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINEDATA")
  (make-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINEDATA"))

(in-package "ROS")
;;//! \htmlinclude FusionGroundLineData.msg.html


(intern "*FUSION_GROUND_LINE_SOURCE_VISON*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINEDATA"))
(shadow '*FUSION_GROUND_LINE_SOURCE_VISON* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINEDATA"))
(defconstant perception_interface_msgs::FusionGroundLineData::*FUSION_GROUND_LINE_SOURCE_VISON* 1)
(intern "*FUSION_GROUND_LINE_SOURCE_ULTRASONIC*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINEDATA"))
(shadow '*FUSION_GROUND_LINE_SOURCE_ULTRASONIC* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINEDATA"))
(defconstant perception_interface_msgs::FusionGroundLineData::*FUSION_GROUND_LINE_SOURCE_ULTRASONIC* 2)
(intern "*FUSION_GROUND_LINE_SOURCE_DDUSS*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINEDATA"))
(shadow '*FUSION_GROUND_LINE_SOURCE_DDUSS* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINEDATA"))
(defconstant perception_interface_msgs::FusionGroundLineData::*FUSION_GROUND_LINE_SOURCE_DDUSS* 3)

(defun perception_interface_msgs::FusionGroundLineData-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::FusionGroundLineData::*FUSION_GROUND_LINE_SOURCE_VISON*)
        ((= const 2) 'perception_interface_msgs::FusionGroundLineData::*FUSION_GROUND_LINE_SOURCE_ULTRASONIC*)
        ((= const 3) 'perception_interface_msgs::FusionGroundLineData::*FUSION_GROUND_LINE_SOURCE_DDUSS*)
        (t nil)))

(defclass perception_interface_msgs::FusionGroundLineData
  :super ros::object
  :slots (_available _type _track_id _score _points_fusion _points_fusion_confidence _local_points_fusion _local_points_fusion_confidence _obstacle_type _obstacle_point_type _reserved_info _points_height ))

(defmethod perception_interface_msgs::FusionGroundLineData
  (:init
   (&key
    ((:available __available) 0)
    ((:type __type) (instance perception_interface_msgs::GroundLineTypeEnum :init))
    ((:track_id __track_id) 0)
    ((:score __score) 0.0)
    ((:points_fusion __points_fusion) ())
    ((:points_fusion_confidence __points_fusion_confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:local_points_fusion __local_points_fusion) ())
    ((:local_points_fusion_confidence __local_points_fusion_confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:obstacle_type __obstacle_type) (instance perception_interface_msgs::FusionObstacleTypeEnum :init))
    ((:obstacle_point_type __obstacle_point_type) (instance perception_interface_msgs::FusionObstaclePointType :init))
    ((:reserved_info __reserved_info) "")
    ((:points_height __points_height) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _type __type)
   (setq _track_id (round __track_id))
   (setq _score (float __score))
   (setq _points_fusion __points_fusion)
   (setq _points_fusion_confidence __points_fusion_confidence)
   (setq _local_points_fusion __local_points_fusion)
   (setq _local_points_fusion_confidence __local_points_fusion_confidence)
   (setq _obstacle_type __obstacle_type)
   (setq _obstacle_point_type __obstacle_point_type)
   (setq _reserved_info (string __reserved_info))
   (setq _points_height __points_height)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:points_fusion
   (&rest __points_fusion)
   (if (keywordp (car __points_fusion))
       (send* _points_fusion __points_fusion)
     (progn
       (if __points_fusion (setq _points_fusion (car __points_fusion)))
       _points_fusion)))
  (:points_fusion_confidence
   (&optional __points_fusion_confidence)
   (if __points_fusion_confidence (setq _points_fusion_confidence __points_fusion_confidence)) _points_fusion_confidence)
  (:local_points_fusion
   (&rest __local_points_fusion)
   (if (keywordp (car __local_points_fusion))
       (send* _local_points_fusion __local_points_fusion)
     (progn
       (if __local_points_fusion (setq _local_points_fusion (car __local_points_fusion)))
       _local_points_fusion)))
  (:local_points_fusion_confidence
   (&optional __local_points_fusion_confidence)
   (if __local_points_fusion_confidence (setq _local_points_fusion_confidence __local_points_fusion_confidence)) _local_points_fusion_confidence)
  (:obstacle_type
   (&rest __obstacle_type)
   (if (keywordp (car __obstacle_type))
       (send* _obstacle_type __obstacle_type)
     (progn
       (if __obstacle_type (setq _obstacle_type (car __obstacle_type)))
       _obstacle_type)))
  (:obstacle_point_type
   (&rest __obstacle_point_type)
   (if (keywordp (car __obstacle_point_type))
       (send* _obstacle_point_type __obstacle_point_type)
     (progn
       (if __obstacle_point_type (setq _obstacle_point_type (car __obstacle_point_type)))
       _obstacle_point_type)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:points_height
   (&optional __points_height)
   (if __points_height (setq _points_height __points_height)) _points_height)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; perception_interface_msgs/GroundLineTypeEnum _type
    (send _type :serialization-length)
    ;; uint64 _track_id
    8
    ;; float32 _score
    4
    ;; perception_interface_msgs/Point3f[] _points_fusion
    (apply #'+ (send-all _points_fusion :serialization-length)) 4
    ;; float32[] _points_fusion_confidence
    (* 4    (length _points_fusion_confidence)) 4
    ;; perception_interface_msgs/Point3f[] _local_points_fusion
    (apply #'+ (send-all _local_points_fusion :serialization-length)) 4
    ;; float32[] _local_points_fusion_confidence
    (* 4    (length _local_points_fusion_confidence)) 4
    ;; perception_interface_msgs/FusionObstacleTypeEnum _obstacle_type
    (send _obstacle_type :serialization-length)
    ;; perception_interface_msgs/FusionObstaclePointType _obstacle_point_type
    (send _obstacle_point_type :serialization-length)
    ;; string _reserved_info
    4 (length _reserved_info)
    ;; float32[] _points_height
    (* 4    (length _points_height)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; perception_interface_msgs/GroundLineTypeEnum _type
       (send _type :serialize s)
     ;; uint64 _track_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _track_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _track_id) (= (length (_track_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_track_id . bv) 0) 0) s)
              (write-long (ash (elt (_track_id . bv) 1) -1) s))
             ((and (class _track_id) (= (length (_track_id . bv)) 1)) ;; big1
              (write-long (elt (_track_id . bv) 0) s)
              (write-long (if (>= _track_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _track_id s)(write-long (if (>= _track_id 0) 0 #xffffffff) s)))
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Point3f[] _points_fusion
     (write-long (length _points_fusion) s)
     (dolist (elem _points_fusion)
       (send elem :serialize s)
       )
     ;; float32[] _points_fusion_confidence
     (write-long (length _points_fusion_confidence) s)
     (dotimes (i (length _points_fusion_confidence))
       (sys::poke (elt _points_fusion_confidence i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; perception_interface_msgs/Point3f[] _local_points_fusion
     (write-long (length _local_points_fusion) s)
     (dolist (elem _local_points_fusion)
       (send elem :serialize s)
       )
     ;; float32[] _local_points_fusion_confidence
     (write-long (length _local_points_fusion_confidence) s)
     (dotimes (i (length _local_points_fusion_confidence))
       (sys::poke (elt _local_points_fusion_confidence i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; perception_interface_msgs/FusionObstacleTypeEnum _obstacle_type
       (send _obstacle_type :serialize s)
     ;; perception_interface_msgs/FusionObstaclePointType _obstacle_point_type
       (send _obstacle_point_type :serialize s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;; float32[] _points_height
     (write-long (length _points_height) s)
     (dotimes (i (length _points_height))
       (sys::poke (elt _points_height i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/GroundLineTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; uint64 _track_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _track_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _track_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Point3f[] _points_fusion
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_fusion (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _points_fusion)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _points_fusion_confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_fusion_confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_fusion_confidence i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; perception_interface_msgs/Point3f[] _local_points_fusion
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_points_fusion (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _local_points_fusion)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _local_points_fusion_confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_points_fusion_confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _local_points_fusion_confidence i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; perception_interface_msgs/FusionObstacleTypeEnum _obstacle_type
     (send _obstacle_type :deserialize buf ptr-) (incf ptr- (send _obstacle_type :serialization-length))
   ;; perception_interface_msgs/FusionObstaclePointType _obstacle_point_type
     (send _obstacle_point_type :deserialize buf ptr-) (incf ptr- (send _obstacle_point_type :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _points_height
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_height (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_height i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::FusionGroundLineData :md5sum-) "15785f455fc11a921e1ce0f90a7c7a90")
(setf (get perception_interface_msgs::FusionGroundLineData :datatype-) "perception_interface_msgs/FusionGroundLineData")
(setf (get perception_interface_msgs::FusionGroundLineData :definition-)
      "uint8 FUSION_GROUND_LINE_SOURCE_VISON = 1
uint8 FUSION_GROUND_LINE_SOURCE_ULTRASONIC = 2
uint8 FUSION_GROUND_LINE_SOURCE_DDUSS = 3
uint8 available
perception_interface_msgs/GroundLineTypeEnum type
uint64 track_id
float32 score
perception_interface_msgs/Point3f[] points_fusion
float32[] points_fusion_confidence
perception_interface_msgs/Point3f[] local_points_fusion
float32[] local_points_fusion_confidence
perception_interface_msgs/FusionObstacleTypeEnum obstacle_type
perception_interface_msgs/FusionObstaclePointType obstacle_point_type
string reserved_info
float32[] points_height

================================================================================
MSG: perception_interface_msgs/GroundLineTypeEnum
uint8 GROUND_LINE_TYPE_UNKNOWN = 0
uint8 GROUND_LINE_TYPE_WALL = 1
uint8 GROUND_LINE_TYPE_PILLAR = 2
uint8 GROUND_LINE_TYPE_FENCE = 3
uint8 GROUND_LINE_TYPE_STEP = 4
uint8 GROUND_LINE_TYPE_SPECIAL = 5
uint8 GROUND_LINE_TYPE_POLE = 6
uint8 GROUND_LINE_TYPE_WHEELSTOP = 7
uint8 GROUNDLINE_TYPE_BARRIER = 8
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12
uint8 value

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/FusionObstacleTypeEnum
uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0
uint8 FUSION_OBSTACLE_TYPE_WALL = 1
uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2
uint8 FUSION_OBSTACLE_TYPE_FENCE = 3
uint8 FUSION_OBSTACLE_TYPE_STEP = 4
uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5
uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6
uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7
uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8
uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9
uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10
uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11
uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12
uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13
uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14
uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15
uint8 value

================================================================================
MSG: perception_interface_msgs/FusionObstaclePointType
uint8 POINT_TYPE_UNKNOWN = 0
uint8 POINT_TYPE_SCATTER = 1
uint8 POINT_TYPE_POLYLINE = 2
uint8 value

")



(provide :perception_interface_msgs/FusionGroundLineData "15785f455fc11a921e1ce0f90a7c7a90")


