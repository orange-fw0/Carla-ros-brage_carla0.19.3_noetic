; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarCalibrationResultResponse.msg.html

(cl:defclass <LidarCalibrationResultResponse> (roslisp-msg-protocol:ros-message)
  ((calib_result_res
    :reader calib_result_res
    :initarg :calib_result_res
    :type (cl:vector sensor_lidar_msgs-msg:LidarCalibrationResult)
   :initform (cl:make-array 0 :element-type 'sensor_lidar_msgs-msg:LidarCalibrationResult :initial-element (cl:make-instance 'sensor_lidar_msgs-msg:LidarCalibrationResult))))
)

(cl:defclass LidarCalibrationResultResponse (<LidarCalibrationResultResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarCalibrationResultResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarCalibrationResultResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarCalibrationResultResponse> is deprecated: use sensor_lidar_msgs-msg:LidarCalibrationResultResponse instead.")))

(cl:ensure-generic-function 'calib_result_res-val :lambda-list '(m))
(cl:defmethod calib_result_res-val ((m <LidarCalibrationResultResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:calib_result_res-val is deprecated.  Use sensor_lidar_msgs-msg:calib_result_res instead.")
  (calib_result_res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarCalibrationResultResponse>) ostream)
  "Serializes a message object of type '<LidarCalibrationResultResponse>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'calib_result_res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'calib_result_res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarCalibrationResultResponse>) istream)
  "Deserializes a message object of type '<LidarCalibrationResultResponse>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'calib_result_res) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'calib_result_res)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_lidar_msgs-msg:LidarCalibrationResult))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarCalibrationResultResponse>)))
  "Returns string type for a message object of type '<LidarCalibrationResultResponse>"
  "sensor_lidar_msgs/LidarCalibrationResultResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarCalibrationResultResponse)))
  "Returns string type for a message object of type 'LidarCalibrationResultResponse"
  "sensor_lidar_msgs/LidarCalibrationResultResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarCalibrationResultResponse>)))
  "Returns md5sum for a message object of type '<LidarCalibrationResultResponse>"
  "375ba0c54636d5e0250c6155c66c3ad0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarCalibrationResultResponse)))
  "Returns md5sum for a message object of type 'LidarCalibrationResultResponse"
  "375ba0c54636d5e0250c6155c66c3ad0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarCalibrationResultResponse>)))
  "Returns full string definition for message of type '<LidarCalibrationResultResponse>"
  (cl:format cl:nil "sensor_lidar_msgs/LidarCalibrationResult[] calib_result_res~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibrationResult~%sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarCalibResult calib_result~%sensor_lidar_msgs/LidarHorizontResult horizont_result~%sensor_lidar_msgs/LidarRotationResult rotation_result~%uint8 canmsg_result~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibResult~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarHorizontResult~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarRotationResult~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarCalibrationResultResponse)))
  "Returns full string definition for message of type 'LidarCalibrationResultResponse"
  (cl:format cl:nil "sensor_lidar_msgs/LidarCalibrationResult[] calib_result_res~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibrationResult~%sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarCalibResult calib_result~%sensor_lidar_msgs/LidarHorizontResult horizont_result~%sensor_lidar_msgs/LidarRotationResult rotation_result~%uint8 canmsg_result~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibResult~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarHorizontResult~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarRotationResult~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarCalibrationResultResponse>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'calib_result_res) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarCalibrationResultResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarCalibrationResultResponse
    (cl:cons ':calib_result_res (calib_result_res msg))
))
