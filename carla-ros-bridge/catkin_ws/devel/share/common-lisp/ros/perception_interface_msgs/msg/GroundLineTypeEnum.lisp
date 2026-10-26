; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude GroundLineTypeEnum.msg.html

(cl:defclass <GroundLineTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GroundLineTypeEnum (<GroundLineTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GroundLineTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GroundLineTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<GroundLineTypeEnum> is deprecated: use perception_interface_msgs-msg:GroundLineTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GroundLineTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GroundLineTypeEnum>)))
    "Constants for message type '<GroundLineTypeEnum>"
  '((:GROUND_LINE_TYPE_UNKNOWN . 0)
    (:GROUND_LINE_TYPE_WALL . 1)
    (:GROUND_LINE_TYPE_PILLAR . 2)
    (:GROUND_LINE_TYPE_FENCE . 3)
    (:GROUND_LINE_TYPE_STEP . 4)
    (:GROUND_LINE_TYPE_SPECIAL . 5)
    (:GROUND_LINE_TYPE_POLE . 6)
    (:GROUND_LINE_TYPE_WHEELSTOP . 7)
    (:GROUNDLINE_TYPE_BARRIER . 8)
    (:GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE . 9)
    (:GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE . 10)
    (:GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE . 11)
    (:GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GroundLineTypeEnum)))
    "Constants for message type 'GroundLineTypeEnum"
  '((:GROUND_LINE_TYPE_UNKNOWN . 0)
    (:GROUND_LINE_TYPE_WALL . 1)
    (:GROUND_LINE_TYPE_PILLAR . 2)
    (:GROUND_LINE_TYPE_FENCE . 3)
    (:GROUND_LINE_TYPE_STEP . 4)
    (:GROUND_LINE_TYPE_SPECIAL . 5)
    (:GROUND_LINE_TYPE_POLE . 6)
    (:GROUND_LINE_TYPE_WHEELSTOP . 7)
    (:GROUNDLINE_TYPE_BARRIER . 8)
    (:GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE . 9)
    (:GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE . 10)
    (:GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE . 11)
    (:GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GroundLineTypeEnum>) ostream)
  "Serializes a message object of type '<GroundLineTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GroundLineTypeEnum>) istream)
  "Deserializes a message object of type '<GroundLineTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GroundLineTypeEnum>)))
  "Returns string type for a message object of type '<GroundLineTypeEnum>"
  "perception_interface_msgs/GroundLineTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GroundLineTypeEnum)))
  "Returns string type for a message object of type 'GroundLineTypeEnum"
  "perception_interface_msgs/GroundLineTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GroundLineTypeEnum>)))
  "Returns md5sum for a message object of type '<GroundLineTypeEnum>"
  "171d775aedfea010466399b07d1420ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GroundLineTypeEnum)))
  "Returns md5sum for a message object of type 'GroundLineTypeEnum"
  "171d775aedfea010466399b07d1420ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GroundLineTypeEnum>)))
  "Returns full string definition for message of type '<GroundLineTypeEnum>"
  (cl:format cl:nil "uint8 GROUND_LINE_TYPE_UNKNOWN = 0~%uint8 GROUND_LINE_TYPE_WALL = 1~%uint8 GROUND_LINE_TYPE_PILLAR = 2~%uint8 GROUND_LINE_TYPE_FENCE = 3~%uint8 GROUND_LINE_TYPE_STEP = 4~%uint8 GROUND_LINE_TYPE_SPECIAL = 5~%uint8 GROUND_LINE_TYPE_POLE = 6~%uint8 GROUND_LINE_TYPE_WHEELSTOP = 7~%uint8 GROUNDLINE_TYPE_BARRIER = 8~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GroundLineTypeEnum)))
  "Returns full string definition for message of type 'GroundLineTypeEnum"
  (cl:format cl:nil "uint8 GROUND_LINE_TYPE_UNKNOWN = 0~%uint8 GROUND_LINE_TYPE_WALL = 1~%uint8 GROUND_LINE_TYPE_PILLAR = 2~%uint8 GROUND_LINE_TYPE_FENCE = 3~%uint8 GROUND_LINE_TYPE_STEP = 4~%uint8 GROUND_LINE_TYPE_SPECIAL = 5~%uint8 GROUND_LINE_TYPE_POLE = 6~%uint8 GROUND_LINE_TYPE_WHEELSTOP = 7~%uint8 GROUNDLINE_TYPE_BARRIER = 8~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GroundLineTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GroundLineTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'GroundLineTypeEnum
    (cl:cons ':value (value msg))
))
