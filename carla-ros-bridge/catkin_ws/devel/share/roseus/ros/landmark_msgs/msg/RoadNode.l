;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADNODE")
  (make-package "LANDMARK_MSGS::ROADNODE"))

(in-package "ROS")
;;//! \htmlinclude RoadNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::ROADNODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::ROADNODE"))
(defconstant landmark_msgs::RoadNode::*SCORE_VALID* 1)
(intern "*DIRECTION_VALID*" (find-package "LANDMARK_MSGS::ROADNODE"))
(shadow '*DIRECTION_VALID* (find-package "LANDMARK_MSGS::ROADNODE"))
(defconstant landmark_msgs::RoadNode::*DIRECTION_VALID* 2)
(intern "*ROAD_CLASS_VALID*" (find-package "LANDMARK_MSGS::ROADNODE"))
(shadow '*ROAD_CLASS_VALID* (find-package "LANDMARK_MSGS::ROADNODE"))
(defconstant landmark_msgs::RoadNode::*ROAD_CLASS_VALID* 4)
(intern "*FORMWAY_VALID*" (find-package "LANDMARK_MSGS::ROADNODE"))
(shadow '*FORMWAY_VALID* (find-package "LANDMARK_MSGS::ROADNODE"))
(defconstant landmark_msgs::RoadNode::*FORMWAY_VALID* 8)
(intern "*CENTER_LINE_VALID*" (find-package "LANDMARK_MSGS::ROADNODE"))
(shadow '*CENTER_LINE_VALID* (find-package "LANDMARK_MSGS::ROADNODE"))
(defconstant landmark_msgs::RoadNode::*CENTER_LINE_VALID* 16)
(intern "*START_LATERAL_LINE_VALID*" (find-package "LANDMARK_MSGS::ROADNODE"))
(shadow '*START_LATERAL_LINE_VALID* (find-package "LANDMARK_MSGS::ROADNODE"))
(defconstant landmark_msgs::RoadNode::*START_LATERAL_LINE_VALID* 32)
(intern "*END_LATERAL_LINE_VALID*" (find-package "LANDMARK_MSGS::ROADNODE"))
(shadow '*END_LATERAL_LINE_VALID* (find-package "LANDMARK_MSGS::ROADNODE"))
(defconstant landmark_msgs::RoadNode::*END_LATERAL_LINE_VALID* 64)
(intern "*IS_VIRETUAL_VALID*" (find-package "LANDMARK_MSGS::ROADNODE"))
(shadow '*IS_VIRETUAL_VALID* (find-package "LANDMARK_MSGS::ROADNODE"))
(defconstant landmark_msgs::RoadNode::*IS_VIRETUAL_VALID* 128)
(intern "*IN_INTERSECTION_VALID*" (find-package "LANDMARK_MSGS::ROADNODE"))
(shadow '*IN_INTERSECTION_VALID* (find-package "LANDMARK_MSGS::ROADNODE"))
(defconstant landmark_msgs::RoadNode::*IN_INTERSECTION_VALID* 256)

(defun landmark_msgs::RoadNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::RoadNode::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::RoadNode::*DIRECTION_VALID*)
        ((= const 4) 'landmark_msgs::RoadNode::*ROAD_CLASS_VALID*)
        ((= const 8) 'landmark_msgs::RoadNode::*FORMWAY_VALID*)
        ((= const 16) 'landmark_msgs::RoadNode::*CENTER_LINE_VALID*)
        ((= const 32) 'landmark_msgs::RoadNode::*START_LATERAL_LINE_VALID*)
        ((= const 64) 'landmark_msgs::RoadNode::*END_LATERAL_LINE_VALID*)
        ((= const 128) 'landmark_msgs::RoadNode::*IS_VIRETUAL_VALID*)
        ((= const 256) 'landmark_msgs::RoadNode::*IN_INTERSECTION_VALID*)
        (t nil)))

(defclass landmark_msgs::RoadNode
  :super ros::object
  :slots (_available _score _track_id _road_direction _road_class _formway _center_line _start_lateral_line _end_lateral_line _is_virtual _in_intersection ))

(defmethod landmark_msgs::RoadNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:road_direction __road_direction) (instance landmark_msgs::RoadDirectionTypeEnum :init))
    ((:road_class __road_class) (instance landmark_msgs::RoadNodeRoadClassEnum :init))
    ((:formway __formway) ())
    ((:center_line __center_line) ())
    ((:start_lateral_line __start_lateral_line) ())
    ((:end_lateral_line __end_lateral_line) ())
    ((:is_virtual __is_virtual) nil)
    ((:in_intersection __in_intersection) nil)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _track_id __track_id)
   (setq _road_direction __road_direction)
   (setq _road_class __road_class)
   (setq _formway __formway)
   (setq _center_line __center_line)
   (setq _start_lateral_line __start_lateral_line)
   (setq _end_lateral_line __end_lateral_line)
   (setq _is_virtual __is_virtual)
   (setq _in_intersection __in_intersection)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:track_id
   (&rest __track_id)
   (if (keywordp (car __track_id))
       (send* _track_id __track_id)
     (progn
       (if __track_id (setq _track_id (car __track_id)))
       _track_id)))
  (:road_direction
   (&rest __road_direction)
   (if (keywordp (car __road_direction))
       (send* _road_direction __road_direction)
     (progn
       (if __road_direction (setq _road_direction (car __road_direction)))
       _road_direction)))
  (:road_class
   (&rest __road_class)
   (if (keywordp (car __road_class))
       (send* _road_class __road_class)
     (progn
       (if __road_class (setq _road_class (car __road_class)))
       _road_class)))
  (:formway
   (&rest __formway)
   (if (keywordp (car __formway))
       (send* _formway __formway)
     (progn
       (if __formway (setq _formway (car __formway)))
       _formway)))
  (:center_line
   (&rest __center_line)
   (if (keywordp (car __center_line))
       (send* _center_line __center_line)
     (progn
       (if __center_line (setq _center_line (car __center_line)))
       _center_line)))
  (:start_lateral_line
   (&rest __start_lateral_line)
   (if (keywordp (car __start_lateral_line))
       (send* _start_lateral_line __start_lateral_line)
     (progn
       (if __start_lateral_line (setq _start_lateral_line (car __start_lateral_line)))
       _start_lateral_line)))
  (:end_lateral_line
   (&rest __end_lateral_line)
   (if (keywordp (car __end_lateral_line))
       (send* _end_lateral_line __end_lateral_line)
     (progn
       (if __end_lateral_line (setq _end_lateral_line (car __end_lateral_line)))
       _end_lateral_line)))
  (:is_virtual
   (&optional (__is_virtual :null))
   (if (not (eq __is_virtual :null)) (setq _is_virtual __is_virtual)) _is_virtual)
  (:in_intersection
   (&optional (__in_intersection :null))
   (if (not (eq __in_intersection :null)) (setq _in_intersection __in_intersection)) _in_intersection)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; float32 _score
    4
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; landmark_msgs/RoadDirectionTypeEnum _road_direction
    (send _road_direction :serialization-length)
    ;; landmark_msgs/RoadNodeRoadClassEnum _road_class
    (send _road_class :serialization-length)
    ;; landmark_msgs/RoadNodeFormwayEnum[] _formway
    (apply #'+ (send-all _formway :serialization-length)) 4
    ;; perception_interface_msgs/Point3f[] _center_line
    (apply #'+ (send-all _center_line :serialization-length)) 4
    ;; perception_interface_msgs/Point3f[] _start_lateral_line
    (apply #'+ (send-all _start_lateral_line :serialization-length)) 4
    ;; perception_interface_msgs/Point3f[] _end_lateral_line
    (apply #'+ (send-all _end_lateral_line :serialization-length)) 4
    ;; bool _is_virtual
    1
    ;; bool _in_intersection
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; landmark_msgs/RoadDirectionTypeEnum _road_direction
       (send _road_direction :serialize s)
     ;; landmark_msgs/RoadNodeRoadClassEnum _road_class
       (send _road_class :serialize s)
     ;; landmark_msgs/RoadNodeFormwayEnum[] _formway
     (write-long (length _formway) s)
     (dolist (elem _formway)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point3f[] _center_line
     (write-long (length _center_line) s)
     (dolist (elem _center_line)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point3f[] _start_lateral_line
     (write-long (length _start_lateral_line) s)
     (dolist (elem _start_lateral_line)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point3f[] _end_lateral_line
     (write-long (length _end_lateral_line) s)
     (dolist (elem _end_lateral_line)
       (send elem :serialize s)
       )
     ;; bool _is_virtual
       (if _is_virtual (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_intersection
       (if _in_intersection (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;; landmark_msgs/RoadDirectionTypeEnum _road_direction
     (send _road_direction :deserialize buf ptr-) (incf ptr- (send _road_direction :serialization-length))
   ;; landmark_msgs/RoadNodeRoadClassEnum _road_class
     (send _road_class :deserialize buf ptr-) (incf ptr- (send _road_class :serialization-length))
   ;; landmark_msgs/RoadNodeFormwayEnum[] _formway
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _formway (let (r) (dotimes (i n) (push (instance landmark_msgs::RoadNodeFormwayEnum :init) r)) r))
     (dolist (elem- _formway)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point3f[] _center_line
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _center_line (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _center_line)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point3f[] _start_lateral_line
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_lateral_line (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _start_lateral_line)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point3f[] _end_lateral_line
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_lateral_line (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _end_lateral_line)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is_virtual
     (setq _is_virtual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_intersection
     (setq _in_intersection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get landmark_msgs::RoadNode :md5sum-) "5eb1360c5105d4175c7acd48521c0bd5")
(setf (get landmark_msgs::RoadNode :datatype-) "landmark_msgs/RoadNode")
(setf (get landmark_msgs::RoadNode :definition-)
      "uint16 SCORE_VALID = 1
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
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

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
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :landmark_msgs/RoadNode "5eb1360c5105d4175c7acd48521c0bd5")


