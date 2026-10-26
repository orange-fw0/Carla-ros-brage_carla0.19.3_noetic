; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VisionDataDesensibilisationObject.msg.html

(cl:defclass <VisionDataDesensibilisationObject> (roslisp-msg-protocol:ros-message)
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
   (type_info
    :reader type_info
    :initarg :type_info
    :type perception_interface_msgs-msg:DataDesensibilisationTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:DataDesensibilisationTypeEnum))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (bounding_box_2d
    :reader bounding_box_2d
    :initarg :bounding_box_2d
    :type perception_interface_msgs-msg:Rect4f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Rect4f))
   (bounding_box_2d_raw
    :reader bounding_box_2d_raw
    :initarg :bounding_box_2d_raw
    :type perception_interface_msgs-msg:Rect4f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Rect4f)))
)

(cl:defclass VisionDataDesensibilisationObject (<VisionDataDesensibilisationObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionDataDesensibilisationObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionDataDesensibilisationObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VisionDataDesensibilisationObject> is deprecated: use perception_interface_msgs-msg:VisionDataDesensibilisationObject instead.")))

(cl:ensure-generic-function 'camera_source-val :lambda-list '(m))
(cl:defmethod camera_source-val ((m <VisionDataDesensibilisationObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_source-val is deprecated.  Use perception_interface_msgs-msg:camera_source instead.")
  (camera_source m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <VisionDataDesensibilisationObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_model-val is deprecated.  Use perception_interface_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'type_info-val :lambda-list '(m))
(cl:defmethod type_info-val ((m <VisionDataDesensibilisationObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type_info-val is deprecated.  Use perception_interface_msgs-msg:type_info instead.")
  (type_info m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <VisionDataDesensibilisationObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'bounding_box_2d-val :lambda-list '(m))
(cl:defmethod bounding_box_2d-val ((m <VisionDataDesensibilisationObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:bounding_box_2d-val is deprecated.  Use perception_interface_msgs-msg:bounding_box_2d instead.")
  (bounding_box_2d m))

(cl:ensure-generic-function 'bounding_box_2d_raw-val :lambda-list '(m))
(cl:defmethod bounding_box_2d_raw-val ((m <VisionDataDesensibilisationObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:bounding_box_2d_raw-val is deprecated.  Use perception_interface_msgs-msg:bounding_box_2d_raw instead.")
  (bounding_box_2d_raw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionDataDesensibilisationObject>) ostream)
  "Serializes a message object of type '<VisionDataDesensibilisationObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type_info) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_2d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_2d_raw) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionDataDesensibilisationObject>) istream)
  "Deserializes a message object of type '<VisionDataDesensibilisationObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type_info) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_2d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_2d_raw) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionDataDesensibilisationObject>)))
  "Returns string type for a message object of type '<VisionDataDesensibilisationObject>"
  "perception_interface_msgs/VisionDataDesensibilisationObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionDataDesensibilisationObject)))
  "Returns string type for a message object of type 'VisionDataDesensibilisationObject"
  "perception_interface_msgs/VisionDataDesensibilisationObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionDataDesensibilisationObject>)))
  "Returns md5sum for a message object of type '<VisionDataDesensibilisationObject>"
  "42ad93b377f7131bb37668dce2805721")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionDataDesensibilisationObject)))
  "Returns md5sum for a message object of type 'VisionDataDesensibilisationObject"
  "42ad93b377f7131bb37668dce2805721")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionDataDesensibilisationObject>)))
  "Returns full string definition for message of type '<VisionDataDesensibilisationObject>"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%perception_interface_msgs/DataDesensibilisationTypeEnum type_info~%float32 score~%perception_interface_msgs/Rect4f bounding_box_2d~%perception_interface_msgs/Rect4f bounding_box_2d_raw~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/DataDesensibilisationTypeEnum~%uint8 DATA_DESENSIBILISATION_TYPE_UNKNOWN = 0~%uint8 DATA_DESENSIBILISATION_TYPE_HUMAN_FACE = 1~%uint8 DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionDataDesensibilisationObject)))
  "Returns full string definition for message of type 'VisionDataDesensibilisationObject"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%perception_interface_msgs/DataDesensibilisationTypeEnum type_info~%float32 score~%perception_interface_msgs/Rect4f bounding_box_2d~%perception_interface_msgs/Rect4f bounding_box_2d_raw~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/DataDesensibilisationTypeEnum~%uint8 DATA_DESENSIBILISATION_TYPE_UNKNOWN = 0~%uint8 DATA_DESENSIBILISATION_TYPE_HUMAN_FACE = 1~%uint8 DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Rect4f~%float32 left~%float32 top~%float32 right~%float32 bottom~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionDataDesensibilisationObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type_info))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_2d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_2d_raw))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionDataDesensibilisationObject>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionDataDesensibilisationObject
    (cl:cons ':camera_source (camera_source msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':type_info (type_info msg))
    (cl:cons ':score (score msg))
    (cl:cons ':bounding_box_2d (bounding_box_2d msg))
    (cl:cons ':bounding_box_2d_raw (bounding_box_2d_raw msg))
))
