; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude RoadEdgePerception.msg.html

(cl:defclass <RoadEdgePerception> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:integer
    :initform 0)
   (road_edges
    :reader road_edges
    :initarg :road_edges
    :type (cl:vector perception_interface_msgs-msg:RoadEdge)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:RoadEdge :initial-element (cl:make-instance 'perception_interface_msgs-msg:RoadEdge)))
   (reserved_infos
    :reader reserved_infos
    :initarg :reserved_infos
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass RoadEdgePerception (<RoadEdgePerception>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadEdgePerception>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadEdgePerception)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<RoadEdgePerception> is deprecated: use perception_interface_msgs-msg:RoadEdgePerception instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <RoadEdgePerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'road_edges-val :lambda-list '(m))
(cl:defmethod road_edges-val ((m <RoadEdgePerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:road_edges-val is deprecated.  Use perception_interface_msgs-msg:road_edges instead.")
  (road_edges m))

(cl:ensure-generic-function 'reserved_infos-val :lambda-list '(m))
(cl:defmethod reserved_infos-val ((m <RoadEdgePerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reserved_infos-val is deprecated.  Use perception_interface_msgs-msg:reserved_infos instead.")
  (reserved_infos m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadEdgePerception>)))
    "Constants for message type '<RoadEdgePerception>"
  '((:VISION_PERCEPTION_ROAD_EDGE_RESULT . 1)
    (:VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadEdgePerception)))
    "Constants for message type 'RoadEdgePerception"
  '((:VISION_PERCEPTION_ROAD_EDGE_RESULT . 1)
    (:VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadEdgePerception>) ostream)
  "Serializes a message object of type '<RoadEdgePerception>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'road_edges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'road_edges))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reserved_infos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'reserved_infos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadEdgePerception>) istream)
  "Deserializes a message object of type '<RoadEdgePerception>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'road_edges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'road_edges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:RoadEdge))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved_infos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reserved_infos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadEdgePerception>)))
  "Returns string type for a message object of type '<RoadEdgePerception>"
  "perception_interface_msgs/RoadEdgePerception")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadEdgePerception)))
  "Returns string type for a message object of type 'RoadEdgePerception"
  "perception_interface_msgs/RoadEdgePerception")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadEdgePerception>)))
  "Returns md5sum for a message object of type '<RoadEdgePerception>"
  "85e703ef32750fc5a89a8876694fad2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadEdgePerception)))
  "Returns md5sum for a message object of type 'RoadEdgePerception"
  "85e703ef32750fc5a89a8876694fad2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadEdgePerception>)))
  "Returns full string definition for message of type '<RoadEdgePerception>"
  (cl:format cl:nil "uint8 VISION_PERCEPTION_ROAD_EDGE_RESULT = 1~%uint8 VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS = 2~%uint64 available~%perception_interface_msgs/RoadEdge[] road_edges~%string[] reserved_infos~%~%================================================================================~%MSG: perception_interface_msgs/RoadEdge~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%int32 index~%float32[] points_2d_x~%float32[] points_2d_y~%float32[] points_2d_v~%uint32 track_id~%float32[] coefficient_bv~%float32[] coefficient_bv_sigma~%bool is_failed_3d~%float32[] points_3d_x~%float32[] points_3d_y~%float32[] points_3d_z~%perception_interface_msgs/LidarRoadEdgeTypeEnum lidar_roadedge_type~%float32[] points_3d_hmi_x~%float32[] points_3d_hmi_y~%float32[] points_3d_hmi_z~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LidarRoadEdgeTypeEnum~%uint8 LIDAR_ROADEDGE_TYPE_CONTINUOUS = 0~%uint8 LIDAR_ROADEDGE_TYPE_DISCONTINUOUS = 1~%uint8 LIDAR_ROADEDGE_TYPE_CONSTRUCTION = 2~%uint8 LIDAR_ROADEDGE_TYPE_RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadEdgePerception)))
  "Returns full string definition for message of type 'RoadEdgePerception"
  (cl:format cl:nil "uint8 VISION_PERCEPTION_ROAD_EDGE_RESULT = 1~%uint8 VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS = 2~%uint64 available~%perception_interface_msgs/RoadEdge[] road_edges~%string[] reserved_infos~%~%================================================================================~%MSG: perception_interface_msgs/RoadEdge~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%int32 index~%float32[] points_2d_x~%float32[] points_2d_y~%float32[] points_2d_v~%uint32 track_id~%float32[] coefficient_bv~%float32[] coefficient_bv_sigma~%bool is_failed_3d~%float32[] points_3d_x~%float32[] points_3d_y~%float32[] points_3d_z~%perception_interface_msgs/LidarRoadEdgeTypeEnum lidar_roadedge_type~%float32[] points_3d_hmi_x~%float32[] points_3d_hmi_y~%float32[] points_3d_hmi_z~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LidarRoadEdgeTypeEnum~%uint8 LIDAR_ROADEDGE_TYPE_CONTINUOUS = 0~%uint8 LIDAR_ROADEDGE_TYPE_DISCONTINUOUS = 1~%uint8 LIDAR_ROADEDGE_TYPE_CONSTRUCTION = 2~%uint8 LIDAR_ROADEDGE_TYPE_RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadEdgePerception>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'road_edges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved_infos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadEdgePerception>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadEdgePerception
    (cl:cons ':available (available msg))
    (cl:cons ':road_edges (road_edges msg))
    (cl:cons ':reserved_infos (reserved_infos msg))
))
