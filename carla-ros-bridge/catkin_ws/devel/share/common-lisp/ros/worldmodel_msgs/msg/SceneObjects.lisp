; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude SceneObjects.msg.html

(cl:defclass <SceneObjects> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type worldmodel_msgs-msg:SceneObjectsMeta
    :initform (cl:make-instance 'worldmodel_msgs-msg:SceneObjectsMeta))
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (on_path_polygon_objects
    :reader on_path_polygon_objects
    :initarg :on_path_polygon_objects
    :type (cl:vector worldmodel_msgs-msg:ScenePolygonObject)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:ScenePolygonObject :initial-element (cl:make-instance 'worldmodel_msgs-msg:ScenePolygonObject)))
   (surround_polygon_objects
    :reader surround_polygon_objects
    :initarg :surround_polygon_objects
    :type (cl:vector worldmodel_msgs-msg:ScenePolygonObject)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:ScenePolygonObject :initial-element (cl:make-instance 'worldmodel_msgs-msg:ScenePolygonObject)))
   (on_path_circle_objects
    :reader on_path_circle_objects
    :initarg :on_path_circle_objects
    :type (cl:vector worldmodel_msgs-msg:SceneCircleObject)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:SceneCircleObject :initial-element (cl:make-instance 'worldmodel_msgs-msg:SceneCircleObject)))
   (surround_circle_objects
    :reader surround_circle_objects
    :initarg :surround_circle_objects
    :type (cl:vector worldmodel_msgs-msg:SceneCircleObject)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:SceneCircleObject :initial-element (cl:make-instance 'worldmodel_msgs-msg:SceneCircleObject))))
)

(cl:defclass SceneObjects (<SceneObjects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneObjects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneObjects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<SceneObjects> is deprecated: use worldmodel_msgs-msg:SceneObjects instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SceneObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:header-val is deprecated.  Use worldmodel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <SceneObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:meta-val is deprecated.  Use worldmodel_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <SceneObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available-val is deprecated.  Use worldmodel_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'on_path_polygon_objects-val :lambda-list '(m))
(cl:defmethod on_path_polygon_objects-val ((m <SceneObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:on_path_polygon_objects-val is deprecated.  Use worldmodel_msgs-msg:on_path_polygon_objects instead.")
  (on_path_polygon_objects m))

(cl:ensure-generic-function 'surround_polygon_objects-val :lambda-list '(m))
(cl:defmethod surround_polygon_objects-val ((m <SceneObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:surround_polygon_objects-val is deprecated.  Use worldmodel_msgs-msg:surround_polygon_objects instead.")
  (surround_polygon_objects m))

(cl:ensure-generic-function 'on_path_circle_objects-val :lambda-list '(m))
(cl:defmethod on_path_circle_objects-val ((m <SceneObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:on_path_circle_objects-val is deprecated.  Use worldmodel_msgs-msg:on_path_circle_objects instead.")
  (on_path_circle_objects m))

(cl:ensure-generic-function 'surround_circle_objects-val :lambda-list '(m))
(cl:defmethod surround_circle_objects-val ((m <SceneObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:surround_circle_objects-val is deprecated.  Use worldmodel_msgs-msg:surround_circle_objects instead.")
  (surround_circle_objects m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SceneObjects>)))
    "Constants for message type '<SceneObjects>"
  '((:ON_PATH_POLYGON_OBJECTS . 1)
    (:SURROUND_POLYGON_OBJECTS . 2)
    (:ON_PATH_CIRCLE_OBJECTS . 4)
    (:SURROUND_CIRCLE_OBJECTS . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SceneObjects)))
    "Constants for message type 'SceneObjects"
  '((:ON_PATH_POLYGON_OBJECTS . 1)
    (:SURROUND_POLYGON_OBJECTS . 2)
    (:ON_PATH_CIRCLE_OBJECTS . 4)
    (:SURROUND_CIRCLE_OBJECTS . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneObjects>) ostream)
  "Serializes a message object of type '<SceneObjects>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'on_path_polygon_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'on_path_polygon_objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'surround_polygon_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'surround_polygon_objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'on_path_circle_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'on_path_circle_objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'surround_circle_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'surround_circle_objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneObjects>) istream)
  "Deserializes a message object of type '<SceneObjects>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'on_path_polygon_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'on_path_polygon_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:ScenePolygonObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'surround_polygon_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'surround_polygon_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:ScenePolygonObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'on_path_circle_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'on_path_circle_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:SceneCircleObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'surround_circle_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'surround_circle_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:SceneCircleObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneObjects>)))
  "Returns string type for a message object of type '<SceneObjects>"
  "worldmodel_msgs/SceneObjects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneObjects)))
  "Returns string type for a message object of type 'SceneObjects"
  "worldmodel_msgs/SceneObjects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneObjects>)))
  "Returns md5sum for a message object of type '<SceneObjects>"
  "fc3ada393d35f588f6de2a9e57c0c8df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneObjects)))
  "Returns md5sum for a message object of type 'SceneObjects"
  "fc3ada393d35f588f6de2a9e57c0c8df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneObjects>)))
  "Returns full string definition for message of type '<SceneObjects>"
  (cl:format cl:nil "uint8 ON_PATH_POLYGON_OBJECTS = 1~%uint8 SURROUND_POLYGON_OBJECTS = 2~%uint8 ON_PATH_CIRCLE_OBJECTS = 4~%uint8 SURROUND_CIRCLE_OBJECTS = 8~%std_msgs/Header header~%worldmodel_msgs/SceneObjectsMeta meta~%uint8 available~%worldmodel_msgs/ScenePolygonObject[] on_path_polygon_objects~%worldmodel_msgs/ScenePolygonObject[] surround_polygon_objects~%worldmodel_msgs/SceneCircleObject[] on_path_circle_objects~%worldmodel_msgs/SceneCircleObject[] surround_circle_objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: worldmodel_msgs/SceneObjectsMeta~%uint64 timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%~%================================================================================~%MSG: worldmodel_msgs/ScenePolygonObject~%uint64 object_id~%worldmodel_msgs/SceneObjectType object_type~%perception_interface_msgs/Polygon3f object_polygon~%~%================================================================================~%MSG: worldmodel_msgs/SceneObjectType~%uint8 UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 MAP_FIRE_EXIT_DOOR = 10~%uint8 MAP_PILLAR = 11~%uint8 MAP_TOLL_GATE = 12~%uint8 MAP_BORDER_SOLID_LINE = 13~%uint8 MAP_BORDER_DASH_LINE = 14~%uint8 MAP_BORDER_PHYSICAL = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/SceneCircleObject~%uint64 object_id~%worldmodel_msgs/SceneObjectType object_type~%perception_interface_msgs/Point2d center_point~%float64 radius~%float64 height~%~%================================================================================~%MSG: perception_interface_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneObjects)))
  "Returns full string definition for message of type 'SceneObjects"
  (cl:format cl:nil "uint8 ON_PATH_POLYGON_OBJECTS = 1~%uint8 SURROUND_POLYGON_OBJECTS = 2~%uint8 ON_PATH_CIRCLE_OBJECTS = 4~%uint8 SURROUND_CIRCLE_OBJECTS = 8~%std_msgs/Header header~%worldmodel_msgs/SceneObjectsMeta meta~%uint8 available~%worldmodel_msgs/ScenePolygonObject[] on_path_polygon_objects~%worldmodel_msgs/ScenePolygonObject[] surround_polygon_objects~%worldmodel_msgs/SceneCircleObject[] on_path_circle_objects~%worldmodel_msgs/SceneCircleObject[] surround_circle_objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: worldmodel_msgs/SceneObjectsMeta~%uint64 timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%~%================================================================================~%MSG: worldmodel_msgs/ScenePolygonObject~%uint64 object_id~%worldmodel_msgs/SceneObjectType object_type~%perception_interface_msgs/Polygon3f object_polygon~%~%================================================================================~%MSG: worldmodel_msgs/SceneObjectType~%uint8 UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 MAP_FIRE_EXIT_DOOR = 10~%uint8 MAP_PILLAR = 11~%uint8 MAP_TOLL_GATE = 12~%uint8 MAP_BORDER_SOLID_LINE = 13~%uint8 MAP_BORDER_DASH_LINE = 14~%uint8 MAP_BORDER_PHYSICAL = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/SceneCircleObject~%uint64 object_id~%worldmodel_msgs/SceneObjectType object_type~%perception_interface_msgs/Point2d center_point~%float64 radius~%float64 height~%~%================================================================================~%MSG: perception_interface_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneObjects>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'on_path_polygon_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'surround_polygon_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'on_path_circle_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'surround_circle_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneObjects>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneObjects
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':available (available msg))
    (cl:cons ':on_path_polygon_objects (on_path_polygon_objects msg))
    (cl:cons ':surround_polygon_objects (surround_polygon_objects msg))
    (cl:cons ':on_path_circle_objects (on_path_circle_objects msg))
    (cl:cons ':surround_circle_objects (surround_circle_objects msg))
))
