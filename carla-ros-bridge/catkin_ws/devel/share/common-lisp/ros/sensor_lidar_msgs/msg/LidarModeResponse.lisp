; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarModeResponse.msg.html

(cl:defclass <LidarModeResponse> (roslisp-msg-protocol:ros-message)
  ((lidar_mode_resp
    :reader lidar_mode_resp
    :initarg :lidar_mode_resp
    :type (cl:vector sensor_lidar_msgs-msg:LidarModeRequest)
   :initform (cl:make-array 0 :element-type 'sensor_lidar_msgs-msg:LidarModeRequest :initial-element (cl:make-instance 'sensor_lidar_msgs-msg:LidarModeRequest))))
)

(cl:defclass LidarModeResponse (<LidarModeResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarModeResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarModeResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarModeResponse> is deprecated: use sensor_lidar_msgs-msg:LidarModeResponse instead.")))

(cl:ensure-generic-function 'lidar_mode_resp-val :lambda-list '(m))
(cl:defmethod lidar_mode_resp-val ((m <LidarModeResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:lidar_mode_resp-val is deprecated.  Use sensor_lidar_msgs-msg:lidar_mode_resp instead.")
  (lidar_mode_resp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarModeResponse>) ostream)
  "Serializes a message object of type '<LidarModeResponse>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lidar_mode_resp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lidar_mode_resp))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarModeResponse>) istream)
  "Deserializes a message object of type '<LidarModeResponse>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lidar_mode_resp) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lidar_mode_resp)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_lidar_msgs-msg:LidarModeRequest))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarModeResponse>)))
  "Returns string type for a message object of type '<LidarModeResponse>"
  "sensor_lidar_msgs/LidarModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarModeResponse)))
  "Returns string type for a message object of type 'LidarModeResponse"
  "sensor_lidar_msgs/LidarModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarModeResponse>)))
  "Returns md5sum for a message object of type '<LidarModeResponse>"
  "12056cea15bb46bc31740a59f297ae72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarModeResponse)))
  "Returns md5sum for a message object of type 'LidarModeResponse"
  "12056cea15bb46bc31740a59f297ae72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarModeResponse>)))
  "Returns full string definition for message of type '<LidarModeResponse>"
  (cl:format cl:nil "sensor_lidar_msgs/LidarModeRequest[] lidar_mode_resp~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarModeRequest~%sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarMode mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarMode~%uint8 Normal_Mode = 0~%uint8 EOL_Calibration_Mode = 1~%uint8 AfterSale_Calibration_Mode = 2~%uint8 SuperEco = 3~%uint8 StandBy = 4~%uint8 PlayBack = 5~%uint8 Reserved = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarModeResponse)))
  "Returns full string definition for message of type 'LidarModeResponse"
  (cl:format cl:nil "sensor_lidar_msgs/LidarModeRequest[] lidar_mode_resp~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarModeRequest~%sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarMode mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarMode~%uint8 Normal_Mode = 0~%uint8 EOL_Calibration_Mode = 1~%uint8 AfterSale_Calibration_Mode = 2~%uint8 SuperEco = 3~%uint8 StandBy = 4~%uint8 PlayBack = 5~%uint8 Reserved = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarModeResponse>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lidar_mode_resp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarModeResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarModeResponse
    (cl:cons ':lidar_mode_resp (lidar_mode_resp msg))
))
