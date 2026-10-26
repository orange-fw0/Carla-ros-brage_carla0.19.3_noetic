; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FusionGroundLine.msg.html

(cl:defclass <FusionGroundLine> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (ground_line_data
    :reader ground_line_data
    :initarg :ground_line_data
    :type (cl:vector perception_interface_msgs-msg:FusionGroundLineData)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:FusionGroundLineData :initial-element (cl:make-instance 'perception_interface_msgs-msg:FusionGroundLineData)))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass FusionGroundLine (<FusionGroundLine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionGroundLine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionGroundLine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FusionGroundLine> is deprecated: use perception_interface_msgs-msg:FusionGroundLine instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <FusionGroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'ground_line_data-val :lambda-list '(m))
(cl:defmethod ground_line_data-val ((m <FusionGroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:ground_line_data-val is deprecated.  Use perception_interface_msgs-msg:ground_line_data instead.")
  (ground_line_data m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <FusionGroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reserved_info-val is deprecated.  Use perception_interface_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FusionGroundLine>)))
    "Constants for message type '<FusionGroundLine>"
  '((:FUSION_GROUND_LINE_AVAILABLE_DATA . 1)
    (:FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FusionGroundLine)))
    "Constants for message type 'FusionGroundLine"
  '((:FUSION_GROUND_LINE_AVAILABLE_DATA . 1)
    (:FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionGroundLine>) ostream)
  "Serializes a message object of type '<FusionGroundLine>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ground_line_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ground_line_data))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reserved_info))))
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
   (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionGroundLine>) istream)
  "Deserializes a message object of type '<FusionGroundLine>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ground_line_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ground_line_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:FusionGroundLineData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reserved_info)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionGroundLine>)))
  "Returns string type for a message object of type '<FusionGroundLine>"
  "perception_interface_msgs/FusionGroundLine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionGroundLine)))
  "Returns string type for a message object of type 'FusionGroundLine"
  "perception_interface_msgs/FusionGroundLine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionGroundLine>)))
  "Returns md5sum for a message object of type '<FusionGroundLine>"
  "55b01f23e6e888132d3c5eb272f4d8f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionGroundLine)))
  "Returns md5sum for a message object of type 'FusionGroundLine"
  "55b01f23e6e888132d3c5eb272f4d8f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionGroundLine>)))
  "Returns full string definition for message of type '<FusionGroundLine>"
  (cl:format cl:nil "uint8 FUSION_GROUND_LINE_AVAILABLE_DATA = 1~%uint8 FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO = 2~%uint8 available~%perception_interface_msgs/FusionGroundLineData[] ground_line_data~%string[] reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionGroundLineData~%uint8 FUSION_GROUND_LINE_SOURCE_VISON = 1~%uint8 FUSION_GROUND_LINE_SOURCE_ULTRASONIC = 2~%uint8 FUSION_GROUND_LINE_SOURCE_DDUSS = 3~%uint8 available~%perception_interface_msgs/GroundLineTypeEnum type~%uint64 track_id~%float32 score~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/FusionObstacleTypeEnum obstacle_type~%perception_interface_msgs/FusionObstaclePointType obstacle_point_type~%string reserved_info~%float32[] points_height~%~%================================================================================~%MSG: perception_interface_msgs/GroundLineTypeEnum~%uint8 GROUND_LINE_TYPE_UNKNOWN = 0~%uint8 GROUND_LINE_TYPE_WALL = 1~%uint8 GROUND_LINE_TYPE_PILLAR = 2~%uint8 GROUND_LINE_TYPE_FENCE = 3~%uint8 GROUND_LINE_TYPE_STEP = 4~%uint8 GROUND_LINE_TYPE_SPECIAL = 5~%uint8 GROUND_LINE_TYPE_POLE = 6~%uint8 GROUND_LINE_TYPE_WHEELSTOP = 7~%uint8 GROUNDLINE_TYPE_BARRIER = 8~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstacleTypeEnum~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0~%uint8 FUSION_OBSTACLE_TYPE_WALL = 1~%uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2~%uint8 FUSION_OBSTACLE_TYPE_FENCE = 3~%uint8 FUSION_OBSTACLE_TYPE_STEP = 4~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5~%uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6~%uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7~%uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8~%uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12~%uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14~%uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstaclePointType~%uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_SCATTER = 1~%uint8 POINT_TYPE_POLYLINE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionGroundLine)))
  "Returns full string definition for message of type 'FusionGroundLine"
  (cl:format cl:nil "uint8 FUSION_GROUND_LINE_AVAILABLE_DATA = 1~%uint8 FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO = 2~%uint8 available~%perception_interface_msgs/FusionGroundLineData[] ground_line_data~%string[] reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionGroundLineData~%uint8 FUSION_GROUND_LINE_SOURCE_VISON = 1~%uint8 FUSION_GROUND_LINE_SOURCE_ULTRASONIC = 2~%uint8 FUSION_GROUND_LINE_SOURCE_DDUSS = 3~%uint8 available~%perception_interface_msgs/GroundLineTypeEnum type~%uint64 track_id~%float32 score~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/FusionObstacleTypeEnum obstacle_type~%perception_interface_msgs/FusionObstaclePointType obstacle_point_type~%string reserved_info~%float32[] points_height~%~%================================================================================~%MSG: perception_interface_msgs/GroundLineTypeEnum~%uint8 GROUND_LINE_TYPE_UNKNOWN = 0~%uint8 GROUND_LINE_TYPE_WALL = 1~%uint8 GROUND_LINE_TYPE_PILLAR = 2~%uint8 GROUND_LINE_TYPE_FENCE = 3~%uint8 GROUND_LINE_TYPE_STEP = 4~%uint8 GROUND_LINE_TYPE_SPECIAL = 5~%uint8 GROUND_LINE_TYPE_POLE = 6~%uint8 GROUND_LINE_TYPE_WHEELSTOP = 7~%uint8 GROUNDLINE_TYPE_BARRIER = 8~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstacleTypeEnum~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0~%uint8 FUSION_OBSTACLE_TYPE_WALL = 1~%uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2~%uint8 FUSION_OBSTACLE_TYPE_FENCE = 3~%uint8 FUSION_OBSTACLE_TYPE_STEP = 4~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5~%uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6~%uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7~%uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8~%uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12~%uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14~%uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstaclePointType~%uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_SCATTER = 1~%uint8 POINT_TYPE_POLYLINE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionGroundLine>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ground_line_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionGroundLine>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionGroundLine
    (cl:cons ':available (available msg))
    (cl:cons ':ground_line_data (ground_line_data msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
