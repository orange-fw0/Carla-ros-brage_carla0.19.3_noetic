; Auto-generated. Do not edit!


(cl:in-package sensor_lidar_msgs-msg)


;//! \htmlinclude LidarID.msg.html

(cl:defclass <LidarID> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass LidarID (<LidarID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_lidar_msgs-msg:<LidarID> is deprecated: use sensor_lidar_msgs-msg:LidarID instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LidarID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_lidar_msgs-msg:value-val is deprecated.  Use sensor_lidar_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LidarID>)))
    "Constants for message type '<LidarID>"
  '((:NONE . 0)
    (:FRONT_LEFT . 1)
    (:FRONT_RIGHT . 2)
    (:MIDDLE_LEFT . 4)
    (:MIDDLE_RIGHT . 8)
    (:REAR_LEFT . 16)
    (:REAR_RIGHT . 32)
    (:FRONT_DOWN . 64)
    (:FRONT_UP . 128)
    (:REAR_DOWN . 256)
    (:REAR_UP . 512)
    (:CENTRE . 1024))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LidarID)))
    "Constants for message type 'LidarID"
  '((:NONE . 0)
    (:FRONT_LEFT . 1)
    (:FRONT_RIGHT . 2)
    (:MIDDLE_LEFT . 4)
    (:MIDDLE_RIGHT . 8)
    (:REAR_LEFT . 16)
    (:REAR_RIGHT . 32)
    (:FRONT_DOWN . 64)
    (:FRONT_UP . 128)
    (:REAR_DOWN . 256)
    (:REAR_UP . 512)
    (:CENTRE . 1024))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarID>) ostream)
  "Serializes a message object of type '<LidarID>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarID>) istream)
  "Deserializes a message object of type '<LidarID>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarID>)))
  "Returns string type for a message object of type '<LidarID>"
  "sensor_lidar_msgs/LidarID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarID)))
  "Returns string type for a message object of type 'LidarID"
  "sensor_lidar_msgs/LidarID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarID>)))
  "Returns md5sum for a message object of type '<LidarID>"
  "46959a77a2745922b1e4d8cd620c57a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarID)))
  "Returns md5sum for a message object of type 'LidarID"
  "46959a77a2745922b1e4d8cd620c57a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarID>)))
  "Returns full string definition for message of type '<LidarID>"
  (cl:format cl:nil "uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarID)))
  "Returns full string definition for message of type 'LidarID"
  (cl:format cl:nil "uint32 None = 0~%uint32 Front_Left = 1~%uint32 Front_Right = 2~%uint32 Middle_Left = 4~%uint32 Middle_Right = 8~%uint32 Rear_Left = 16~%uint32 Rear_Right = 32~%uint32 Front_Down = 64~%uint32 Front_Up = 128~%uint32 Rear_Down = 256~%uint32 Rear_Up = 512~%uint32 Centre = 1024~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarID>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarID>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarID
    (cl:cons ':value (value msg))
))
