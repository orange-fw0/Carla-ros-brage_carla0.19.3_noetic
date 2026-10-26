; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude CameraSourceEnum.msg.html

(cl:defclass <CameraSourceEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraSourceEnum (<CameraSourceEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraSourceEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraSourceEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<CameraSourceEnum> is deprecated: use perception_interface_msgs-msg:CameraSourceEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CameraSourceEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CameraSourceEnum>)))
    "Constants for message type '<CameraSourceEnum>"
  '((:CAMERA_SOURCE_FRONT_FAR . 0)
    (:CAMERA_SOURCE_FRONT_MID . 1)
    (:CAMERA_SOURCE_FRONT_WIDE . 2)
    (:CAMERA_SOURCE_LEFT_FRONT . 3)
    (:CAMERA_SOURCE_LEFT_REAR . 4)
    (:CAMERA_SOURCE_REAR_MID . 5)
    (:CAMERA_SOURCE_REAR_MID_UP . 6)
    (:CAMERA_SOURCE_REAR_MID_DOWN . 7)
    (:CAMERA_SOURCE_RIGHT_FRONT . 8)
    (:CAMERA_SOURCE_RIGHT_REAR . 9)
    (:CAMERA_SOURCE_FRONT_FISHEYE . 10)
    (:CAMERA_SOURCE_LEFT_FISHEYE . 11)
    (:CAMERA_SOURCE_RIGHT_FISHEYE . 12)
    (:CAMERA_SOURCE_REAR_FISHEYE . 13)
    (:CAMERA_SOURCE_FISHEYE . 14)
    (:CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT . 15)
    (:CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT . 16)
    (:CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT . 17)
    (:CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT . 18)
    (:CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT . 19)
    (:CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT . 20)
    (:CAMERA_SOURCE_LEFT_REAR_SUB_LEFT . 21)
    (:CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT . 22)
    (:CAMERA_SOURCE_FRONT_MID_FAR . 23)
    (:CAMERA_SOURCE_FRONT_SUPER_FAR . 24)
    (:CAMERA_SOURCE_BEV . 25))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CameraSourceEnum)))
    "Constants for message type 'CameraSourceEnum"
  '((:CAMERA_SOURCE_FRONT_FAR . 0)
    (:CAMERA_SOURCE_FRONT_MID . 1)
    (:CAMERA_SOURCE_FRONT_WIDE . 2)
    (:CAMERA_SOURCE_LEFT_FRONT . 3)
    (:CAMERA_SOURCE_LEFT_REAR . 4)
    (:CAMERA_SOURCE_REAR_MID . 5)
    (:CAMERA_SOURCE_REAR_MID_UP . 6)
    (:CAMERA_SOURCE_REAR_MID_DOWN . 7)
    (:CAMERA_SOURCE_RIGHT_FRONT . 8)
    (:CAMERA_SOURCE_RIGHT_REAR . 9)
    (:CAMERA_SOURCE_FRONT_FISHEYE . 10)
    (:CAMERA_SOURCE_LEFT_FISHEYE . 11)
    (:CAMERA_SOURCE_RIGHT_FISHEYE . 12)
    (:CAMERA_SOURCE_REAR_FISHEYE . 13)
    (:CAMERA_SOURCE_FISHEYE . 14)
    (:CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT . 15)
    (:CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT . 16)
    (:CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT . 17)
    (:CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT . 18)
    (:CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT . 19)
    (:CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT . 20)
    (:CAMERA_SOURCE_LEFT_REAR_SUB_LEFT . 21)
    (:CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT . 22)
    (:CAMERA_SOURCE_FRONT_MID_FAR . 23)
    (:CAMERA_SOURCE_FRONT_SUPER_FAR . 24)
    (:CAMERA_SOURCE_BEV . 25))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraSourceEnum>) ostream)
  "Serializes a message object of type '<CameraSourceEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraSourceEnum>) istream)
  "Deserializes a message object of type '<CameraSourceEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraSourceEnum>)))
  "Returns string type for a message object of type '<CameraSourceEnum>"
  "perception_interface_msgs/CameraSourceEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraSourceEnum)))
  "Returns string type for a message object of type 'CameraSourceEnum"
  "perception_interface_msgs/CameraSourceEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraSourceEnum>)))
  "Returns md5sum for a message object of type '<CameraSourceEnum>"
  "f7c1c5eb952b9b4dd66efffb1d5138d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraSourceEnum)))
  "Returns md5sum for a message object of type 'CameraSourceEnum"
  "f7c1c5eb952b9b4dd66efffb1d5138d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraSourceEnum>)))
  "Returns full string definition for message of type '<CameraSourceEnum>"
  (cl:format cl:nil "uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraSourceEnum)))
  "Returns full string definition for message of type 'CameraSourceEnum"
  (cl:format cl:nil "uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraSourceEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraSourceEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraSourceEnum
    (cl:cons ':value (value msg))
))
