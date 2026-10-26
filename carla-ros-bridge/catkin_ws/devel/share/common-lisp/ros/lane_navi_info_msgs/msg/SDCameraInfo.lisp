; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDCameraInfo.msg.html

(cl:defclass <SDCameraInfo> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0)
   (ecamera_type
    :reader ecamera_type
    :initarg :ecamera_type
    :type lane_navi_info_msgs-msg:ECameraType
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:ECameraType))
   (speed_limit_value
    :reader speed_limit_value
    :initarg :speed_limit_value
    :type cl:integer
    :initform 0))
)

(cl:defclass SDCameraInfo (<SDCameraInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDCameraInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDCameraInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDCameraInfo> is deprecated: use lane_navi_info_msgs-msg:SDCameraInfo instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <SDCameraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:offset-val is deprecated.  Use lane_navi_info_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'ecamera_type-val :lambda-list '(m))
(cl:defmethod ecamera_type-val ((m <SDCameraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:ecamera_type-val is deprecated.  Use lane_navi_info_msgs-msg:ecamera_type instead.")
  (ecamera_type m))

(cl:ensure-generic-function 'speed_limit_value-val :lambda-list '(m))
(cl:defmethod speed_limit_value-val ((m <SDCameraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:speed_limit_value-val is deprecated.  Use lane_navi_info_msgs-msg:speed_limit_value instead.")
  (speed_limit_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDCameraInfo>) ostream)
  "Serializes a message object of type '<SDCameraInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ecamera_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_limit_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed_limit_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed_limit_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed_limit_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDCameraInfo>) istream)
  "Deserializes a message object of type '<SDCameraInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ecamera_type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_limit_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed_limit_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed_limit_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed_limit_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDCameraInfo>)))
  "Returns string type for a message object of type '<SDCameraInfo>"
  "lane_navi_info_msgs/SDCameraInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDCameraInfo)))
  "Returns string type for a message object of type 'SDCameraInfo"
  "lane_navi_info_msgs/SDCameraInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDCameraInfo>)))
  "Returns md5sum for a message object of type '<SDCameraInfo>"
  "3087adc6327518167dcd0f490d93b989")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDCameraInfo)))
  "Returns md5sum for a message object of type 'SDCameraInfo"
  "3087adc6327518167dcd0f490d93b989")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDCameraInfo>)))
  "Returns full string definition for message of type '<SDCameraInfo>"
  (cl:format cl:nil "float32 offset~%lane_navi_info_msgs/ECameraType ecamera_type~%uint32 speed_limit_value~%~%================================================================================~%MSG: lane_navi_info_msgs/ECameraType~%uint8 ECAMERA_SPEED = 0~%uint8 ECAMERA_MONITOR = 1~%uint8 ECAMERA_TRAFIC_LIGHT = 2~%uint8 ECAMERA_RULE = 3~%uint8 ECAMERA_BUS = 4~%uint8 ECAMERA_EMERGENCY = 5~%uint8 ECAMERA_NON_MOTORIZED = 6~%uint8 ECAMERA_RANGE = 7~%uint8 ECAMERA_INTER_SPEED_START = 8~%uint8 ECAMERA_INTER_SPEED_END = 9~%uint8 ECAMERA_UNKNOWN = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDCameraInfo)))
  "Returns full string definition for message of type 'SDCameraInfo"
  (cl:format cl:nil "float32 offset~%lane_navi_info_msgs/ECameraType ecamera_type~%uint32 speed_limit_value~%~%================================================================================~%MSG: lane_navi_info_msgs/ECameraType~%uint8 ECAMERA_SPEED = 0~%uint8 ECAMERA_MONITOR = 1~%uint8 ECAMERA_TRAFIC_LIGHT = 2~%uint8 ECAMERA_RULE = 3~%uint8 ECAMERA_BUS = 4~%uint8 ECAMERA_EMERGENCY = 5~%uint8 ECAMERA_NON_MOTORIZED = 6~%uint8 ECAMERA_RANGE = 7~%uint8 ECAMERA_INTER_SPEED_START = 8~%uint8 ECAMERA_INTER_SPEED_END = 9~%uint8 ECAMERA_UNKNOWN = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDCameraInfo>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ecamera_type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDCameraInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SDCameraInfo
    (cl:cons ':offset (offset msg))
    (cl:cons ':ecamera_type (ecamera_type msg))
    (cl:cons ':speed_limit_value (speed_limit_value msg))
))
