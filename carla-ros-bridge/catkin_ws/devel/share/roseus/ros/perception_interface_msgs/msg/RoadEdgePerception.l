;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::RoadEdgePerception)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'RoadEdgePerception (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::ROADEDGEPERCEPTION")
  (make-package "PERCEPTION_INTERFACE_MSGS::ROADEDGEPERCEPTION"))

(in-package "ROS")
;;//! \htmlinclude RoadEdgePerception.msg.html


(intern "*VISION_PERCEPTION_ROAD_EDGE_RESULT*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADEDGEPERCEPTION"))
(shadow '*VISION_PERCEPTION_ROAD_EDGE_RESULT* (find-package "PERCEPTION_INTERFACE_MSGS::ROADEDGEPERCEPTION"))
(defconstant perception_interface_msgs::RoadEdgePerception::*VISION_PERCEPTION_ROAD_EDGE_RESULT* 1)
(intern "*VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS*" (find-package "PERCEPTION_INTERFACE_MSGS::ROADEDGEPERCEPTION"))
(shadow '*VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS* (find-package "PERCEPTION_INTERFACE_MSGS::ROADEDGEPERCEPTION"))
(defconstant perception_interface_msgs::RoadEdgePerception::*VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS* 2)

(defun perception_interface_msgs::RoadEdgePerception-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::RoadEdgePerception::*VISION_PERCEPTION_ROAD_EDGE_RESULT*)
        ((= const 2) 'perception_interface_msgs::RoadEdgePerception::*VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS*)
        (t nil)))

(defclass perception_interface_msgs::RoadEdgePerception
  :super ros::object
  :slots (_available _road_edges _reserved_infos ))

(defmethod perception_interface_msgs::RoadEdgePerception
  (:init
   (&key
    ((:available __available) 0)
    ((:road_edges __road_edges) ())
    ((:reserved_infos __reserved_infos) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _road_edges __road_edges)
   (setq _reserved_infos __reserved_infos)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:road_edges
   (&rest __road_edges)
   (if (keywordp (car __road_edges))
       (send* _road_edges __road_edges)
     (progn
       (if __road_edges (setq _road_edges (car __road_edges)))
       _road_edges)))
  (:reserved_infos
   (&optional __reserved_infos)
   (if __reserved_infos (setq _reserved_infos __reserved_infos)) _reserved_infos)
  (:serialization-length
   ()
   (+
    ;; uint64 _available
    8
    ;; perception_interface_msgs/RoadEdge[] _road_edges
    (apply #'+ (send-all _road_edges :serialization-length)) 4
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
     ;; perception_interface_msgs/RoadEdge[] _road_edges
     (write-long (length _road_edges) s)
     (dolist (elem _road_edges)
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
   ;; perception_interface_msgs/RoadEdge[] _road_edges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_edges (let (r) (dotimes (i n) (push (instance perception_interface_msgs::RoadEdge :init) r)) r))
     (dolist (elem- _road_edges)
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

(setf (get perception_interface_msgs::RoadEdgePerception :md5sum-) "85e703ef32750fc5a89a8876694fad2b")
(setf (get perception_interface_msgs::RoadEdgePerception :datatype-) "perception_interface_msgs/RoadEdgePerception")
(setf (get perception_interface_msgs::RoadEdgePerception :definition-)
      "uint8 VISION_PERCEPTION_ROAD_EDGE_RESULT = 1
uint8 VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS = 2
uint64 available
perception_interface_msgs/RoadEdge[] road_edges
string[] reserved_infos

================================================================================
MSG: perception_interface_msgs/RoadEdge
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



(provide :perception_interface_msgs/RoadEdgePerception "85e703ef32750fc5a89a8876694fad2b")


