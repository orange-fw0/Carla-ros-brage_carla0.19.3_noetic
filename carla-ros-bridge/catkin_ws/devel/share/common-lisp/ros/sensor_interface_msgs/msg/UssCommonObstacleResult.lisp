; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UssCommonObstacleResult.msg.html

(cl:defclass <UssCommonObstacleResult> (roslisp-msg-protocol:ros-message)
  ((uss_obstacle_data
    :reader uss_obstacle_data
    :initarg :uss_obstacle_data
    :type (cl:vector sensor_interface_msgs-msg:CommonUltrasonicObstacleData)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:CommonUltrasonicObstacleData :initial-element (cl:make-instance 'sensor_interface_msgs-msg:CommonUltrasonicObstacleData))))
)

(cl:defclass UssCommonObstacleResult (<UssCommonObstacleResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssCommonObstacleResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssCommonObstacleResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UssCommonObstacleResult> is deprecated: use sensor_interface_msgs-msg:UssCommonObstacleResult instead.")))

(cl:ensure-generic-function 'uss_obstacle_data-val :lambda-list '(m))
(cl:defmethod uss_obstacle_data-val ((m <UssCommonObstacleResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_obstacle_data-val is deprecated.  Use sensor_interface_msgs-msg:uss_obstacle_data instead.")
  (uss_obstacle_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssCommonObstacleResult>) ostream)
  "Serializes a message object of type '<UssCommonObstacleResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_obstacle_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uss_obstacle_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssCommonObstacleResult>) istream)
  "Deserializes a message object of type '<UssCommonObstacleResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_obstacle_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_obstacle_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:CommonUltrasonicObstacleData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssCommonObstacleResult>)))
  "Returns string type for a message object of type '<UssCommonObstacleResult>"
  "sensor_interface_msgs/UssCommonObstacleResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssCommonObstacleResult)))
  "Returns string type for a message object of type 'UssCommonObstacleResult"
  "sensor_interface_msgs/UssCommonObstacleResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssCommonObstacleResult>)))
  "Returns md5sum for a message object of type '<UssCommonObstacleResult>"
  "36ee27dbfe13421216dc2ea48c895d50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssCommonObstacleResult)))
  "Returns md5sum for a message object of type 'UssCommonObstacleResult"
  "36ee27dbfe13421216dc2ea48c895d50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssCommonObstacleResult>)))
  "Returns full string definition for message of type '<UssCommonObstacleResult>"
  (cl:format cl:nil "sensor_interface_msgs/CommonUltrasonicObstacleData[] uss_obstacle_data~%~%================================================================================~%MSG: sensor_interface_msgs/CommonUltrasonicObstacleData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UltrasonicObjectType obj_type~%sensor_interface_msgs/UltrasonicObjectHeiType obj_height~%float32 obj_height_probability~%float32 obj_probability~%float32 obj_start_X~%float32 obj_start_Y~%float32 obj_end_X~%float32 obj_end_Y~%float32 obj_height_value~%float32 major_axis_error~%float32 minor_axis_variance~%float32 ellipse_theta_variance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectType~%uint8 NONE = 0~%uint8 POINT = 1~%uint8 STRAIGHT_LINE = 2~%uint8 RAYS = 3~%uint8 LINE_SEGMENT = 5~%uint8 SNA = 7~%uint8 RESERVED_INFO = 8~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectHeiType~%uint8 LOW = 0~%uint8 HIGH = 1~%uint8 TRAVERSIBLE = 2~%uint8 UNKONOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssCommonObstacleResult)))
  "Returns full string definition for message of type 'UssCommonObstacleResult"
  (cl:format cl:nil "sensor_interface_msgs/CommonUltrasonicObstacleData[] uss_obstacle_data~%~%================================================================================~%MSG: sensor_interface_msgs/CommonUltrasonicObstacleData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UltrasonicObjectType obj_type~%sensor_interface_msgs/UltrasonicObjectHeiType obj_height~%float32 obj_height_probability~%float32 obj_probability~%float32 obj_start_X~%float32 obj_start_Y~%float32 obj_end_X~%float32 obj_end_Y~%float32 obj_height_value~%float32 major_axis_error~%float32 minor_axis_variance~%float32 ellipse_theta_variance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectType~%uint8 NONE = 0~%uint8 POINT = 1~%uint8 STRAIGHT_LINE = 2~%uint8 RAYS = 3~%uint8 LINE_SEGMENT = 5~%uint8 SNA = 7~%uint8 RESERVED_INFO = 8~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectHeiType~%uint8 LOW = 0~%uint8 HIGH = 1~%uint8 TRAVERSIBLE = 2~%uint8 UNKONOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssCommonObstacleResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_obstacle_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssCommonObstacleResult>))
  "Converts a ROS message object to a list"
  (cl:list 'UssCommonObstacleResult
    (cl:cons ':uss_obstacle_data (uss_obstacle_data msg))
))
