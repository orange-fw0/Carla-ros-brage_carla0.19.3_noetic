; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude CameraServiceStatusData.msg.html

(cl:defclass <CameraServiceStatusData> (roslisp-msg-protocol:ros-message)
  ((video_status
    :reader video_status
    :initarg :video_status
    :type (cl:vector sensor_interface_msgs-msg:VideoStatus)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:VideoStatus :initial-element (cl:make-instance 'sensor_interface_msgs-msg:VideoStatus)))
   (camera_status
    :reader camera_status
    :initarg :camera_status
    :type (cl:vector sensor_interface_msgs-msg:CameraStatus)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:CameraStatus :initial-element (cl:make-instance 'sensor_interface_msgs-msg:CameraStatus)))
   (reserved_infos
    :reader reserved_infos
    :initarg :reserved_infos
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass CameraServiceStatusData (<CameraServiceStatusData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraServiceStatusData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraServiceStatusData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<CameraServiceStatusData> is deprecated: use sensor_interface_msgs-msg:CameraServiceStatusData instead.")))

(cl:ensure-generic-function 'video_status-val :lambda-list '(m))
(cl:defmethod video_status-val ((m <CameraServiceStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:video_status-val is deprecated.  Use sensor_interface_msgs-msg:video_status instead.")
  (video_status m))

(cl:ensure-generic-function 'camera_status-val :lambda-list '(m))
(cl:defmethod camera_status-val ((m <CameraServiceStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:camera_status-val is deprecated.  Use sensor_interface_msgs-msg:camera_status instead.")
  (camera_status m))

(cl:ensure-generic-function 'reserved_infos-val :lambda-list '(m))
(cl:defmethod reserved_infos-val ((m <CameraServiceStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved_infos-val is deprecated.  Use sensor_interface_msgs-msg:reserved_infos instead.")
  (reserved_infos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraServiceStatusData>) ostream)
  "Serializes a message object of type '<CameraServiceStatusData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'video_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'video_status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'camera_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'camera_status))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraServiceStatusData>) istream)
  "Deserializes a message object of type '<CameraServiceStatusData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'video_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'video_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:VideoStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'camera_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'camera_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:CameraStatus))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraServiceStatusData>)))
  "Returns string type for a message object of type '<CameraServiceStatusData>"
  "sensor_interface_msgs/CameraServiceStatusData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraServiceStatusData)))
  "Returns string type for a message object of type 'CameraServiceStatusData"
  "sensor_interface_msgs/CameraServiceStatusData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraServiceStatusData>)))
  "Returns md5sum for a message object of type '<CameraServiceStatusData>"
  "ec7dafc38c3a6a2d38ab63e72412943a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraServiceStatusData)))
  "Returns md5sum for a message object of type 'CameraServiceStatusData"
  "ec7dafc38c3a6a2d38ab63e72412943a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraServiceStatusData>)))
  "Returns full string definition for message of type '<CameraServiceStatusData>"
  (cl:format cl:nil "sensor_interface_msgs/VideoStatus[] video_status~%sensor_interface_msgs/CameraStatus[] camera_status~%string[] reserved_infos~%~%================================================================================~%MSG: sensor_interface_msgs/VideoStatus~%uint8 AVM_SURROUND = 0~%uint8 AVM_ARROUND = 1~%uint8 DVR = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 service~%uint16 status~%perception_interface_msgs/CameraSourceEnum[] camera_name_list~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/CameraStatus~%perception_interface_msgs/CameraSourceEnum camera_name~%uint16 status~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraServiceStatusData)))
  "Returns full string definition for message of type 'CameraServiceStatusData"
  (cl:format cl:nil "sensor_interface_msgs/VideoStatus[] video_status~%sensor_interface_msgs/CameraStatus[] camera_status~%string[] reserved_infos~%~%================================================================================~%MSG: sensor_interface_msgs/VideoStatus~%uint8 AVM_SURROUND = 0~%uint8 AVM_ARROUND = 1~%uint8 DVR = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 service~%uint16 status~%perception_interface_msgs/CameraSourceEnum[] camera_name_list~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/CameraStatus~%perception_interface_msgs/CameraSourceEnum camera_name~%uint16 status~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraServiceStatusData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'video_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'camera_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved_infos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraServiceStatusData>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraServiceStatusData
    (cl:cons ':video_status (video_status msg))
    (cl:cons ':camera_status (camera_status msg))
    (cl:cons ':reserved_infos (reserved_infos msg))
))
