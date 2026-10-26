;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::AoiNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'AoiNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::AOINODE")
  (make-package "LANDMARK_MSGS::AOINODE"))

(in-package "ROS")
;;//! \htmlinclude AoiNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*POLYGON_POINTS_VALID*" (find-package "LANDMARK_MSGS::AOINODE"))
(shadow '*POLYGON_POINTS_VALID* (find-package "LANDMARK_MSGS::AOINODE"))
(defconstant landmark_msgs::AoiNode::*POLYGON_POINTS_VALID* 1)
(intern "*TYPE_VALID*" (find-package "LANDMARK_MSGS::AOINODE"))
(shadow '*TYPE_VALID* (find-package "LANDMARK_MSGS::AOINODE"))
(defconstant landmark_msgs::AoiNode::*TYPE_VALID* 2)
(intern "*IS_VIRTUAL_VALID*" (find-package "LANDMARK_MSGS::AOINODE"))
(shadow '*IS_VIRTUAL_VALID* (find-package "LANDMARK_MSGS::AOINODE"))
(defconstant landmark_msgs::AoiNode::*IS_VIRTUAL_VALID* 4)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::AOINODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::AOINODE"))
(defconstant landmark_msgs::AoiNode::*SCORE_VALID* 8)

(defun landmark_msgs::AoiNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::AoiNode::*POLYGON_POINTS_VALID*)
        ((= const 2) 'landmark_msgs::AoiNode::*TYPE_VALID*)
        ((= const 4) 'landmark_msgs::AoiNode::*IS_VIRTUAL_VALID*)
        ((= const 8) 'landmark_msgs::AoiNode::*SCORE_VALID*)
        (t nil)))

(defclass landmark_msgs::AoiNode
  :super ros::object
  :slots (_available _track_id _polygon_points _type _is_virtual _score ))

(defmethod landmark_msgs::AoiNode
  (:init
   (&key
    ((:available __available) 0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:polygon_points __polygon_points) ())
    ((:type __type) (instance landmark_msgs::AoiNodeTypeEnum :init))
    ((:is_virtual __is_virtual) nil)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _track_id __track_id)
   (setq _polygon_points __polygon_points)
   (setq _type __type)
   (setq _is_virtual __is_virtual)
   (setq _score (float __score))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:track_id
   (&rest __track_id)
   (if (keywordp (car __track_id))
       (send* _track_id __track_id)
     (progn
       (if __track_id (setq _track_id (car __track_id)))
       _track_id)))
  (:polygon_points
   (&rest __polygon_points)
   (if (keywordp (car __polygon_points))
       (send* _polygon_points __polygon_points)
     (progn
       (if __polygon_points (setq _polygon_points (car __polygon_points)))
       _polygon_points)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:is_virtual
   (&optional (__is_virtual :null))
   (if (not (eq __is_virtual :null)) (setq _is_virtual __is_virtual)) _is_virtual)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; perception_interface_msgs/Point3f[] _polygon_points
    (apply #'+ (send-all _polygon_points :serialization-length)) 4
    ;; landmark_msgs/AoiNodeTypeEnum _type
    (send _type :serialization-length)
    ;; bool _is_virtual
    1
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; perception_interface_msgs/Point3f[] _polygon_points
     (write-long (length _polygon_points) s)
     (dolist (elem _polygon_points)
       (send elem :serialize s)
       )
     ;; landmark_msgs/AoiNodeTypeEnum _type
       (send _type :serialize s)
     ;; bool _is_virtual
       (if _is_virtual (write-byte -1 s) (write-byte 0 s))
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;; perception_interface_msgs/Point3f[] _polygon_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _polygon_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/AoiNodeTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; bool _is_virtual
     (setq _is_virtual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::AoiNode :md5sum-) "02b86f8b780d1d0f20ac5e0112db7fbc")
(setf (get landmark_msgs::AoiNode :datatype-) "landmark_msgs/AoiNode")
(setf (get landmark_msgs::AoiNode :definition-)
      "uint16 POLYGON_POINTS_VALID = 1
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
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

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

")



(provide :landmark_msgs/AoiNode "02b86f8b780d1d0f20ac5e0112db7fbc")


