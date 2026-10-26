;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::Road)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'Road (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::ROAD")
  (make-package "LANE_NAVI_INFO_MSGS::ROAD"))

(in-package "ROS")
;;//! \htmlinclude Road.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(intern "*ATTRIBUTE_VALID*" (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(shadow '*ATTRIBUTE_VALID* (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(defconstant lane_navi_info_msgs::Road::*ATTRIBUTE_VALID* 1)
(intern "*ROAD_CLASS_VALID*" (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(shadow '*ROAD_CLASS_VALID* (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(defconstant lane_navi_info_msgs::Road::*ROAD_CLASS_VALID* 2)
(intern "*FORMWAY_VALID*" (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(shadow '*FORMWAY_VALID* (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(defconstant lane_navi_info_msgs::Road::*FORMWAY_VALID* 4)
(intern "*ROAD_DIRECTION_VALID*" (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(shadow '*ROAD_DIRECTION_VALID* (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(defconstant lane_navi_info_msgs::Road::*ROAD_DIRECTION_VALID* 8)
(intern "*MULTI_DIGITIZED_ROADS_VALID*" (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(shadow '*MULTI_DIGITIZED_ROADS_VALID* (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(defconstant lane_navi_info_msgs::Road::*MULTI_DIGITIZED_ROADS_VALID* 16)
(intern "*LANE_GROUP_VALID*" (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(shadow '*LANE_GROUP_VALID* (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(defconstant lane_navi_info_msgs::Road::*LANE_GROUP_VALID* 32)
(intern "*LINKED_INTERSECTION_VALID*" (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(shadow '*LINKED_INTERSECTION_VALID* (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(defconstant lane_navi_info_msgs::Road::*LINKED_INTERSECTION_VALID* 64)
(intern "*TOPO_VALID*" (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(shadow '*TOPO_VALID* (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(defconstant lane_navi_info_msgs::Road::*TOPO_VALID* 128)
(intern "*LANE_NUM_OF_DRIVING_DIR_VALID*" (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(shadow '*LANE_NUM_OF_DRIVING_DIR_VALID* (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(defconstant lane_navi_info_msgs::Road::*LANE_NUM_OF_DRIVING_DIR_VALID* 256)
(intern "*LANE_NUM_OF_OPPOSITE_DIR_VALID*" (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(shadow '*LANE_NUM_OF_OPPOSITE_DIR_VALID* (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(defconstant lane_navi_info_msgs::Road::*LANE_NUM_OF_OPPOSITE_DIR_VALID* 512)
(intern "*SD_ROAD_INFO_VALID*" (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(shadow '*SD_ROAD_INFO_VALID* (find-package "LANE_NAVI_INFO_MSGS::ROAD"))
(defconstant lane_navi_info_msgs::Road::*SD_ROAD_INFO_VALID* 1024)

(defun lane_navi_info_msgs::Road-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::Road::*ATTRIBUTE_VALID*)
        ((= const 2) 'lane_navi_info_msgs::Road::*ROAD_CLASS_VALID*)
        ((= const 4) 'lane_navi_info_msgs::Road::*FORMWAY_VALID*)
        ((= const 8) 'lane_navi_info_msgs::Road::*ROAD_DIRECTION_VALID*)
        ((= const 16) 'lane_navi_info_msgs::Road::*MULTI_DIGITIZED_ROADS_VALID*)
        ((= const 32) 'lane_navi_info_msgs::Road::*LANE_GROUP_VALID*)
        ((= const 64) 'lane_navi_info_msgs::Road::*LINKED_INTERSECTION_VALID*)
        ((= const 128) 'lane_navi_info_msgs::Road::*TOPO_VALID*)
        ((= const 256) 'lane_navi_info_msgs::Road::*LANE_NUM_OF_DRIVING_DIR_VALID*)
        ((= const 512) 'lane_navi_info_msgs::Road::*LANE_NUM_OF_OPPOSITE_DIR_VALID*)
        ((= const 1024) 'lane_navi_info_msgs::Road::*SD_ROAD_INFO_VALID*)
        (t nil)))

(defclass lane_navi_info_msgs::Road
  :super ros::object
  :slots (_available _road_id _length _attribute _polyline _rb_left _rb_right _road_class _formways _road_direction _left_multi_digitized_road_ids _right_multi_digitized_road_ids _lane_groups _linked_intersection_id _prev_roads _next_roads _lane_num_of_driving_dir _lane_num_of_opposite_dir _sd_road_info _is_on_route ))

(defmethod lane_navi_info_msgs::Road
  (:init
   (&key
    ((:available __available) 0)
    ((:road_id __road_id) (instance landmark_msgs::TrackId :init))
    ((:length __length) 0.0)
    ((:attribute __attribute) (instance lane_navi_info_msgs::RoadAttribute :init))
    ((:polyline __polyline) (instance lane_navi_info_msgs::Polyline :init))
    ((:rb_left __rb_left) ())
    ((:rb_right __rb_right) ())
    ((:road_class __road_class) (instance landmark_msgs::RoadNodeRoadClassEnum :init))
    ((:formways __formways) ())
    ((:road_direction __road_direction) (instance landmark_msgs::RoadDirectionTypeEnum :init))
    ((:left_multi_digitized_road_ids __left_multi_digitized_road_ids) ())
    ((:right_multi_digitized_road_ids __right_multi_digitized_road_ids) ())
    ((:lane_groups __lane_groups) ())
    ((:linked_intersection_id __linked_intersection_id) (instance landmark_msgs::TrackId :init))
    ((:prev_roads __prev_roads) ())
    ((:next_roads __next_roads) ())
    ((:lane_num_of_driving_dir __lane_num_of_driving_dir) 0)
    ((:lane_num_of_opposite_dir __lane_num_of_opposite_dir) 0)
    ((:sd_road_info __sd_road_info) (instance lane_navi_info_msgs::SDRoadInfo :init))
    ((:is_on_route __is_on_route) nil)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _road_id __road_id)
   (setq _length (float __length))
   (setq _attribute __attribute)
   (setq _polyline __polyline)
   (setq _rb_left __rb_left)
   (setq _rb_right __rb_right)
   (setq _road_class __road_class)
   (setq _formways __formways)
   (setq _road_direction __road_direction)
   (setq _left_multi_digitized_road_ids __left_multi_digitized_road_ids)
   (setq _right_multi_digitized_road_ids __right_multi_digitized_road_ids)
   (setq _lane_groups __lane_groups)
   (setq _linked_intersection_id __linked_intersection_id)
   (setq _prev_roads __prev_roads)
   (setq _next_roads __next_roads)
   (setq _lane_num_of_driving_dir (round __lane_num_of_driving_dir))
   (setq _lane_num_of_opposite_dir (round __lane_num_of_opposite_dir))
   (setq _sd_road_info __sd_road_info)
   (setq _is_on_route __is_on_route)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:road_id
   (&rest __road_id)
   (if (keywordp (car __road_id))
       (send* _road_id __road_id)
     (progn
       (if __road_id (setq _road_id (car __road_id)))
       _road_id)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:attribute
   (&rest __attribute)
   (if (keywordp (car __attribute))
       (send* _attribute __attribute)
     (progn
       (if __attribute (setq _attribute (car __attribute)))
       _attribute)))
  (:polyline
   (&rest __polyline)
   (if (keywordp (car __polyline))
       (send* _polyline __polyline)
     (progn
       (if __polyline (setq _polyline (car __polyline)))
       _polyline)))
  (:rb_left
   (&rest __rb_left)
   (if (keywordp (car __rb_left))
       (send* _rb_left __rb_left)
     (progn
       (if __rb_left (setq _rb_left (car __rb_left)))
       _rb_left)))
  (:rb_right
   (&rest __rb_right)
   (if (keywordp (car __rb_right))
       (send* _rb_right __rb_right)
     (progn
       (if __rb_right (setq _rb_right (car __rb_right)))
       _rb_right)))
  (:road_class
   (&rest __road_class)
   (if (keywordp (car __road_class))
       (send* _road_class __road_class)
     (progn
       (if __road_class (setq _road_class (car __road_class)))
       _road_class)))
  (:formways
   (&rest __formways)
   (if (keywordp (car __formways))
       (send* _formways __formways)
     (progn
       (if __formways (setq _formways (car __formways)))
       _formways)))
  (:road_direction
   (&rest __road_direction)
   (if (keywordp (car __road_direction))
       (send* _road_direction __road_direction)
     (progn
       (if __road_direction (setq _road_direction (car __road_direction)))
       _road_direction)))
  (:left_multi_digitized_road_ids
   (&rest __left_multi_digitized_road_ids)
   (if (keywordp (car __left_multi_digitized_road_ids))
       (send* _left_multi_digitized_road_ids __left_multi_digitized_road_ids)
     (progn
       (if __left_multi_digitized_road_ids (setq _left_multi_digitized_road_ids (car __left_multi_digitized_road_ids)))
       _left_multi_digitized_road_ids)))
  (:right_multi_digitized_road_ids
   (&rest __right_multi_digitized_road_ids)
   (if (keywordp (car __right_multi_digitized_road_ids))
       (send* _right_multi_digitized_road_ids __right_multi_digitized_road_ids)
     (progn
       (if __right_multi_digitized_road_ids (setq _right_multi_digitized_road_ids (car __right_multi_digitized_road_ids)))
       _right_multi_digitized_road_ids)))
  (:lane_groups
   (&rest __lane_groups)
   (if (keywordp (car __lane_groups))
       (send* _lane_groups __lane_groups)
     (progn
       (if __lane_groups (setq _lane_groups (car __lane_groups)))
       _lane_groups)))
  (:linked_intersection_id
   (&rest __linked_intersection_id)
   (if (keywordp (car __linked_intersection_id))
       (send* _linked_intersection_id __linked_intersection_id)
     (progn
       (if __linked_intersection_id (setq _linked_intersection_id (car __linked_intersection_id)))
       _linked_intersection_id)))
  (:prev_roads
   (&rest __prev_roads)
   (if (keywordp (car __prev_roads))
       (send* _prev_roads __prev_roads)
     (progn
       (if __prev_roads (setq _prev_roads (car __prev_roads)))
       _prev_roads)))
  (:next_roads
   (&rest __next_roads)
   (if (keywordp (car __next_roads))
       (send* _next_roads __next_roads)
     (progn
       (if __next_roads (setq _next_roads (car __next_roads)))
       _next_roads)))
  (:lane_num_of_driving_dir
   (&optional __lane_num_of_driving_dir)
   (if __lane_num_of_driving_dir (setq _lane_num_of_driving_dir __lane_num_of_driving_dir)) _lane_num_of_driving_dir)
  (:lane_num_of_opposite_dir
   (&optional __lane_num_of_opposite_dir)
   (if __lane_num_of_opposite_dir (setq _lane_num_of_opposite_dir __lane_num_of_opposite_dir)) _lane_num_of_opposite_dir)
  (:sd_road_info
   (&rest __sd_road_info)
   (if (keywordp (car __sd_road_info))
       (send* _sd_road_info __sd_road_info)
     (progn
       (if __sd_road_info (setq _sd_road_info (car __sd_road_info)))
       _sd_road_info)))
  (:is_on_route
   (&optional (__is_on_route :null))
   (if (not (eq __is_on_route :null)) (setq _is_on_route __is_on_route)) _is_on_route)
  (:serialization-length
   ()
   (+
    ;; uint32 _available
    4
    ;; landmark_msgs/TrackId _road_id
    (send _road_id :serialization-length)
    ;; float32 _length
    4
    ;; lane_navi_info_msgs/RoadAttribute _attribute
    (send _attribute :serialization-length)
    ;; lane_navi_info_msgs/Polyline _polyline
    (send _polyline :serialization-length)
    ;; lane_navi_info_msgs/RoadBoundaryInfo[] _rb_left
    (apply #'+ (send-all _rb_left :serialization-length)) 4
    ;; lane_navi_info_msgs/RoadBoundaryInfo[] _rb_right
    (apply #'+ (send-all _rb_right :serialization-length)) 4
    ;; landmark_msgs/RoadNodeRoadClassEnum _road_class
    (send _road_class :serialization-length)
    ;; landmark_msgs/RoadNodeFormwayEnum[] _formways
    (apply #'+ (send-all _formways :serialization-length)) 4
    ;; landmark_msgs/RoadDirectionTypeEnum _road_direction
    (send _road_direction :serialization-length)
    ;; lane_navi_info_msgs/MultiDigitizedRoad[] _left_multi_digitized_road_ids
    (apply #'+ (send-all _left_multi_digitized_road_ids :serialization-length)) 4
    ;; lane_navi_info_msgs/MultiDigitizedRoad[] _right_multi_digitized_road_ids
    (apply #'+ (send-all _right_multi_digitized_road_ids :serialization-length)) 4
    ;; lane_navi_info_msgs/LaneGroupsOnRoad[] _lane_groups
    (apply #'+ (send-all _lane_groups :serialization-length)) 4
    ;; landmark_msgs/TrackId _linked_intersection_id
    (send _linked_intersection_id :serialization-length)
    ;; landmark_msgs/TrackId[] _prev_roads
    (apply #'+ (send-all _prev_roads :serialization-length)) 4
    ;; landmark_msgs/TrackId[] _next_roads
    (apply #'+ (send-all _next_roads :serialization-length)) 4
    ;; uint8 _lane_num_of_driving_dir
    1
    ;; uint8 _lane_num_of_opposite_dir
    1
    ;; lane_navi_info_msgs/SDRoadInfo _sd_road_info
    (send _sd_road_info :serialization-length)
    ;; bool _is_on_route
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _available
       (write-long _available s)
     ;; landmark_msgs/TrackId _road_id
       (send _road_id :serialize s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; lane_navi_info_msgs/RoadAttribute _attribute
       (send _attribute :serialize s)
     ;; lane_navi_info_msgs/Polyline _polyline
       (send _polyline :serialize s)
     ;; lane_navi_info_msgs/RoadBoundaryInfo[] _rb_left
     (write-long (length _rb_left) s)
     (dolist (elem _rb_left)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/RoadBoundaryInfo[] _rb_right
     (write-long (length _rb_right) s)
     (dolist (elem _rb_right)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RoadNodeRoadClassEnum _road_class
       (send _road_class :serialize s)
     ;; landmark_msgs/RoadNodeFormwayEnum[] _formways
     (write-long (length _formways) s)
     (dolist (elem _formways)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RoadDirectionTypeEnum _road_direction
       (send _road_direction :serialize s)
     ;; lane_navi_info_msgs/MultiDigitizedRoad[] _left_multi_digitized_road_ids
     (write-long (length _left_multi_digitized_road_ids) s)
     (dolist (elem _left_multi_digitized_road_ids)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/MultiDigitizedRoad[] _right_multi_digitized_road_ids
     (write-long (length _right_multi_digitized_road_ids) s)
     (dolist (elem _right_multi_digitized_road_ids)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/LaneGroupsOnRoad[] _lane_groups
     (write-long (length _lane_groups) s)
     (dolist (elem _lane_groups)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrackId _linked_intersection_id
       (send _linked_intersection_id :serialize s)
     ;; landmark_msgs/TrackId[] _prev_roads
     (write-long (length _prev_roads) s)
     (dolist (elem _prev_roads)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrackId[] _next_roads
     (write-long (length _next_roads) s)
     (dolist (elem _next_roads)
       (send elem :serialize s)
       )
     ;; uint8 _lane_num_of_driving_dir
       (write-byte _lane_num_of_driving_dir s)
     ;; uint8 _lane_num_of_opposite_dir
       (write-byte _lane_num_of_opposite_dir s)
     ;; lane_navi_info_msgs/SDRoadInfo _sd_road_info
       (send _sd_road_info :serialize s)
     ;; bool _is_on_route
       (if _is_on_route (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _available
     (setq _available (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; landmark_msgs/TrackId _road_id
     (send _road_id :deserialize buf ptr-) (incf ptr- (send _road_id :serialization-length))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; lane_navi_info_msgs/RoadAttribute _attribute
     (send _attribute :deserialize buf ptr-) (incf ptr- (send _attribute :serialization-length))
   ;; lane_navi_info_msgs/Polyline _polyline
     (send _polyline :deserialize buf ptr-) (incf ptr- (send _polyline :serialization-length))
   ;; lane_navi_info_msgs/RoadBoundaryInfo[] _rb_left
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rb_left (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::RoadBoundaryInfo :init) r)) r))
     (dolist (elem- _rb_left)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/RoadBoundaryInfo[] _rb_right
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rb_right (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::RoadBoundaryInfo :init) r)) r))
     (dolist (elem- _rb_right)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RoadNodeRoadClassEnum _road_class
     (send _road_class :deserialize buf ptr-) (incf ptr- (send _road_class :serialization-length))
   ;; landmark_msgs/RoadNodeFormwayEnum[] _formways
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _formways (let (r) (dotimes (i n) (push (instance landmark_msgs::RoadNodeFormwayEnum :init) r)) r))
     (dolist (elem- _formways)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RoadDirectionTypeEnum _road_direction
     (send _road_direction :deserialize buf ptr-) (incf ptr- (send _road_direction :serialization-length))
   ;; lane_navi_info_msgs/MultiDigitizedRoad[] _left_multi_digitized_road_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_multi_digitized_road_ids (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::MultiDigitizedRoad :init) r)) r))
     (dolist (elem- _left_multi_digitized_road_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/MultiDigitizedRoad[] _right_multi_digitized_road_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_multi_digitized_road_ids (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::MultiDigitizedRoad :init) r)) r))
     (dolist (elem- _right_multi_digitized_road_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/LaneGroupsOnRoad[] _lane_groups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_groups (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::LaneGroupsOnRoad :init) r)) r))
     (dolist (elem- _lane_groups)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrackId _linked_intersection_id
     (send _linked_intersection_id :deserialize buf ptr-) (incf ptr- (send _linked_intersection_id :serialization-length))
   ;; landmark_msgs/TrackId[] _prev_roads
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prev_roads (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _prev_roads)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrackId[] _next_roads
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _next_roads (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _next_roads)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _lane_num_of_driving_dir
     (setq _lane_num_of_driving_dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lane_num_of_opposite_dir
     (setq _lane_num_of_opposite_dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; lane_navi_info_msgs/SDRoadInfo _sd_road_info
     (send _sd_road_info :deserialize buf ptr-) (incf ptr- (send _sd_road_info :serialization-length))
   ;; bool _is_on_route
     (setq _is_on_route (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::Road :md5sum-) "61ccbc70e285b1b12e534d69cc8daded")
(setf (get lane_navi_info_msgs::Road :datatype-) "lane_navi_info_msgs/Road")
(setf (get lane_navi_info_msgs::Road :definition-)
      "uint32 ATTRIBUTE_VALID = 1
uint32 ROAD_CLASS_VALID = 2
uint32 FORMWAY_VALID = 4
uint32 ROAD_DIRECTION_VALID = 8
uint32 MULTI_DIGITIZED_ROADS_VALID = 16
uint32 LANE_GROUP_VALID = 32
uint32 LINKED_INTERSECTION_VALID = 64
uint32 TOPO_VALID = 128
uint32 LANE_NUM_OF_DRIVING_DIR_VALID = 256
uint32 LANE_NUM_OF_OPPOSITE_DIR_VALID = 512
uint32 SD_ROAD_INFO_VALID = 1024
uint32 available
landmark_msgs/TrackId road_id
float32 length
lane_navi_info_msgs/RoadAttribute attribute
lane_navi_info_msgs/Polyline polyline
lane_navi_info_msgs/RoadBoundaryInfo[] rb_left
lane_navi_info_msgs/RoadBoundaryInfo[] rb_right
landmark_msgs/RoadNodeRoadClassEnum road_class
landmark_msgs/RoadNodeFormwayEnum[] formways
landmark_msgs/RoadDirectionTypeEnum road_direction
lane_navi_info_msgs/MultiDigitizedRoad[] left_multi_digitized_road_ids
lane_navi_info_msgs/MultiDigitizedRoad[] right_multi_digitized_road_ids
lane_navi_info_msgs/LaneGroupsOnRoad[] lane_groups
landmark_msgs/TrackId linked_intersection_id
landmark_msgs/TrackId[] prev_roads
landmark_msgs/TrackId[] next_roads
uint8 lane_num_of_driving_dir
uint8 lane_num_of_opposite_dir
lane_navi_info_msgs/SDRoadInfo sd_road_info
bool is_on_route

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/RoadAttribute
lane_navi_info_msgs/SpeedLimit[] speed_limits
lane_navi_info_msgs/ExperienceSpeedLimit[] experience_speed_limits
lane_navi_info_msgs/Curvature[] curvatures
lane_navi_info_msgs/Slope[] slopes
landmark_msgs/SpecialSituation[] special_situation

================================================================================
MSG: lane_navi_info_msgs/SpeedLimit
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: lane_navi_info_msgs/InterpolationType
uint8 UNKNOWN = 0
uint8 STEP = 1
uint8 LINEAR = 2
uint8 GENERAL = 3
uint8 OHTERS = 255
uint8 type
float32[] addition_values
float32[] params

================================================================================
MSG: lane_navi_info_msgs/ExperienceSpeedLimit
float32 value
float32 start_offset
float32 end_offset

================================================================================
MSG: lane_navi_info_msgs/Curvature
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: lane_navi_info_msgs/Slope
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: landmark_msgs/SpecialSituation
uint32 UNKNOWN = 0
uint32 TUNNEL_BEGIN = 1
uint32 TUNNEL_END = 2
uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3
uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4
uint32 value

================================================================================
MSG: lane_navi_info_msgs/Polyline
lane_navi_info_msgs/Point[] points

================================================================================
MSG: lane_navi_info_msgs/Point
float64 x
float64 y
float64 z

================================================================================
MSG: lane_navi_info_msgs/RoadBoundaryInfo
landmark_msgs/RoadBoundaryTypeEnum type
float32 start_offset
float32 end_offset
lane_navi_info_msgs/Polyline polyline

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
MSG: landmark_msgs/RoadDirectionTypeEnum
uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0
uint8 ROAD_DIRECTION_TYPE_NONE = 1
uint8 ROAD_DIRECTION_TYPE_A_B = 2
uint8 ROAD_DIRECTION_TYPE_B_A = 3
uint8 ROAD_DIRECTION_TYPE_BOTH = 4
uint8 value

================================================================================
MSG: lane_navi_info_msgs/MultiDigitizedRoad
landmark_msgs/TrackId muliti_digitized_road_id
float32 start_offset
float32 end_offset

================================================================================
MSG: lane_navi_info_msgs/LaneGroupsOnRoad
landmark_msgs/TrackId lane_group_id
float32 start_offset
float32 end_offset

================================================================================
MSG: lane_navi_info_msgs/SDRoadInfo
uint16 f_angle
uint16 t_angle
bool has_toll
bool has_traffic_light
uint16 history_average_speed
lane_navi_info_msgs/SpeedLimit[] max_speed_limit_list
lane_navi_info_msgs/SpeedLimit[] derived_speed_limit_list
lane_navi_info_msgs/SDFacility[] facility_list
lane_navi_info_msgs/SDCameraInfo[] camera_list
lane_navi_info_msgs/SDArrowMarking[] arrow_marking_list
lane_navi_info_msgs/SDPointCurvature[] point_curvature_list
lane_navi_info_msgs/SDLongSolidLine[] long_solid_line_list
lane_navi_info_msgs/SDBusLaneInfo[] bus_lane_info_list
lane_navi_info_msgs/SDBackLaneInfo[] back_lane_list
lane_navi_info_msgs/SDFrontLaneInfo[] front_lane_list
lane_navi_info_msgs/SDCheckPoint[] check_point_list
lane_navi_info_msgs/SDOwnership ownership
uint16 region_code

================================================================================
MSG: lane_navi_info_msgs/SDFacility
float32 offset
lane_navi_info_msgs/SDFacilityType facility_type
lane_navi_info_msgs/SDSpeedLimitType speed_limit_type
uint16 speed_limit_value
lane_navi_info_msgs/TimeRegulationRange[] time_limit_list
lane_navi_info_msgs/WeatherRule weather_limit

================================================================================
MSG: lane_navi_info_msgs/SDFacilityType
uint8 FACILITY_LEFT_INTER_FLOW = 1
uint8 FACILITY_RIGHT_INTER_FLOW = 2
uint8 FACILITY_REVERSE_TURN = 4
uint8 FACILITY_LINKING_TURN = 5
uint8 FACILITY_ACCIDENT_AREA = 6
uint8 FACILITY_RAILWAY_CROSS = 8
uint8 FACILITY_SLIPPERY = 9
uint8 FACILITY_MAX_SPEED_LIMIT = 10
uint8 FACILITY_MIN_SPEED_LIMIT = 11
uint8 FACILITY_VILLAGE = 12
uint8 FACILITY_LEFT_NARROW = 13
uint8 FACILITY_RIGHT_NARROW = 14
uint8 FACILITY_DOUBLE_NARROW = 15
uint8 FACILITY_CROSS_WIND_AREA = 16
uint8 FACILITY_SCHOOL = 17
uint8 FACILITY_NOPASSING = 18
uint8 FACILITY_NARROW_BRIDGE = 19
uint8 FACILITY_AROUND_THE_LINE = 20
uint8 FACILITY_LEFT_BYPASS = 21
uint8 FACILITY_RIGHT_BYPASS = 22
uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23
uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24
uint8 FACILITY_ONSTEEPLOPE = 25
uint8 FACILITY_UNDERSTEEPLOPE = 26
uint8 FACILITY_OVER_WATER_ROAD = 27
uint8 FACILITY_UNEVEN_ROAD = 28
uint8 FACILITY_STROLL = 29
uint8 FACILITY_ATTENTION_TO_DANGER = 30
uint8 FACILITY_CROSSWALK = 31
uint8 FACILITY_RIVER_BANK_LEFT = 33
uint8 FACILITY_RIVER_BANK_RIGHT = 34
uint8 FACILITY_CHILDREN = 35
uint8 FACILITY_CYCLISTS = 36
uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37
uint8 FACILITY_GIVE_WAY = 38
uint8 FACILITY_STOP = 39
uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40
uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41
uint8 FACILITY_HUMPBACK_BRIDGE = 42
uint8 FACILITY_END_OF_SPEED_LIMIT = 43
uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44
uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50
uint8 FACILITY_RAILWAY_WITH_GATES = 51
uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52
uint8 FACILITY_VARIABLE_SPEED = 53
uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54
uint8 FACILITY_PEDESTRIANS = 56
uint8 FACILITY_UNKNOWN = 255
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDSpeedLimitType
uint8 SPEED_LIMIT_TYPE_DEFAULT = 0
uint8 SPEED_LIMIT_TYPE_RAMP = 2
uint8 type

================================================================================
MSG: lane_navi_info_msgs/TimeRegulationRange
lane_navi_info_msgs/TimeRegulation start_time
lane_navi_info_msgs/TimeRegulation end_time
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/TimeRegulation
lane_navi_info_msgs/TimeOfDay day
uint8 week
lane_navi_info_msgs/DayOfYear year

================================================================================
MSG: lane_navi_info_msgs/TimeOfDay
uint8 hours
uint8 minutes

================================================================================
MSG: lane_navi_info_msgs/DayOfYear
uint16 year
uint8 month
uint8 day

================================================================================
MSG: lane_navi_info_msgs/WeatherRule
lane_navi_info_msgs/WeatherRuleType[] weather_rule_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/WeatherRuleType
uint8 WEATHERTYPE_INVALID = 0
uint8 WEATHERTYPE_SUNSHINE = 1
uint8 WEATHERTYPE_RAINSNOW = 2
uint8 WEATHERTYPE_ICE = 3
uint8 WEATHERTYPE_FOG = 4
uint8 WEATHERTYPE_WIND = 5
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDCameraInfo
float32 offset
lane_navi_info_msgs/ECameraType ecamera_type
uint32 speed_limit_value

================================================================================
MSG: lane_navi_info_msgs/ECameraType
uint8 ECAMERA_SPEED = 0
uint8 ECAMERA_MONITOR = 1
uint8 ECAMERA_TRAFIC_LIGHT = 2
uint8 ECAMERA_RULE = 3
uint8 ECAMERA_BUS = 4
uint8 ECAMERA_EMERGENCY = 5
uint8 ECAMERA_NON_MOTORIZED = 6
uint8 ECAMERA_RANGE = 7
uint8 ECAMERA_INTER_SPEED_START = 8
uint8 ECAMERA_INTER_SPEED_END = 9
uint8 ECAMERA_UNKNOWN = 255
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDArrowMarking
uint8 ARROWMARKING_STRAIGHT = 0
uint8 ARROWMARKING_LEFT = 1
uint8 ARROWMARKING_STRAIGHT_LEFT = 2
uint8 ARROWMARKING_RIGHT = 3
uint8 ARROWMARKING_STRAIGHT_RIGHT = 4
uint8 ARROWMARKING_LEFT_UTURN = 5
uint8 ARROWMARKING_LEFT_RIGHT = 6
uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7
uint8 ARROWMARKING_RIGHT_UTURN = 8
uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9
uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10
uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11
uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12
uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16
uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17
uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18
uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19
uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20
uint8 ARROWMARKING_UNKNOWN = 255
uint8 value

================================================================================
MSG: lane_navi_info_msgs/SDPointCurvature
float32 offset
float32 value

================================================================================
MSG: lane_navi_info_msgs/SDLongSolidLine
landmark_msgs/TrackId[] effect_road_ids
uint32[] valid_lanes

================================================================================
MSG: lane_navi_info_msgs/SDBusLaneInfo
uint32 offset
uint8[] on_lanes
lane_navi_info_msgs/TimeRegulationRange[] time_limit_list
lane_navi_info_msgs/HolidayType holiday
lane_navi_info_msgs/WorkHolidayType work_holiday

================================================================================
MSG: lane_navi_info_msgs/HolidayType
uint8 HOLIDAYTYPE_NONE = 0
uint8 HOLIDAYTYPE_VALID = 1
uint8 HOLIDAYTYPE_EXCEPT = 2
uint8 type

================================================================================
MSG: lane_navi_info_msgs/WorkHolidayType
uint8 WORKHOLIDAYTYPE_NONE = 0
uint8 WORKHOLIDAYTYPE_VALID = 1
uint8 WORKHOLIDAYTYPE_INVALID = 2
uint8 WORKHOLIDAYTYPE_WEEKEND = 3
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDBackLaneInfo
int32 number
lane_navi_info_msgs/SDLaneDirectType lane_type
lane_navi_info_msgs/SDLaneArrow[] arrows

================================================================================
MSG: lane_navi_info_msgs/SDLaneDirectType
uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0
uint8 SD_LANE_DIRECT_TYPE_BUS = 1
uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2
uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3
uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDLaneArrow
lane_navi_info_msgs/SDArrowType[] arrow_types
lane_navi_info_msgs/TimeRegulationRange[] time
lane_navi_info_msgs/HolidayType holiday
lane_navi_info_msgs/WorkHolidayType work_holiday

================================================================================
MSG: lane_navi_info_msgs/SDArrowType
uint8 SD_ARROW_TYPE_LEFTUTURN = 0
uint8 SD_ARROW_TYPE_TURNLEFT = 1
uint8 SD_ARROW_TYPE_STRAIGHT = 2
uint8 SD_ARROW_TYPE_TURNRIGHT = 3
uint8 SD_ARROW_TYPE_RIGHTUTURN = 4
uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5
uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6
uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7
uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8
uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9
uint8 SD_ARROW_TYPE_EMPTY_LANE = 10
uint8 SD_ARROW_TYPE_INVALID = 255
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDFrontLaneInfo
landmark_msgs/TrackId to_road_id
lane_navi_info_msgs/SDFrontLane[] lanes

================================================================================
MSG: lane_navi_info_msgs/SDFrontLane
int32 number
lane_navi_info_msgs/SDLaneDirectType lane_type
lane_navi_info_msgs/SDLaneArrow[] arrows

================================================================================
MSG: lane_navi_info_msgs/SDCheckPoint
float32 offset

================================================================================
MSG: lane_navi_info_msgs/SDOwnership
uint8 OWNERSHIP_PUBLIC = 0
uint8 OWNERSHIP_INNER = 1
uint8 OWNERSHIP_PRIVATE = 2
uint8 OWNERSHIP_UNKNOWN = 255
uint8 value

")



(provide :lane_navi_info_msgs/Road "61ccbc70e285b1b12e534d69cc8daded")


