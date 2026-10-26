; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude MainSideRoadStatusEnum.msg.html

(cl:defclass <MainSideRoadStatusEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MainSideRoadStatusEnum (<MainSideRoadStatusEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MainSideRoadStatusEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MainSideRoadStatusEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<MainSideRoadStatusEnum> is deprecated: use tbt_msgs-msg:MainSideRoadStatusEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MainSideRoadStatusEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:value-val is deprecated.  Use tbt_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MainSideRoadStatusEnum>)))
    "Constants for message type '<MainSideRoadStatusEnum>"
  '((:DEFAULT . 0)
    (:MAINROAD . 1)
    (:SIDEROAD . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MainSideRoadStatusEnum)))
    "Constants for message type 'MainSideRoadStatusEnum"
  '((:DEFAULT . 0)
    (:MAINROAD . 1)
    (:SIDEROAD . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MainSideRoadStatusEnum>) ostream)
  "Serializes a message object of type '<MainSideRoadStatusEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MainSideRoadStatusEnum>) istream)
  "Deserializes a message object of type '<MainSideRoadStatusEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MainSideRoadStatusEnum>)))
  "Returns string type for a message object of type '<MainSideRoadStatusEnum>"
  "tbt_msgs/MainSideRoadStatusEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MainSideRoadStatusEnum)))
  "Returns string type for a message object of type 'MainSideRoadStatusEnum"
  "tbt_msgs/MainSideRoadStatusEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MainSideRoadStatusEnum>)))
  "Returns md5sum for a message object of type '<MainSideRoadStatusEnum>"
  "c81430e8192a2dbaf43715c0f6d0fed3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MainSideRoadStatusEnum)))
  "Returns md5sum for a message object of type 'MainSideRoadStatusEnum"
  "c81430e8192a2dbaf43715c0f6d0fed3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MainSideRoadStatusEnum>)))
  "Returns full string definition for message of type '<MainSideRoadStatusEnum>"
  (cl:format cl:nil "uint8 Default = 0~%uint8 MainRoad = 1~%uint8 SideRoad = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MainSideRoadStatusEnum)))
  "Returns full string definition for message of type 'MainSideRoadStatusEnum"
  (cl:format cl:nil "uint8 Default = 0~%uint8 MainRoad = 1~%uint8 SideRoad = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MainSideRoadStatusEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MainSideRoadStatusEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'MainSideRoadStatusEnum
    (cl:cons ':value (value msg))
))
