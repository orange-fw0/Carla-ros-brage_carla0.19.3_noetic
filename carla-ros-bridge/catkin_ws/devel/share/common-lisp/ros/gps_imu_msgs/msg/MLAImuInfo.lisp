; Auto-generated. Do not edit!


(cl:in-package gps_imu_msgs-msg)


;//! \htmlinclude MLAImuInfo.msg.html

(cl:defclass <MLAImuInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (imu_data_basic
    :reader imu_data_basic
    :initarg :imu_data_basic
    :type gps_imu_msgs-msg:MLAImuBasic
    :initform (cl:make-instance 'gps_imu_msgs-msg:MLAImuBasic)))
)

(cl:defclass MLAImuInfo (<MLAImuInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAImuInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAImuInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_imu_msgs-msg:<MLAImuInfo> is deprecated: use gps_imu_msgs-msg:MLAImuInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAImuInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:available-val is deprecated.  Use gps_imu_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'imu_data_basic-val :lambda-list '(m))
(cl:defmethod imu_data_basic-val ((m <MLAImuInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_imu_msgs-msg:imu_data_basic-val is deprecated.  Use gps_imu_msgs-msg:imu_data_basic instead.")
  (imu_data_basic m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAImuInfo>)))
    "Constants for message type '<MLAImuInfo>"
  '((:MLA_IMU_BASIC . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAImuInfo)))
    "Constants for message type 'MLAImuInfo"
  '((:MLA_IMU_BASIC . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAImuInfo>) ostream)
  "Serializes a message object of type '<MLAImuInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu_data_basic) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAImuInfo>) istream)
  "Deserializes a message object of type '<MLAImuInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu_data_basic) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAImuInfo>)))
  "Returns string type for a message object of type '<MLAImuInfo>"
  "gps_imu_msgs/MLAImuInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAImuInfo)))
  "Returns string type for a message object of type 'MLAImuInfo"
  "gps_imu_msgs/MLAImuInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAImuInfo>)))
  "Returns md5sum for a message object of type '<MLAImuInfo>"
  "c958b67182ad72d78e12f405ff7a90a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAImuInfo)))
  "Returns md5sum for a message object of type 'MLAImuInfo"
  "c958b67182ad72d78e12f405ff7a90a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAImuInfo>)))
  "Returns full string definition for message of type '<MLAImuInfo>"
  (cl:format cl:nil "uint8 MLA_IMU_BASIC = 1~%uint8 available~%gps_imu_msgs/MLAImuBasic imu_data_basic~%~%================================================================================~%MSG: gps_imu_msgs/MLAImuBasic~%float64 accx~%float64 accy~%float64 accz~%float64 gyrox~%float64 gyroy~%float64 gyroz~%float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAImuInfo)))
  "Returns full string definition for message of type 'MLAImuInfo"
  (cl:format cl:nil "uint8 MLA_IMU_BASIC = 1~%uint8 available~%gps_imu_msgs/MLAImuBasic imu_data_basic~%~%================================================================================~%MSG: gps_imu_msgs/MLAImuBasic~%float64 accx~%float64 accy~%float64 accz~%float64 gyrox~%float64 gyroy~%float64 gyroz~%float64 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAImuInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu_data_basic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAImuInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAImuInfo
    (cl:cons ':available (available msg))
    (cl:cons ':imu_data_basic (imu_data_basic msg))
))
