;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::LanePerception)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'LanePerception (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LANEPERCEPTION")
  (make-package "PERCEPTION_INTERFACE_MSGS::LANEPERCEPTION"))

(in-package "ROS")
;;//! \htmlinclude LanePerception.msg.html


(intern "*VISION_PERCEPTION_LANE_RESULT*" (find-package "PERCEPTION_INTERFACE_MSGS::LANEPERCEPTION"))
(shadow '*VISION_PERCEPTION_LANE_RESULT* (find-package "PERCEPTION_INTERFACE_MSGS::LANEPERCEPTION"))
(defconstant perception_interface_msgs::LanePerception::*VISION_PERCEPTION_LANE_RESULT* 1)
(intern "*VISION_PERCEPTION_LANE_RESERVED_INFOS*" (find-package "PERCEPTION_INTERFACE_MSGS::LANEPERCEPTION"))
(shadow '*VISION_PERCEPTION_LANE_RESERVED_INFOS* (find-package "PERCEPTION_INTERFACE_MSGS::LANEPERCEPTION"))
(defconstant perception_interface_msgs::LanePerception::*VISION_PERCEPTION_LANE_RESERVED_INFOS* 2)

(defun perception_interface_msgs::LanePerception-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::LanePerception::*VISION_PERCEPTION_LANE_RESULT*)
        ((= const 2) 'perception_interface_msgs::LanePerception::*VISION_PERCEPTION_LANE_RESERVED_INFOS*)
        (t nil)))

(defclass perception_interface_msgs::LanePerception
  :super ros::object
  :slots (_available _lanes _reserved_infos ))

(defmethod perception_interface_msgs::LanePerception
  (:init
   (&key
    ((:available __available) 0)
    ((:lanes __lanes) ())
    ((:reserved_infos __reserved_infos) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _lanes __lanes)
   (setq _reserved_infos __reserved_infos)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:reserved_infos
   (&optional __reserved_infos)
   (if __reserved_infos (setq _reserved_infos __reserved_infos)) _reserved_infos)
  (:serialization-length
   ()
   (+
    ;; uint64 _available
    8
    ;; perception_interface_msgs/Lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
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
     ;; perception_interface_msgs/Lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
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
   ;; perception_interface_msgs/Lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Lane :init) r)) r))
     (dolist (elem- _lanes)
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

(setf (get perception_interface_msgs::LanePerception :md5sum-) "a389f23cf882e49d0f8b547a30fc86cf")
(setf (get perception_interface_msgs::LanePerception :datatype-) "perception_interface_msgs/LanePerception")
(setf (get perception_interface_msgs::LanePerception :definition-)
      "uint8 VISION_PERCEPTION_LANE_RESULT = 1
uint8 VISION_PERCEPTION_LANE_RESERVED_INFOS = 2
uint64 available
perception_interface_msgs/Lane[] lanes
string[] reserved_infos

================================================================================
MSG: perception_interface_msgs/Lane
perception_interface_msgs/CameraSourceEnum camera_source
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



(provide :perception_interface_msgs/LanePerception "a389f23cf882e49d0f8b547a30fc86cf")


