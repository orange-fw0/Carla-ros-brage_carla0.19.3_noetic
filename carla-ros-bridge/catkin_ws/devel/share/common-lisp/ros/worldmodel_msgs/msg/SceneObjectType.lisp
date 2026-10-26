; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude SceneObjectType.msg.html

(cl:defclass <SceneObjectType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SceneObjectType (<SceneObjectType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneObjectType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneObjectType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<SceneObjectType> is deprecated: use worldmodel_msgs-msg:SceneObjectType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SceneObjectType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SceneObjectType>)))
    "Constants for message type '<SceneObjectType>"
  '((:UNKNOWN . 0)
    (:TRAFFIC_BARRIER_TYPE_CONE . 1)
    (:TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE . 2)
    (:TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE . 3)
    (:TRAFFIC_BARRIER_TYPE_PARKING_LOCK . 4)
    (:TRAFFIC_BARRIER_TYPE_AFRAME_SIGN . 5)
    (:TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET . 6)
    (:TRAFFIC_BARRIER_TYPE_DUSTBIN . 7)
    (:TRAFFIC_BARRIER_TYPE_BARRIER_STONE . 8)
    (:TRAFFIC_BARRIER_TYPE_WATER_BARRIER . 9)
    (:MAP_FIRE_EXIT_DOOR . 10)
    (:MAP_PILLAR . 11)
    (:MAP_TOLL_GATE . 12)
    (:MAP_BORDER_SOLID_LINE . 13)
    (:MAP_BORDER_DASH_LINE . 14)
    (:MAP_BORDER_PHYSICAL . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SceneObjectType)))
    "Constants for message type 'SceneObjectType"
  '((:UNKNOWN . 0)
    (:TRAFFIC_BARRIER_TYPE_CONE . 1)
    (:TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE . 2)
    (:TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE . 3)
    (:TRAFFIC_BARRIER_TYPE_PARKING_LOCK . 4)
    (:TRAFFIC_BARRIER_TYPE_AFRAME_SIGN . 5)
    (:TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET . 6)
    (:TRAFFIC_BARRIER_TYPE_DUSTBIN . 7)
    (:TRAFFIC_BARRIER_TYPE_BARRIER_STONE . 8)
    (:TRAFFIC_BARRIER_TYPE_WATER_BARRIER . 9)
    (:MAP_FIRE_EXIT_DOOR . 10)
    (:MAP_PILLAR . 11)
    (:MAP_TOLL_GATE . 12)
    (:MAP_BORDER_SOLID_LINE . 13)
    (:MAP_BORDER_DASH_LINE . 14)
    (:MAP_BORDER_PHYSICAL . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneObjectType>) ostream)
  "Serializes a message object of type '<SceneObjectType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneObjectType>) istream)
  "Deserializes a message object of type '<SceneObjectType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneObjectType>)))
  "Returns string type for a message object of type '<SceneObjectType>"
  "worldmodel_msgs/SceneObjectType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneObjectType)))
  "Returns string type for a message object of type 'SceneObjectType"
  "worldmodel_msgs/SceneObjectType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneObjectType>)))
  "Returns md5sum for a message object of type '<SceneObjectType>"
  "93fe33ddd84b93acb2c80d5e0d721a48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneObjectType)))
  "Returns md5sum for a message object of type 'SceneObjectType"
  "93fe33ddd84b93acb2c80d5e0d721a48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneObjectType>)))
  "Returns full string definition for message of type '<SceneObjectType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 MAP_FIRE_EXIT_DOOR = 10~%uint8 MAP_PILLAR = 11~%uint8 MAP_TOLL_GATE = 12~%uint8 MAP_BORDER_SOLID_LINE = 13~%uint8 MAP_BORDER_DASH_LINE = 14~%uint8 MAP_BORDER_PHYSICAL = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneObjectType)))
  "Returns full string definition for message of type 'SceneObjectType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 MAP_FIRE_EXIT_DOOR = 10~%uint8 MAP_PILLAR = 11~%uint8 MAP_TOLL_GATE = 12~%uint8 MAP_BORDER_SOLID_LINE = 13~%uint8 MAP_BORDER_DASH_LINE = 14~%uint8 MAP_BORDER_PHYSICAL = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneObjectType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneObjectType>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneObjectType
    (cl:cons ':value (value msg))
))
