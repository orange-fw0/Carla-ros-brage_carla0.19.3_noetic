; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude CamOffcalibDetailedErrorCodeEnum.msg.html

(cl:defclass <CamOffcalibDetailedErrorCodeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CamOffcalibDetailedErrorCodeEnum (<CamOffcalibDetailedErrorCodeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CamOffcalibDetailedErrorCodeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CamOffcalibDetailedErrorCodeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<CamOffcalibDetailedErrorCodeEnum> is deprecated: use calib_interface_msgs-msg:CamOffcalibDetailedErrorCodeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CamOffcalibDetailedErrorCodeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:value-val is deprecated.  Use calib_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CamOffcalibDetailedErrorCodeEnum>)))
    "Constants for message type '<CamOffcalibDetailedErrorCodeEnum>"
  '((:NORMAL . 0)
    (:EGO_INIT_FAILED . 1)
    (:NEED_CHECKED_CAM_NUM_ZERO . 2)
    (:EGO_POSE_CAM_VALID_UNACCESSABLE . 10)
    (:EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE . 11)
    (:EGO_STATE_CAM_VALID_FREQ_TOO_LOW . 12)
    (:EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW . 13)
    (:CAM_VALID_VISUAL_FEATURE_INFO_NULL . 50)
    (:CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW . 51)
    (:CAM_VALID_VTRACKFRAMEBUFFER_FILL . 52)
    (:CAM_VALID_STATEBUFFER_FILL . 53)
    (:CAM_VALID_VALID_FEATURE_NUM_TOO_FEW . 54)
    (:CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL . 100)
    (:CROSS_CAM_VALID_STATEBUFFER_FILL . 101)
    (:UPDATE_CAM_ID_OUT_OF_RANGE . 150))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CamOffcalibDetailedErrorCodeEnum)))
    "Constants for message type 'CamOffcalibDetailedErrorCodeEnum"
  '((:NORMAL . 0)
    (:EGO_INIT_FAILED . 1)
    (:NEED_CHECKED_CAM_NUM_ZERO . 2)
    (:EGO_POSE_CAM_VALID_UNACCESSABLE . 10)
    (:EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE . 11)
    (:EGO_STATE_CAM_VALID_FREQ_TOO_LOW . 12)
    (:EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW . 13)
    (:CAM_VALID_VISUAL_FEATURE_INFO_NULL . 50)
    (:CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW . 51)
    (:CAM_VALID_VTRACKFRAMEBUFFER_FILL . 52)
    (:CAM_VALID_STATEBUFFER_FILL . 53)
    (:CAM_VALID_VALID_FEATURE_NUM_TOO_FEW . 54)
    (:CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL . 100)
    (:CROSS_CAM_VALID_STATEBUFFER_FILL . 101)
    (:UPDATE_CAM_ID_OUT_OF_RANGE . 150))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CamOffcalibDetailedErrorCodeEnum>) ostream)
  "Serializes a message object of type '<CamOffcalibDetailedErrorCodeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CamOffcalibDetailedErrorCodeEnum>) istream)
  "Deserializes a message object of type '<CamOffcalibDetailedErrorCodeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CamOffcalibDetailedErrorCodeEnum>)))
  "Returns string type for a message object of type '<CamOffcalibDetailedErrorCodeEnum>"
  "calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CamOffcalibDetailedErrorCodeEnum)))
  "Returns string type for a message object of type 'CamOffcalibDetailedErrorCodeEnum"
  "calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CamOffcalibDetailedErrorCodeEnum>)))
  "Returns md5sum for a message object of type '<CamOffcalibDetailedErrorCodeEnum>"
  "4b5556d863cfb070992d7616e29c644b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CamOffcalibDetailedErrorCodeEnum)))
  "Returns md5sum for a message object of type 'CamOffcalibDetailedErrorCodeEnum"
  "4b5556d863cfb070992d7616e29c644b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CamOffcalibDetailedErrorCodeEnum>)))
  "Returns full string definition for message of type '<CamOffcalibDetailedErrorCodeEnum>"
  (cl:format cl:nil "uint16 NORMAL = 0~%uint16 EGO_INIT_FAILED = 1~%uint16 NEED_CHECKED_CAM_NUM_ZERO = 2~%uint16 EGO_POSE_CAM_VALID_UNACCESSABLE = 10~%uint16 EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE = 11~%uint16 EGO_STATE_CAM_VALID_FREQ_TOO_LOW = 12~%uint16 EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW = 13~%uint16 CAM_VALID_VISUAL_FEATURE_INFO_NULL = 50~%uint16 CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW = 51~%uint16 CAM_VALID_VTRACKFRAMEBUFFER_FILL = 52~%uint16 CAM_VALID_STATEBUFFER_FILL = 53~%uint16 CAM_VALID_VALID_FEATURE_NUM_TOO_FEW = 54~%uint16 CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL = 100~%uint16 CROSS_CAM_VALID_STATEBUFFER_FILL = 101~%uint16 UPDATE_CAM_ID_OUT_OF_RANGE = 150~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CamOffcalibDetailedErrorCodeEnum)))
  "Returns full string definition for message of type 'CamOffcalibDetailedErrorCodeEnum"
  (cl:format cl:nil "uint16 NORMAL = 0~%uint16 EGO_INIT_FAILED = 1~%uint16 NEED_CHECKED_CAM_NUM_ZERO = 2~%uint16 EGO_POSE_CAM_VALID_UNACCESSABLE = 10~%uint16 EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE = 11~%uint16 EGO_STATE_CAM_VALID_FREQ_TOO_LOW = 12~%uint16 EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW = 13~%uint16 CAM_VALID_VISUAL_FEATURE_INFO_NULL = 50~%uint16 CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW = 51~%uint16 CAM_VALID_VTRACKFRAMEBUFFER_FILL = 52~%uint16 CAM_VALID_STATEBUFFER_FILL = 53~%uint16 CAM_VALID_VALID_FEATURE_NUM_TOO_FEW = 54~%uint16 CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL = 100~%uint16 CROSS_CAM_VALID_STATEBUFFER_FILL = 101~%uint16 UPDATE_CAM_ID_OUT_OF_RANGE = 150~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CamOffcalibDetailedErrorCodeEnum>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CamOffcalibDetailedErrorCodeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'CamOffcalibDetailedErrorCodeEnum
    (cl:cons ':value (value msg))
))
