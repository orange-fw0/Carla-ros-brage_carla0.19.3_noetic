;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::Lane)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'Lane (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::LANE")
  (make-package "LANE_NAVI_INFO_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(intern "*LANE_TOPO_VALID*" (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(shadow '*LANE_TOPO_VALID* (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(defconstant lane_navi_info_msgs::Lane::*LANE_TOPO_VALID* 1)
(intern "*ON_ROUTE_OFFSET_VALID*" (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(shadow '*ON_ROUTE_OFFSET_VALID* (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(defconstant lane_navi_info_msgs::Lane::*ON_ROUTE_OFFSET_VALID* 2)
(intern "*LANE_TYPE_VALID*" (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(shadow '*LANE_TYPE_VALID* (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(defconstant lane_navi_info_msgs::Lane::*LANE_TYPE_VALID* 4)
(intern "*LANE_ATTRIBUTE_VALID*" (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(shadow '*LANE_ATTRIBUTE_VALID* (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(defconstant lane_navi_info_msgs::Lane::*LANE_ATTRIBUTE_VALID* 8)
(intern "*LANE_LEFT_BOUNDARY_VALID*" (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(shadow '*LANE_LEFT_BOUNDARY_VALID* (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(defconstant lane_navi_info_msgs::Lane::*LANE_LEFT_BOUNDARY_VALID* 16)
(intern "*LANE_RIGHT_BOUNDARY_VALID*" (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(shadow '*LANE_RIGHT_BOUNDARY_VALID* (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(defconstant lane_navi_info_msgs::Lane::*LANE_RIGHT_BOUNDARY_VALID* 32)
(intern "*LANE_WIDTH_VALID*" (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(shadow '*LANE_WIDTH_VALID* (find-package "LANE_NAVI_INFO_MSGS::LANE"))
(defconstant lane_navi_info_msgs::Lane::*LANE_WIDTH_VALID* 64)

(defun lane_navi_info_msgs::Lane-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::Lane::*LANE_TOPO_VALID*)
        ((= const 2) 'lane_navi_info_msgs::Lane::*ON_ROUTE_OFFSET_VALID*)
        ((= const 4) 'lane_navi_info_msgs::Lane::*LANE_TYPE_VALID*)
        ((= const 8) 'lane_navi_info_msgs::Lane::*LANE_ATTRIBUTE_VALID*)
        ((= const 16) 'lane_navi_info_msgs::Lane::*LANE_LEFT_BOUNDARY_VALID*)
        ((= const 32) 'lane_navi_info_msgs::Lane::*LANE_RIGHT_BOUNDARY_VALID*)
        ((= const 64) 'lane_navi_info_msgs::Lane::*LANE_WIDTH_VALID*)
        (t nil)))

(defclass lane_navi_info_msgs::Lane
  :super ros::object
  :slots (_available _lane_id _lane_types _lane_attrs _prev_lane_ids _next_lane_ids _on_route_offset _width _lb_left _lb_right _related_road_id _left_no_lane_change_zones _right_no_lane_change_zones _polyline _lane_limit_info_list ))

(defmethod lane_navi_info_msgs::Lane
  (:init
   (&key
    ((:available __available) 0)
    ((:lane_id __lane_id) (instance landmark_msgs::TrackId :init))
    ((:lane_types __lane_types) ())
    ((:lane_attrs __lane_attrs) ())
    ((:prev_lane_ids __prev_lane_ids) ())
    ((:next_lane_ids __next_lane_ids) ())
    ((:on_route_offset __on_route_offset) 0.0)
    ((:width __width) 0.0)
    ((:lb_left __lb_left) ())
    ((:lb_right __lb_right) ())
    ((:related_road_id __related_road_id) ())
    ((:left_no_lane_change_zones __left_no_lane_change_zones) ())
    ((:right_no_lane_change_zones __right_no_lane_change_zones) ())
    ((:polyline __polyline) (instance lane_navi_info_msgs::Polyline :init))
    ((:lane_limit_info_list __lane_limit_info_list) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _lane_id __lane_id)
   (setq _lane_types __lane_types)
   (setq _lane_attrs __lane_attrs)
   (setq _prev_lane_ids __prev_lane_ids)
   (setq _next_lane_ids __next_lane_ids)
   (setq _on_route_offset (float __on_route_offset))
   (setq _width (float __width))
   (setq _lb_left __lb_left)
   (setq _lb_right __lb_right)
   (setq _related_road_id __related_road_id)
   (setq _left_no_lane_change_zones __left_no_lane_change_zones)
   (setq _right_no_lane_change_zones __right_no_lane_change_zones)
   (setq _polyline __polyline)
   (setq _lane_limit_info_list __lane_limit_info_list)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:lane_id
   (&rest __lane_id)
   (if (keywordp (car __lane_id))
       (send* _lane_id __lane_id)
     (progn
       (if __lane_id (setq _lane_id (car __lane_id)))
       _lane_id)))
  (:lane_types
   (&rest __lane_types)
   (if (keywordp (car __lane_types))
       (send* _lane_types __lane_types)
     (progn
       (if __lane_types (setq _lane_types (car __lane_types)))
       _lane_types)))
  (:lane_attrs
   (&rest __lane_attrs)
   (if (keywordp (car __lane_attrs))
       (send* _lane_attrs __lane_attrs)
     (progn
       (if __lane_attrs (setq _lane_attrs (car __lane_attrs)))
       _lane_attrs)))
  (:prev_lane_ids
   (&rest __prev_lane_ids)
   (if (keywordp (car __prev_lane_ids))
       (send* _prev_lane_ids __prev_lane_ids)
     (progn
       (if __prev_lane_ids (setq _prev_lane_ids (car __prev_lane_ids)))
       _prev_lane_ids)))
  (:next_lane_ids
   (&rest __next_lane_ids)
   (if (keywordp (car __next_lane_ids))
       (send* _next_lane_ids __next_lane_ids)
     (progn
       (if __next_lane_ids (setq _next_lane_ids (car __next_lane_ids)))
       _next_lane_ids)))
  (:on_route_offset
   (&optional __on_route_offset)
   (if __on_route_offset (setq _on_route_offset __on_route_offset)) _on_route_offset)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:lb_left
   (&rest __lb_left)
   (if (keywordp (car __lb_left))
       (send* _lb_left __lb_left)
     (progn
       (if __lb_left (setq _lb_left (car __lb_left)))
       _lb_left)))
  (:lb_right
   (&rest __lb_right)
   (if (keywordp (car __lb_right))
       (send* _lb_right __lb_right)
     (progn
       (if __lb_right (setq _lb_right (car __lb_right)))
       _lb_right)))
  (:related_road_id
   (&rest __related_road_id)
   (if (keywordp (car __related_road_id))
       (send* _related_road_id __related_road_id)
     (progn
       (if __related_road_id (setq _related_road_id (car __related_road_id)))
       _related_road_id)))
  (:left_no_lane_change_zones
   (&rest __left_no_lane_change_zones)
   (if (keywordp (car __left_no_lane_change_zones))
       (send* _left_no_lane_change_zones __left_no_lane_change_zones)
     (progn
       (if __left_no_lane_change_zones (setq _left_no_lane_change_zones (car __left_no_lane_change_zones)))
       _left_no_lane_change_zones)))
  (:right_no_lane_change_zones
   (&rest __right_no_lane_change_zones)
   (if (keywordp (car __right_no_lane_change_zones))
       (send* _right_no_lane_change_zones __right_no_lane_change_zones)
     (progn
       (if __right_no_lane_change_zones (setq _right_no_lane_change_zones (car __right_no_lane_change_zones)))
       _right_no_lane_change_zones)))
  (:polyline
   (&rest __polyline)
   (if (keywordp (car __polyline))
       (send* _polyline __polyline)
     (progn
       (if __polyline (setq _polyline (car __polyline)))
       _polyline)))
  (:lane_limit_info_list
   (&rest __lane_limit_info_list)
   (if (keywordp (car __lane_limit_info_list))
       (send* _lane_limit_info_list __lane_limit_info_list)
     (progn
       (if __lane_limit_info_list (setq _lane_limit_info_list (car __lane_limit_info_list)))
       _lane_limit_info_list)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; landmark_msgs/TrackId _lane_id
    (send _lane_id :serialization-length)
    ;; landmark_msgs/LaneCenterNodeLaneTypeEnum[] _lane_types
    (apply #'+ (send-all _lane_types :serialization-length)) 4
    ;; lane_navi_info_msgs/LaneAttribute[] _lane_attrs
    (apply #'+ (send-all _lane_attrs :serialization-length)) 4
    ;; lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] _prev_lane_ids
    (apply #'+ (send-all _prev_lane_ids :serialization-length)) 4
    ;; lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] _next_lane_ids
    (apply #'+ (send-all _next_lane_ids :serialization-length)) 4
    ;; float32 _on_route_offset
    4
    ;; float32 _width
    4
    ;; lane_navi_info_msgs/LaneBoundaryInfo[] _lb_left
    (apply #'+ (send-all _lb_left :serialization-length)) 4
    ;; lane_navi_info_msgs/LaneBoundaryInfo[] _lb_right
    (apply #'+ (send-all _lb_right :serialization-length)) 4
    ;; landmark_msgs/TrackId[] _related_road_id
    (apply #'+ (send-all _related_road_id :serialization-length)) 4
    ;; landmark_msgs/NoLaneChangeZone[] _left_no_lane_change_zones
    (apply #'+ (send-all _left_no_lane_change_zones :serialization-length)) 4
    ;; landmark_msgs/NoLaneChangeZone[] _right_no_lane_change_zones
    (apply #'+ (send-all _right_no_lane_change_zones :serialization-length)) 4
    ;; lane_navi_info_msgs/Polyline _polyline
    (send _polyline :serialization-length)
    ;; lane_navi_info_msgs/LaneLimitInfo[] _lane_limit_info_list
    (apply #'+ (send-all _lane_limit_info_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; landmark_msgs/TrackId _lane_id
       (send _lane_id :serialize s)
     ;; landmark_msgs/LaneCenterNodeLaneTypeEnum[] _lane_types
     (write-long (length _lane_types) s)
     (dolist (elem _lane_types)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/LaneAttribute[] _lane_attrs
     (write-long (length _lane_attrs) s)
     (dolist (elem _lane_attrs)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] _prev_lane_ids
     (write-long (length _prev_lane_ids) s)
     (dolist (elem _prev_lane_ids)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] _next_lane_ids
     (write-long (length _next_lane_ids) s)
     (dolist (elem _next_lane_ids)
       (send elem :serialize s)
       )
     ;; float32 _on_route_offset
       (sys::poke _on_route_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; lane_navi_info_msgs/LaneBoundaryInfo[] _lb_left
     (write-long (length _lb_left) s)
     (dolist (elem _lb_left)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/LaneBoundaryInfo[] _lb_right
     (write-long (length _lb_right) s)
     (dolist (elem _lb_right)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrackId[] _related_road_id
     (write-long (length _related_road_id) s)
     (dolist (elem _related_road_id)
       (send elem :serialize s)
       )
     ;; landmark_msgs/NoLaneChangeZone[] _left_no_lane_change_zones
     (write-long (length _left_no_lane_change_zones) s)
     (dolist (elem _left_no_lane_change_zones)
       (send elem :serialize s)
       )
     ;; landmark_msgs/NoLaneChangeZone[] _right_no_lane_change_zones
     (write-long (length _right_no_lane_change_zones) s)
     (dolist (elem _right_no_lane_change_zones)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/Polyline _polyline
       (send _polyline :serialize s)
     ;; lane_navi_info_msgs/LaneLimitInfo[] _lane_limit_info_list
     (write-long (length _lane_limit_info_list) s)
     (dolist (elem _lane_limit_info_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; landmark_msgs/TrackId _lane_id
     (send _lane_id :deserialize buf ptr-) (incf ptr- (send _lane_id :serialization-length))
   ;; landmark_msgs/LaneCenterNodeLaneTypeEnum[] _lane_types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_types (let (r) (dotimes (i n) (push (instance landmark_msgs::LaneCenterNodeLaneTypeEnum :init) r)) r))
     (dolist (elem- _lane_types)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/LaneAttribute[] _lane_attrs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_attrs (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::LaneAttribute :init) r)) r))
     (dolist (elem- _lane_attrs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] _prev_lane_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prev_lane_ids (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::LinkedLaneWithSplitMergeInfo :init) r)) r))
     (dolist (elem- _prev_lane_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] _next_lane_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _next_lane_ids (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::LinkedLaneWithSplitMergeInfo :init) r)) r))
     (dolist (elem- _next_lane_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _on_route_offset
     (setq _on_route_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; lane_navi_info_msgs/LaneBoundaryInfo[] _lb_left
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lb_left (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::LaneBoundaryInfo :init) r)) r))
     (dolist (elem- _lb_left)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/LaneBoundaryInfo[] _lb_right
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lb_right (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::LaneBoundaryInfo :init) r)) r))
     (dolist (elem- _lb_right)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrackId[] _related_road_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _related_road_id (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _related_road_id)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/NoLaneChangeZone[] _left_no_lane_change_zones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_no_lane_change_zones (let (r) (dotimes (i n) (push (instance landmark_msgs::NoLaneChangeZone :init) r)) r))
     (dolist (elem- _left_no_lane_change_zones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/NoLaneChangeZone[] _right_no_lane_change_zones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_no_lane_change_zones (let (r) (dotimes (i n) (push (instance landmark_msgs::NoLaneChangeZone :init) r)) r))
     (dolist (elem- _right_no_lane_change_zones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/Polyline _polyline
     (send _polyline :deserialize buf ptr-) (incf ptr- (send _polyline :serialization-length))
   ;; lane_navi_info_msgs/LaneLimitInfo[] _lane_limit_info_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_limit_info_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::LaneLimitInfo :init) r)) r))
     (dolist (elem- _lane_limit_info_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::Lane :md5sum-) "d05a29a7ac14a18b56d5fb12295f2ee7")
(setf (get lane_navi_info_msgs::Lane :datatype-) "lane_navi_info_msgs/Lane")
(setf (get lane_navi_info_msgs::Lane :definition-)
      "uint8 LANE_TOPO_VALID = 1
uint8 ON_ROUTE_OFFSET_VALID = 2
uint8 LANE_TYPE_VALID = 4
uint8 LANE_ATTRIBUTE_VALID = 8
uint8 LANE_LEFT_BOUNDARY_VALID = 16
uint8 LANE_RIGHT_BOUNDARY_VALID = 32
uint8 LANE_WIDTH_VALID = 64
uint8 available
landmark_msgs/TrackId lane_id
landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types
lane_navi_info_msgs/LaneAttribute[] lane_attrs
lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] prev_lane_ids
lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] next_lane_ids
float32 on_route_offset
float32 width
lane_navi_info_msgs/LaneBoundaryInfo[] lb_left
lane_navi_info_msgs/LaneBoundaryInfo[] lb_right
landmark_msgs/TrackId[] related_road_id
landmark_msgs/NoLaneChangeZone[] left_no_lane_change_zones
landmark_msgs/NoLaneChangeZone[] right_no_lane_change_zones
lane_navi_info_msgs/Polyline polyline
lane_navi_info_msgs/LaneLimitInfo[] lane_limit_info_list

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
MSG: lane_navi_info_msgs/LaneAttribute
uint8 LANE_DIRECTION_VALID = 1
uint8 START_OFFSET_VALID = 2
uint8 END_OFFSET_VALID = 4
uint8 available
landmark_msgs/LaneCenterNodeDirectionTypeEnum lane_direction
float32 start_offset
float32 end_offset

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
MSG: lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo
landmark_msgs/TrackId lane_id
lane_navi_info_msgs/SplitMergeInfo split_merge_info

================================================================================
MSG: lane_navi_info_msgs/SplitMergeInfo
uint8 NONE = 0
uint8 SPLIT = 1
uint8 MERGE = 2
uint8 CONTINUE = 3
uint8 value

================================================================================
MSG: lane_navi_info_msgs/LaneBoundaryInfo
landmark_msgs/LaneBoundaryTypeEnum type
float32 start_offset
float32 end_offset
lane_navi_info_msgs/Polyline polyline

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
MSG: lane_navi_info_msgs/Polyline
lane_navi_info_msgs/Point[] points

================================================================================
MSG: lane_navi_info_msgs/Point
float64 x
float64 y
float64 z

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
MSG: lane_navi_info_msgs/LaneLimitInfo
lane_navi_info_msgs/DayOfYear[] day_of_year_list
lane_navi_info_msgs/DaysOfWeek[] day_of_week_list
lane_navi_info_msgs/TimeRangeOfDay[] time_range_list
lane_navi_info_msgs/Holiday[] holiday_list
lane_navi_info_msgs/VehicleType[] vehicle_type_list

================================================================================
MSG: lane_navi_info_msgs/DayOfYear
uint16 year
uint8 month
uint8 day

================================================================================
MSG: lane_navi_info_msgs/DaysOfWeek
lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/DaysOfWeekType
uint8 DAYSOFWEEKTYPE_INVALID = 0
uint8 DAYSOFWEEKTYPE_SUNDAY = 1
uint8 DAYSOFWEEKTYPE_MONDAY = 2
uint8 DAYSOFWEEKTYPE_TUESDAY = 3
uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4
uint8 DAYSOFWEEKTYPE_THURSDAY = 5
uint8 DAYSOFWEEKTYPE_FRIDAY = 6
uint8 DAYSOFWEEKTYPE_SATURDAY = 7
uint8 type

================================================================================
MSG: lane_navi_info_msgs/TimeRangeOfDay
lane_navi_info_msgs/TimeOfDay start_time
lane_navi_info_msgs/TimeOfDay end_time
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/TimeOfDay
uint8 hours
uint8 minutes

================================================================================
MSG: lane_navi_info_msgs/Holiday
lane_navi_info_msgs/HolidayType holiday_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/HolidayType
uint8 HOLIDAYTYPE_NONE = 0
uint8 HOLIDAYTYPE_VALID = 1
uint8 HOLIDAYTYPE_EXCEPT = 2
uint8 type

================================================================================
MSG: lane_navi_info_msgs/VehicleType
uint8 RESTRICTION_VEHICLE_ALL = 0
uint8 RESTRICTION_VEHICLE_MOTOR = 1
uint8 RESTRICTION_VEHICLE_CAR = 2
uint8 RESTRICTION_VEHICLE_BUS = 3
uint8 RESTRICTION_VEHICLE_HOV = 4
uint8 RESTRICTION_VEHICLE_UNKNOWN = 255
uint8 type

")



(provide :lane_navi_info_msgs/Lane "d05a29a7ac14a18b56d5fb12295f2ee7")


