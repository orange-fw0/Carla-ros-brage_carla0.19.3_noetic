; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude GroundLine3dPointTypeEnum.msg.html

(cl:defclass <GroundLine3dPointTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GroundLine3dPointTypeEnum (<GroundLine3dPointTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GroundLine3dPointTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GroundLine3dPointTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<GroundLine3dPointTypeEnum> is deprecated: use perception_interface_msgs-msg:GroundLine3dPointTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GroundLine3dPointTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GroundLine3dPointTypeEnum>)))
    "Constants for message type '<GroundLine3dPointTypeEnum>"
  '((:GROUND_LINE_3D_POINT_TYPE_RULE . 0)
    (:GROUND_LINE_3D_POINT_TYPE_DD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GroundLine3dPointTypeEnum)))
    "Constants for message type 'GroundLine3dPointTypeEnum"
  '((:GROUND_LINE_3D_POINT_TYPE_RULE . 0)
    (:GROUND_LINE_3D_POINT_TYPE_DD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GroundLine3dPointTypeEnum>) ostream)
  "Serializes a message object of type '<GroundLine3dPointTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GroundLine3dPointTypeEnum>) istream)
  "Deserializes a message object of type '<GroundLine3dPointTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GroundLine3dPointTypeEnum>)))
  "Returns string type for a message object of type '<GroundLine3dPointTypeEnum>"
  "perception_interface_msgs/GroundLine3dPointTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GroundLine3dPointTypeEnum)))
  "Returns string type for a message object of type 'GroundLine3dPointTypeEnum"
  "perception_interface_msgs/GroundLine3dPointTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GroundLine3dPointTypeEnum>)))
  "Returns md5sum for a message object of type '<GroundLine3dPointTypeEnum>"
  "d798f75147f2a38a04470320ccdd5a64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GroundLine3dPointTypeEnum)))
  "Returns md5sum for a message object of type 'GroundLine3dPointTypeEnum"
  "d798f75147f2a38a04470320ccdd5a64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GroundLine3dPointTypeEnum>)))
  "Returns full string definition for message of type '<GroundLine3dPointTypeEnum>"
  (cl:format cl:nil "uint8 GROUND_LINE_3D_POINT_TYPE_RULE = 0~%uint8 GROUND_LINE_3D_POINT_TYPE_DD = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GroundLine3dPointTypeEnum)))
  "Returns full string definition for message of type 'GroundLine3dPointTypeEnum"
  (cl:format cl:nil "uint8 GROUND_LINE_3D_POINT_TYPE_RULE = 0~%uint8 GROUND_LINE_3D_POINT_TYPE_DD = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GroundLine3dPointTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GroundLine3dPointTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'GroundLine3dPointTypeEnum
    (cl:cons ':value (value msg))
))
