;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LandmarkNavi)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LandmarkNavi (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANDMARKNAVI")
  (make-package "LANDMARK_MSGS::LANDMARKNAVI"))

(in-package "ROS")
;;//! \htmlinclude LandmarkNavi.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass landmark_msgs::LandmarkNavi
  :super ros::object
  :slots (_header _meta _perception_source_type _map_change_detection_result _landmarks _landmark_relations _road_surface _scene_recognition _perception_confidence _hdmap_meta _transfer_egopose _match_status _lane_paths _road_path _attribute_on_path _maneuvers _dmap_info _refrank_heatmap _navi_vlimit_info _refpath_goals _refpath_candidates _navi_info_source _reserved_info ))

(defmethod landmark_msgs::LandmarkNavi
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance landmark_msgs::PerceptionMeta :init))
    ((:perception_source_type __perception_source_type) (instance landmark_msgs::LandmarkPerceptionSourceTypeEnum :init))
    ((:map_change_detection_result __map_change_detection_result) (instance landmark_msgs::MapChangeDetectionResult :init))
    ((:landmarks __landmarks) (instance landmark_msgs::LandmarkNodes :init))
    ((:landmark_relations __landmark_relations) (instance landmark_msgs::LandmarkRelations :init))
    ((:road_surface __road_surface) (instance landmark_msgs::RoadSurfaceMesh :init))
    ((:scene_recognition __scene_recognition) (instance landmark_msgs::SceneRecognition :init))
    ((:perception_confidence __perception_confidence) (instance landmark_msgs::PerceptionConfidence :init))
    ((:hdmap_meta __hdmap_meta) (instance landmark_msgs::HDMapMeta :init))
    ((:transfer_egopose __transfer_egopose) (instance landmark_msgs::TransferEgoPose :init))
    ((:match_status __match_status) (instance landmark_msgs::MatchStatus :init))
    ((:lane_paths __lane_paths) ())
    ((:road_path __road_path) ())
    ((:attribute_on_path __attribute_on_path) ())
    ((:maneuvers __maneuvers) (instance landmark_msgs::Maneuvers :init))
    ((:dmap_info __dmap_info) (instance landmark_msgs::DmapInfo :init))
    ((:refrank_heatmap __refrank_heatmap) (instance landmark_msgs::FeatMapData :init))
    ((:navi_vlimit_info __navi_vlimit_info) (instance landmark_msgs::NaviVelocityLimitInfo :init))
    ((:refpath_goals __refpath_goals) ())
    ((:refpath_candidates __refpath_candidates) ())
    ((:navi_info_source __navi_info_source) (instance landmark_msgs::NaviInfoSource :init))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _perception_source_type __perception_source_type)
   (setq _map_change_detection_result __map_change_detection_result)
   (setq _landmarks __landmarks)
   (setq _landmark_relations __landmark_relations)
   (setq _road_surface __road_surface)
   (setq _scene_recognition __scene_recognition)
   (setq _perception_confidence __perception_confidence)
   (setq _hdmap_meta __hdmap_meta)
   (setq _transfer_egopose __transfer_egopose)
   (setq _match_status __match_status)
   (setq _lane_paths __lane_paths)
   (setq _road_path __road_path)
   (setq _attribute_on_path __attribute_on_path)
   (setq _maneuvers __maneuvers)
   (setq _dmap_info __dmap_info)
   (setq _refrank_heatmap __refrank_heatmap)
   (setq _navi_vlimit_info __navi_vlimit_info)
   (setq _refpath_goals __refpath_goals)
   (setq _refpath_candidates __refpath_candidates)
   (setq _navi_info_source __navi_info_source)
   (setq _reserved_info (string __reserved_info))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:perception_source_type
   (&rest __perception_source_type)
   (if (keywordp (car __perception_source_type))
       (send* _perception_source_type __perception_source_type)
     (progn
       (if __perception_source_type (setq _perception_source_type (car __perception_source_type)))
       _perception_source_type)))
  (:map_change_detection_result
   (&rest __map_change_detection_result)
   (if (keywordp (car __map_change_detection_result))
       (send* _map_change_detection_result __map_change_detection_result)
     (progn
       (if __map_change_detection_result (setq _map_change_detection_result (car __map_change_detection_result)))
       _map_change_detection_result)))
  (:landmarks
   (&rest __landmarks)
   (if (keywordp (car __landmarks))
       (send* _landmarks __landmarks)
     (progn
       (if __landmarks (setq _landmarks (car __landmarks)))
       _landmarks)))
  (:landmark_relations
   (&rest __landmark_relations)
   (if (keywordp (car __landmark_relations))
       (send* _landmark_relations __landmark_relations)
     (progn
       (if __landmark_relations (setq _landmark_relations (car __landmark_relations)))
       _landmark_relations)))
  (:road_surface
   (&rest __road_surface)
   (if (keywordp (car __road_surface))
       (send* _road_surface __road_surface)
     (progn
       (if __road_surface (setq _road_surface (car __road_surface)))
       _road_surface)))
  (:scene_recognition
   (&rest __scene_recognition)
   (if (keywordp (car __scene_recognition))
       (send* _scene_recognition __scene_recognition)
     (progn
       (if __scene_recognition (setq _scene_recognition (car __scene_recognition)))
       _scene_recognition)))
  (:perception_confidence
   (&rest __perception_confidence)
   (if (keywordp (car __perception_confidence))
       (send* _perception_confidence __perception_confidence)
     (progn
       (if __perception_confidence (setq _perception_confidence (car __perception_confidence)))
       _perception_confidence)))
  (:hdmap_meta
   (&rest __hdmap_meta)
   (if (keywordp (car __hdmap_meta))
       (send* _hdmap_meta __hdmap_meta)
     (progn
       (if __hdmap_meta (setq _hdmap_meta (car __hdmap_meta)))
       _hdmap_meta)))
  (:transfer_egopose
   (&rest __transfer_egopose)
   (if (keywordp (car __transfer_egopose))
       (send* _transfer_egopose __transfer_egopose)
     (progn
       (if __transfer_egopose (setq _transfer_egopose (car __transfer_egopose)))
       _transfer_egopose)))
  (:match_status
   (&rest __match_status)
   (if (keywordp (car __match_status))
       (send* _match_status __match_status)
     (progn
       (if __match_status (setq _match_status (car __match_status)))
       _match_status)))
  (:lane_paths
   (&rest __lane_paths)
   (if (keywordp (car __lane_paths))
       (send* _lane_paths __lane_paths)
     (progn
       (if __lane_paths (setq _lane_paths (car __lane_paths)))
       _lane_paths)))
  (:road_path
   (&rest __road_path)
   (if (keywordp (car __road_path))
       (send* _road_path __road_path)
     (progn
       (if __road_path (setq _road_path (car __road_path)))
       _road_path)))
  (:attribute_on_path
   (&rest __attribute_on_path)
   (if (keywordp (car __attribute_on_path))
       (send* _attribute_on_path __attribute_on_path)
     (progn
       (if __attribute_on_path (setq _attribute_on_path (car __attribute_on_path)))
       _attribute_on_path)))
  (:maneuvers
   (&rest __maneuvers)
   (if (keywordp (car __maneuvers))
       (send* _maneuvers __maneuvers)
     (progn
       (if __maneuvers (setq _maneuvers (car __maneuvers)))
       _maneuvers)))
  (:dmap_info
   (&rest __dmap_info)
   (if (keywordp (car __dmap_info))
       (send* _dmap_info __dmap_info)
     (progn
       (if __dmap_info (setq _dmap_info (car __dmap_info)))
       _dmap_info)))
  (:refrank_heatmap
   (&rest __refrank_heatmap)
   (if (keywordp (car __refrank_heatmap))
       (send* _refrank_heatmap __refrank_heatmap)
     (progn
       (if __refrank_heatmap (setq _refrank_heatmap (car __refrank_heatmap)))
       _refrank_heatmap)))
  (:navi_vlimit_info
   (&rest __navi_vlimit_info)
   (if (keywordp (car __navi_vlimit_info))
       (send* _navi_vlimit_info __navi_vlimit_info)
     (progn
       (if __navi_vlimit_info (setq _navi_vlimit_info (car __navi_vlimit_info)))
       _navi_vlimit_info)))
  (:refpath_goals
   (&rest __refpath_goals)
   (if (keywordp (car __refpath_goals))
       (send* _refpath_goals __refpath_goals)
     (progn
       (if __refpath_goals (setq _refpath_goals (car __refpath_goals)))
       _refpath_goals)))
  (:refpath_candidates
   (&rest __refpath_candidates)
   (if (keywordp (car __refpath_candidates))
       (send* _refpath_candidates __refpath_candidates)
     (progn
       (if __refpath_candidates (setq _refpath_candidates (car __refpath_candidates)))
       _refpath_candidates)))
  (:navi_info_source
   (&rest __navi_info_source)
   (if (keywordp (car __navi_info_source))
       (send* _navi_info_source __navi_info_source)
     (progn
       (if __navi_info_source (setq _navi_info_source (car __navi_info_source)))
       _navi_info_source)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; landmark_msgs/PerceptionMeta _meta
    (send _meta :serialization-length)
    ;; landmark_msgs/LandmarkPerceptionSourceTypeEnum _perception_source_type
    (send _perception_source_type :serialization-length)
    ;; landmark_msgs/MapChangeDetectionResult _map_change_detection_result
    (send _map_change_detection_result :serialization-length)
    ;; landmark_msgs/LandmarkNodes _landmarks
    (send _landmarks :serialization-length)
    ;; landmark_msgs/LandmarkRelations _landmark_relations
    (send _landmark_relations :serialization-length)
    ;; landmark_msgs/RoadSurfaceMesh _road_surface
    (send _road_surface :serialization-length)
    ;; landmark_msgs/SceneRecognition _scene_recognition
    (send _scene_recognition :serialization-length)
    ;; landmark_msgs/PerceptionConfidence _perception_confidence
    (send _perception_confidence :serialization-length)
    ;; landmark_msgs/HDMapMeta _hdmap_meta
    (send _hdmap_meta :serialization-length)
    ;; landmark_msgs/TransferEgoPose _transfer_egopose
    (send _transfer_egopose :serialization-length)
    ;; landmark_msgs/MatchStatus _match_status
    (send _match_status :serialization-length)
    ;; landmark_msgs/LanePath[] _lane_paths
    (apply #'+ (send-all _lane_paths :serialization-length)) 4
    ;; landmark_msgs/TrackId[] _road_path
    (apply #'+ (send-all _road_path :serialization-length)) 4
    ;; landmark_msgs/AttributeOnPath[] _attribute_on_path
    (apply #'+ (send-all _attribute_on_path :serialization-length)) 4
    ;; landmark_msgs/Maneuvers _maneuvers
    (send _maneuvers :serialization-length)
    ;; landmark_msgs/DmapInfo _dmap_info
    (send _dmap_info :serialization-length)
    ;; landmark_msgs/FeatMapData _refrank_heatmap
    (send _refrank_heatmap :serialization-length)
    ;; landmark_msgs/NaviVelocityLimitInfo _navi_vlimit_info
    (send _navi_vlimit_info :serialization-length)
    ;; landmark_msgs/RefPathGoal[] _refpath_goals
    (apply #'+ (send-all _refpath_goals :serialization-length)) 4
    ;; landmark_msgs/RefPath[] _refpath_candidates
    (apply #'+ (send-all _refpath_candidates :serialization-length)) 4
    ;; landmark_msgs/NaviInfoSource _navi_info_source
    (send _navi_info_source :serialization-length)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; landmark_msgs/PerceptionMeta _meta
       (send _meta :serialize s)
     ;; landmark_msgs/LandmarkPerceptionSourceTypeEnum _perception_source_type
       (send _perception_source_type :serialize s)
     ;; landmark_msgs/MapChangeDetectionResult _map_change_detection_result
       (send _map_change_detection_result :serialize s)
     ;; landmark_msgs/LandmarkNodes _landmarks
       (send _landmarks :serialize s)
     ;; landmark_msgs/LandmarkRelations _landmark_relations
       (send _landmark_relations :serialize s)
     ;; landmark_msgs/RoadSurfaceMesh _road_surface
       (send _road_surface :serialize s)
     ;; landmark_msgs/SceneRecognition _scene_recognition
       (send _scene_recognition :serialize s)
     ;; landmark_msgs/PerceptionConfidence _perception_confidence
       (send _perception_confidence :serialize s)
     ;; landmark_msgs/HDMapMeta _hdmap_meta
       (send _hdmap_meta :serialize s)
     ;; landmark_msgs/TransferEgoPose _transfer_egopose
       (send _transfer_egopose :serialize s)
     ;; landmark_msgs/MatchStatus _match_status
       (send _match_status :serialize s)
     ;; landmark_msgs/LanePath[] _lane_paths
     (write-long (length _lane_paths) s)
     (dolist (elem _lane_paths)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrackId[] _road_path
     (write-long (length _road_path) s)
     (dolist (elem _road_path)
       (send elem :serialize s)
       )
     ;; landmark_msgs/AttributeOnPath[] _attribute_on_path
     (write-long (length _attribute_on_path) s)
     (dolist (elem _attribute_on_path)
       (send elem :serialize s)
       )
     ;; landmark_msgs/Maneuvers _maneuvers
       (send _maneuvers :serialize s)
     ;; landmark_msgs/DmapInfo _dmap_info
       (send _dmap_info :serialize s)
     ;; landmark_msgs/FeatMapData _refrank_heatmap
       (send _refrank_heatmap :serialize s)
     ;; landmark_msgs/NaviVelocityLimitInfo _navi_vlimit_info
       (send _navi_vlimit_info :serialize s)
     ;; landmark_msgs/RefPathGoal[] _refpath_goals
     (write-long (length _refpath_goals) s)
     (dolist (elem _refpath_goals)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RefPath[] _refpath_candidates
     (write-long (length _refpath_candidates) s)
     (dolist (elem _refpath_candidates)
       (send elem :serialize s)
       )
     ;; landmark_msgs/NaviInfoSource _navi_info_source
       (send _navi_info_source :serialize s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; landmark_msgs/PerceptionMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; landmark_msgs/LandmarkPerceptionSourceTypeEnum _perception_source_type
     (send _perception_source_type :deserialize buf ptr-) (incf ptr- (send _perception_source_type :serialization-length))
   ;; landmark_msgs/MapChangeDetectionResult _map_change_detection_result
     (send _map_change_detection_result :deserialize buf ptr-) (incf ptr- (send _map_change_detection_result :serialization-length))
   ;; landmark_msgs/LandmarkNodes _landmarks
     (send _landmarks :deserialize buf ptr-) (incf ptr- (send _landmarks :serialization-length))
   ;; landmark_msgs/LandmarkRelations _landmark_relations
     (send _landmark_relations :deserialize buf ptr-) (incf ptr- (send _landmark_relations :serialization-length))
   ;; landmark_msgs/RoadSurfaceMesh _road_surface
     (send _road_surface :deserialize buf ptr-) (incf ptr- (send _road_surface :serialization-length))
   ;; landmark_msgs/SceneRecognition _scene_recognition
     (send _scene_recognition :deserialize buf ptr-) (incf ptr- (send _scene_recognition :serialization-length))
   ;; landmark_msgs/PerceptionConfidence _perception_confidence
     (send _perception_confidence :deserialize buf ptr-) (incf ptr- (send _perception_confidence :serialization-length))
   ;; landmark_msgs/HDMapMeta _hdmap_meta
     (send _hdmap_meta :deserialize buf ptr-) (incf ptr- (send _hdmap_meta :serialization-length))
   ;; landmark_msgs/TransferEgoPose _transfer_egopose
     (send _transfer_egopose :deserialize buf ptr-) (incf ptr- (send _transfer_egopose :serialization-length))
   ;; landmark_msgs/MatchStatus _match_status
     (send _match_status :deserialize buf ptr-) (incf ptr- (send _match_status :serialization-length))
   ;; landmark_msgs/LanePath[] _lane_paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_paths (let (r) (dotimes (i n) (push (instance landmark_msgs::LanePath :init) r)) r))
     (dolist (elem- _lane_paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrackId[] _road_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_path (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _road_path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/AttributeOnPath[] _attribute_on_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _attribute_on_path (let (r) (dotimes (i n) (push (instance landmark_msgs::AttributeOnPath :init) r)) r))
     (dolist (elem- _attribute_on_path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/Maneuvers _maneuvers
     (send _maneuvers :deserialize buf ptr-) (incf ptr- (send _maneuvers :serialization-length))
   ;; landmark_msgs/DmapInfo _dmap_info
     (send _dmap_info :deserialize buf ptr-) (incf ptr- (send _dmap_info :serialization-length))
   ;; landmark_msgs/FeatMapData _refrank_heatmap
     (send _refrank_heatmap :deserialize buf ptr-) (incf ptr- (send _refrank_heatmap :serialization-length))
   ;; landmark_msgs/NaviVelocityLimitInfo _navi_vlimit_info
     (send _navi_vlimit_info :deserialize buf ptr-) (incf ptr- (send _navi_vlimit_info :serialization-length))
   ;; landmark_msgs/RefPathGoal[] _refpath_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _refpath_goals (let (r) (dotimes (i n) (push (instance landmark_msgs::RefPathGoal :init) r)) r))
     (dolist (elem- _refpath_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RefPath[] _refpath_candidates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _refpath_candidates (let (r) (dotimes (i n) (push (instance landmark_msgs::RefPath :init) r)) r))
     (dolist (elem- _refpath_candidates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/NaviInfoSource _navi_info_source
     (send _navi_info_source :deserialize buf ptr-) (incf ptr- (send _navi_info_source :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::LandmarkNavi :md5sum-) "91a6a9a8a167693db40dc8da8f19d452")
(setf (get landmark_msgs::LandmarkNavi :datatype-) "landmark_msgs/LandmarkNavi")
(setf (get landmark_msgs::LandmarkNavi :definition-)
      "std_msgs/Header header
landmark_msgs/PerceptionMeta meta
landmark_msgs/LandmarkPerceptionSourceTypeEnum perception_source_type
landmark_msgs/MapChangeDetectionResult map_change_detection_result
landmark_msgs/LandmarkNodes landmarks
landmark_msgs/LandmarkRelations landmark_relations
landmark_msgs/RoadSurfaceMesh road_surface
landmark_msgs/SceneRecognition scene_recognition
landmark_msgs/PerceptionConfidence perception_confidence
landmark_msgs/HDMapMeta hdmap_meta
landmark_msgs/TransferEgoPose transfer_egopose
landmark_msgs/MatchStatus match_status
landmark_msgs/LanePath[] lane_paths
landmark_msgs/TrackId[] road_path
landmark_msgs/AttributeOnPath[] attribute_on_path
landmark_msgs/Maneuvers maneuvers
landmark_msgs/DmapInfo dmap_info
landmark_msgs/FeatMapData refrank_heatmap
landmark_msgs/NaviVelocityLimitInfo navi_vlimit_info
landmark_msgs/RefPathGoal[] refpath_goals
landmark_msgs/RefPath[] refpath_candidates
landmark_msgs/NaviInfoSource navi_info_source
string reserved_info

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: landmark_msgs/PerceptionMeta
string algorithm_name
string instance_name
uint64 sensor_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us
landmark_msgs/FrameMeta[] relevant_frames
landmark_msgs/EgoposeFrameMeta egopose_relevant_frame
string version_tag
string ts_log
uint64 sequence
string task_tag

================================================================================
MSG: landmark_msgs/FrameMeta
uint64 timestamp_us
uint64 sequence
landmark_msgs/CameraSourceEnum camera_source
landmark_msgs/CameraModelEnum camera_model

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
MSG: landmark_msgs/EgoposeFrameMeta
uint64 timestamp_us
uint64 sequence
landmark_msgs/CameraSourceEnum sync_camera_source
landmark_msgs/CameraModelEnum sync_camera_model

================================================================================
MSG: landmark_msgs/LandmarkPerceptionSourceTypeEnum
uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_UNKNOWN = 0
uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_VISION = 1
uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_HDMAP = 2
uint8 LANDMARK_PERCEPTION_SOURCE_TYPE_FUSION = 3
uint8 value

================================================================================
MSG: landmark_msgs/MapChangeDetectionResult
landmark_msgs/MapChangeTypeEnum change_type
float32 score

================================================================================
MSG: landmark_msgs/MapChangeTypeEnum
uint8 MAP_CHANGE_TYPE_UNKNOWN = 0
uint8 MAP_CHANGE_TYPE_NO_CHANGE = 1
uint8 MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE = 2
uint8 MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE = 3
uint8 MAP_CHANGE_TYPE_OTHER_CHANGES = 4
uint8 value

================================================================================
MSG: landmark_msgs/LandmarkNodes
uint64 AVAILABLE_LANDMARK_NODE_LANE_CENTER = 1
uint64 AVAILABLE_LANDMARK_NODE_LANE_BOUNDARY = 2
uint64 AVAILABLE_LANDMARK_NODE_ROAD_BOUNDARY = 4
uint64 AVAILABLE_LANDMARK_NODE_ROAD = 8
uint64 AVAILABLE_LANDMARK_NODE_STOP_LINE = 16
uint64 AVAILABLE_LANDMARK_NODE_CROSS_WALK = 32
uint64 AVAILABLE_LANDMARK_NODE_VALID_ROI = 64
uint64 AVAILABLE_LANDMARK_NODE_ROAD_MARK = 128
uint64 AVAILABLE_LANDMARK_NODE_AOI = 256
uint64 AVAILABLE_LANDMARK_NODE_SPEED_BUMP = 512
uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN = 1024
uint64 AVAILABLE_LANDMARK_NODE_POLE = 2048
uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT = 4096
uint64 AVAILABLE_LANDMARK_NODE_DASH_LINE_END = 8192
uint64 AVAILABLE_LANDMARK_NODE_ROAD_ENTRY_LINE = 16384
uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_GUIDE_ARROW = 32768
uint64 AVAILABLE_LANDMARK_NODE_NO_PARKING_ZONE = 65536
uint64 AVAILABLE_LANDMARK_NODE_PARKING_SPACE = 131072
uint64 AVAILABLE_LANDMARK_NODE_ROAD_OBSTACLE = 262144
uint64 AVAILABLE_LANDMARK_NODE_PARKING_FACILITY = 524288
uint64 AVAILABLE_LANDMARK_NODE_ROAD_SURFACE = 1048576
uint64 AVAILABLE_LANDMARK_NODE_INTERSECTION_GUIDE_LINE = 2097152
uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_SINGLE_FRAME_2D_INFO = 4194304
uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_SINGLE_FRAME_2D_INFO = 8388608
uint64 AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_DECISIONS = 16777216
landmark_msgs/LaneCenterNode[] lane_centers
landmark_msgs/LaneBoundaryNode[] lane_boundaries
landmark_msgs/RoadBoundaryNode[] road_boundaries
landmark_msgs/RoadNode[] road
landmark_msgs/StopLineNode[] stop_lines
landmark_msgs/CrossWalkNode[] cross_walks
landmark_msgs/ValidRoiNode[] valid_rois
landmark_msgs/RoadMarkNode[] road_marks
landmark_msgs/AoiNode[] aois
landmark_msgs/SpeedBumpNode[] speed_bumps
landmark_msgs/TrafficSignNode[] traffic_signs
landmark_msgs/PoleNode[] poles
landmark_msgs/TrafficLightNode[] traffic_lights
landmark_msgs/DashLineEndNode[] dash_line_ends
landmark_msgs/RoadEntryLineNode[] road_entry_line_nodes
landmark_msgs/TrafficSignGuideArrowNode[] traffic_sign_guide_arrow_nodes
landmark_msgs/NoParkingZoneNode[] no_parking_zone_nodes
landmark_msgs/ParkingSpaceNode[] parking_space_nodes
landmark_msgs/RoadObstacleNode[] road_obstacle_nodes
landmark_msgs/ParkingFacility[] parking_facility_nodes
landmark_msgs/RoadSurfaceNode[] road_surface_node
landmark_msgs/IntersectionGuideLineNode[] intersection_guide_lines
landmark_msgs/TrafficLightSingleFrame2dInfo[] traffic_light_single_frame_2d_info
landmark_msgs/TrafficSignSingleFrame2dInfo[] traffic_sign_single_frame_2d_info
landmark_msgs/TrafficLightDecision[] traffic_light_decisions
uint64 available

================================================================================
MSG: landmark_msgs/LaneCenterNode
uint16 SCORE_VALID = 1
uint16 COEFFICIENT_BV_VALID = 2
uint16 LANE_TYPE_VALID = 4
uint16 DIRECTION_TYPE_VALID = 8
uint16 FLOW_TYPE_VALID = 16
uint16 LANE_ATTRIBUTE_VALID = 32
uint16 LINE_POINTS_VALID = 64
uint16 IS_VIRTUAL_VALID = 128
uint16 IN_INTERSECTION_VALID = 256
uint16 available
float32 score
int32 index
landmark_msgs/TrackId track_id
float32[] coefficient_bv
landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types
landmark_msgs/LaneCenterNodeDirectionTypeEnum[] direction_types
landmark_msgs/LaneCenterFlowTypeEnum flow_type
landmark_msgs/LaneCenterNodeLaneAttribute[] lane_attribute
perception_interface_msgs/Point3f[] line_points
bool is_virtual
bool in_intersection

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: landmark_msgs/LaneCenterNodeLaneTypeEnum
uint8 LANE_TYPE_UNKNOWN = 0
uint8 LANE_TYPE_NORMAL = 1
uint8 LANE_TYPE_EMERGENCY = 5
uint8 LANE_TYPE_BUS = 6
uint8 LANE_TYPE_PASSING = 7
uint8 LANE_TYPE_HOV = 8
uint8 LANE_TYPE_ACCELERATE = 9
uint8 LANE_TYPE_UTURN = 10
uint8 LANE_TYPE_DECELERATE = 11
uint8 LANE_TYPE_SHOULDER = 12
uint8 LANE_TYPE_INTERSECTION = 14
uint8 LANE_TYPE_NON_MOTOR = 15
uint8 LANE_TYPE_MIXED_MOTOR = 16
uint8 LANE_TYPE_SIDE_WALK = 17
uint8 LANE_TYPE_MOTORCYCLE = 18
uint8 LANE_TYPE_TOLL_ETC = 19
uint8 LANE_TYPE_TOLL = 20
uint8 LANE_TYPE_CHECKPOINT = 21
uint8 LANE_TYPE_RAMP = 22
uint8 LANE_TYPE_BARRIER = 23
uint8 LANE_TYPE_CHANNELIZATION = 24
uint8 LANE_TYPE_EMERGENCE_STOP = 25
uint8 LANE_TYPE_HAZARDOUS_GOODS = 26
uint8 LANE_TYPE_STEEP_GRADE = 27
uint8 LANE_TYPE_DIREC_VARIABLE = 28
uint8 LANE_TYPE_CUSTOMS_SUP = 29
uint8 LANE_TYPE_EMERGENCE_RAMP = 30
uint8 LANE_TYPE_PARKING = 31
uint8 LANE_TYPE_TIDAL = 32
uint8 LANE_TYPE_TEMPORARY = 33
uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34
uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35
uint8 LANE_TYPE_LEFT_ACC = 36
uint8 LANE_TYPE_RIGHT_ACC = 37
uint8 LANE_TYPE_LEFT_DEC = 38
uint8 LANE_TYPE_RIGHT_DEC = 39
uint8 LANE_TYPE_SERVICE_RAMP = 40
uint8 LANE_TYPE_CURB = 41
uint8 LANE_TYPE_RAILWAY = 42
uint8 LANE_TYPE_BUS_STOP = 43
uint8 LANE_TYPE_ROUNDABOUT = 44
uint8 LANE_TYPE_INVALID = 45
uint8 LANE_TYPE_WIDE = 46
uint8 LANE_TYPE_VIRTUAL = 47
uint8 LANE_TYPE_OTHERS = 63
uint8 LANE_TYPE_ACC_DEC = 70
uint8 LANE_TYPE_WAITING_AREA = 71
uint8 LANE_TYPE_TOLL_MANUAL = 72
uint8 LANE_TYPE_INCOMPLETE = 73
uint8 value

================================================================================
MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum
uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0
uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9
uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33
uint8 value

================================================================================
MSG: landmark_msgs/LaneCenterFlowTypeEnum
uint8 LANE_CENTER_FLOW_TYPE_UNKNOWN = 0
uint8 LANE_CENTER_FLOW_TYPE_SAME = 1
uint8 LANE_CENTER_FLOW_TYPE_REVERSE = 2
uint8 LANE_CENTER_FLOW_TYPE_BOTH = 3
uint8 value

================================================================================
MSG: landmark_msgs/LaneCenterNodeLaneAttribute
uint8 SPEED_LIMIT_VALID = 1
uint8 CURVATURE_VALID = 2
uint8 SLOPE_VALID = 4
uint8 OFFSET_VALID = 8
uint8 available
float32 speed_limit
float32 curvature
float32 slope
float32 start_offset
float32 end_offset

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: landmark_msgs/LaneBoundaryNode
uint16 SCORE_VALID = 1
uint16 COEFFICIENT_BV_VALID = 2
uint16 TYPE_VALID = 4
uint16 COLOR_VALID = 8
uint16 WIDTH_TYPE_VALID = 16
uint16 LINE_WIDTH_VALID = 32
uint16 LINE_POINTS_VALID = 64
uint16 IS_VIRTUAL_VALID = 128
uint16 DIRECTION_TYPE_VALID = 256
uint16 SOURCE_VALID = 512
uint16 SCENE_TYPE_VALID = 1024
uint16 SPECIAL_TYPE_VALID = 2048
uint16 available
float32 score
int32 index
landmark_msgs/TrackId track_id
float32[] coefficient_bv
landmark_msgs/LaneBoundaryTypeEnum type
landmark_msgs/LaneBoundaryColorEnum color
landmark_msgs/LaneBoundaryWidthTypeEnum width_type
float32 line_width
perception_interface_msgs/Point3f[] line_points
bool is_virtual
landmark_msgs/LaneBoundaryDirectionTypeEnum direction_type
landmark_msgs/BoundarySourceEnum source
landmark_msgs/LaneBoundarySceneTypeEnum scene_type
landmark_msgs/LaneBoundarySpecialTypeEnum special_type

================================================================================
MSG: landmark_msgs/LaneBoundaryTypeEnum
uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_TYPE_DASHED = 1
uint8 LANE_BOUNDARY_TYPE_SOLID = 2
uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3
uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4
uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5
uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6
uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7
uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8
uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9
uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10
uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11
uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12
uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13
uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14
uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15
uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16
uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17
uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18
uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19
uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20
uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21
uint8 LANE_BOUNDARY_TYPE_OTHERS = 99
uint8 value

================================================================================
MSG: landmark_msgs/LaneBoundaryColorEnum
uint8 LANE_BOUNDARY_COLOR_UNKNOWN = 0
uint8 LANE_BOUNDARY_COLOR_WHITE = 1
uint8 LANE_BOUNDARY_COLOR_YELLOW = 2
uint8 LANE_BOUNDARY_COLOR_ORANGE = 3
uint8 LANE_BOUNDARY_COLOR_BLUE = 4
uint8 LANE_BOUNDARY_COLOR_GREEN = 5
uint8 LANE_BOUNDARY_COLOR_GRAY = 6
uint8 LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW = 7
uint8 LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY = 8
uint8 LANE_BOUNDARY_OTHER = 99
uint8 value

================================================================================
MSG: landmark_msgs/LaneBoundaryWidthTypeEnum
uint8 LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_WIDTH_TYPE_NARROW = 1
uint8 LANE_BOUNDARY_WIDTH_TYPE_WIDE = 2
uint8 value

================================================================================
MSG: landmark_msgs/LaneBoundaryDirectionTypeEnum
uint8 LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_DIRECTION_TYPE_SAME = 1
uint8 LANE_BOUNDARY_DIRECTION_TYPE_REVERSE = 2
uint8 LANE_BOUNDARY_DIRECTION_TYPE_BOTH = 3
uint8 value

================================================================================
MSG: landmark_msgs/BoundarySourceEnum
uint8 OTHER = 0
uint8 AUTO_MAPPING = 1
uint8 MANUAL_VALID = 2
uint8 MANUAL_GUESS = 3
uint8 INTERNAL = 4
uint8 EXTERNAL = 5
uint8 INTERNAL_SHARED = 6
uint8 NONE = 7
uint8 value

================================================================================
MSG: landmark_msgs/LaneBoundarySceneTypeEnum
uint8 LANE_BOUNDARY_SCENE_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_SCENE_TYPE_DISCARDED = 1
uint8 LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK = 2
uint8 LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE = 3
uint8 LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA = 4
uint8 LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE = 5
uint8 value

================================================================================
MSG: landmark_msgs/LaneBoundarySpecialTypeEnum
uint8 LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT = 1
uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT = 2
uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT = 3
uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT = 4
uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT = 5
uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT = 6
uint8 value

================================================================================
MSG: landmark_msgs/RoadBoundaryNode
uint16 SCORE_VALID = 1
uint16 COEFFICIENT_BV_VALID = 2
uint16 TYPE_VALID = 4
uint16 POINTS_VALID = 8
uint16 IS_VIRTUAL_VALID = 16
uint16 HEIGHT_VALID = 32
uint16 PASS_DIRECTION_VALID = 64
uint16 SOURCE_VALID = 128
uint16 available
float32 score
landmark_msgs/TrackId track_id
float32[] coefficient_bv
landmark_msgs/RoadBoundaryTypeEnum type
perception_interface_msgs/Point3f[] line_points
bool is_virtual
float32 height
landmark_msgs/RoadBoundaryPassDirectionTypeEnum pass_direction
landmark_msgs/BoundarySourceEnum source

================================================================================
MSG: landmark_msgs/RoadBoundaryTypeEnum
uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0
uint8 ROAD_BOUNDARY_TYPE_NONE = 1
uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2
uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3
uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4
uint8 ROAD_BOUNDARY_TYPE_CONE = 5
uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6
uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7
uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8
uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9
uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10
uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11
uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12
uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13
uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14
uint8 ROAD_BOUNDARY_TYPE_CURB = 15
uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16
uint8 ROAD_BOUNDARY_TYPE_WALL = 17
uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18
uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19
uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20
uint8 value

================================================================================
MSG: landmark_msgs/RoadBoundaryPassDirectionTypeEnum
uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN = 0
uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT = 1
uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT = 2
uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH = 3
uint8 value

================================================================================
MSG: landmark_msgs/RoadNode
uint16 SCORE_VALID = 1
uint16 DIRECTION_VALID = 2
uint16 ROAD_CLASS_VALID = 4
uint16 FORMWAY_VALID = 8
uint16 CENTER_LINE_VALID = 16
uint16 START_LATERAL_LINE_VALID = 32
uint16 END_LATERAL_LINE_VALID = 64
uint16 IS_VIRETUAL_VALID = 128
uint16 IN_INTERSECTION_VALID = 256
uint16 available
float32 score
landmark_msgs/TrackId track_id
landmark_msgs/RoadDirectionTypeEnum road_direction
landmark_msgs/RoadNodeRoadClassEnum road_class
landmark_msgs/RoadNodeFormwayEnum[] formway
perception_interface_msgs/Point3f[] center_line
perception_interface_msgs/Point3f[] start_lateral_line
perception_interface_msgs/Point3f[] end_lateral_line
bool is_virtual
bool in_intersection

================================================================================
MSG: landmark_msgs/RoadDirectionTypeEnum
uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0
uint8 ROAD_DIRECTION_TYPE_NONE = 1
uint8 ROAD_DIRECTION_TYPE_A_B = 2
uint8 ROAD_DIRECTION_TYPE_B_A = 3
uint8 ROAD_DIRECTION_TYPE_BOTH = 4
uint8 value

================================================================================
MSG: landmark_msgs/RoadNodeRoadClassEnum
uint8 ROAD_CLASS_UNKNOWN = 0
uint8 HIGHWAY = 1
uint8 URBAN = 2
uint8 CITY_EXPRESSWAY = 3
uint8 STATE_ROAD = 4
uint8 PROVINCIAL_ROAD = 5
uint8 MAIN_ROAD = 6
uint8 SECONDARY_ROAD = 7
uint8 NORMAL_ROAD = 8
uint8 COUNTY_ROAD = 9
uint8 COUNTRY_ROAD = 10
uint8 INTERNAL_ROAD = 11
uint8 OTHERS = 99
uint8 value

================================================================================
MSG: landmark_msgs/RoadNodeFormwayEnum
uint8 FORMWAY_UNKNOWN = 0
uint8 SINGLE_CARRIAGE_WAY = 1
uint8 IC = 2
uint8 JCT = 3
uint8 SERVICE = 4
uint8 TUNNEL = 5
uint8 TOLL = 6
uint8 SLIP_ROAD = 7
uint8 SIDEROAD = 8
uint8 ROUNDABOUT = 9
uint8 RAMP_ENTRY = 10
uint8 RAMP_EXIT = 11
uint8 SAPA = 12
uint8 PARKING_RAMP = 13
uint8 PARKING_ROAD = 14
uint8 U_TURN = 15
uint8 TURN_RIGHT = 16
uint8 TURN_LEFT = 17
uint8 TURN_LEFT_RIGHT = 18
uint8 CROSS_LINK = 19
uint8 SERVICE_AND_SLIP_ROAD = 20
uint8 SERVICE_AND_JCT = 21
uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22
uint8 MULTIPLE_CARRIAGE_WAY = 23
uint8 CHECK_POINT = 24
uint8 WALK_ROAD = 25
uint8 PARALLED_ROAD = 26
uint8 OTHERS = 99
uint8 value

================================================================================
MSG: landmark_msgs/StopLineNode
uint16 SCORE_VALID = 1
uint16 LINE_POINTS_VALID = 2
uint16 IS_VIRETUAL_VALID = 4
uint16 TYPE_VALID = 8
uint16 PASS_DIRECTION_VALID = 16
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] line_points
bool is_virtual
landmark_msgs/StopLineTypeEnum type
landmark_msgs/StopLinePassDirectionTypeEnum pass_direction

================================================================================
MSG: landmark_msgs/StopLineTypeEnum
uint8 STOP_LINE_TYPE_UNKNOWN = 0
uint8 STOP_LINE_TYPE_NORMAL = 1
uint8 STOP_LINE_LEFT_WAITING_AREA = 2
uint8 STOP_LINE_BACK_WAITING_AREA = 3
uint8 STOP_LINE_RIGHT_WAITING_AREA = 4
uint8 STOP_LINE_GO_STRAIGHT_WAITING_AREA = 5
uint8 value

================================================================================
MSG: landmark_msgs/StopLinePassDirectionTypeEnum
uint8 STOP_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0
uint8 STOP_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1
uint8 STOP_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2
uint8 value

================================================================================
MSG: landmark_msgs/CrossWalkNode
uint16 SCORE_VALID = 1
uint16 CENTER_LINE_VALID = 2
uint16 WIDTH_VALID = 4
uint16 IS_VIRETUAL_VALID = 8
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] center_line_points
float32 width
bool is_virtual

================================================================================
MSG: landmark_msgs/ValidRoiNode
uint16 SCORE_VALID = 1
uint16 POLYGON_POINTS_VALID = 2
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] polygon_points

================================================================================
MSG: landmark_msgs/RoadMarkNode
uint16 POLYGON_POINTS_VALID = 1
uint16 TYPES_VALID = 2
uint16 IS_PROHIBITED_VALID = 4
uint16 SCORE_VALID = 8
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] polygon_points
landmark_msgs/RoadMarkNodeTypeEnum[] types
bool is_prohibited

================================================================================
MSG: landmark_msgs/RoadMarkNodeTypeEnum
uint8 ROAD_MARK_TYPE_UNKNOWN = 0
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT = 1
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT = 2
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT = 3
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK = 4
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK = 5
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE = 6
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE = 7
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL = 8
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TEXT = 9
uint8 ROAD_MARK_TYPE_NO_PARKING_ZONE = 10
uint8 ROAD_MARK_TYPE_LATERAL_DECELERATION = 11
uint8 ROAD_MARK_TYPE_CENTRAL_CIRCLE = 12
uint8 ROAD_MARK_TYPE_INDICATED_LINE = 13
uint8 ROAD_MARK_TYPE_SYMBOL = 14
uint8 ROAD_MARK_TYPE_TEXT = 15
uint8 ROAD_MARK_TYPE_GUIDE_ARROW = 16
uint8 ROAD_MARK_TYPE_PROHIBIT = 17
uint8 ROAD_MARK_TYPE_PROHIBIT_U_TURN = 18
uint8 ROAD_MARK_TYPE_YIELD_LINE = 21
uint8 ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING = 22
uint8 ROAD_MARK_TYPE_NON_MOTOR = 24
uint8 ROAD_MARK_TYPE_STOP = 25
uint8 ROAD_MARK_TYPE_PEDESTRIAN = 26
uint8 ROAD_MARK_TYPE_YIELD_MARKING = 27
uint8 value

================================================================================
MSG: landmark_msgs/AoiNode
uint16 POLYGON_POINTS_VALID = 1
uint16 TYPE_VALID = 2
uint16 IS_VIRTUAL_VALID = 4
uint16 SCORE_VALID = 8
uint16 available
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] polygon_points
landmark_msgs/AoiNodeTypeEnum type
bool is_virtual
float32 score

================================================================================
MSG: landmark_msgs/AoiNodeTypeEnum
uint8 AOI_TYPE_UNKNOWN = 0
uint8 AOI_TYPE_EMERGENCY_PARKING_AREA = 1
uint8 AOI_TYPE_EMERGENCY_ESCAPE_AREA = 2
uint8 AOI_TYPE_TOLLGATE = 3
uint8 AOI_TYPE_CHECK_POINT = 4
uint8 AOI_TYPE_SERVICE_AREA = 5
uint8 AOI_TYPE_CONSTRUCTION_AREA = 6
uint8 AOI_TYPE_INTERSECTION = 7
uint8 AOI_TYPE_BARRIER_GAP = 8
uint8 AOI_TYPE_STOPPING_AREA = 9
uint8 AOI_TYPE_ELEVATOR_ENTRANCE = 10
uint8 AOI_TYPE_FACILITY_ENTRANCE = 11
uint8 AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE = 12
uint8 AOI_TYPE_FLOORS = 13
uint8 AOI_TYPE_GARAGE_EXIT = 14
uint8 AOI_TYPE_GARAGE_ENTRANCE_EXIT = 15
uint8 AOI_TYPE_HILL = 16
uint8 AOI_TYPE_HUMAN_ACCESS = 17
uint8 AOI_TYPE_PARK_INTERSECTION = 18
uint8 AOI_TYPE_TOLL_GATE = 19
uint8 AOI_TYPE_SUB_REGION = 20
uint8 AOI_TYPE_MARKET_ENTRANCE = 21
uint8 AOI_TYPE_GARAGE_ENTRANCE = 22
uint8 AOI_TYPE_FACILITY_EXIT = 23
uint8 AOI_TYPE_BUS_STOP = 24
uint8 AOI_TYPE_CHARGIINIG_AREA = 25
uint8 AOI_TYPE_ESCALATOR_ENTRANCE = 26
uint8 AOI_TYPE_DASH_UTURN_AREA = 27
uint8 value

================================================================================
MSG: landmark_msgs/SpeedBumpNode
uint16 SCORE_VALID = 1
uint16 LINE_POINTS_VALID = 2
uint16 TYPE_VALID = 4
uint16 WIDTH_VALID = 8
uint16 IS_VIRETUAL_VALID = 16
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] line_points
landmark_msgs/SpeedBumpTypeEnum type
float32 width
bool is_virtual

================================================================================
MSG: landmark_msgs/SpeedBumpTypeEnum
uint8 SPEED_BUMP_TYPE_UNKNOWN = 0
uint8 SPEED_BUMP_TYPE_NORMAL = 1
uint8 SPEED_BUMP_TYPE_BLOCK = 2
uint8 SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING = 3
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNode
uint32 POSITION_VALID = 1
uint32 SHAPE_POINTS_VALID = 2
uint32 TYPE_VALID = 4
uint32 SHAPE_TYPE_VALID = 8
uint32 SCORE_VALID = 16
uint32 IGNORED_VALID = 32
uint32 SPEED_LIMIT_VALID = 64
uint32 HEIGHT_LIMIT_VALID = 128
uint32 PARKING_SUBTYPE_VALID = 256
uint32 PARKING_ARROW_VALID = 512
uint32 LANE_POSITION_ARROW_VALID = 1024
uint32 REGION_VALID = 2048
uint32 SPEED_LIMIT_CONDITIONS_VALID = 4096
uint32 DIRECTIONS_VALID = 8192
uint32 IS_ELECTRONIC_VALID = 16384
uint32 TOLL_STATION_VALID = 32768
uint32 STAY_ON_VALID = 65536
uint32 PASS_ON_VALID = 131072
uint32 DRIVE_TO_VALID = 262144
uint32 IS_LANE_LEVEL_LIMIT_VALID = 524288
uint32 IS_DIRECTION_GROUPED_VALID = 1048576
uint32 WAITING_AREA_ALLOW_VALID = 2097152
uint32 WAITING_AREA_DIRECTIONS_VALID = 4194304
uint32 ETC_DISTRIBUTION_DIRECTIONS_VALID = 8388608
uint32 available
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f position
perception_interface_msgs/Point3f[] shape_points
landmark_msgs/TrafficSignNodeTypeEnum type
landmark_msgs/TrafficSignShapeTypeEnum shape_type
float32 score
bool ignored
landmark_msgs/TrafficSignNodeSpeedLimitEnum speed_limit
landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_unit
landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_tenths
landmark_msgs/TrafficSignNodeParkingSubTypeEnum parking_subtype
landmark_msgs/TrafficSignNodeParkingArrowEnum parking_arrow
landmark_msgs/TrafficSignNodeLanePositionArrowEnum lane_position_arrow
landmark_msgs/TrafficSignNodeRegionEnum region
landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum[] speed_limit_conditions
landmark_msgs/TrafficSignNodeDirectionEnum[] directions
bool is_electronic
landmark_msgs/TrafficSignNodeTollStationEnum toll_station
landmark_msgs/TrafficSignNodeStayOnEnum stay_on
landmark_msgs/TrafficSignNodePassOnEnum pass_on
landmark_msgs/TrafficSignNodeDriveToEnum drive_to
bool is_lane_level_limit
bool is_direction_grouped
landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum waiting_area_allow
landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum[] waiting_area_directions
landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum[] etc_distribution_directions

================================================================================
MSG: landmark_msgs/TrafficSignNodeTypeEnum
uint8 TRAFFIC_SIGN_NODE_TYPE_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_TYPE_SPEED_LIMIT = 1
uint8 TRAFFIC_SIGN_NODE_TYPE_MIN_SPEED = 2
uint8 TRAFFIC_SIGN_NODE_TYPE_CANCEL_SPEED_LIMIT = 3
uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD = 4
uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD_END = 5
uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_AUXILIARY = 6
uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_NEXT_INTERSECTION = 7
uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD = 8
uint8 TRAFFIC_SIGN_NODE_TYPE_STOP = 9
uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_OVER_ONCOMMING = 10
uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD_TO_ONCOMMING = 11
uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_SPEED_LIMIT = 13
uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_LANE_CONTROL = 14
uint8 TRAFFIC_SIGN_NODE_TYPE_ROAD_WORK = 15
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_ENTRY = 16
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE_ENTRY = 17
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_MINIBUS_ENTRY = 18
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_LARGEBUS_ENTRY = 19
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE = 20
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_HONKING = 21
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_TURING = 22
uint8 TRAFFIC_SIGN_NODE_TYPE_OVERTAKING_PROHIBITED = 46
uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_OVERTAKING = 47
uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_SPEED_AND_OVERTAKING = 48
uint8 TRAFFIC_SIGN_NODE_TYPE_UNGUARDED_RAILWAY_CROSSING = 50
uint8 TRAFFIC_SIGN_NODE_TYPE_GUARDED_RAILWAY_CROSSING = 51
uint8 TRAFFIC_SIGN_NODE_TYPE_CHILDREN_AND_SCHOOL_ZONE = 52
uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_CHILDREN = 53
uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_PEDESTRIAN = 54
uint8 TRAFFIC_SIGN_NODE_TYPE_SLIPPERY_SURFACE = 55
uint8 TRAFFIC_SIGN_NODE_TYPE_DANGER_AHEAD = 56
uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 57
uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 58
uint8 TRAFFIC_SIGN_NODE_TYPE_UPHILL_AHEAD = 59
uint8 TRAFFIC_SIGN_NODE_TYPE_DOWNHILL_AHEAD = 60
uint8 TRAFFIC_SIGN_NODE_TYPE_OTHER = 99
uint8 TRAFFIC_SIGN_NODE_TYPE_PEDESTRIAN_CROSSING = 100
uint8 TRAFFIC_SIGN_NODE_TYPE_LANE_DIRECTION_INDICATOR = 101
uint8 TRAFFIC_SIGN_NODE_TYPE_BUS_LANE = 102
uint8 TRAFFIC_SIGN_NODE_TYPE_MOTOR_LANE = 103
uint8 TRAFFIC_SIGN_NODE_TYPE_NON_MOTOR_LANE = 104
uint8 TRAFFIC_SIGN_NODE_TYPE_TIDAL_LANE = 105
uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_ENTRANCE = 106
uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_EXIT = 107
uint8 TRAFFIC_SIGN_NODE_TYPE_TOLL_STATION = 108
uint8 TRAFFIC_SIGN_NODE_TYPE_STAY_ON = 109
uint8 TRAFFIC_SIGN_NODE_TYPE_PASS_ON = 110
uint8 TRAFFIC_SIGN_NODE_TYPE_DRIVE_TO = 111
uint8 TRAFFIC_SIGN_NODE_TYPE_EMERGENCY_PARKING = 112
uint8 TRAFFIC_SIGN_NODE_TYPE_ONE_WAY = 113
uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_TEXT = 114
uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_ARROW = 115
uint8 TRAFFIC_SIGN_NODE_TYPE_ROUNDABOUT = 116
uint8 TRAFFIC_SIGN_NODE_TYPE_WAITING_AREA = 117
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_PARKING = 150
uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PARKING = 151
uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PROLONGED_PARKING = 152
uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING = 153
uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING_CROSS = 154
uint8 TRAFFIC_SIGN_NODE_TYPE_PARKING = 156
uint8 TRAFFIC_SIGN_NODE_TYPE_RESERVED_PARKING = 157
uint8 TRAFFIC_SIGN_NODE_TYPE_PAYMENT_PARKING = 158
uint8 TRAFFIC_SIGN_NODE_TYPE_HEIGHT_LIMIT = 248
uint8 TRAFFIC_SIGN_NODE_TYPE_WEIGHT_LIMIT = 249
uint8 TRAFFIC_SIGN_NODE_TYPE_WIDTH_LIMIT = 250
uint8 TRAFFIC_SIGN_NODE_TYPE_AXLE_WEIGHT_LIMIT = 251
uint8 TRAFFIC_SIGN_NODE_TYPE_RECOMMENDED_SPEED = 252
uint8 TRAFFIC_SIGN_NODE_TYPE_LEFT_CURVE = 253
uint8 TRAFFIC_SIGN_NODE_TYPE_RIGHT_CURVE = 254
uint8 TRAFFIC_SIGN_NODE_TYPE_SERIES_CURVES = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignShapeTypeEnum
uint8 TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN = 0
uint8 TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE = 1
uint8 TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND = 2
uint8 TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE = 3
uint8 TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE = 4
uint8 TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE = 5
uint8 TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE = 6
uint8 TRAFFIC_SIGN_SHAPE_TYPE_OTHER = 7
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeSpeedLimitEnum
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_5 = 5
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_10 = 10
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_15 = 15
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_20 = 20
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_25 = 25
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_30 = 30
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_35 = 35
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_40 = 40
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_45 = 45
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_50 = 50
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_55 = 55
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_60 = 60
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_65 = 65
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_70 = 70
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_75 = 75
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_80 = 80
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_85 = 85
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_90 = 90
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_100 = 100
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_110 = 110
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_120 = 120
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_130 = 130
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_140 = 140
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeHeightLimitEnum
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0 = 0
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1 = 1
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2 = 2
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3 = 3
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4 = 4
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5 = 5
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6 = 6
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7 = 7
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8 = 8
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9 = 9
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE = 10
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeParkingSubTypeEnum
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI = 2
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS = 3
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS = 4
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED = 5
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL = 6
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE = 7
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeParkingArrowEnum
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_NONE = 2
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_LEFT = 3
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_RIGHT = 4
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_BOTH = 5
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeLanePositionArrowEnum
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE = 2
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT = 3
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT = 4
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN = 5
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP = 6
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeRegionEnum
uint8 TRAFFIC_SIGN_NODE_REGION_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_REGION_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_REGION_CN = 2
uint8 TRAFFIC_SIGN_NODE_REGION_EU = 3
uint8 TRAFFIC_SIGN_NODE_REGION_US = 4
uint8 TRAFFIC_SIGN_NODE_REGION_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER = 1
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW = 2
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD = 3
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP = 4
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT = 5
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE = 6
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL = 7
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT = 8
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT = 9
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT = 10
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL = 11
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR = 12
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE = 13
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeDirectionEnum
uint8 TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_DIRECTION_FRONT = 1
uint8 TRAFFIC_SIGN_NODE_DIRECTION_BACK = 3
uint8 TRAFFIC_SIGN_NODE_DIRECTION_LEFT = 4
uint8 TRAFFIC_SIGN_NODE_DIRECTION_RIGHT = 5
uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT = 6
uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT = 7
uint8 TRAFFIC_SIGN_NODE_DIRECTION_X = 8
uint8 TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE = 9
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeTollStationEnum
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC = 0
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL = 1
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL = 2
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeStayOnEnum
uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT = 0
uint8 TRAFFIC_SIGN_NODE_STAYON_RIGHT = 1
uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT = 2
uint8 TRAFFIC_SIGN_NODE_STAYON_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_STAYON_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_STAYON_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodePassOnEnum
uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT = 0
uint8 TRAFFIC_SIGN_NODE_PASSON_RIGHT = 1
uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT = 2
uint8 TRAFFIC_SIGN_NODE_PASSON_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_PASSON_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_PASSON_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeDriveToEnum
uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT = 0
uint8 TRAFFIC_SIGN_NODE_DRIVETO_RIGHT = 1
uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT_RIGHT = 2
uint8 TRAFFIC_SIGN_NODE_DRIVETO_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_DRIVETO_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_DRIVETO_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES = 2
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO = 3
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_NONE = 1
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_FRONT = 2
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_LEFT = 3
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_RIGHT = 4
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE = 1
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT = 2
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT = 3
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT = 4
uint8 value

================================================================================
MSG: landmark_msgs/PoleNode
uint16 SCORE_VALID = 1
uint16 SHAPE_POINTS_VALID = 2
uint16 TYPE_VALID = 4
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] shape_points
landmark_msgs/PoleNodeTypeEnum type

================================================================================
MSG: landmark_msgs/PoleNodeTypeEnum
uint8 POLE_NODE_TYPE_UNKNOWN = 0
uint8 POLE_NODE_TYPE_GENERAL_POLE = 1
uint8 POLE_NODE_TYPE_LIGHT_POLE = 2
uint8 value

================================================================================
MSG: landmark_msgs/TrafficLightNode
uint32 TYPE_VALID = 1
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

================================================================================
MSG: landmark_msgs/DashLineEndNode
uint16 SCORE_VALID = 1
uint16 CENTER_VALID = 2
uint16 SEGMENT_START_VALID = 4
uint16 SEGMENT_END_VALID = 8
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f center
perception_interface_msgs/Point3f segment_start
perception_interface_msgs/Point3f segment_end

================================================================================
MSG: landmark_msgs/RoadEntryLineNode
uint16 SCORE_VALID = 1
uint16 LINE_POINTS_VALID = 2
uint16 IS_VIRTUAL_VALID = 4
uint16 PASS_DIRECTION_VALID = 8
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] line_points
bool is_virtual
landmark_msgs/RoadEntryLinePassDirectionTypeEnum pass_direction

================================================================================
MSG: landmark_msgs/RoadEntryLinePassDirectionTypeEnum
uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0
uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1
uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignGuideArrowNode
uint16 POLYGON_POINTS_VALID = 1
uint16 TYPES_VALID = 2
uint16 SCORE_VALID = 4
uint16 available
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] polygon_points
landmark_msgs/TrafficSignGuideArrowNodeTypeEnum[] types
float32 score

================================================================================
MSG: landmark_msgs/TrafficSignGuideArrowNodeTypeEnum
uint8 UNKNOWN = 0
uint8 DIRECTIONAL_ARROW_POINTING_UP = 1
uint8 DIRECTIONAL_ARROW_POINTING_BACK = 2
uint8 DIRECTIONAL_ARROW_POINTING_LEFT = 3
uint8 DIRECTIONAL_ARROW_POINTING_RIGHT = 4
uint8 DIRECTIONAL_ARROW_POINTING_UP_LEFT = 5
uint8 DIRECTIONAL_ARROW_POINTING_UP_RIGHT = 6
uint8 value

================================================================================
MSG: landmark_msgs/NoParkingZoneNode
uint16 POLYGON_POINTS_VALID = 1
uint16 SCORE_VALID = 2
uint16 available
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] polygon_points
float32 score

================================================================================
MSG: landmark_msgs/ParkingSpaceNode
uint16 ATTRIBUTE_VALID = 1
uint16 POLYGON_POINTS_VALID = 2
uint16 SCORE_VALID = 4
uint8 available
landmark_msgs/TrackId track_id
landmark_msgs/ParkingSpaceAttributeEnum attribute
perception_interface_msgs/Point3f[] polygon_points
float32 score

================================================================================
MSG: landmark_msgs/ParkingSpaceAttributeEnum
uint8 PARKING_SPACE_ATTRIBUTE_UNKNOWN = 0
uint8 PARKING_SPACE_ATTRIBUTE_NORMAL = 1
uint8 PARKING_SPACE_ATTRIBUTE_CHARGING = 2
uint8 value

================================================================================
MSG: landmark_msgs/RoadObstacleNode
uint16 TYPE_VALID = 1
uint16 PILLAR_CENTER_VALID = 2
uint16 POINTS_VALID = 4
uint16 SCORE_VALID = 8
uint8 available
landmark_msgs/TrackId track_id
landmark_msgs/RoadObstacleTypeEnum type
perception_interface_msgs/Point3f pillar_center
perception_interface_msgs/Point3f[] points
float32 score

================================================================================
MSG: landmark_msgs/RoadObstacleTypeEnum
uint8 ROAD_OBSTACLE_TYPE_UNKONWN = 0
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL = 1
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR = 2
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL = 3
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE = 4
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP = 5
uint8 ROAD_OBSTACLE_TYPE_PILLAR = 6
uint8 value

================================================================================
MSG: landmark_msgs/ParkingFacility
uint8 available
landmark_msgs/TrackId track_id
landmark_msgs/ParkingFacilityTypeEnum type
int8 floor

================================================================================
MSG: landmark_msgs/ParkingFacilityTypeEnum
uint8 PARKING_FACILITY_TYPE_UNKNOWN = 0
uint8 PARKING_FACILITY_TYPE_FLOOR = 1
uint8 value

================================================================================
MSG: landmark_msgs/RoadSurfaceNode
uint16 NODE_TYPE_VALID = 1
uint16 SCORE_VALID = 2
uint16 POLYGON_VALID = 4
landmark_msgs/TrackId track_id
uint16 available
landmark_msgs/RoadSurfaceTypeEnum type
float32 score
perception_interface_msgs/Point3f[] polygon

================================================================================
MSG: landmark_msgs/RoadSurfaceTypeEnum
uint8 ROAD_SURFACE_TYPE_DRIVABLE = 0
uint8 ROAD_SURFACE_TYPE_NONDRIVABLE = 1
uint8 value

================================================================================
MSG: landmark_msgs/IntersectionGuideLineNode
uint16 SCORE_VALID = 1
uint16 LINE_POINTS_VALID = 2
uint16 available
float32 score
int32 index
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] line_points
string reserved_info

================================================================================
MSG: landmark_msgs/TrafficLightSingleFrame2dInfo
uint32 CAMERA_SOURCE_VALID = 1
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
MSG: landmark_msgs/TrafficSignSingleFrame2dInfo
uint32 CAMERA_SOURCE_VALID = 1
uint32 CAMERA_MODEL_VALID = 2
uint32 SCORE_VALID = 4
uint32 BOUNDING_BOX_2D_VALID = 8
uint32 SIGN_TYPE_SCORE_VALID = 16
uint32 ATTR_NAMES_VALID = 32
uint32 ATTR_SCORES_VALID = 64
int32 track_id
landmark_msgs/CameraSourceEnum camera_source
landmark_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/Rect4f bounding_box_2d
float32 sign_type_score
string[] attr_names
float32[] attr_scores
string reserved_info
uint32 available

================================================================================
MSG: landmark_msgs/LandmarkRelations
landmark_msgs/LandmarkPerceptionRelation[] relations

================================================================================
MSG: landmark_msgs/LandmarkPerceptionRelation
uint8 TYPE_VALID = 1
uint8 LANE_CENTER_CONNECTION_TYPE_VALID = 2
uint8 available
landmark_msgs/LandmarkPerceptionRelationType type
landmark_msgs/LandmarkPerceptionRelationNode start_node
landmark_msgs/LandmarkPerceptionRelationNode end_node
landmark_msgs/LaneCenterLineConnectionTypeEnum lane_center_connection_type

================================================================================
MSG: landmark_msgs/LandmarkPerceptionRelationType
uint8 RELATION_TYPE_UNKNOWN = 0
uint8 RELATION_TYPE_LANE_CENTER_CONNECTION = 1
uint8 RELATION_TYPE_ROAD_CONNECTION = 2
uint8 RELATION_TYPE_LANE_CENTER_ROAD_BINDING = 3
uint8 RELATION_TYPE_ROAD_ROAD_BINDING = 4
uint8 RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING = 5
uint8 RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING = 6
uint8 RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING = 7
uint8 RELATION_TYPE_CROSS_WALK_ROAD_BINDING = 8
uint8 RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING = 9
uint8 RELATION_TYPE_AOI_ROAD_BINDING = 10
uint8 RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING = 11
uint8 RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING = 12
uint8 RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING = 13
uint8 RELATION_TYPE_POLE_ROAD_BINDING = 14
uint8 RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING = 15
uint8 RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING = 16
uint8 RELATION_TYPE_ROAD_AOI_BINDING = 17
uint8 RELATION_TYPE_AOI_AOI_BINDING = 18
uint8 RELATION_TYPE_DASH_LINE_END_ROAD_BINDING = 19
uint8 RELATION_TYPE_DASH_LINE_END_LANE_BINDING = 20
uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING = 21
uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING = 22
uint8 RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING = 23
uint8 RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING = 24
uint8 RELATION_TYPE_ROAD_MARK_AOI_BINDING = 25
uint8 RELATION_TYPE_LANE_CENTER_AOI_BINDING = 26
uint8 RELATION_TYPE_STOP_LINE_AOI_BINDING = 27
uint8 RELATION_TYPE_CROSS_WALK_AOI_BINDING = 28
uint8 RELATION_TYPE_STOP_LINE_ROAD_BINDING = 29
uint8 RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING = 30
uint8 RELATION_TYPE_ROAD_MARK_ROAD_BINDING = 31
uint8 RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING = 50
uint8 RELATION_TYPE_PARKING_SPACE_ROAD_BINDING = 51
uint8 RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING = 52
uint8 RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING = 53
uint8 RELATION_TYPE_ROADMARK_ROADMARK_BINDING = 54
uint8 RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN = 55
uint8 value

================================================================================
MSG: landmark_msgs/LandmarkPerceptionRelationNode
landmark_msgs/LandmarkPerceptionNodeType node_type
landmark_msgs/TrackId track_id

================================================================================
MSG: landmark_msgs/LandmarkPerceptionNodeType
uint8 NODE_TYPE_UNKNOWN = 0
uint8 NODE_TYPE_LANE_CENTER = 1
uint8 NODE_TYPE_LANE_BOUNDARY = 2
uint8 NODE_TYPE_ROAD_BOUNDARY = 3
uint8 NODE_TYPE_ROAD = 4
uint8 NODE_TYPE_STOP_LINE = 5
uint8 NODE_TYPE_CROSS_WALK = 6
uint8 NODE_TYPE_VALID_ROI = 7
uint8 NODE_TYPE_ROAD_MARK = 8
uint8 NODE_TYPE_AOI = 9
uint8 NODE_TYPE_TRAFFIC_SIGN = 10
uint8 NODE_TYPE_TRAFFIC_POLE = 11
uint8 NODE_TYPE_TRAFFIC_LIGHT = 12
uint8 NODE_TYPE_SPEEDBUMP = 13
uint8 NODE_TYPE_DASH_LINE_END = 14
uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15
uint8 NODE_TYPE_ROAD_OBSTACLE = 50
uint8 NODE_TYPE_PARKING_SPACE = 51
uint8 NODE_TYPE_PARKING_FACILITY = 52
uint8 value

================================================================================
MSG: landmark_msgs/LaneCenterLineConnectionTypeEnum
uint8 POINT_TYPE_UNKNOWN = 0
uint8 POINT_TYPE_NORMAL = 1
uint8 POINT_TYPE_TURN_LEFT = 2
uint8 POINT_TYPE_TURN_RIGHT = 3
uint8 POINT_TYPE_SPLIT = 4
uint8 POINT_TYPE_MERGE = 5
uint8 POINT_TYPE_LEFT_TURN_BACK = 6
uint8 POINT_TYPE_RIGHT_TURN_BACK = 7
uint8 POINT_TYPE_SPLIT_CONTINUE = 8
uint8 POINT_TYPE_MERGE_CONTINUE = 9
uint8 value

================================================================================
MSG: landmark_msgs/RoadSurfaceMesh
uint8 SCORE_MAP_VALID = 1
uint8 available
uint8[] score_map
uint16 bev_h
uint16 bev_w
float32 x_bound_min
float32 x_bound_max
float32 y_bound_min
float32 y_bound_max
float32 meter_per_pixel_x
float32 meter_per_pixel_y

================================================================================
MSG: landmark_msgs/SceneRecognition
landmark_msgs/SceneRecognitionType[] scene_types
string reserved_info

================================================================================
MSG: landmark_msgs/SceneRecognitionType
uint8 SCENE_RECOGNITION_TYPE_UKNOWN = 0
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD = 1
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP = 2
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN = 3
uint8 SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE = 4
uint8 SCENE_RECOGNITION_TYPE_URBAN_TUNNEL = 5
uint8 SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD = 6
uint8 SCENE_RECOGNITION_TYPE_URBAN_OTHER = 7
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE = 8
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT = 9
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION = 10
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER = 11
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND = 12
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND = 13
uint8 SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE = 14
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE = 15
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD = 16
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD = 17
uint8 SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE = 18
uint8 value

================================================================================
MSG: landmark_msgs/PerceptionConfidence
bool reliable
landmark_msgs/LaneCenterOffsetConfidence lane_center_offset_confidence
landmark_msgs/LaneCenterDisappearanceConfidence lane_center_disappearance_confidence
landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence lane_center_intersect_with_road_boundary_confidence
uint64[] no_motor_lanecenters
uint64[] vanished_normal_lanecenters
uint64[] too_close_to_laneboundary_lanecenters

================================================================================
MSG: landmark_msgs/LaneCenterOffsetConfidence
bool reliable
landmark_msgs/LaneCenterOffset[] lane_center_offsets

================================================================================
MSG: landmark_msgs/LaneCenterOffset
uint64 track_id
uint64 track_frames_count
float32 accumulative_offset
float32 relative_offset

================================================================================
MSG: landmark_msgs/LaneCenterDisappearanceConfidence
bool reliable
landmark_msgs/LaneCenterDisappearance[] lane_center_disappearances

================================================================================
MSG: landmark_msgs/LaneCenterDisappearance
landmark_msgs/LaneRecordConfidence left_lane_boundary
landmark_msgs/LaneRecordConfidence right_lane_boundary

================================================================================
MSG: landmark_msgs/LaneRecordConfidence
uint64 track_id
uint64 track_frames_count

================================================================================
MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence
bool reliable
landmark_msgs/LaneCenterIntersectWithRoadBoundary[] lane_center_intersect_with_road_boundaries

================================================================================
MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundary
landmark_msgs/LaneRecordConfidence lane_center
landmark_msgs/LaneRecordConfidence road_boundary
landmark_msgs/IntersectTypeEnum intersect_type
float64 min_distance

================================================================================
MSG: landmark_msgs/IntersectTypeEnum
uint8 UNKNOWN = 0
uint8 CROSS = 1
uint8 CLOSE = 2
uint8 value

================================================================================
MSG: landmark_msgs/HDMapMeta
uint8 UNKNOWN = 0
uint8 MDM = 1
uint8 ANDM = 2
uint8 OTHER = 3
uint8 source
landmark_msgs/HDMapType type
uint32 id
string name
string version
string reserved

================================================================================
MSG: landmark_msgs/HDMapType
uint8 NORMAL = 0
uint8 LPNP = 1
uint8 PNP = 2
uint8 OTHER = 99
uint8 value

================================================================================
MSG: landmark_msgs/TransferEgoPose
bool available
bool is_high_precision_mode
uint64 sensor_timestamp_us
float64 longitude
float64 latitude
float64 altitude
float64 global_roll
float64 global_pitch
float64 global_yaw
string reserved

================================================================================
MSG: landmark_msgs/MatchStatus
uint8 UNKNOWN = 0
uint8 ON_ROUTE = 1
uint8 OFF_ROUTE = 2
uint8 OFF_MAP = 3
uint8 value

================================================================================
MSG: landmark_msgs/LanePath
landmark_msgs/LaneIdWithOnRouteInfo[] lane_in_lane_path
float32 onroute_distance
landmark_msgs/LaneSplittingMergingManeuver[] lane_maneuvers
landmark_msgs/LanePathDirection direction
landmark_msgs/LanePathEndType end_type
landmark_msgs/NoLaneChangeZone[] left_no_lane_change_zones
landmark_msgs/NoLaneChangeZone[] right_no_lane_change_zones
landmark_msgs/NaviOnrouteDisInfo navi_onroutedis_info
string reserved_info

================================================================================
MSG: landmark_msgs/LaneIdWithOnRouteInfo
uint8 UNKNOWN = 0
uint8 ON_ROUTE = 1
uint8 OFF_ROUTE = 2
landmark_msgs/TrackId lane_id
uint8 on_route_info

================================================================================
MSG: landmark_msgs/LaneSplittingMergingManeuver
uint8 UNKNOWN = 0
uint8 HDMAP = 1
uint8 DDLD = 2
uint8 LANDTOPO = 3
landmark_msgs/ManeuverBase maneuver_base
bool is_continue
bool is_none_continue
landmark_msgs/Orientation direction
landmark_msgs/TrackId[] linked_lane_ids
uint8 source

================================================================================
MSG: landmark_msgs/ManeuverBase
landmark_msgs/ManeuverType type
float32 start_offset
float32 end_offset

================================================================================
MSG: landmark_msgs/ManeuverType
uint16 UNKNOWN = 0
uint16 MANEUVER_INTERSECTION = 1
uint16 MANEUVER_LANE_MERGING = 2
uint16 MANEUVER_LANE_SPLITTING = 3
uint16 MANEUVER_ROAD_MERGING = 4
uint16 MANEUVER_ROAD_SPLITTING = 5
uint16 MANEUVER_RAMP = 6
uint16 DESTINATION = 7
uint16 PEDESTRIAN_CROSSING = 8
uint16 SCHOOL_ZONE = 9
uint16 RAILROAD_CROSSING = 10
uint16 DANGER_AHEAD = 11
uint16 NO_OVERTAKING = 12
uint16 SPEED_LIMIT = 13
uint16 SPEED_LIMIT_ENDS = 14
uint16 DETOUR_RIGHT = 15
uint16 DETOUR_BOTH_SIDES = 16
uint16 DETOUR_LEFT = 17
uint16 MERGE_RIGHT = 18
uint16 MERGE_LEFT = 19
uint16 TRAFFIC_LIGHT = 20
uint16 EMERGENCY_LANE = 21
uint16 NON_MOTORIZED_VEHICLE_LANE = 22
uint16 SECTIONAL_SPEED_MEASUREMENT = 23
uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24
uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25
uint16 TOLL = 26
uint16 CONDITIONAL_SPEED_LIMIT = 27
uint16 ADVISORY_SPEED_LIMIT = 28
uint16 ROAD_CONSTRUCTION = 29
uint16 TRAFFIC_CONTROL = 30
uint16 ROAD_CLOSED = 31
uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32
uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33
uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34
uint16 ROAD_END = 35
uint16 UNKNOWN_TRAFFIC_FLOW = 36
uint16 SMOOTH_TRAFFIC = 37
uint16 SLOW_MOVING = 38
uint16 CONGESTED = 39
uint16 SEVERELY_CONGESTED = 40
uint16 NO_TRAFFIC_FLOW = 41
uint16 VISIBILITY = 42
uint16 value

================================================================================
MSG: landmark_msgs/Orientation
uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 INTERSECT = 3
uint8 value

================================================================================
MSG: landmark_msgs/LanePathDirection
uint8 UNKNOWN = 0
uint8 CONTINUE = 1
uint8 LEFT = 2
uint8 RIGHT = 3
uint8 value

================================================================================
MSG: landmark_msgs/LanePathEndType
uint8 UNKNOWN = 0
uint8 OFF_ROUTE_END = 1
uint8 SEARCH_RANGE_END = 2
uint8 DEST_END = 3
uint8 value

================================================================================
MSG: landmark_msgs/NoLaneChangeZone
uint8 UNKNOWN = 1
uint8 SOLID_LINE = 2
uint8 BUS_LANE = 3
uint8 OTHERS = 99
uint8 type
float32 start_offset
float32 end_offset

================================================================================
MSG: landmark_msgs/NaviOnrouteDisInfo
bool available
float32 dist_to_onroute
int16[] on_route_dis_clses
int16 cls_num
string reserved_info

================================================================================
MSG: landmark_msgs/AttributeOnPath
uint32 SPEED_LIMIT_VALID = 1
uint32 CURVATURE_VALID = 2
uint32 SLOPE_VALID = 4
uint32 OFFSET_VALID = 8
uint32 SPECIAL_SITUATION_VALID = 16
uint32 available
float32 start_offset
float32 speed_limit
float32 curvature
float32 slope
landmark_msgs/SpecialSituation special_situation
string reserved

================================================================================
MSG: landmark_msgs/SpecialSituation
uint32 UNKNOWN = 0
uint32 TUNNEL_BEGIN = 1
uint32 TUNNEL_END = 2
uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3
uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4
uint32 value

================================================================================
MSG: landmark_msgs/Maneuvers
landmark_msgs/IntersectionManeuver[] intersection_maneuvers
landmark_msgs/RampManeuver[] ramp_maneuvers
landmark_msgs/RoadSplittingMergingManeuver[] road_splitting_merging_maneuver
landmark_msgs/DestinationManeuver[] destination_maneuver

================================================================================
MSG: landmark_msgs/IntersectionManeuver
landmark_msgs/ManeuverBase maneuver_base
bool is_traffic_light_exist
bool has_traffic_light_detail
landmark_msgs/Direction direction
float32 distance_to_turn_left_waiting_area
landmark_msgs/TrafficLightGroup[] light_groups

================================================================================
MSG: landmark_msgs/Direction
uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 3
uint8 U_TURN_LEFT = 4
uint8 U_TURN_RIGHT = 5
uint8 LEFT_CONFLUENCE = 6
uint8 RIGHT_CONFLUENCE = 7
uint8 LEFT_LEFT = 10
uint8 LEFT_LEFT_UT = 11
uint8 LEFT_RIGHT = 12
uint8 LEFT_RIGHT_UT = 13
uint8 LEFT_GO_STRAIGHT = 14
uint8 LEFT_UNKNOWN = 15
uint8 RIGHT_RIGHT = 20
uint8 RIGHT_RIGHT_UT = 21
uint8 RIGHT_LEFT = 22
uint8 RIGHT_LEFT_UT = 23
uint8 RIGHT_GO_STRAIGHT = 24
uint8 RIGHT_UNKNOWN = 25
uint8 LEFT_UT_LEFT_UT = 30
uint8 LEFT_UT_LEFT = 31
uint8 LEFT_UT_RIGHT = 32
uint8 LEFT_UT_RIGHT_UT = 33
uint8 LEFT_UT_GO_STRAIGHT = 34
uint8 LEFT_UT_UNKNOWN = 35
uint8 RIGHT_UT_RIGHT_UT = 40
uint8 RIGHT_UT_RIGHT = 41
uint8 RIGHT_UT_LEFT = 42
uint8 RIGHT_UT_LEFT_UT = 43
uint8 RIGHT_UT_GO_STRAIGHT = 44
uint8 RIGHT_UT_UNKNOWN = 45
uint8 GO_STRAIGHT_GO_STRAIGHT = 50
uint8 GO_STRAIGHT_LEFT = 51
uint8 GO_STRAIGHT_LEFT_UT = 52
uint8 GO_STRAIGHT_RIGHT = 53
uint8 GO_STRAIGHT_RIGHT_UT = 54
uint8 GO_STRAIGHT_UNKNOWN = 55
uint8 OTHER_LEFT = 61
uint8 OTHER_LEFT_UT = 62
uint8 OTHER_RIGHT = 63
uint8 OTHER_RIGHT_UT = 64
uint8 OTHER_GO_STRAIGHT = 65
uint8 OTHER_UNKNOWN = 66
uint8 UNKNOWN_LEFT = 91
uint8 UNKNOWN_LEFT_UT = 92
uint8 UNKNOWN_RIGHT = 93
uint8 UNKNOWN_RIGHT_UT = 94
uint8 UNKNOWN_GO_STRAIGHT = 95
uint8 UNKNOWN_UNKNOWN = 96
uint8 value

================================================================================
MSG: landmark_msgs/TrafficLightGroup
landmark_msgs/TrafficLight[] traffic_light_group

================================================================================
MSG: landmark_msgs/TrafficLight
landmark_msgs/TrafficLightType type
landmark_msgs/Direction[] direction

================================================================================
MSG: landmark_msgs/TrafficLightType
uint8 UNKNOWN = 0
uint8 DOT_TRAFFIC_LIGHT = 1
uint8 ARROW_TRAFFIC_LIGHT = 2
uint8 NUMBER_TRAFFIC_LIGHT = 3
uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4
uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5
uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6
uint8 value

================================================================================
MSG: landmark_msgs/RampManeuver
landmark_msgs/ManeuverBase maneuver_base
landmark_msgs/DirectionInfo ramp_in_direction_info
landmark_msgs/DirectionInfo ramp_out_direction_info
float64 ramp_in_angle
float64 ramp_out_angle

================================================================================
MSG: landmark_msgs/DirectionInfo
int16 road_index
int16 road_sum

================================================================================
MSG: landmark_msgs/RoadSplittingMergingManeuver
landmark_msgs/ManeuverBase maneuver_base
landmark_msgs/DirectionInfo direction_info
float64[] angles

================================================================================
MSG: landmark_msgs/DestinationManeuver
landmark_msgs/ManeuverBase maneuver_base
landmark_msgs/DestinationParkingInfo parking_info

================================================================================
MSG: landmark_msgs/DestinationParkingInfo
uint8 PARKING_TYPE_VALID = 1
uint8 ID_VALID = 2
uint8 available
landmark_msgs/DestinationParkingType parking_type
landmark_msgs/TrackId id

================================================================================
MSG: landmark_msgs/DestinationParkingType
uint8 UNKNOWN = 0
uint8 NORMAL_DESTINATION = 1
uint8 PARKING_SPACE = 2
uint8 PARKING_AOI = 3
uint8 value

================================================================================
MSG: landmark_msgs/DmapInfo
bool available
landmark_msgs/DmapInputData[] input_datas
landmark_msgs/FeatMapData dmap_data
string reserved_info

================================================================================
MSG: landmark_msgs/DmapInputData
string input_name
int32[] shape
float32[] data

================================================================================
MSG: landmark_msgs/FeatMapData
int32[] shape
float32 map_scalar
landmark_msgs/FloatRange x_range
landmark_msgs/FloatRange y_range
int16 cls_num
uint8[] cls_map
float32[] feat_map
landmark_msgs/FloatRange[] cls_range
string reserved_info

================================================================================
MSG: landmark_msgs/FloatRange
float32 min
float32 max

================================================================================
MSG: landmark_msgs/NaviVelocityLimitInfo
bool available
float32[] means
float32[] sigma

================================================================================
MSG: landmark_msgs/RefPathGoal
uint16 SCORE_VALID = 1
uint16 TYPE_VALID = 2
uint16 LANDMARK_ID_VALID = 4
uint16 GOAL_POINT_VALID = 8
uint16 TURN_DIRECTION_VALID = 16
uint16 ONROUTE_DISTANCE_VALID = 32
uint16 available
float32 score
landmark_msgs/TrackId id
landmark_msgs/RefPathGoalTypeEnum type
landmark_msgs/TrackId landmark_id
landmark_msgs/WayPoint goal_point
landmark_msgs/Direction turn_direction
float32 onroute_distance
landmark_msgs/NaviInfoSource navi_info_source
string reserved_info

================================================================================
MSG: landmark_msgs/RefPathGoalTypeEnum
uint8 GOAL_TYPE_UNKNOWN = 0
uint8 GOAL_TYPE_WAY_POINT = 1
uint8 GOAL_TYPE_LANE_CENTER = 2
uint8 GOAL_TYPE_ROAD_MARK = 3
uint8 GOAL_TYPE_ROAD_ENTRY_LINE = 4
uint8 value

================================================================================
MSG: landmark_msgs/WayPoint
uint16 SCORE_VALID = 1
uint16 POSITION_VALID = 2
uint16 HEADING_ANGLE_VALID = 4
uint16 OFFSET_VALID = 8
uint16 SPEED_MEAN_VALID = 16
uint16 SPEED_STD_VALID = 32
uint16 TURN_DIRECTION_VALID = 64
uint16 ON_ROUTE_VALID = 128
uint16 available
float32 score
perception_interface_msgs/Point3f position
float32 heading_angle
float32 offset
float32 speed_mean
float32 speed_std
landmark_msgs/Direction turn_direction
bool on_route
string reserved_info

================================================================================
MSG: landmark_msgs/NaviInfoSource
uint8 UNKNOWN = 0
uint8 DEFAULT = 1
uint8 HDMAP = 2
uint8 LANDTOPO = 3
uint8 TBT = 4
uint8 value

================================================================================
MSG: landmark_msgs/RefPath
float32 score
int32 index
landmark_msgs/TrackId id
landmark_msgs/RefPathTypeEnum type
landmark_msgs/WayPoint[] points
landmark_msgs/TrackId[] goal_ids
landmark_msgs/NaviInfoSource navi_info_source
landmark_msgs/NaviOnrouteDisInfo navi_onroutedis_info
string reserved_info

================================================================================
MSG: landmark_msgs/RefPathTypeEnum
uint8 REFPATH_TYPE_UNKNOWN = 0
uint8 REFPATH_TYPE_LATENT_QUERY = 1
uint8 REFPATH_TYPE_ANGULAR_QUERY = 2
uint8 REFPATH_TYPE_GOAL_CONDITIONED = 3
uint8 value

")



(provide :landmark_msgs/LandmarkNavi "91a6a9a8a167693db40dc8da8f19d452")


