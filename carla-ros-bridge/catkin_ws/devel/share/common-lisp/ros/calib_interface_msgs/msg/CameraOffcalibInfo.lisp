; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude CameraOffcalibInfo.msg.html

(cl:defclass <CameraOffcalibInfo> (roslisp-msg-protocol:ros-message)
  ((camera_name
    :reader camera_name
    :initarg :camera_name
    :type perception_interface_msgs-msg:CameraSourceEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraSourceEnum))
   (camera_id
    :reader camera_id
    :initarg :camera_id
    :type cl:integer
    :initform 0)
   (attach_camera_names
    :reader attach_camera_names
    :initarg :attach_camera_names
    :type (cl:vector perception_interface_msgs-msg:CameraSourceEnum)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:CameraSourceEnum :initial-element (cl:make-instance 'perception_interface_msgs-msg:CameraSourceEnum)))
   (attach_camera_ids
    :reader attach_camera_ids
    :initarg :attach_camera_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (error_code
    :reader error_code
    :initarg :error_code
    :type calib_interface_msgs-msg:CamOffcalibDetailedErrorCodeEnum
    :initform (cl:make-instance 'calib_interface_msgs-msg:CamOffcalibDetailedErrorCodeEnum)))
)

(cl:defclass CameraOffcalibInfo (<CameraOffcalibInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraOffcalibInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraOffcalibInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<CameraOffcalibInfo> is deprecated: use calib_interface_msgs-msg:CameraOffcalibInfo instead.")))

(cl:ensure-generic-function 'camera_name-val :lambda-list '(m))
(cl:defmethod camera_name-val ((m <CameraOffcalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:camera_name-val is deprecated.  Use calib_interface_msgs-msg:camera_name instead.")
  (camera_name m))

(cl:ensure-generic-function 'camera_id-val :lambda-list '(m))
(cl:defmethod camera_id-val ((m <CameraOffcalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:camera_id-val is deprecated.  Use calib_interface_msgs-msg:camera_id instead.")
  (camera_id m))

(cl:ensure-generic-function 'attach_camera_names-val :lambda-list '(m))
(cl:defmethod attach_camera_names-val ((m <CameraOffcalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:attach_camera_names-val is deprecated.  Use calib_interface_msgs-msg:attach_camera_names instead.")
  (attach_camera_names m))

(cl:ensure-generic-function 'attach_camera_ids-val :lambda-list '(m))
(cl:defmethod attach_camera_ids-val ((m <CameraOffcalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:attach_camera_ids-val is deprecated.  Use calib_interface_msgs-msg:attach_camera_ids instead.")
  (attach_camera_ids m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CameraOffcalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:error_code-val is deprecated.  Use calib_interface_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraOffcalibInfo>) ostream)
  "Serializes a message object of type '<CameraOffcalibInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_name) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'camera_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'camera_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'camera_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'attach_camera_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'attach_camera_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'attach_camera_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'attach_camera_ids))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_code) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraOffcalibInfo>) istream)
  "Deserializes a message object of type '<CameraOffcalibInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_name) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'camera_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'camera_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'camera_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'attach_camera_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'attach_camera_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:CameraSourceEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'attach_camera_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'attach_camera_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_code) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraOffcalibInfo>)))
  "Returns string type for a message object of type '<CameraOffcalibInfo>"
  "calib_interface_msgs/CameraOffcalibInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraOffcalibInfo)))
  "Returns string type for a message object of type 'CameraOffcalibInfo"
  "calib_interface_msgs/CameraOffcalibInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraOffcalibInfo>)))
  "Returns md5sum for a message object of type '<CameraOffcalibInfo>"
  "301d3cee4f8cdb9ef459bca0d04d9f3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraOffcalibInfo)))
  "Returns md5sum for a message object of type 'CameraOffcalibInfo"
  "301d3cee4f8cdb9ef459bca0d04d9f3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraOffcalibInfo>)))
  "Returns full string definition for message of type '<CameraOffcalibInfo>"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_name~%uint32 camera_id~%perception_interface_msgs/CameraSourceEnum[] attach_camera_names~%uint32[] attach_camera_ids~%calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 EGO_INIT_FAILED = 1~%uint16 NEED_CHECKED_CAM_NUM_ZERO = 2~%uint16 EGO_POSE_CAM_VALID_UNACCESSABLE = 10~%uint16 EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE = 11~%uint16 EGO_STATE_CAM_VALID_FREQ_TOO_LOW = 12~%uint16 EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW = 13~%uint16 CAM_VALID_VISUAL_FEATURE_INFO_NULL = 50~%uint16 CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW = 51~%uint16 CAM_VALID_VTRACKFRAMEBUFFER_FILL = 52~%uint16 CAM_VALID_STATEBUFFER_FILL = 53~%uint16 CAM_VALID_VALID_FEATURE_NUM_TOO_FEW = 54~%uint16 CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL = 100~%uint16 CROSS_CAM_VALID_STATEBUFFER_FILL = 101~%uint16 UPDATE_CAM_ID_OUT_OF_RANGE = 150~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraOffcalibInfo)))
  "Returns full string definition for message of type 'CameraOffcalibInfo"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_name~%uint32 camera_id~%perception_interface_msgs/CameraSourceEnum[] attach_camera_names~%uint32[] attach_camera_ids~%calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 EGO_INIT_FAILED = 1~%uint16 NEED_CHECKED_CAM_NUM_ZERO = 2~%uint16 EGO_POSE_CAM_VALID_UNACCESSABLE = 10~%uint16 EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE = 11~%uint16 EGO_STATE_CAM_VALID_FREQ_TOO_LOW = 12~%uint16 EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW = 13~%uint16 CAM_VALID_VISUAL_FEATURE_INFO_NULL = 50~%uint16 CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW = 51~%uint16 CAM_VALID_VTRACKFRAMEBUFFER_FILL = 52~%uint16 CAM_VALID_STATEBUFFER_FILL = 53~%uint16 CAM_VALID_VALID_FEATURE_NUM_TOO_FEW = 54~%uint16 CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL = 100~%uint16 CROSS_CAM_VALID_STATEBUFFER_FILL = 101~%uint16 UPDATE_CAM_ID_OUT_OF_RANGE = 150~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraOffcalibInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_name))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'attach_camera_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'attach_camera_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraOffcalibInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraOffcalibInfo
    (cl:cons ':camera_name (camera_name msg))
    (cl:cons ':camera_id (camera_id msg))
    (cl:cons ':attach_camera_names (attach_camera_names msg))
    (cl:cons ':attach_camera_ids (attach_camera_ids msg))
    (cl:cons ':error_code (error_code msg))
))
