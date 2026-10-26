;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RefPath)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RefPath (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::REFPATH")
  (make-package "LANDMARK_MSGS::REFPATH"))

(in-package "ROS")
;;//! \htmlinclude RefPath.msg.html


(defclass landmark_msgs::RefPath
  :super ros::object
  :slots (_score _index _id _type _points _goal_ids _navi_info_source _navi_onroutedis_info _reserved_info ))

(defmethod landmark_msgs::RefPath
  (:init
   (&key
    ((:score __score) 0.0)
    ((:index __index) 0)
    ((:id __id) (instance landmark_msgs::TrackId :init))
    ((:type __type) (instance landmark_msgs::RefPathTypeEnum :init))
    ((:points __points) ())
    ((:goal_ids __goal_ids) ())
    ((:navi_info_source __navi_info_source) (instance landmark_msgs::NaviInfoSource :init))
    ((:navi_onroutedis_info __navi_onroutedis_info) (instance landmark_msgs::NaviOnrouteDisInfo :init))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _score (float __score))
   (setq _index (round __index))
   (setq _id __id)
   (setq _type __type)
   (setq _points __points)
   (setq _goal_ids __goal_ids)
   (setq _navi_info_source __navi_info_source)
   (setq _navi_onroutedis_info __navi_onroutedis_info)
   (setq _reserved_info (string __reserved_info))
   self)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:goal_ids
   (&rest __goal_ids)
   (if (keywordp (car __goal_ids))
       (send* _goal_ids __goal_ids)
     (progn
       (if __goal_ids (setq _goal_ids (car __goal_ids)))
       _goal_ids)))
  (:navi_info_source
   (&rest __navi_info_source)
   (if (keywordp (car __navi_info_source))
       (send* _navi_info_source __navi_info_source)
     (progn
       (if __navi_info_source (setq _navi_info_source (car __navi_info_source)))
       _navi_info_source)))
  (:navi_onroutedis_info
   (&rest __navi_onroutedis_info)
   (if (keywordp (car __navi_onroutedis_info))
       (send* _navi_onroutedis_info __navi_onroutedis_info)
     (progn
       (if __navi_onroutedis_info (setq _navi_onroutedis_info (car __navi_onroutedis_info)))
       _navi_onroutedis_info)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; float32 _score
    4
    ;; int32 _index
    4
    ;; landmark_msgs/TrackId _id
    (send _id :serialization-length)
    ;; landmark_msgs/RefPathTypeEnum _type
    (send _type :serialization-length)
    ;; landmark_msgs/WayPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; landmark_msgs/TrackId[] _goal_ids
    (apply #'+ (send-all _goal_ids :serialization-length)) 4
    ;; landmark_msgs/NaviInfoSource _navi_info_source
    (send _navi_info_source :serialization-length)
    ;; landmark_msgs/NaviOnrouteDisInfo _navi_onroutedis_info
    (send _navi_onroutedis_info :serialization-length)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _index
       (write-long _index s)
     ;; landmark_msgs/TrackId _id
       (send _id :serialize s)
     ;; landmark_msgs/RefPathTypeEnum _type
       (send _type :serialize s)
     ;; landmark_msgs/WayPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrackId[] _goal_ids
     (write-long (length _goal_ids) s)
     (dolist (elem _goal_ids)
       (send elem :serialize s)
       )
     ;; landmark_msgs/NaviInfoSource _navi_info_source
       (send _navi_info_source :serialize s)
     ;; landmark_msgs/NaviOnrouteDisInfo _navi_onroutedis_info
       (send _navi_onroutedis_info :serialize s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; landmark_msgs/TrackId _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; landmark_msgs/RefPathTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; landmark_msgs/WayPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance landmark_msgs::WayPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrackId[] _goal_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_ids (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _goal_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/NaviInfoSource _navi_info_source
     (send _navi_info_source :deserialize buf ptr-) (incf ptr- (send _navi_info_source :serialization-length))
   ;; landmark_msgs/NaviOnrouteDisInfo _navi_onroutedis_info
     (send _navi_onroutedis_info :deserialize buf ptr-) (incf ptr- (send _navi_onroutedis_info :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::RefPath :md5sum-) "d5feed00069cb7ebcc8b2034b771f6c3")
(setf (get landmark_msgs::RefPath :datatype-) "landmark_msgs/RefPath")
(setf (get landmark_msgs::RefPath :definition-)
      "float32 score
int32 index
landmark_msgs/TrackId id
landmark_msgs/RefPathTypeEnum type
landmark_msgs/WayPoint[] points
landmark_msgs/TrackId[] goal_ids
landmark_msgs/NaviInfoSource navi_info_source
landmark_msgs/NaviOnrouteDisInfo navi_onroutedis_info
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
MSG: landmark_msgs/RefPathTypeEnum
uint8 REFPATH_TYPE_UNKNOWN = 0
uint8 REFPATH_TYPE_LATENT_QUERY = 1
uint8 REFPATH_TYPE_ANGULAR_QUERY = 2
uint8 REFPATH_TYPE_GOAL_CONDITIONED = 3
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
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

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
MSG: landmark_msgs/NaviInfoSource
uint8 UNKNOWN = 0
uint8 DEFAULT = 1
uint8 HDMAP = 2
uint8 LANDTOPO = 3
uint8 TBT = 4
uint8 value

================================================================================
MSG: landmark_msgs/NaviOnrouteDisInfo
bool available
float32 dist_to_onroute
int16[] on_route_dis_clses
int16 cls_num
string reserved_info

")



(provide :landmark_msgs/RefPath "d5feed00069cb7ebcc8b2034b771f6c3")


