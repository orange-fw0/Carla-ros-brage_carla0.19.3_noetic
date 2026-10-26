; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarErrorStatus.msg.html

(cl:defclass <LidarErrorStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type (cl:vector sensor_lidar_msgs-msg:LidarErrorReport)
   :initform (cl:make-array 0 :element-type 'sensor_lidar_msgs-msg:LidarErrorReport :initial-element (cl:make-instance 'sensor_lidar_msgs-msg:LidarErrorReport))))
)

(cl:defclass LidarErrorStatus (<LidarErrorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarErrorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarErrorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarErrorStatus> is deprecated: use sensor_lidar_msgs-msg:LidarErrorStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LidarErrorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:status-val is deprecated.  Use sensor_lidar_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarErrorStatus>) ostream)
  "Serializes a message object of type '<LidarErrorStatus>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarErrorStatus>) istream)
  "Deserializes a message object of type '<LidarErrorStatus>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_lidar_msgs-msg:LidarErrorReport))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarErrorStatus>)))
  "Returns string type for a message object of type '<LidarErrorStatus>"
  "sensor_lidar_msgs/LidarErrorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarErrorStatus)))
  "Returns string type for a message object of type 'LidarErrorStatus"
  "sensor_lidar_msgs/LidarErrorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarErrorStatus>)))
  "Returns md5sum for a message object of type '<LidarErrorStatus>"
  "a1b605ada709c81bf6788f8ef8da4154")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarErrorStatus)))
  "Returns md5sum for a message object of type 'LidarErrorStatus"
  "a1b605ada709c81bf6788f8ef8da4154")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarErrorStatus>)))
  "Returns full string definition for message of type '<LidarErrorStatus>"
  (cl:format cl:nil "sensor_lidar_msgs/LidarErrorReport[] status~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarErrorReport~%uint32 Normal = 0~%uint32 Hardware_error = 1~%uint32 WindowContamination_Err = 2~%uint32 FailSafe_error = 3~%uint32 No_Calibration_error = 4~%sensor_lidar_msgs/LidarID id~%uint32 error_mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarErrorStatus)))
  "Returns full string definition for message of type 'LidarErrorStatus"
  (cl:format cl:nil "sensor_lidar_msgs/LidarErrorReport[] status~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarErrorReport~%uint32 Normal = 0~%uint32 Hardware_error = 1~%uint32 WindowContamination_Err = 2~%uint32 FailSafe_error = 3~%uint32 No_Calibration_error = 4~%sensor_lidar_msgs/LidarID id~%uint32 error_mode~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarErrorStatus>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarErrorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarErrorStatus
    (cl:cons ':status (status msg))
))
