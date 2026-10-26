; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude PlacTotalErrorCodeEnum.msg.html

(cl:defclass <PlacTotalErrorCodeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PlacTotalErrorCodeEnum (<PlacTotalErrorCodeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlacTotalErrorCodeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlacTotalErrorCodeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<PlacTotalErrorCodeEnum> is deprecated: use calib_interface_msgs-msg:PlacTotalErrorCodeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PlacTotalErrorCodeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:value-val is deprecated.  Use calib_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlacTotalErrorCodeEnum>)))
    "Constants for message type '<PlacTotalErrorCodeEnum>"
  '((:CALIB_NORMAL . 0)
    (:CALIB_INIT_ERROR . 1)
    (:CALIB_FISHEYE_ERROR . 2)
    (:CALIB_NORMAL_ERROR . 3)
    (:CALIB_OPT_ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlacTotalErrorCodeEnum)))
    "Constants for message type 'PlacTotalErrorCodeEnum"
  '((:CALIB_NORMAL . 0)
    (:CALIB_INIT_ERROR . 1)
    (:CALIB_FISHEYE_ERROR . 2)
    (:CALIB_NORMAL_ERROR . 3)
    (:CALIB_OPT_ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlacTotalErrorCodeEnum>) ostream)
  "Serializes a message object of type '<PlacTotalErrorCodeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlacTotalErrorCodeEnum>) istream)
  "Deserializes a message object of type '<PlacTotalErrorCodeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlacTotalErrorCodeEnum>)))
  "Returns string type for a message object of type '<PlacTotalErrorCodeEnum>"
  "calib_interface_msgs/PlacTotalErrorCodeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlacTotalErrorCodeEnum)))
  "Returns string type for a message object of type 'PlacTotalErrorCodeEnum"
  "calib_interface_msgs/PlacTotalErrorCodeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlacTotalErrorCodeEnum>)))
  "Returns md5sum for a message object of type '<PlacTotalErrorCodeEnum>"
  "10363d941d80e22a3aa5dea0814122cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlacTotalErrorCodeEnum)))
  "Returns md5sum for a message object of type 'PlacTotalErrorCodeEnum"
  "10363d941d80e22a3aa5dea0814122cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlacTotalErrorCodeEnum>)))
  "Returns full string definition for message of type '<PlacTotalErrorCodeEnum>"
  (cl:format cl:nil "uint8 CALIB_NORMAL = 0~%uint8 CALIB_INIT_ERROR = 1~%uint8 CALIB_FISHEYE_ERROR = 2~%uint8 CALIB_NORMAL_ERROR = 3~%uint8 CALIB_OPT_ERROR = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlacTotalErrorCodeEnum)))
  "Returns full string definition for message of type 'PlacTotalErrorCodeEnum"
  (cl:format cl:nil "uint8 CALIB_NORMAL = 0~%uint8 CALIB_INIT_ERROR = 1~%uint8 CALIB_FISHEYE_ERROR = 2~%uint8 CALIB_NORMAL_ERROR = 3~%uint8 CALIB_OPT_ERROR = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlacTotalErrorCodeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlacTotalErrorCodeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'PlacTotalErrorCodeEnum
    (cl:cons ':value (value msg))
))
