; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude LidarOffcalibInfo.msg.html

(cl:defclass <LidarOffcalibInfo> (roslisp-msg-protocol:ros-message)
  ((lidar_name
    :reader lidar_name
    :initarg :lidar_name
    :type cl:string
    :initform "")
   (lidar_id
    :reader lidar_id
    :initarg :lidar_id
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
    :type calib_interface_msgs-msg:LidarOffcalibDetailedErrorCodeEnum
    :initform (cl:make-instance 'calib_interface_msgs-msg:LidarOffcalibDetailedErrorCodeEnum)))
)

(cl:defclass LidarOffcalibInfo (<LidarOffcalibInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarOffcalibInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarOffcalibInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<LidarOffcalibInfo> is deprecated: use calib_interface_msgs-msg:LidarOffcalibInfo instead.")))

(cl:ensure-generic-function 'lidar_name-val :lambda-list '(m))
(cl:defmethod lidar_name-val ((m <LidarOffcalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:lidar_name-val is deprecated.  Use calib_interface_msgs-msg:lidar_name instead.")
  (lidar_name m))

(cl:ensure-generic-function 'lidar_id-val :lambda-list '(m))
(cl:defmethod lidar_id-val ((m <LidarOffcalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:lidar_id-val is deprecated.  Use calib_interface_msgs-msg:lidar_id instead.")
  (lidar_id m))

(cl:ensure-generic-function 'attach_camera_names-val :lambda-list '(m))
(cl:defmethod attach_camera_names-val ((m <LidarOffcalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:attach_camera_names-val is deprecated.  Use calib_interface_msgs-msg:attach_camera_names instead.")
  (attach_camera_names m))

(cl:ensure-generic-function 'attach_camera_ids-val :lambda-list '(m))
(cl:defmethod attach_camera_ids-val ((m <LidarOffcalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:attach_camera_ids-val is deprecated.  Use calib_interface_msgs-msg:attach_camera_ids instead.")
  (attach_camera_ids m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <LidarOffcalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:error_code-val is deprecated.  Use calib_interface_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarOffcalibInfo>) ostream)
  "Serializes a message object of type '<LidarOffcalibInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lidar_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lidar_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lidar_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lidar_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lidar_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lidar_id)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarOffcalibInfo>) istream)
  "Deserializes a message object of type '<LidarOffcalibInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lidar_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lidar_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lidar_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lidar_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lidar_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lidar_id)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarOffcalibInfo>)))
  "Returns string type for a message object of type '<LidarOffcalibInfo>"
  "calib_interface_msgs/LidarOffcalibInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarOffcalibInfo)))
  "Returns string type for a message object of type 'LidarOffcalibInfo"
  "calib_interface_msgs/LidarOffcalibInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarOffcalibInfo>)))
  "Returns md5sum for a message object of type '<LidarOffcalibInfo>"
  "4f954803b35dbf900a63e4757971e44a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarOffcalibInfo)))
  "Returns md5sum for a message object of type 'LidarOffcalibInfo"
  "4f954803b35dbf900a63e4757971e44a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarOffcalibInfo>)))
  "Returns full string definition for message of type '<LidarOffcalibInfo>"
  (cl:format cl:nil "string lidar_name~%uint32 lidar_id~%perception_interface_msgs/CameraSourceEnum[] attach_camera_names~%uint32[] attach_camera_ids~%calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarOffcalibInfo)))
  "Returns full string definition for message of type 'LidarOffcalibInfo"
  (cl:format cl:nil "string lidar_name~%uint32 lidar_id~%perception_interface_msgs/CameraSourceEnum[] attach_camera_names~%uint32[] attach_camera_ids~%calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarOffcalibInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'lidar_name))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'attach_camera_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'attach_camera_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarOffcalibInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarOffcalibInfo
    (cl:cons ':lidar_name (lidar_name msg))
    (cl:cons ':lidar_id (lidar_id msg))
    (cl:cons ':attach_camera_names (attach_camera_names msg))
    (cl:cons ':attach_camera_ids (attach_camera_ids msg))
    (cl:cons ':error_code (error_code msg))
))
