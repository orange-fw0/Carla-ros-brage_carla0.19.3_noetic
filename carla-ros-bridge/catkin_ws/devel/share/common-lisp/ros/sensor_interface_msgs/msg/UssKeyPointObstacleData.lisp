; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UssKeyPointObstacleData.msg.html

(cl:defclass <UssKeyPointObstacleData> (roslisp-msg-protocol:ros-message)
  ((uss_obstacle_posture
    :reader uss_obstacle_posture
    :initarg :uss_obstacle_posture
    :type sensor_interface_msgs-msg:UssObstaclePosture
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UssObstaclePosture))
   (uss_obstacle_info
    :reader uss_obstacle_info
    :initarg :uss_obstacle_info
    :type (cl:vector sensor_interface_msgs-msg:UltrasonicObstacleInfo)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:UltrasonicObstacleInfo :initial-element (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicObstacleInfo))))
)

(cl:defclass UssKeyPointObstacleData (<UssKeyPointObstacleData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssKeyPointObstacleData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssKeyPointObstacleData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UssKeyPointObstacleData> is deprecated: use sensor_interface_msgs-msg:UssKeyPointObstacleData instead.")))

(cl:ensure-generic-function 'uss_obstacle_posture-val :lambda-list '(m))
(cl:defmethod uss_obstacle_posture-val ((m <UssKeyPointObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_obstacle_posture-val is deprecated.  Use sensor_interface_msgs-msg:uss_obstacle_posture instead.")
  (uss_obstacle_posture m))

(cl:ensure-generic-function 'uss_obstacle_info-val :lambda-list '(m))
(cl:defmethod uss_obstacle_info-val ((m <UssKeyPointObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_obstacle_info-val is deprecated.  Use sensor_interface_msgs-msg:uss_obstacle_info instead.")
  (uss_obstacle_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssKeyPointObstacleData>) ostream)
  "Serializes a message object of type '<UssKeyPointObstacleData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uss_obstacle_posture) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_obstacle_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uss_obstacle_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssKeyPointObstacleData>) istream)
  "Deserializes a message object of type '<UssKeyPointObstacleData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uss_obstacle_posture) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_obstacle_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_obstacle_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicObstacleInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssKeyPointObstacleData>)))
  "Returns string type for a message object of type '<UssKeyPointObstacleData>"
  "sensor_interface_msgs/UssKeyPointObstacleData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssKeyPointObstacleData)))
  "Returns string type for a message object of type 'UssKeyPointObstacleData"
  "sensor_interface_msgs/UssKeyPointObstacleData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssKeyPointObstacleData>)))
  "Returns md5sum for a message object of type '<UssKeyPointObstacleData>"
  "6abde67b182ad1617177e02d47c4fbc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssKeyPointObstacleData)))
  "Returns md5sum for a message object of type 'UssKeyPointObstacleData"
  "6abde67b182ad1617177e02d47c4fbc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssKeyPointObstacleData>)))
  "Returns full string definition for message of type '<UssKeyPointObstacleData>"
  (cl:format cl:nil "sensor_interface_msgs/UssObstaclePosture uss_obstacle_posture~%sensor_interface_msgs/UltrasonicObstacleInfo[] uss_obstacle_info~%~%================================================================================~%MSG: sensor_interface_msgs/UssObstaclePosture~%uint64 timestamp~%float32 posture_x~%float32 posture_y~%float32 posture_theta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObstacleInfo~%uint64 timestamp~%float32 key_point_probability~%sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data~%~%================================================================================~%MSG: sensor_interface_msgs/ObstacleKeyPointData~%float32 point_x~%float32 point_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssKeyPointObstacleData)))
  "Returns full string definition for message of type 'UssKeyPointObstacleData"
  (cl:format cl:nil "sensor_interface_msgs/UssObstaclePosture uss_obstacle_posture~%sensor_interface_msgs/UltrasonicObstacleInfo[] uss_obstacle_info~%~%================================================================================~%MSG: sensor_interface_msgs/UssObstaclePosture~%uint64 timestamp~%float32 posture_x~%float32 posture_y~%float32 posture_theta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObstacleInfo~%uint64 timestamp~%float32 key_point_probability~%sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data~%~%================================================================================~%MSG: sensor_interface_msgs/ObstacleKeyPointData~%float32 point_x~%float32 point_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssKeyPointObstacleData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uss_obstacle_posture))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_obstacle_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssKeyPointObstacleData>))
  "Converts a ROS message object to a list"
  (cl:list 'UssKeyPointObstacleData
    (cl:cons ':uss_obstacle_posture (uss_obstacle_posture msg))
    (cl:cons ':uss_obstacle_info (uss_obstacle_info msg))
))
