; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UssRtObstaclePtsData.msg.html

(cl:defclass <UssRtObstaclePtsData> (roslisp-msg-protocol:ros-message)
  ((uss_obstacle_pts_posture
    :reader uss_obstacle_pts_posture
    :initarg :uss_obstacle_pts_posture
    :type sensor_interface_msgs-msg:UssObstaclePosture
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UssObstaclePosture))
   (uss_rt_obstacle_pts_data
    :reader uss_rt_obstacle_pts_data
    :initarg :uss_rt_obstacle_pts_data
    :type (cl:vector sensor_interface_msgs-msg:ObstacleKeyPointData)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:ObstacleKeyPointData :initial-element (cl:make-instance 'sensor_interface_msgs-msg:ObstacleKeyPointData))))
)

(cl:defclass UssRtObstaclePtsData (<UssRtObstaclePtsData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssRtObstaclePtsData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssRtObstaclePtsData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UssRtObstaclePtsData> is deprecated: use sensor_interface_msgs-msg:UssRtObstaclePtsData instead.")))

(cl:ensure-generic-function 'uss_obstacle_pts_posture-val :lambda-list '(m))
(cl:defmethod uss_obstacle_pts_posture-val ((m <UssRtObstaclePtsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_obstacle_pts_posture-val is deprecated.  Use sensor_interface_msgs-msg:uss_obstacle_pts_posture instead.")
  (uss_obstacle_pts_posture m))

(cl:ensure-generic-function 'uss_rt_obstacle_pts_data-val :lambda-list '(m))
(cl:defmethod uss_rt_obstacle_pts_data-val ((m <UssRtObstaclePtsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_rt_obstacle_pts_data-val is deprecated.  Use sensor_interface_msgs-msg:uss_rt_obstacle_pts_data instead.")
  (uss_rt_obstacle_pts_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssRtObstaclePtsData>) ostream)
  "Serializes a message object of type '<UssRtObstaclePtsData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uss_obstacle_pts_posture) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_rt_obstacle_pts_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uss_rt_obstacle_pts_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssRtObstaclePtsData>) istream)
  "Deserializes a message object of type '<UssRtObstaclePtsData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uss_obstacle_pts_posture) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_rt_obstacle_pts_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_rt_obstacle_pts_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:ObstacleKeyPointData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssRtObstaclePtsData>)))
  "Returns string type for a message object of type '<UssRtObstaclePtsData>"
  "sensor_interface_msgs/UssRtObstaclePtsData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssRtObstaclePtsData)))
  "Returns string type for a message object of type 'UssRtObstaclePtsData"
  "sensor_interface_msgs/UssRtObstaclePtsData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssRtObstaclePtsData>)))
  "Returns md5sum for a message object of type '<UssRtObstaclePtsData>"
  "b762c1c7a7f39a8ffe865a5830d0adf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssRtObstaclePtsData)))
  "Returns md5sum for a message object of type 'UssRtObstaclePtsData"
  "b762c1c7a7f39a8ffe865a5830d0adf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssRtObstaclePtsData>)))
  "Returns full string definition for message of type '<UssRtObstaclePtsData>"
  (cl:format cl:nil "sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture~%sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data~%~%================================================================================~%MSG: sensor_interface_msgs/UssObstaclePosture~%uint64 timestamp~%float32 posture_x~%float32 posture_y~%float32 posture_theta~%~%================================================================================~%MSG: sensor_interface_msgs/ObstacleKeyPointData~%float32 point_x~%float32 point_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssRtObstaclePtsData)))
  "Returns full string definition for message of type 'UssRtObstaclePtsData"
  (cl:format cl:nil "sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture~%sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data~%~%================================================================================~%MSG: sensor_interface_msgs/UssObstaclePosture~%uint64 timestamp~%float32 posture_x~%float32 posture_y~%float32 posture_theta~%~%================================================================================~%MSG: sensor_interface_msgs/ObstacleKeyPointData~%float32 point_x~%float32 point_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssRtObstaclePtsData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uss_obstacle_pts_posture))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_rt_obstacle_pts_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssRtObstaclePtsData>))
  "Converts a ROS message object to a list"
  (cl:list 'UssRtObstaclePtsData
    (cl:cons ':uss_obstacle_pts_posture (uss_obstacle_pts_posture msg))
    (cl:cons ':uss_rt_obstacle_pts_data (uss_rt_obstacle_pts_data msg))
))
