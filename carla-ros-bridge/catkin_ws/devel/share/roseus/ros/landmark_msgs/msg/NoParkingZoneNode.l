;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::NoParkingZoneNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'NoParkingZoneNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::NOPARKINGZONENODE")
  (make-package "LANDMARK_MSGS::NOPARKINGZONENODE"))

(in-package "ROS")
;;//! \htmlinclude NoParkingZoneNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*POLYGON_POINTS_VALID*" (find-package "LANDMARK_MSGS::NOPARKINGZONENODE"))
(shadow '*POLYGON_POINTS_VALID* (find-package "LANDMARK_MSGS::NOPARKINGZONENODE"))
(defconstant landmark_msgs::NoParkingZoneNode::*POLYGON_POINTS_VALID* 1)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::NOPARKINGZONENODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::NOPARKINGZONENODE"))
(defconstant landmark_msgs::NoParkingZoneNode::*SCORE_VALID* 2)

(defun landmark_msgs::NoParkingZoneNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::NoParkingZoneNode::*POLYGON_POINTS_VALID*)
        ((= const 2) 'landmark_msgs::NoParkingZoneNode::*SCORE_VALID*)
        (t nil)))

(defclass landmark_msgs::NoParkingZoneNode
  :super ros::object
  :slots (_available _track_id _polygon_points _score ))

(defmethod landmark_msgs::NoParkingZoneNode
  (:init
   (&key
    ((:available __available) 0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:polygon_points __polygon_points) ())
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _track_id __track_id)
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
    ;; uint16 _available
    2
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; perception_interface_msgs/Point3f[] _polygon_points
    (apply #'+ (send-all _polygon_points :serialization-length)) 4
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
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::NoParkingZoneNode :md5sum-) "b0aaaaebdb071a73c789d082c7ecf43e")
(setf (get landmark_msgs::NoParkingZoneNode :datatype-) "landmark_msgs/NoParkingZoneNode")
(setf (get landmark_msgs::NoParkingZoneNode :definition-)
      "uint16 POLYGON_POINTS_VALID = 1
uint16 SCORE_VALID = 2
uint16 available
landmark_msgs/TrackId track_id
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
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :landmark_msgs/NoParkingZoneNode "b0aaaaebdb071a73c789d082c7ecf43e")


