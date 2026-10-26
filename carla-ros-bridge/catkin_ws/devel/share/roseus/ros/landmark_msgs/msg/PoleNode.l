;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::PoleNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'PoleNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::POLENODE")
  (make-package "LANDMARK_MSGS::POLENODE"))

(in-package "ROS")
;;//! \htmlinclude PoleNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::POLENODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::POLENODE"))
(defconstant landmark_msgs::PoleNode::*SCORE_VALID* 1)
(intern "*SHAPE_POINTS_VALID*" (find-package "LANDMARK_MSGS::POLENODE"))
(shadow '*SHAPE_POINTS_VALID* (find-package "LANDMARK_MSGS::POLENODE"))
(defconstant landmark_msgs::PoleNode::*SHAPE_POINTS_VALID* 2)
(intern "*TYPE_VALID*" (find-package "LANDMARK_MSGS::POLENODE"))
(shadow '*TYPE_VALID* (find-package "LANDMARK_MSGS::POLENODE"))
(defconstant landmark_msgs::PoleNode::*TYPE_VALID* 4)

(defun landmark_msgs::PoleNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::PoleNode::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::PoleNode::*SHAPE_POINTS_VALID*)
        ((= const 4) 'landmark_msgs::PoleNode::*TYPE_VALID*)
        (t nil)))

(defclass landmark_msgs::PoleNode
  :super ros::object
  :slots (_available _score _track_id _shape_points _type ))

(defmethod landmark_msgs::PoleNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:shape_points __shape_points) ())
    ((:type __type) (instance landmark_msgs::PoleNodeTypeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _track_id __track_id)
   (setq _shape_points __shape_points)
   (setq _type __type)
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
  (:shape_points
   (&rest __shape_points)
   (if (keywordp (car __shape_points))
       (send* _shape_points __shape_points)
     (progn
       (if __shape_points (setq _shape_points (car __shape_points)))
       _shape_points)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; float32 _score
    4
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; perception_interface_msgs/Point3f[] _shape_points
    (apply #'+ (send-all _shape_points :serialization-length)) 4
    ;; landmark_msgs/PoleNodeTypeEnum _type
    (send _type :serialization-length)
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
     ;; perception_interface_msgs/Point3f[] _shape_points
     (write-long (length _shape_points) s)
     (dolist (elem _shape_points)
       (send elem :serialize s)
       )
     ;; landmark_msgs/PoleNodeTypeEnum _type
       (send _type :serialize s)
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
   ;; perception_interface_msgs/Point3f[] _shape_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _shape_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/PoleNodeTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;;
   self)
  )

(setf (get landmark_msgs::PoleNode :md5sum-) "09a2e931d0aa29e04840c11bec8297bc")
(setf (get landmark_msgs::PoleNode :datatype-) "landmark_msgs/PoleNode")
(setf (get landmark_msgs::PoleNode :definition-)
      "uint16 SCORE_VALID = 1
uint16 SHAPE_POINTS_VALID = 2
uint16 TYPE_VALID = 4
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] shape_points
landmark_msgs/PoleNodeTypeEnum type

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
MSG: landmark_msgs/PoleNodeTypeEnum
uint8 POLE_NODE_TYPE_UNKNOWN = 0
uint8 POLE_NODE_TYPE_GENERAL_POLE = 1
uint8 POLE_NODE_TYPE_LIGHT_POLE = 2
uint8 value

")



(provide :landmark_msgs/PoleNode "09a2e931d0aa29e04840c11bec8297bc")


