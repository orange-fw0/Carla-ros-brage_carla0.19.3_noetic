; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarNotificationAck.msg.html

(cl:defclass <LidarNotificationAck> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type sensor_lidar_msgs-msg:LidarID
    :initform (cl:make-instance 'sensor_lidar_msgs-msg:LidarID))
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (ack
    :reader ack
    :initarg :ack
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LidarNotificationAck (<LidarNotificationAck>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarNotificationAck>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarNotificationAck)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarNotificationAck> is deprecated: use sensor_lidar_msgs-msg:LidarNotificationAck instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LidarNotificationAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:id-val is deprecated.  Use sensor_lidar_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LidarNotificationAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:value-val is deprecated.  Use sensor_lidar_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'ack-val :lambda-list '(m))
(cl:defmethod ack-val ((m <LidarNotificationAck>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:ack-val is deprecated.  Use sensor_lidar_msgs-msg:ack instead.")
  (ack m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LidarNotificationAck>)))
    "Constants for message type '<LidarNotificationAck>"
  '((:NONE . 0)
    (:SN . 1)
    (:PARAMETER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LidarNotificationAck)))
    "Constants for message type 'LidarNotificationAck"
  '((:NONE . 0)
    (:SN . 1)
    (:PARAMETER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarNotificationAck>) ostream)
  "Serializes a message object of type '<LidarNotificationAck>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarNotificationAck>) istream)
  "Deserializes a message object of type '<LidarNotificationAck>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ack)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarNotificationAck>)))
  "Returns string type for a message object of type '<LidarNotificationAck>"
  "sensor_lidar_msgs/LidarNotificationAck")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarNotificationAck)))
  "Returns string type for a message object of type 'LidarNotificationAck"
  "sensor_lidar_msgs/LidarNotificationAck")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarNotificationAck>)))
  "Returns md5sum for a message object of type '<LidarNotificationAck>"
  "bb93490d1fe826883ec8537e5551344f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarNotificationAck)))
  "Returns md5sum for a message object of type 'LidarNotificationAck"
  "bb93490d1fe826883ec8537e5551344f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarNotificationAck>)))
  "Returns full string definition for message of type '<LidarNotificationAck>"
  (cl:format cl:nil "uint32 None = 0~%uint32 SN = 1~%uint32 Parameter = 2~%sensor_lidar_msgs/LidarID id~%uint32 value~%uint8 ack~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarNotificationAck)))
  "Returns full string definition for message of type 'LidarNotificationAck"
  (cl:format cl:nil "uint32 None = 0~%uint32 SN = 1~%uint32 Parameter = 2~%sensor_lidar_msgs/LidarID id~%uint32 value~%uint8 ack~%~%================================================================================~%MSG: sensor_lidar_msgs/LidarID~%uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarNotificationAck>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarNotificationAck>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarNotificationAck
    (cl:cons ':id (id msg))
    (cl:cons ':value (value msg))
    (cl:cons ':ack (ack msg))
))
