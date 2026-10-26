; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude GroundLine.msg.html

(cl:defclass <GroundLine> (roslisp-msg-protocol:ros-message)
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
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type perception_interface_msgs-msg:GroundLineTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:GroundLineTypeEnum))
   (points
    :reader points
    :initarg :points
    :type (cl:vector perception_interface_msgs-msg:Point2f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point2f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point2f)))
   (points_3d
    :reader points_3d
    :initarg :points_3d
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (points_3d_type
    :reader points_3d_type
    :initarg :points_3d_type
    :type perception_interface_msgs-msg:GroundLine3dPointTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:GroundLine3dPointTypeEnum)))
)

(cl:defclass GroundLine (<GroundLine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GroundLine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GroundLine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<GroundLine> is deprecated: use perception_interface_msgs-msg:GroundLine instead.")))

(cl:ensure-generic-function 'camera_source-val :lambda-list '(m))
(cl:defmethod camera_source-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_source-val is deprecated.  Use perception_interface_msgs-msg:camera_source instead.")
  (camera_source m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_model-val is deprecated.  Use perception_interface_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type-val is deprecated.  Use perception_interface_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points-val is deprecated.  Use perception_interface_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'points_3d-val :lambda-list '(m))
(cl:defmethod points_3d-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_3d-val is deprecated.  Use perception_interface_msgs-msg:points_3d instead.")
  (points_3d m))

(cl:ensure-generic-function 'points_3d_type-val :lambda-list '(m))
(cl:defmethod points_3d_type-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_3d_type-val is deprecated.  Use perception_interface_msgs-msg:points_3d_type instead.")
  (points_3d_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GroundLine>) ostream)
  "Serializes a message object of type '<GroundLine>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_3d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_3d))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points_3d_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GroundLine>) istream)
  "Deserializes a message object of type '<GroundLine>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_3d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_3d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points_3d_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GroundLine>)))
  "Returns string type for a message object of type '<GroundLine>"
  "perception_interface_msgs/GroundLine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GroundLine)))
  "Returns string type for a message object of type 'GroundLine"
  "perception_interface_msgs/GroundLine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GroundLine>)))
  "Returns md5sum for a message object of type '<GroundLine>"
  "d45c85367e32120eddb07002a17e0981")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GroundLine)))
  "Returns md5sum for a message object of type 'GroundLine"
  "d45c85367e32120eddb07002a17e0981")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GroundLine>)))
  "Returns full string definition for message of type '<GroundLine>"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint8 available~%float32 score~%perception_interface_msgs/GroundLineTypeEnum type~%perception_interface_msgs/Point2f[] points~%perception_interface_msgs/Point3f[] points_3d~%perception_interface_msgs/GroundLine3dPointTypeEnum points_3d_type~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GroundLineTypeEnum~%uint8 GROUND_LINE_TYPE_UNKNOWN = 0~%uint8 GROUND_LINE_TYPE_WALL = 1~%uint8 GROUND_LINE_TYPE_PILLAR = 2~%uint8 GROUND_LINE_TYPE_FENCE = 3~%uint8 GROUND_LINE_TYPE_STEP = 4~%uint8 GROUND_LINE_TYPE_SPECIAL = 5~%uint8 GROUND_LINE_TYPE_POLE = 6~%uint8 GROUND_LINE_TYPE_WHEELSTOP = 7~%uint8 GROUNDLINE_TYPE_BARRIER = 8~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/GroundLine3dPointTypeEnum~%uint8 GROUND_LINE_3D_POINT_TYPE_RULE = 0~%uint8 GROUND_LINE_3D_POINT_TYPE_DD = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GroundLine)))
  "Returns full string definition for message of type 'GroundLine"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint8 available~%float32 score~%perception_interface_msgs/GroundLineTypeEnum type~%perception_interface_msgs/Point2f[] points~%perception_interface_msgs/Point3f[] points_3d~%perception_interface_msgs/GroundLine3dPointTypeEnum points_3d_type~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GroundLineTypeEnum~%uint8 GROUND_LINE_TYPE_UNKNOWN = 0~%uint8 GROUND_LINE_TYPE_WALL = 1~%uint8 GROUND_LINE_TYPE_PILLAR = 2~%uint8 GROUND_LINE_TYPE_FENCE = 3~%uint8 GROUND_LINE_TYPE_STEP = 4~%uint8 GROUND_LINE_TYPE_SPECIAL = 5~%uint8 GROUND_LINE_TYPE_POLE = 6~%uint8 GROUND_LINE_TYPE_WHEELSTOP = 7~%uint8 GROUNDLINE_TYPE_BARRIER = 8~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/GroundLine3dPointTypeEnum~%uint8 GROUND_LINE_3D_POINT_TYPE_RULE = 0~%uint8 GROUND_LINE_3D_POINT_TYPE_DD = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GroundLine>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points_3d_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GroundLine>))
  "Converts a ROS message object to a list"
  (cl:list 'GroundLine
    (cl:cons ':camera_source (camera_source msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':type (type msg))
    (cl:cons ':points (points msg))
    (cl:cons ':points_3d (points_3d msg))
    (cl:cons ':points_3d_type (points_3d_type msg))
))
