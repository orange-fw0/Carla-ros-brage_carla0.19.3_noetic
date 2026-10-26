; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude CameraModelEnum.msg.html

(cl:defclass <CameraModelEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraModelEnum (<CameraModelEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraModelEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraModelEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<CameraModelEnum> is deprecated: use perception_interface_msgs-msg:CameraModelEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CameraModelEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CameraModelEnum>)))
    "Constants for message type '<CameraModelEnum>"
  '((:CAMERA_MODEL_UNKNOWN . 0)
    (:CAMERA_MODEL_RAW . 1)
    (:CAMERA_MODEL_CYLINDER . 2)
    (:CAMERA_MODEL_DEDISTORT . 3)
    (:CAMERA_MODEL_PSTITCH . 4)
    (:CAMERA_MODEL_RESERVED_A . 5)
    (:CAMERA_MODEL_RESERVED_B . 6)
    (:CAMERA_MODEL_RESERVED_C . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CameraModelEnum)))
    "Constants for message type 'CameraModelEnum"
  '((:CAMERA_MODEL_UNKNOWN . 0)
    (:CAMERA_MODEL_RAW . 1)
    (:CAMERA_MODEL_CYLINDER . 2)
    (:CAMERA_MODEL_DEDISTORT . 3)
    (:CAMERA_MODEL_PSTITCH . 4)
    (:CAMERA_MODEL_RESERVED_A . 5)
    (:CAMERA_MODEL_RESERVED_B . 6)
    (:CAMERA_MODEL_RESERVED_C . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraModelEnum>) ostream)
  "Serializes a message object of type '<CameraModelEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraModelEnum>) istream)
  "Deserializes a message object of type '<CameraModelEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraModelEnum>)))
  "Returns string type for a message object of type '<CameraModelEnum>"
  "perception_interface_msgs/CameraModelEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraModelEnum)))
  "Returns string type for a message object of type 'CameraModelEnum"
  "perception_interface_msgs/CameraModelEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraModelEnum>)))
  "Returns md5sum for a message object of type '<CameraModelEnum>"
  "00e1b1abe6f0d9c5336178b735a90f62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraModelEnum)))
  "Returns md5sum for a message object of type 'CameraModelEnum"
  "00e1b1abe6f0d9c5336178b735a90f62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraModelEnum>)))
  "Returns full string definition for message of type '<CameraModelEnum>"
  (cl:format cl:nil "uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraModelEnum)))
  "Returns full string definition for message of type 'CameraModelEnum"
  (cl:format cl:nil "uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraModelEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraModelEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraModelEnum
    (cl:cons ':value (value msg))
))
