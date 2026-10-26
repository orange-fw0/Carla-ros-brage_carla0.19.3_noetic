;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LandmarkNodes)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LandmarkNodes (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANDMARKNODES")
  (make-package "LANDMARK_MSGS::LANDMARKNODES"))

(in-package "ROS")
;;//! \htmlinclude LandmarkNodes.msg.html


(intern "*AVAILABLE_LANDMARK_NODE_LANE_CENTER*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_LANE_CENTER* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_LANE_CENTER* 1)
(intern "*AVAILABLE_LANDMARK_NODE_LANE_BOUNDARY*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_LANE_BOUNDARY* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_LANE_BOUNDARY* 2)
(intern "*AVAILABLE_LANDMARK_NODE_ROAD_BOUNDARY*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_ROAD_BOUNDARY* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD_BOUNDARY* 4)
(intern "*AVAILABLE_LANDMARK_NODE_ROAD*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_ROAD* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD* 8)
(intern "*AVAILABLE_LANDMARK_NODE_STOP_LINE*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_STOP_LINE* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_STOP_LINE* 16)
(intern "*AVAILABLE_LANDMARK_NODE_CROSS_WALK*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_CROSS_WALK* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_CROSS_WALK* 32)
(intern "*AVAILABLE_LANDMARK_NODE_VALID_ROI*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_VALID_ROI* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_VALID_ROI* 64)
(intern "*AVAILABLE_LANDMARK_NODE_ROAD_MARK*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_ROAD_MARK* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD_MARK* 128)
(intern "*AVAILABLE_LANDMARK_NODE_AOI*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_AOI* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_AOI* 256)
(intern "*AVAILABLE_LANDMARK_NODE_SPEED_BUMP*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_SPEED_BUMP* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_SPEED_BUMP* 512)
(intern "*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN* 1024)
(intern "*AVAILABLE_LANDMARK_NODE_POLE*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_POLE* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_POLE* 2048)
(intern "*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT* 4096)
(intern "*AVAILABLE_LANDMARK_NODE_DASH_LINE_END*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_DASH_LINE_END* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_DASH_LINE_END* 8192)
(intern "*AVAILABLE_LANDMARK_NODE_ROAD_ENTRY_LINE*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_ROAD_ENTRY_LINE* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD_ENTRY_LINE* 16384)
(intern "*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_GUIDE_ARROW*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_GUIDE_ARROW* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_GUIDE_ARROW* 32768)
(intern "*AVAILABLE_LANDMARK_NODE_NO_PARKING_ZONE*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_NO_PARKING_ZONE* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_NO_PARKING_ZONE* 65536)
(intern "*AVAILABLE_LANDMARK_NODE_PARKING_SPACE*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_PARKING_SPACE* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_PARKING_SPACE* 131072)
(intern "*AVAILABLE_LANDMARK_NODE_ROAD_OBSTACLE*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_ROAD_OBSTACLE* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD_OBSTACLE* 262144)
(intern "*AVAILABLE_LANDMARK_NODE_PARKING_FACILITY*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_PARKING_FACILITY* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_PARKING_FACILITY* 524288)
(intern "*AVAILABLE_LANDMARK_NODE_ROAD_SURFACE*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_ROAD_SURFACE* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD_SURFACE* 1048576)
(intern "*AVAILABLE_LANDMARK_NODE_INTERSECTION_GUIDE_LINE*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_INTERSECTION_GUIDE_LINE* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_INTERSECTION_GUIDE_LINE* 2097152)
(intern "*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_SINGLE_FRAME_2D_INFO*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_SINGLE_FRAME_2D_INFO* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_SINGLE_FRAME_2D_INFO* 4194304)
(intern "*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_SINGLE_FRAME_2D_INFO*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_SINGLE_FRAME_2D_INFO* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_SINGLE_FRAME_2D_INFO* 8388608)
(intern "*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_DECISIONS*" (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(shadow '*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_DECISIONS* (find-package "LANDMARK_MSGS::LANDMARKNODES"))
(defconstant landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_DECISIONS* 16777216)

(defun landmark_msgs::LandmarkNodes-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_LANE_CENTER*)
        ((= const 2) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_LANE_BOUNDARY*)
        ((= const 4) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD_BOUNDARY*)
        ((= const 8) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD*)
        ((= const 16) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_STOP_LINE*)
        ((= const 32) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_CROSS_WALK*)
        ((= const 64) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_VALID_ROI*)
        ((= const 128) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD_MARK*)
        ((= const 256) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_AOI*)
        ((= const 512) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_SPEED_BUMP*)
        ((= const 1024) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN*)
        ((= const 2048) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_POLE*)
        ((= const 4096) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT*)
        ((= const 8192) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_DASH_LINE_END*)
        ((= const 16384) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD_ENTRY_LINE*)
        ((= const 32768) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_GUIDE_ARROW*)
        ((= const 65536) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_NO_PARKING_ZONE*)
        ((= const 131072) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_PARKING_SPACE*)
        ((= const 262144) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD_OBSTACLE*)
        ((= const 524288) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_PARKING_FACILITY*)
        ((= const 1048576) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_ROAD_SURFACE*)
        ((= const 2097152) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_INTERSECTION_GUIDE_LINE*)
        ((= const 4194304) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_SINGLE_FRAME_2D_INFO*)
        ((= const 8388608) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_SIGN_SINGLE_FRAME_2D_INFO*)
        ((= const 16777216) 'landmark_msgs::LandmarkNodes::*AVAILABLE_LANDMARK_NODE_TRAFFIC_LIGHT_DECISIONS*)
        (t nil)))

(defclass landmark_msgs::LandmarkNodes
  :super ros::object
  :slots (_lane_centers _lane_boundaries _road_boundaries _road _stop_lines _cross_walks _valid_rois _road_marks _aois _speed_bumps _traffic_signs _poles _traffic_lights _dash_line_ends _road_entry_line_nodes _traffic_sign_guide_arrow_nodes _no_parking_zone_nodes _parking_space_nodes _road_obstacle_nodes _parking_facility_nodes _road_surface_node _intersection_guide_lines _traffic_light_single_frame_2d_info _traffic_sign_single_frame_2d_info _traffic_light_decisions _available ))

(defmethod landmark_msgs::LandmarkNodes
  (:init
   (&key
    ((:lane_centers __lane_centers) ())
    ((:lane_boundaries __lane_boundaries) ())
    ((:road_boundaries __road_boundaries) ())
    ((:road __road) ())
    ((:stop_lines __stop_lines) ())
    ((:cross_walks __cross_walks) ())
    ((:valid_rois __valid_rois) ())
    ((:road_marks __road_marks) ())
    ((:aois __aois) ())
    ((:speed_bumps __speed_bumps) ())
    ((:traffic_signs __traffic_signs) ())
    ((:poles __poles) ())
    ((:traffic_lights __traffic_lights) ())
    ((:dash_line_ends __dash_line_ends) ())
    ((:road_entry_line_nodes __road_entry_line_nodes) ())
    ((:traffic_sign_guide_arrow_nodes __traffic_sign_guide_arrow_nodes) ())
    ((:no_parking_zone_nodes __no_parking_zone_nodes) ())
    ((:parking_space_nodes __parking_space_nodes) ())
    ((:road_obstacle_nodes __road_obstacle_nodes) ())
    ((:parking_facility_nodes __parking_facility_nodes) ())
    ((:road_surface_node __road_surface_node) ())
    ((:intersection_guide_lines __intersection_guide_lines) ())
    ((:traffic_light_single_frame_2d_info __traffic_light_single_frame_2d_info) ())
    ((:traffic_sign_single_frame_2d_info __traffic_sign_single_frame_2d_info) ())
    ((:traffic_light_decisions __traffic_light_decisions) ())
    ((:available __available) 0)
    )
   (send-super :init)
   (setq _lane_centers __lane_centers)
   (setq _lane_boundaries __lane_boundaries)
   (setq _road_boundaries __road_boundaries)
   (setq _road __road)
   (setq _stop_lines __stop_lines)
   (setq _cross_walks __cross_walks)
   (setq _valid_rois __valid_rois)
   (setq _road_marks __road_marks)
   (setq _aois __aois)
   (setq _speed_bumps __speed_bumps)
   (setq _traffic_signs __traffic_signs)
   (setq _poles __poles)
   (setq _traffic_lights __traffic_lights)
   (setq _dash_line_ends __dash_line_ends)
   (setq _road_entry_line_nodes __road_entry_line_nodes)
   (setq _traffic_sign_guide_arrow_nodes __traffic_sign_guide_arrow_nodes)
   (setq _no_parking_zone_nodes __no_parking_zone_nodes)
   (setq _parking_space_nodes __parking_space_nodes)
   (setq _road_obstacle_nodes __road_obstacle_nodes)
   (setq _parking_facility_nodes __parking_facility_nodes)
   (setq _road_surface_node __road_surface_node)
   (setq _intersection_guide_lines __intersection_guide_lines)
   (setq _traffic_light_single_frame_2d_info __traffic_light_single_frame_2d_info)
   (setq _traffic_sign_single_frame_2d_info __traffic_sign_single_frame_2d_info)
   (setq _traffic_light_decisions __traffic_light_decisions)
   (setq _available (round __available))
   self)
  (:lane_centers
   (&rest __lane_centers)
   (if (keywordp (car __lane_centers))
       (send* _lane_centers __lane_centers)
     (progn
       (if __lane_centers (setq _lane_centers (car __lane_centers)))
       _lane_centers)))
  (:lane_boundaries
   (&rest __lane_boundaries)
   (if (keywordp (car __lane_boundaries))
       (send* _lane_boundaries __lane_boundaries)
     (progn
       (if __lane_boundaries (setq _lane_boundaries (car __lane_boundaries)))
       _lane_boundaries)))
  (:road_boundaries
   (&rest __road_boundaries)
   (if (keywordp (car __road_boundaries))
       (send* _road_boundaries __road_boundaries)
     (progn
       (if __road_boundaries (setq _road_boundaries (car __road_boundaries)))
       _road_boundaries)))
  (:road
   (&rest __road)
   (if (keywordp (car __road))
       (send* _road __road)
     (progn
       (if __road (setq _road (car __road)))
       _road)))
  (:stop_lines
   (&rest __stop_lines)
   (if (keywordp (car __stop_lines))
       (send* _stop_lines __stop_lines)
     (progn
       (if __stop_lines (setq _stop_lines (car __stop_lines)))
       _stop_lines)))
  (:cross_walks
   (&rest __cross_walks)
   (if (keywordp (car __cross_walks))
       (send* _cross_walks __cross_walks)
     (progn
       (if __cross_walks (setq _cross_walks (car __cross_walks)))
       _cross_walks)))
  (:valid_rois
   (&rest __valid_rois)
   (if (keywordp (car __valid_rois))
       (send* _valid_rois __valid_rois)
     (progn
       (if __valid_rois (setq _valid_rois (car __valid_rois)))
       _valid_rois)))
  (:road_marks
   (&rest __road_marks)
   (if (keywordp (car __road_marks))
       (send* _road_marks __road_marks)
     (progn
       (if __road_marks (setq _road_marks (car __road_marks)))
       _road_marks)))
  (:aois
   (&rest __aois)
   (if (keywordp (car __aois))
       (send* _aois __aois)
     (progn
       (if __aois (setq _aois (car __aois)))
       _aois)))
  (:speed_bumps
   (&rest __speed_bumps)
   (if (keywordp (car __speed_bumps))
       (send* _speed_bumps __speed_bumps)
     (progn
       (if __speed_bumps (setq _speed_bumps (car __speed_bumps)))
       _speed_bumps)))
  (:traffic_signs
   (&rest __traffic_signs)
   (if (keywordp (car __traffic_signs))
       (send* _traffic_signs __traffic_signs)
     (progn
       (if __traffic_signs (setq _traffic_signs (car __traffic_signs)))
       _traffic_signs)))
  (:poles
   (&rest __poles)
   (if (keywordp (car __poles))
       (send* _poles __poles)
     (progn
       (if __poles (setq _poles (car __poles)))
       _poles)))
  (:traffic_lights
   (&rest __traffic_lights)
   (if (keywordp (car __traffic_lights))
       (send* _traffic_lights __traffic_lights)
     (progn
       (if __traffic_lights (setq _traffic_lights (car __traffic_lights)))
       _traffic_lights)))
  (:dash_line_ends
   (&rest __dash_line_ends)
   (if (keywordp (car __dash_line_ends))
       (send* _dash_line_ends __dash_line_ends)
     (progn
       (if __dash_line_ends (setq _dash_line_ends (car __dash_line_ends)))
       _dash_line_ends)))
  (:road_entry_line_nodes
   (&rest __road_entry_line_nodes)
   (if (keywordp (car __road_entry_line_nodes))
       (send* _road_entry_line_nodes __road_entry_line_nodes)
     (progn
       (if __road_entry_line_nodes (setq _road_entry_line_nodes (car __road_entry_line_nodes)))
       _road_entry_line_nodes)))
  (:traffic_sign_guide_arrow_nodes
   (&rest __traffic_sign_guide_arrow_nodes)
   (if (keywordp (car __traffic_sign_guide_arrow_nodes))
       (send* _traffic_sign_guide_arrow_nodes __traffic_sign_guide_arrow_nodes)
     (progn
       (if __traffic_sign_guide_arrow_nodes (setq _traffic_sign_guide_arrow_nodes (car __traffic_sign_guide_arrow_nodes)))
       _traffic_sign_guide_arrow_nodes)))
  (:no_parking_zone_nodes
   (&rest __no_parking_zone_nodes)
   (if (keywordp (car __no_parking_zone_nodes))
       (send* _no_parking_zone_nodes __no_parking_zone_nodes)
     (progn
       (if __no_parking_zone_nodes (setq _no_parking_zone_nodes (car __no_parking_zone_nodes)))
       _no_parking_zone_nodes)))
  (:parking_space_nodes
   (&rest __parking_space_nodes)
   (if (keywordp (car __parking_space_nodes))
       (send* _parking_space_nodes __parking_space_nodes)
     (progn
       (if __parking_space_nodes (setq _parking_space_nodes (car __parking_space_nodes)))
       _parking_space_nodes)))
  (:road_obstacle_nodes
   (&rest __road_obstacle_nodes)
   (if (keywordp (car __road_obstacle_nodes))
       (send* _road_obstacle_nodes __road_obstacle_nodes)
     (progn
       (if __road_obstacle_nodes (setq _road_obstacle_nodes (car __road_obstacle_nodes)))
       _road_obstacle_nodes)))
  (:parking_facility_nodes
   (&rest __parking_facility_nodes)
   (if (keywordp (car __parking_facility_nodes))
       (send* _parking_facility_nodes __parking_facility_nodes)
     (progn
       (if __parking_facility_nodes (setq _parking_facility_nodes (car __parking_facility_nodes)))
       _parking_facility_nodes)))
  (:road_surface_node
   (&rest __road_surface_node)
   (if (keywordp (car __road_surface_node))
       (send* _road_surface_node __road_surface_node)
     (progn
       (if __road_surface_node (setq _road_surface_node (car __road_surface_node)))
       _road_surface_node)))
  (:intersection_guide_lines
   (&rest __intersection_guide_lines)
   (if (keywordp (car __intersection_guide_lines))
       (send* _intersection_guide_lines __intersection_guide_lines)
     (progn
       (if __intersection_guide_lines (setq _intersection_guide_lines (car __intersection_guide_lines)))
       _intersection_guide_lines)))
  (:traffic_light_single_frame_2d_info
   (&rest __traffic_light_single_frame_2d_info)
   (if (keywordp (car __traffic_light_single_frame_2d_info))
       (send* _traffic_light_single_frame_2d_info __traffic_light_single_frame_2d_info)
     (progn
       (if __traffic_light_single_frame_2d_info (setq _traffic_light_single_frame_2d_info (car __traffic_light_single_frame_2d_info)))
       _traffic_light_single_frame_2d_info)))
  (:traffic_sign_single_frame_2d_info
   (&rest __traffic_sign_single_frame_2d_info)
   (if (keywordp (car __traffic_sign_single_frame_2d_info))
       (send* _traffic_sign_single_frame_2d_info __traffic_sign_single_frame_2d_info)
     (progn
       (if __traffic_sign_single_frame_2d_info (setq _traffic_sign_single_frame_2d_info (car __traffic_sign_single_frame_2d_info)))
       _traffic_sign_single_frame_2d_info)))
  (:traffic_light_decisions
   (&rest __traffic_light_decisions)
   (if (keywordp (car __traffic_light_decisions))
       (send* _traffic_light_decisions __traffic_light_decisions)
     (progn
       (if __traffic_light_decisions (setq _traffic_light_decisions (car __traffic_light_decisions)))
       _traffic_light_decisions)))
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/LaneCenterNode[] _lane_centers
    (apply #'+ (send-all _lane_centers :serialization-length)) 4
    ;; landmark_msgs/LaneBoundaryNode[] _lane_boundaries
    (apply #'+ (send-all _lane_boundaries :serialization-length)) 4
    ;; landmark_msgs/RoadBoundaryNode[] _road_boundaries
    (apply #'+ (send-all _road_boundaries :serialization-length)) 4
    ;; landmark_msgs/RoadNode[] _road
    (apply #'+ (send-all _road :serialization-length)) 4
    ;; landmark_msgs/StopLineNode[] _stop_lines
    (apply #'+ (send-all _stop_lines :serialization-length)) 4
    ;; landmark_msgs/CrossWalkNode[] _cross_walks
    (apply #'+ (send-all _cross_walks :serialization-length)) 4
    ;; landmark_msgs/ValidRoiNode[] _valid_rois
    (apply #'+ (send-all _valid_rois :serialization-length)) 4
    ;; landmark_msgs/RoadMarkNode[] _road_marks
    (apply #'+ (send-all _road_marks :serialization-length)) 4
    ;; landmark_msgs/AoiNode[] _aois
    (apply #'+ (send-all _aois :serialization-length)) 4
    ;; landmark_msgs/SpeedBumpNode[] _speed_bumps
    (apply #'+ (send-all _speed_bumps :serialization-length)) 4
    ;; landmark_msgs/TrafficSignNode[] _traffic_signs
    (apply #'+ (send-all _traffic_signs :serialization-length)) 4
    ;; landmark_msgs/PoleNode[] _poles
    (apply #'+ (send-all _poles :serialization-length)) 4
    ;; landmark_msgs/TrafficLightNode[] _traffic_lights
    (apply #'+ (send-all _traffic_lights :serialization-length)) 4
    ;; landmark_msgs/DashLineEndNode[] _dash_line_ends
    (apply #'+ (send-all _dash_line_ends :serialization-length)) 4
    ;; landmark_msgs/RoadEntryLineNode[] _road_entry_line_nodes
    (apply #'+ (send-all _road_entry_line_nodes :serialization-length)) 4
    ;; landmark_msgs/TrafficSignGuideArrowNode[] _traffic_sign_guide_arrow_nodes
    (apply #'+ (send-all _traffic_sign_guide_arrow_nodes :serialization-length)) 4
    ;; landmark_msgs/NoParkingZoneNode[] _no_parking_zone_nodes
    (apply #'+ (send-all _no_parking_zone_nodes :serialization-length)) 4
    ;; landmark_msgs/ParkingSpaceNode[] _parking_space_nodes
    (apply #'+ (send-all _parking_space_nodes :serialization-length)) 4
    ;; landmark_msgs/RoadObstacleNode[] _road_obstacle_nodes
    (apply #'+ (send-all _road_obstacle_nodes :serialization-length)) 4
    ;; landmark_msgs/ParkingFacility[] _parking_facility_nodes
    (apply #'+ (send-all _parking_facility_nodes :serialization-length)) 4
    ;; landmark_msgs/RoadSurfaceNode[] _road_surface_node
    (apply #'+ (send-all _road_surface_node :serialization-length)) 4
    ;; landmark_msgs/IntersectionGuideLineNode[] _intersection_guide_lines
    (apply #'+ (send-all _intersection_guide_lines :serialization-length)) 4
    ;; landmark_msgs/TrafficLightSingleFrame2dInfo[] _traffic_light_single_frame_2d_info
    (apply #'+ (send-all _traffic_light_single_frame_2d_info :serialization-length)) 4
    ;; landmark_msgs/TrafficSignSingleFrame2dInfo[] _traffic_sign_single_frame_2d_info
    (apply #'+ (send-all _traffic_sign_single_frame_2d_info :serialization-length)) 4
    ;; landmark_msgs/TrafficLightDecision[] _traffic_light_decisions
    (apply #'+ (send-all _traffic_light_decisions :serialization-length)) 4
    ;; uint64 _available
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/LaneCenterNode[] _lane_centers
     (write-long (length _lane_centers) s)
     (dolist (elem _lane_centers)
       (send elem :serialize s)
       )
     ;; landmark_msgs/LaneBoundaryNode[] _lane_boundaries
     (write-long (length _lane_boundaries) s)
     (dolist (elem _lane_boundaries)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RoadBoundaryNode[] _road_boundaries
     (write-long (length _road_boundaries) s)
     (dolist (elem _road_boundaries)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RoadNode[] _road
     (write-long (length _road) s)
     (dolist (elem _road)
       (send elem :serialize s)
       )
     ;; landmark_msgs/StopLineNode[] _stop_lines
     (write-long (length _stop_lines) s)
     (dolist (elem _stop_lines)
       (send elem :serialize s)
       )
     ;; landmark_msgs/CrossWalkNode[] _cross_walks
     (write-long (length _cross_walks) s)
     (dolist (elem _cross_walks)
       (send elem :serialize s)
       )
     ;; landmark_msgs/ValidRoiNode[] _valid_rois
     (write-long (length _valid_rois) s)
     (dolist (elem _valid_rois)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RoadMarkNode[] _road_marks
     (write-long (length _road_marks) s)
     (dolist (elem _road_marks)
       (send elem :serialize s)
       )
     ;; landmark_msgs/AoiNode[] _aois
     (write-long (length _aois) s)
     (dolist (elem _aois)
       (send elem :serialize s)
       )
     ;; landmark_msgs/SpeedBumpNode[] _speed_bumps
     (write-long (length _speed_bumps) s)
     (dolist (elem _speed_bumps)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficSignNode[] _traffic_signs
     (write-long (length _traffic_signs) s)
     (dolist (elem _traffic_signs)
       (send elem :serialize s)
       )
     ;; landmark_msgs/PoleNode[] _poles
     (write-long (length _poles) s)
     (dolist (elem _poles)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficLightNode[] _traffic_lights
     (write-long (length _traffic_lights) s)
     (dolist (elem _traffic_lights)
       (send elem :serialize s)
       )
     ;; landmark_msgs/DashLineEndNode[] _dash_line_ends
     (write-long (length _dash_line_ends) s)
     (dolist (elem _dash_line_ends)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RoadEntryLineNode[] _road_entry_line_nodes
     (write-long (length _road_entry_line_nodes) s)
     (dolist (elem _road_entry_line_nodes)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficSignGuideArrowNode[] _traffic_sign_guide_arrow_nodes
     (write-long (length _traffic_sign_guide_arrow_nodes) s)
     (dolist (elem _traffic_sign_guide_arrow_nodes)
       (send elem :serialize s)
       )
     ;; landmark_msgs/NoParkingZoneNode[] _no_parking_zone_nodes
     (write-long (length _no_parking_zone_nodes) s)
     (dolist (elem _no_parking_zone_nodes)
       (send elem :serialize s)
       )
     ;; landmark_msgs/ParkingSpaceNode[] _parking_space_nodes
     (write-long (length _parking_space_nodes) s)
     (dolist (elem _parking_space_nodes)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RoadObstacleNode[] _road_obstacle_nodes
     (write-long (length _road_obstacle_nodes) s)
     (dolist (elem _road_obstacle_nodes)
       (send elem :serialize s)
       )
     ;; landmark_msgs/ParkingFacility[] _parking_facility_nodes
     (write-long (length _parking_facility_nodes) s)
     (dolist (elem _parking_facility_nodes)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RoadSurfaceNode[] _road_surface_node
     (write-long (length _road_surface_node) s)
     (dolist (elem _road_surface_node)
       (send elem :serialize s)
       )
     ;; landmark_msgs/IntersectionGuideLineNode[] _intersection_guide_lines
     (write-long (length _intersection_guide_lines) s)
     (dolist (elem _intersection_guide_lines)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficLightSingleFrame2dInfo[] _traffic_light_single_frame_2d_info
     (write-long (length _traffic_light_single_frame_2d_info) s)
     (dolist (elem _traffic_light_single_frame_2d_info)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficSignSingleFrame2dInfo[] _traffic_sign_single_frame_2d_info
     (write-long (length _traffic_sign_single_frame_2d_info) s)
     (dolist (elem _traffic_sign_single_frame_2d_info)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficLightDecision[] _traffic_light_decisions
     (write-long (length _traffic_light_decisions) s)
     (dolist (elem _traffic_light_decisions)
       (send elem :serialize s)
       )
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/LaneCenterNode[] _lane_centers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_centers (let (r) (dotimes (i n) (push (instance landmark_msgs::LaneCenterNode :init) r)) r))
     (dolist (elem- _lane_centers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/LaneBoundaryNode[] _lane_boundaries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_boundaries (let (r) (dotimes (i n) (push (instance landmark_msgs::LaneBoundaryNode :init) r)) r))
     (dolist (elem- _lane_boundaries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RoadBoundaryNode[] _road_boundaries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_boundaries (let (r) (dotimes (i n) (push (instance landmark_msgs::RoadBoundaryNode :init) r)) r))
     (dolist (elem- _road_boundaries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RoadNode[] _road
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road (let (r) (dotimes (i n) (push (instance landmark_msgs::RoadNode :init) r)) r))
     (dolist (elem- _road)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/StopLineNode[] _stop_lines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stop_lines (let (r) (dotimes (i n) (push (instance landmark_msgs::StopLineNode :init) r)) r))
     (dolist (elem- _stop_lines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/CrossWalkNode[] _cross_walks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cross_walks (let (r) (dotimes (i n) (push (instance landmark_msgs::CrossWalkNode :init) r)) r))
     (dolist (elem- _cross_walks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/ValidRoiNode[] _valid_rois
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _valid_rois (let (r) (dotimes (i n) (push (instance landmark_msgs::ValidRoiNode :init) r)) r))
     (dolist (elem- _valid_rois)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RoadMarkNode[] _road_marks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_marks (let (r) (dotimes (i n) (push (instance landmark_msgs::RoadMarkNode :init) r)) r))
     (dolist (elem- _road_marks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/AoiNode[] _aois
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aois (let (r) (dotimes (i n) (push (instance landmark_msgs::AoiNode :init) r)) r))
     (dolist (elem- _aois)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/SpeedBumpNode[] _speed_bumps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed_bumps (let (r) (dotimes (i n) (push (instance landmark_msgs::SpeedBumpNode :init) r)) r))
     (dolist (elem- _speed_bumps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficSignNode[] _traffic_signs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_signs (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficSignNode :init) r)) r))
     (dolist (elem- _traffic_signs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/PoleNode[] _poles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poles (let (r) (dotimes (i n) (push (instance landmark_msgs::PoleNode :init) r)) r))
     (dolist (elem- _poles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficLightNode[] _traffic_lights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_lights (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficLightNode :init) r)) r))
     (dolist (elem- _traffic_lights)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/DashLineEndNode[] _dash_line_ends
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dash_line_ends (let (r) (dotimes (i n) (push (instance landmark_msgs::DashLineEndNode :init) r)) r))
     (dolist (elem- _dash_line_ends)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RoadEntryLineNode[] _road_entry_line_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_entry_line_nodes (let (r) (dotimes (i n) (push (instance landmark_msgs::RoadEntryLineNode :init) r)) r))
     (dolist (elem- _road_entry_line_nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficSignGuideArrowNode[] _traffic_sign_guide_arrow_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_sign_guide_arrow_nodes (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficSignGuideArrowNode :init) r)) r))
     (dolist (elem- _traffic_sign_guide_arrow_nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/NoParkingZoneNode[] _no_parking_zone_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _no_parking_zone_nodes (let (r) (dotimes (i n) (push (instance landmark_msgs::NoParkingZoneNode :init) r)) r))
     (dolist (elem- _no_parking_zone_nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/ParkingSpaceNode[] _parking_space_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_space_nodes (let (r) (dotimes (i n) (push (instance landmark_msgs::ParkingSpaceNode :init) r)) r))
     (dolist (elem- _parking_space_nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RoadObstacleNode[] _road_obstacle_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_obstacle_nodes (let (r) (dotimes (i n) (push (instance landmark_msgs::RoadObstacleNode :init) r)) r))
     (dolist (elem- _road_obstacle_nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/ParkingFacility[] _parking_facility_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_facility_nodes (let (r) (dotimes (i n) (push (instance landmark_msgs::ParkingFacility :init) r)) r))
     (dolist (elem- _parking_facility_nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RoadSurfaceNode[] _road_surface_node
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_surface_node (let (r) (dotimes (i n) (push (instance landmark_msgs::RoadSurfaceNode :init) r)) r))
     (dolist (elem- _road_surface_node)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/IntersectionGuideLineNode[] _intersection_guide_lines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intersection_guide_lines (let (r) (dotimes (i n) (push (instance landmark_msgs::IntersectionGuideLineNode :init) r)) r))
     (dolist (elem- _intersection_guide_lines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficLightSingleFrame2dInfo[] _traffic_light_single_frame_2d_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_single_frame_2d_info (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficLightSingleFrame2dInfo :init) r)) r))
     (dolist (elem- _traffic_light_single_frame_2d_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficSignSingleFrame2dInfo[] _traffic_sign_single_frame_2d_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_sign_single_frame_2d_info (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficSignSingleFrame2dInfo :init) r)) r))
     (dolist (elem- _traffic_sign_single_frame_2d_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficLightDecision[] _traffic_light_decisions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_decisions (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficLightDecision :init) r)) r))
     (dolist (elem- _traffic_light_decisions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
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
   ;;
   self)
  )

(setf (get landmark_msgs::LandmarkNodes :md5sum-) "ea19a7448abbcb3bd05c74d7a8a441e7")
(setf (get landmark_msgs::LandmarkNodes :datatype-) "landmark_msgs/LandmarkNodes")
(setf (get landmark_msgs::LandmarkNodes :definition-)
      "uint64 AVAILABLE_LANDMARK_NODE_LANE_CENTER = 1
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

")



(provide :landmark_msgs/LandmarkNodes "ea19a7448abbcb3bd05c74d7a8a441e7")


