; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude RoadMark.msg.html

(cl:defclass <RoadMark> (roslisp-msg-protocol:ros-message)
  ((camera_source
    :reader camera_source
    :initarg :camera_source
    :type perception_interface_msgs-msg:CameraSourceEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraSourceEnum))
   (camera_model
    :reader camera_model
    :initarg :camera_model
    :type perception_interface_msgs-msg:CameraModelEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraModelEnum))
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (label_map_2d
    :reader label_map_2d
    :initarg :label_map_2d
    :type perception_interface_msgs-msg:RoadMarkLabelMap
    :initform (cl:make-instance 'perception_interface_msgs-msg:RoadMarkLabelMap)))
)

(cl:defclass RoadMark (<RoadMark>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadMark>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadMark)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<RoadMark> is deprecated: use perception_interface_msgs-msg:RoadMark instead.")))

(cl:ensure-generic-function 'camera_source-val :lambda-list '(m))
(cl:defmethod camera_source-val ((m <RoadMark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_source-val is deprecated.  Use perception_interface_msgs-msg:camera_source instead.")
  (camera_source m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <RoadMark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_model-val is deprecated.  Use perception_interface_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <RoadMark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'label_map_2d-val :lambda-list '(m))
(cl:defmethod label_map_2d-val ((m <RoadMark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:label_map_2d-val is deprecated.  Use perception_interface_msgs-msg:label_map_2d instead.")
  (label_map_2d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadMark>) ostream)
  "Serializes a message object of type '<RoadMark>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'label_map_2d) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadMark>) istream)
  "Deserializes a message object of type '<RoadMark>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'label_map_2d) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadMark>)))
  "Returns string type for a message object of type '<RoadMark>"
  "perception_interface_msgs/RoadMark")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadMark)))
  "Returns string type for a message object of type 'RoadMark"
  "perception_interface_msgs/RoadMark")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadMark>)))
  "Returns md5sum for a message object of type '<RoadMark>"
  "bb95df72b827295726db2c50e9699d57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadMark)))
  "Returns md5sum for a message object of type 'RoadMark"
  "bb95df72b827295726db2c50e9699d57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadMark>)))
  "Returns full string definition for message of type '<RoadMark>"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint8 available~%perception_interface_msgs/RoadMarkLabelMap label_map_2d~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/RoadMarkLabelMap~%uint32 height~%uint32 width~%uint32 channels~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadMark)))
  "Returns full string definition for message of type 'RoadMark"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint8 available~%perception_interface_msgs/RoadMarkLabelMap label_map_2d~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/RoadMarkLabelMap~%uint32 height~%uint32 width~%uint32 channels~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadMark>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'label_map_2d))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadMark>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadMark
    (cl:cons ':camera_source (camera_source msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':available (available msg))
    (cl:cons ':label_map_2d (label_map_2d msg))
))
