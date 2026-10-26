; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude LidarOffcalibReport.msg.html

(cl:defclass <LidarOffcalibReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (lidar_offcalib_data
    :reader lidar_offcalib_data
    :initarg :lidar_offcalib_data
    :type (cl:vector calib_interface_msgs-msg:LidarOffcalibInfo)
   :initform (cl:make-array 0 :element-type 'calib_interface_msgs-msg:LidarOffcalibInfo :initial-element (cl:make-instance 'calib_interface_msgs-msg:LidarOffcalibInfo)))
   (travel_distance
    :reader travel_distance
    :initarg :travel_distance
    :type cl:float
    :initform 0.0)
   (post_processing_progress
    :reader post_processing_progress
    :initarg :post_processing_progress
    :type cl:float
    :initform 0.0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type calib_interface_msgs-msg:LidarOffcalibDetailedErrorCodeEnum
    :initform (cl:make-instance 'calib_interface_msgs-msg:LidarOffcalibDetailedErrorCodeEnum)))
)

(cl:defclass LidarOffcalibReport (<LidarOffcalibReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarOffcalibReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarOffcalibReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<LidarOffcalibReport> is deprecated: use calib_interface_msgs-msg:LidarOffcalibReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LidarOffcalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:available-val is deprecated.  Use calib_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'lidar_offcalib_data-val :lambda-list '(m))
(cl:defmethod lidar_offcalib_data-val ((m <LidarOffcalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:lidar_offcalib_data-val is deprecated.  Use calib_interface_msgs-msg:lidar_offcalib_data instead.")
  (lidar_offcalib_data m))

(cl:ensure-generic-function 'travel_distance-val :lambda-list '(m))
(cl:defmethod travel_distance-val ((m <LidarOffcalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:travel_distance-val is deprecated.  Use calib_interface_msgs-msg:travel_distance instead.")
  (travel_distance m))

(cl:ensure-generic-function 'post_processing_progress-val :lambda-list '(m))
(cl:defmethod post_processing_progress-val ((m <LidarOffcalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:post_processing_progress-val is deprecated.  Use calib_interface_msgs-msg:post_processing_progress instead.")
  (post_processing_progress m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <LidarOffcalibReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:error_code-val is deprecated.  Use calib_interface_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarOffcalibReport>) ostream)
  "Serializes a message object of type '<LidarOffcalibReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lidar_offcalib_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lidar_offcalib_data))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'travel_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'post_processing_progress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_code) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarOffcalibReport>) istream)
  "Deserializes a message object of type '<LidarOffcalibReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lidar_offcalib_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lidar_offcalib_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'calib_interface_msgs-msg:LidarOffcalibInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'travel_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'post_processing_progress) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_code) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarOffcalibReport>)))
  "Returns string type for a message object of type '<LidarOffcalibReport>"
  "calib_interface_msgs/LidarOffcalibReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarOffcalibReport)))
  "Returns string type for a message object of type 'LidarOffcalibReport"
  "calib_interface_msgs/LidarOffcalibReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarOffcalibReport>)))
  "Returns md5sum for a message object of type '<LidarOffcalibReport>"
  "58dcb83367f2f78ba7b360a036cca333")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarOffcalibReport)))
  "Returns md5sum for a message object of type 'LidarOffcalibReport"
  "58dcb83367f2f78ba7b360a036cca333")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarOffcalibReport>)))
  "Returns full string definition for message of type '<LidarOffcalibReport>"
  (cl:format cl:nil "uint8 available~%calib_interface_msgs/LidarOffcalibInfo[] lidar_offcalib_data~%float32 travel_distance~%float32 post_processing_progress~%calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: calib_interface_msgs/LidarOffcalibInfo~%string lidar_name~%uint32 lidar_id~%perception_interface_msgs/CameraSourceEnum[] attach_camera_names~%uint32[] attach_camera_ids~%calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarOffcalibReport)))
  "Returns full string definition for message of type 'LidarOffcalibReport"
  (cl:format cl:nil "uint8 available~%calib_interface_msgs/LidarOffcalibInfo[] lidar_offcalib_data~%float32 travel_distance~%float32 post_processing_progress~%calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: calib_interface_msgs/LidarOffcalibInfo~%string lidar_name~%uint32 lidar_id~%perception_interface_msgs/CameraSourceEnum[] attach_camera_names~%uint32[] attach_camera_ids~%calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarOffcalibReport>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lidar_offcalib_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarOffcalibReport>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarOffcalibReport
    (cl:cons ':available (available msg))
    (cl:cons ':lidar_offcalib_data (lidar_offcalib_data msg))
    (cl:cons ':travel_distance (travel_distance msg))
    (cl:cons ':post_processing_progress (post_processing_progress msg))
    (cl:cons ':error_code (error_code msg))
))
