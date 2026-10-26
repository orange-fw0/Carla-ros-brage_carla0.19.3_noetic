;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::ParkingSpaceNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'ParkingSpaceNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::PARKINGSPACENODE")
  (make-package "LANDMARK_MSGS::PARKINGSPACENODE"))

(in-package "ROS")
;;//! \htmlinclude ParkingSpaceNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*ATTRIBUTE_VALID*" (find-package "LANDMARK_MSGS::PARKINGSPACENODE"))
(shadow '*ATTRIBUTE_VALID* (find-package "LANDMARK_MSGS::PARKINGSPACENODE"))
(defconstant landmark_msgs::ParkingSpaceNode::*ATTRIBUTE_VALID* 1)
(intern "*POLYGON_POINTS_VALID*" (find-package "LANDMARK_MSGS::PARKINGSPACENODE"))
(shadow '*POLYGON_POINTS_VALID* (find-package "LANDMARK_MSGS::PARKINGSPACENODE"))
(defconstant landmark_msgs::ParkingSpaceNode::*POLYGON_POINTS_VALID* 2)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::PARKINGSPACENODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::PARKINGSPACENODE"))
(defconstant landmark_msgs::ParkingSpaceNode::*SCORE_VALID* 4)

(defun landmark_msgs::ParkingSpaceNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::ParkingSpaceNode::*ATTRIBUTE_VALID*)
        ((= const 2) 'landmark_msgs::ParkingSpaceNode::*POLYGON_POINTS_VALID*)
        ((= const 4) 'landmark_msgs::ParkingSpaceNode::*SCORE_VALID*)
        (t nil)))

(defclass landmark_msgs::ParkingSpaceNode
  :super ros::object
  :slots (_available _track_id _attribute _polygon_points _score ))

(defmethod landmark_msgs::ParkingSpaceNode
  (:init
   (&key
    ((:available __available) 0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:attribute __attribute) (instance landmark_msgs::ParkingSpaceAttributeEnum :init))
    ((:polygon_points __polygon_points) ())
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _track_id __track_id)
   (setq _attribute __attribute)
   (setq _polygon_points __polygon_points)
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
  (:attribute
   (&rest __attribute)
   (if (keywordp (car __attribute))
       (send* _attribute __attribute)
     (progn
       (if __attribute (setq _attribute (car __attribute)))
       _attribute)))
  (:polygon_points
   (&rest __polygon_points)
   (if (keywordp (car __polygon_points))
       (send* _polygon_points __polygon_points)
     (progn
       (if __polygon_points (setq _polygon_points (car __polygon_points)))
       _polygon_points)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; landmark_msgs/ParkingSpaceAttributeEnum _attribute
    (send _attribute :serialization-length)
    ;; perception_interface_msgs/Point3f[] _polygon_points
    (apply #'+ (send-all _polygon_points :serialization-length)) 4
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; landmark_msgs/ParkingSpaceAttributeEnum _attribute
       (send _attribute :serialize s)
     ;; perception_interface_msgs/Point3f[] _polygon_points
     (write-long (length _polygon_points) s)
     (dolist (elem _polygon_points)
       (send elem :serialize s)
       )
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;; landmark_msgs/ParkingSpaceAttributeEnum _attribute
     (send _attribute :deserialize buf ptr-) (incf ptr- (send _attribute :serialization-length))
   ;; perception_interface_msgs/Point3f[] _polygon_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _polygon_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::ParkingSpaceNode :md5sum-) "24947dc573533b5c58121fcbcd06203f")
(setf (get landmark_msgs::ParkingSpaceNode :datatype-) "landmark_msgs/ParkingSpaceNode")
(setf (get landmark_msgs::ParkingSpaceNode :definition-)
      "uint16 ATTRIBUTE_VALID = 1
uint16 POLYGON_POINTS_VALID = 2
uint16 SCORE_VALID = 4
uint8 available
landmark_msgs/TrackId track_id
landmark_msgs/ParkingSpaceAttributeEnum attribute
perception_interface_msgs/Point3f[] polygon_points
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
MSG: landmark_msgs/ParkingSpaceAttributeEnum
uint8 PARKING_SPACE_ATTRIBUTE_UNKNOWN = 0
uint8 PARKING_SPACE_ATTRIBUTE_NORMAL = 1
uint8 PARKING_SPACE_ATTRIBUTE_CHARGING = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :landmark_msgs/ParkingSpaceNode "24947dc573533b5c58121fcbcd06203f")


