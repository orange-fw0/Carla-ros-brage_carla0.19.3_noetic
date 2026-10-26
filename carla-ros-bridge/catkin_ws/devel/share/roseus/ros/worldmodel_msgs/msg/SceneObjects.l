;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::SceneObjects)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'SceneObjects (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::SCENEOBJECTS")
  (make-package "WORLDMODEL_MSGS::SCENEOBJECTS"))

(in-package "ROS")
;;//! \htmlinclude SceneObjects.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ON_PATH_POLYGON_OBJECTS*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTS"))
(shadow '*ON_PATH_POLYGON_OBJECTS* (find-package "WORLDMODEL_MSGS::SCENEOBJECTS"))
(defconstant worldmodel_msgs::SceneObjects::*ON_PATH_POLYGON_OBJECTS* 1)
(intern "*SURROUND_POLYGON_OBJECTS*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTS"))
(shadow '*SURROUND_POLYGON_OBJECTS* (find-package "WORLDMODEL_MSGS::SCENEOBJECTS"))
(defconstant worldmodel_msgs::SceneObjects::*SURROUND_POLYGON_OBJECTS* 2)
(intern "*ON_PATH_CIRCLE_OBJECTS*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTS"))
(shadow '*ON_PATH_CIRCLE_OBJECTS* (find-package "WORLDMODEL_MSGS::SCENEOBJECTS"))
(defconstant worldmodel_msgs::SceneObjects::*ON_PATH_CIRCLE_OBJECTS* 4)
(intern "*SURROUND_CIRCLE_OBJECTS*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTS"))
(shadow '*SURROUND_CIRCLE_OBJECTS* (find-package "WORLDMODEL_MSGS::SCENEOBJECTS"))
(defconstant worldmodel_msgs::SceneObjects::*SURROUND_CIRCLE_OBJECTS* 8)

(defun worldmodel_msgs::SceneObjects-to-symbol (const)
  (cond
        ((= const 1) 'worldmodel_msgs::SceneObjects::*ON_PATH_POLYGON_OBJECTS*)
        ((= const 2) 'worldmodel_msgs::SceneObjects::*SURROUND_POLYGON_OBJECTS*)
        ((= const 4) 'worldmodel_msgs::SceneObjects::*ON_PATH_CIRCLE_OBJECTS*)
        ((= const 8) 'worldmodel_msgs::SceneObjects::*SURROUND_CIRCLE_OBJECTS*)
        (t nil)))

(defclass worldmodel_msgs::SceneObjects
  :super ros::object
  :slots (_header _meta _available _on_path_polygon_objects _surround_polygon_objects _on_path_circle_objects _surround_circle_objects ))

(defmethod worldmodel_msgs::SceneObjects
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance worldmodel_msgs::SceneObjectsMeta :init))
    ((:available __available) 0)
    ((:on_path_polygon_objects __on_path_polygon_objects) ())
    ((:surround_polygon_objects __surround_polygon_objects) ())
    ((:on_path_circle_objects __on_path_circle_objects) ())
    ((:surround_circle_objects __surround_circle_objects) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _available (round __available))
   (setq _on_path_polygon_objects __on_path_polygon_objects)
   (setq _surround_polygon_objects __surround_polygon_objects)
   (setq _on_path_circle_objects __on_path_circle_objects)
   (setq _surround_circle_objects __surround_circle_objects)
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
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:on_path_polygon_objects
   (&rest __on_path_polygon_objects)
   (if (keywordp (car __on_path_polygon_objects))
       (send* _on_path_polygon_objects __on_path_polygon_objects)
     (progn
       (if __on_path_polygon_objects (setq _on_path_polygon_objects (car __on_path_polygon_objects)))
       _on_path_polygon_objects)))
  (:surround_polygon_objects
   (&rest __surround_polygon_objects)
   (if (keywordp (car __surround_polygon_objects))
       (send* _surround_polygon_objects __surround_polygon_objects)
     (progn
       (if __surround_polygon_objects (setq _surround_polygon_objects (car __surround_polygon_objects)))
       _surround_polygon_objects)))
  (:on_path_circle_objects
   (&rest __on_path_circle_objects)
   (if (keywordp (car __on_path_circle_objects))
       (send* _on_path_circle_objects __on_path_circle_objects)
     (progn
       (if __on_path_circle_objects (setq _on_path_circle_objects (car __on_path_circle_objects)))
       _on_path_circle_objects)))
  (:surround_circle_objects
   (&rest __surround_circle_objects)
   (if (keywordp (car __surround_circle_objects))
       (send* _surround_circle_objects __surround_circle_objects)
     (progn
       (if __surround_circle_objects (setq _surround_circle_objects (car __surround_circle_objects)))
       _surround_circle_objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; worldmodel_msgs/SceneObjectsMeta _meta
    (send _meta :serialization-length)
    ;; uint8 _available
    1
    ;; worldmodel_msgs/ScenePolygonObject[] _on_path_polygon_objects
    (apply #'+ (send-all _on_path_polygon_objects :serialization-length)) 4
    ;; worldmodel_msgs/ScenePolygonObject[] _surround_polygon_objects
    (apply #'+ (send-all _surround_polygon_objects :serialization-length)) 4
    ;; worldmodel_msgs/SceneCircleObject[] _on_path_circle_objects
    (apply #'+ (send-all _on_path_circle_objects :serialization-length)) 4
    ;; worldmodel_msgs/SceneCircleObject[] _surround_circle_objects
    (apply #'+ (send-all _surround_circle_objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; worldmodel_msgs/SceneObjectsMeta _meta
       (send _meta :serialize s)
     ;; uint8 _available
       (write-byte _available s)
     ;; worldmodel_msgs/ScenePolygonObject[] _on_path_polygon_objects
     (write-long (length _on_path_polygon_objects) s)
     (dolist (elem _on_path_polygon_objects)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/ScenePolygonObject[] _surround_polygon_objects
     (write-long (length _surround_polygon_objects) s)
     (dolist (elem _surround_polygon_objects)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/SceneCircleObject[] _on_path_circle_objects
     (write-long (length _on_path_circle_objects) s)
     (dolist (elem _on_path_circle_objects)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/SceneCircleObject[] _surround_circle_objects
     (write-long (length _surround_circle_objects) s)
     (dolist (elem _surround_circle_objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; worldmodel_msgs/SceneObjectsMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; worldmodel_msgs/ScenePolygonObject[] _on_path_polygon_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _on_path_polygon_objects (let (r) (dotimes (i n) (push (instance worldmodel_msgs::ScenePolygonObject :init) r)) r))
     (dolist (elem- _on_path_polygon_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/ScenePolygonObject[] _surround_polygon_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _surround_polygon_objects (let (r) (dotimes (i n) (push (instance worldmodel_msgs::ScenePolygonObject :init) r)) r))
     (dolist (elem- _surround_polygon_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/SceneCircleObject[] _on_path_circle_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _on_path_circle_objects (let (r) (dotimes (i n) (push (instance worldmodel_msgs::SceneCircleObject :init) r)) r))
     (dolist (elem- _on_path_circle_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/SceneCircleObject[] _surround_circle_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _surround_circle_objects (let (r) (dotimes (i n) (push (instance worldmodel_msgs::SceneCircleObject :init) r)) r))
     (dolist (elem- _surround_circle_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get worldmodel_msgs::SceneObjects :md5sum-) "fc3ada393d35f588f6de2a9e57c0c8df")
(setf (get worldmodel_msgs::SceneObjects :datatype-) "worldmodel_msgs/SceneObjects")
(setf (get worldmodel_msgs::SceneObjects :definition-)
      "uint8 ON_PATH_POLYGON_OBJECTS = 1
uint8 SURROUND_POLYGON_OBJECTS = 2
uint8 ON_PATH_CIRCLE_OBJECTS = 4
uint8 SURROUND_CIRCLE_OBJECTS = 8
std_msgs/Header header
worldmodel_msgs/SceneObjectsMeta meta
uint8 available
worldmodel_msgs/ScenePolygonObject[] on_path_polygon_objects
worldmodel_msgs/ScenePolygonObject[] surround_polygon_objects
worldmodel_msgs/SceneCircleObject[] on_path_circle_objects
worldmodel_msgs/SceneCircleObject[] surround_circle_objects

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
MSG: worldmodel_msgs/SceneObjectsMeta
uint64 timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us

================================================================================
MSG: worldmodel_msgs/ScenePolygonObject
uint64 object_id
worldmodel_msgs/SceneObjectType object_type
perception_interface_msgs/Polygon3f object_polygon

================================================================================
MSG: worldmodel_msgs/SceneObjectType
uint8 UNKNOWN = 0
uint8 TRAFFIC_BARRIER_TYPE_CONE = 1
uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2
uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3
uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4
uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5
uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6
uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7
uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8
uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9
uint8 MAP_FIRE_EXIT_DOOR = 10
uint8 MAP_PILLAR = 11
uint8 MAP_TOLL_GATE = 12
uint8 MAP_BORDER_SOLID_LINE = 13
uint8 MAP_BORDER_DASH_LINE = 14
uint8 MAP_BORDER_PHYSICAL = 15
uint8 value

================================================================================
MSG: perception_interface_msgs/Polygon3f
perception_interface_msgs/Point3f[] points

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: worldmodel_msgs/SceneCircleObject
uint64 object_id
worldmodel_msgs/SceneObjectType object_type
perception_interface_msgs/Point2d center_point
float64 radius
float64 height

================================================================================
MSG: perception_interface_msgs/Point2d
float64 x
float64 y

")



(provide :worldmodel_msgs/SceneObjects "fc3ada393d35f588f6de2a9e57c0c8df")


