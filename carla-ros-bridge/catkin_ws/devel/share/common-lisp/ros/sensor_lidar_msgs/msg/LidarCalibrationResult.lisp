; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarCalibrationResult.msg.html

(cl:defclass <LidarCalibrationResult> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type sensor_lidar_msgs-msg:LidarID
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarID))
   (calib_result
    :reader calib_result
    :initarg :calib_result
    :type sensor_lidar_msgs-msg:LidarCalibResult
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarCalibResult))
   (horizont_result
    :reader horizont_result
    :initarg :horizont_result
    :type sensor_lidar_msgs-msg:LidarHorizontResult
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarHorizontResult))
   (rotation_result
    :reader rotation_result
    :initarg :rotation_result
    :type sensor_lidar_msgs-msg:LidarRotationResult
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarRotationResult))
   (canmsg_result
    :reader canmsg_result
    :initarg :canmsg_result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarCalibrationResult (<LidarCalibrationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarCalibrationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarCalibrationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarCalibrationResult> is deprecated: use sensor_lidar_msgs-msg:LidarCalibrationResult instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LidarCalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:id-val is deprecated.  Use sensor_lidar_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'calib_result-val :lambda-list '(m))
(cl:defmethod calib_result-val ((m <LidarCalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:calib_result-val is deprecated.  Use sensor_lidar_msgs-msg:calib_result instead.")
  (calib_result m))

(cl:ensure-generic-function 'horizont_result-val :lambda-list '(m))
(cl:defmethod horizont_result-val ((m <LidarCalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:horizont_result-val is deprecated.  Use sensor_lidar_msgs-msg:horizont_result instead.")
  (horizont_result m))

(cl:ensure-generic-function 'rotation_result-val :lambda-list '(m))
(cl:defmethod rotation_result-val ((m <LidarCalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:rotation_result-val is deprecated.  Use sensor_lidar_msgs-msg:rotation_result instead.")
  (rotation_result m))

(cl:ensure-generic-function 'canmsg_result-val :lambda-list '(m))
(cl:defmethod canmsg_result-val ((m <LidarCalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:canmsg_result-val is deprecated.  Use sensor_lidar_msgs-msg:canmsg_result instead.")
  (canmsg_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarCalibrationResult>) ostream)
  "Serializes a message object of type '<LidarCalibrationResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'calib_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'horizont_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation_result) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'canmsg_result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarCalibrationResult>) istream)
  "Deserializes a message object of type '<LidarCalibrationResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'calib_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'horizont_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation_result) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'canmsg_result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarCalibrationResult>)))
  "Returns string type for a message object of type '<LidarCalibrationResult>"
  "sensor_lidar_msgs/LidarCalibrationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarCalibrationResult)))
  "Returns string type for a message object of type 'LidarCalibrationResult"
  "sensor_lidar_msgs/LidarCalibrationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarCalibrationResult>)))
  "Returns md5sum for a message object of type '<LidarCalibrationResult>"
  "8e6048ce2b872ab46e98e1163301603d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarCalibrationResult)))
  "Returns md5sum for a message object of type 'LidarCalibrationResult"
  "8e6048ce2b872ab46e98e1163301603d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarCalibrationResult>)))
  "Returns full string definition for message of type '<LidarCalibrationResult>"
  (cl:format cl:nil "sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarCalibResult calib_result~%sensor_lidar_msgs/LidarHorizontResult horizont_result~%sensor_lidar_msgs/LidarRotationResult rotation_result~%uint8 canmsg_result~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibResult~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarHorizontResult~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarRotationResult~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarCalibrationResult)))
  "Returns full string definition for message of type 'LidarCalibrationResult"
  (cl:format cl:nil "sensor_lidar_msgs/LidarID id~%sensor_lidar_msgs/LidarCalibResult calib_result~%sensor_lidar_msgs/LidarHorizontResult horizont_result~%sensor_lidar_msgs/LidarRotationResult rotation_result~%uint8 canmsg_result~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarCalibResult~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarHorizontResult~%uint8 value~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarRotationResult~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarCalibrationResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'calib_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'horizont_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation_result))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarCalibrationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarCalibrationResult
    (cl:cons ':id (id msg))
    (cl:cons ':calib_result (calib_result msg))
    (cl:cons ':horizont_result (horizont_result msg))
    (cl:cons ':rotation_result (rotation_result msg))
    (cl:cons ':canmsg_result (canmsg_result msg))
))
