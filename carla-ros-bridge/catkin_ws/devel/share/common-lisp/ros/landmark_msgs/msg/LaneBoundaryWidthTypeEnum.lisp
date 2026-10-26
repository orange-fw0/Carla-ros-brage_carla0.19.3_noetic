; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneBoundaryWidthTypeEnum.msg.html

(cl:defclass <LaneBoundaryWidthTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneBoundaryWidthTypeEnum (<LaneBoundaryWidthTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundaryWidthTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundaryWidthTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneBoundaryWidthTypeEnum> is deprecated: use landmark_msgs-msg:LaneBoundaryWidthTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneBoundaryWidthTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneBoundaryWidthTypeEnum>)))
    "Constants for message type '<LaneBoundaryWidthTypeEnum>"
  '((:LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN . 0)
    (:LANE_BOUNDARY_WIDTH_TYPE_NARROW . 1)
    (:LANE_BOUNDARY_WIDTH_TYPE_WIDE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneBoundaryWidthTypeEnum)))
    "Constants for message type 'LaneBoundaryWidthTypeEnum"
  '((:LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN . 0)
    (:LANE_BOUNDARY_WIDTH_TYPE_NARROW . 1)
    (:LANE_BOUNDARY_WIDTH_TYPE_WIDE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundaryWidthTypeEnum>) ostream)
  "Serializes a message object of type '<LaneBoundaryWidthTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundaryWidthTypeEnum>) istream)
  "Deserializes a message object of type '<LaneBoundaryWidthTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundaryWidthTypeEnum>)))
  "Returns string type for a message object of type '<LaneBoundaryWidthTypeEnum>"
  "landmark_msgs/LaneBoundaryWidthTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundaryWidthTypeEnum)))
  "Returns string type for a message object of type 'LaneBoundaryWidthTypeEnum"
  "landmark_msgs/LaneBoundaryWidthTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundaryWidthTypeEnum>)))
  "Returns md5sum for a message object of type '<LaneBoundaryWidthTypeEnum>"
  "4ee45bbd6fdf8723728aba1caadea8f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundaryWidthTypeEnum)))
  "Returns md5sum for a message object of type 'LaneBoundaryWidthTypeEnum"
  "4ee45bbd6fdf8723728aba1caadea8f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundaryWidthTypeEnum>)))
  "Returns full string definition for message of type '<LaneBoundaryWidthTypeEnum>"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_WIDTH_TYPE_NARROW = 1~%uint8 LANE_BOUNDARY_WIDTH_TYPE_WIDE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundaryWidthTypeEnum)))
  "Returns full string definition for message of type 'LaneBoundaryWidthTypeEnum"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_WIDTH_TYPE_NARROW = 1~%uint8 LANE_BOUNDARY_WIDTH_TYPE_WIDE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundaryWidthTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundaryWidthTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundaryWidthTypeEnum
    (cl:cons ':value (value msg))
))
