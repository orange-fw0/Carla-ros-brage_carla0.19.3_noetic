; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude VectorElementTypeEnum.msg.html

(cl:defclass <VectorElementTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass VectorElementTypeEnum (<VectorElementTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VectorElementTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VectorElementTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<VectorElementTypeEnum> is deprecated: use submap_msgs-msg:VectorElementTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VectorElementTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:value-val is deprecated.  Use submap_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <VectorElementTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:score-val is deprecated.  Use submap_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VectorElementTypeEnum>)))
    "Constants for message type '<VectorElementTypeEnum>"
  '((:UNKNOWN . 0)
    (:GATE . 1)
    (:ARROW . 2)
    (:STOP_LINE . 3)
    (:DASH_LINE . 4)
    (:SPEED_BUMP . 5)
    (:ZWBRA_LINE . 6)
    (:DDLD_ROAD_BOUNDARY . 7)
    (:DDLD_LANE_BOUNDARY . 8)
    (:DDLD_STOP_LINE . 9)
    (:DDLD_CROSS_WALK . 10)
    (:DDLD_ROAD_MARK . 11)
    (:DDLD_TRAFFIC_SIGN . 12)
    (:DDLD_TRAFFIC_LIGHT . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VectorElementTypeEnum)))
    "Constants for message type 'VectorElementTypeEnum"
  '((:UNKNOWN . 0)
    (:GATE . 1)
    (:ARROW . 2)
    (:STOP_LINE . 3)
    (:DASH_LINE . 4)
    (:SPEED_BUMP . 5)
    (:ZWBRA_LINE . 6)
    (:DDLD_ROAD_BOUNDARY . 7)
    (:DDLD_LANE_BOUNDARY . 8)
    (:DDLD_STOP_LINE . 9)
    (:DDLD_CROSS_WALK . 10)
    (:DDLD_ROAD_MARK . 11)
    (:DDLD_TRAFFIC_SIGN . 12)
    (:DDLD_TRAFFIC_LIGHT . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VectorElementTypeEnum>) ostream)
  "Serializes a message object of type '<VectorElementTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VectorElementTypeEnum>) istream)
  "Deserializes a message object of type '<VectorElementTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VectorElementTypeEnum>)))
  "Returns string type for a message object of type '<VectorElementTypeEnum>"
  "submap_msgs/VectorElementTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VectorElementTypeEnum)))
  "Returns string type for a message object of type 'VectorElementTypeEnum"
  "submap_msgs/VectorElementTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VectorElementTypeEnum>)))
  "Returns md5sum for a message object of type '<VectorElementTypeEnum>"
  "56240e7d54f815cdee95dc93b1995eb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VectorElementTypeEnum)))
  "Returns md5sum for a message object of type 'VectorElementTypeEnum"
  "56240e7d54f815cdee95dc93b1995eb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VectorElementTypeEnum>)))
  "Returns full string definition for message of type '<VectorElementTypeEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 GATE = 1~%uint8 ARROW = 2~%uint8 STOP_LINE = 3~%uint8 DASH_LINE = 4~%uint8 SPEED_BUMP = 5~%uint8 ZWBRA_LINE = 6~%uint8 DDLD_ROAD_BOUNDARY = 7~%uint8 DDLD_LANE_BOUNDARY = 8~%uint8 DDLD_STOP_LINE = 9~%uint8 DDLD_CROSS_WALK = 10~%uint8 DDLD_ROAD_MARK = 11~%uint8 DDLD_TRAFFIC_SIGN = 12~%uint8 DDLD_TRAFFIC_LIGHT = 13~%uint8 value~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VectorElementTypeEnum)))
  "Returns full string definition for message of type 'VectorElementTypeEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 GATE = 1~%uint8 ARROW = 2~%uint8 STOP_LINE = 3~%uint8 DASH_LINE = 4~%uint8 SPEED_BUMP = 5~%uint8 ZWBRA_LINE = 6~%uint8 DDLD_ROAD_BOUNDARY = 7~%uint8 DDLD_LANE_BOUNDARY = 8~%uint8 DDLD_STOP_LINE = 9~%uint8 DDLD_CROSS_WALK = 10~%uint8 DDLD_ROAD_MARK = 11~%uint8 DDLD_TRAFFIC_SIGN = 12~%uint8 DDLD_TRAFFIC_LIGHT = 13~%uint8 value~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VectorElementTypeEnum>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VectorElementTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VectorElementTypeEnum
    (cl:cons ':value (value msg))
    (cl:cons ':score (score msg))
))
