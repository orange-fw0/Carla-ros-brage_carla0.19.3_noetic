; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude PoleLine.msg.html

(cl:defclass <PoleLine> (roslisp-msg-protocol:ros-message)
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
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (points_2d
    :reader points_2d
    :initarg :points_2d
    :type (cl:vector perception_interface_msgs-msg:PoleLinePoint)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:PoleLinePoint :initial-element (cl:make-instance 'perception_interface_msgs-msg:PoleLinePoint)))
   (type
    :reader type
    :initarg :type
    :type perception_interface_msgs-msg:PoleLineTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:PoleLineTypeEnum))
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0))
)

(cl:defclass PoleLine (<PoleLine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoleLine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoleLine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<PoleLine> is deprecated: use perception_interface_msgs-msg:PoleLine instead.")))

(cl:ensure-generic-function 'camera_source-val :lambda-list '(m))
(cl:defmethod camera_source-val ((m <PoleLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_source-val is deprecated.  Use perception_interface_msgs-msg:camera_source instead.")
  (camera_source m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <PoleLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_model-val is deprecated.  Use perception_interface_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <PoleLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'points_2d-val :lambda-list '(m))
(cl:defmethod points_2d-val ((m <PoleLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_2d-val is deprecated.  Use perception_interface_msgs-msg:points_2d instead.")
  (points_2d m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PoleLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type-val is deprecated.  Use perception_interface_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <PoleLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:track_id-val is deprecated.  Use perception_interface_msgs-msg:track_id instead.")
  (track_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoleLine>) ostream)
  "Serializes a message object of type '<PoleLine>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_2d))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoleLine>) istream)
  "Deserializes a message object of type '<PoleLine>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_2d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_2d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:PoleLinePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoleLine>)))
  "Returns string type for a message object of type '<PoleLine>"
  "perception_interface_msgs/PoleLine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoleLine)))
  "Returns string type for a message object of type 'PoleLine"
  "perception_interface_msgs/PoleLine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoleLine>)))
  "Returns md5sum for a message object of type '<PoleLine>"
  "a58987aa64afaf915d968ea9517efe50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoleLine)))
  "Returns md5sum for a message object of type 'PoleLine"
  "a58987aa64afaf915d968ea9517efe50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoleLine>)))
  "Returns full string definition for message of type '<PoleLine>"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/PoleLinePoint[] points_2d~%perception_interface_msgs/PoleLineTypeEnum type~%uint32 track_id~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/PoleLinePoint~%perception_interface_msgs/Point2f position~%float32 visibility~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/PoleLineTypeEnum~%uint8 POLE_LINE_TYPE_UNKNOWN = 0~%uint8 POLE_LINE_TYPE_GENERAL_POLE = 1~%uint8 POLE_LINE_TYPE_LIGHT_POLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoleLine)))
  "Returns full string definition for message of type 'PoleLine"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%perception_interface_msgs/PoleLinePoint[] points_2d~%perception_interface_msgs/PoleLineTypeEnum type~%uint32 track_id~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/PoleLinePoint~%perception_interface_msgs/Point2f position~%float32 visibility~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/PoleLineTypeEnum~%uint8 POLE_LINE_TYPE_UNKNOWN = 0~%uint8 POLE_LINE_TYPE_GENERAL_POLE = 1~%uint8 POLE_LINE_TYPE_LIGHT_POLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoleLine>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_2d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoleLine>))
  "Converts a ROS message object to a list"
  (cl:list 'PoleLine
    (cl:cons ':camera_source (camera_source msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':score (score msg))
    (cl:cons ':points_2d (points_2d msg))
    (cl:cons ':type (type msg))
    (cl:cons ':track_id (track_id msg))
))
