; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneBoundaryColorEnum.msg.html

(cl:defclass <LaneBoundaryColorEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneBoundaryColorEnum (<LaneBoundaryColorEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundaryColorEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundaryColorEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneBoundaryColorEnum> is deprecated: use landmark_msgs-msg:LaneBoundaryColorEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneBoundaryColorEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneBoundaryColorEnum>)))
    "Constants for message type '<LaneBoundaryColorEnum>"
  '((:LANE_BOUNDARY_COLOR_UNKNOWN . 0)
    (:LANE_BOUNDARY_COLOR_WHITE . 1)
    (:LANE_BOUNDARY_COLOR_YELLOW . 2)
    (:LANE_BOUNDARY_COLOR_ORANGE . 3)
    (:LANE_BOUNDARY_COLOR_BLUE . 4)
    (:LANE_BOUNDARY_COLOR_GREEN . 5)
    (:LANE_BOUNDARY_COLOR_GRAY . 6)
    (:LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW . 7)
    (:LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY . 8)
    (:LANE_BOUNDARY_OTHER . 99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneBoundaryColorEnum)))
    "Constants for message type 'LaneBoundaryColorEnum"
  '((:LANE_BOUNDARY_COLOR_UNKNOWN . 0)
    (:LANE_BOUNDARY_COLOR_WHITE . 1)
    (:LANE_BOUNDARY_COLOR_YELLOW . 2)
    (:LANE_BOUNDARY_COLOR_ORANGE . 3)
    (:LANE_BOUNDARY_COLOR_BLUE . 4)
    (:LANE_BOUNDARY_COLOR_GREEN . 5)
    (:LANE_BOUNDARY_COLOR_GRAY . 6)
    (:LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW . 7)
    (:LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY . 8)
    (:LANE_BOUNDARY_OTHER . 99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundaryColorEnum>) ostream)
  "Serializes a message object of type '<LaneBoundaryColorEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundaryColorEnum>) istream)
  "Deserializes a message object of type '<LaneBoundaryColorEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundaryColorEnum>)))
  "Returns string type for a message object of type '<LaneBoundaryColorEnum>"
  "landmark_msgs/LaneBoundaryColorEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundaryColorEnum)))
  "Returns string type for a message object of type 'LaneBoundaryColorEnum"
  "landmark_msgs/LaneBoundaryColorEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundaryColorEnum>)))
  "Returns md5sum for a message object of type '<LaneBoundaryColorEnum>"
  "ff8b29cec829b49d261140f47e042f5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundaryColorEnum)))
  "Returns md5sum for a message object of type 'LaneBoundaryColorEnum"
  "ff8b29cec829b49d261140f47e042f5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundaryColorEnum>)))
  "Returns full string definition for message of type '<LaneBoundaryColorEnum>"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_COLOR_UNKNOWN = 0~%uint8 LANE_BOUNDARY_COLOR_WHITE = 1~%uint8 LANE_BOUNDARY_COLOR_YELLOW = 2~%uint8 LANE_BOUNDARY_COLOR_ORANGE = 3~%uint8 LANE_BOUNDARY_COLOR_BLUE = 4~%uint8 LANE_BOUNDARY_COLOR_GREEN = 5~%uint8 LANE_BOUNDARY_COLOR_GRAY = 6~%uint8 LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW = 7~%uint8 LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY = 8~%uint8 LANE_BOUNDARY_OTHER = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundaryColorEnum)))
  "Returns full string definition for message of type 'LaneBoundaryColorEnum"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_COLOR_UNKNOWN = 0~%uint8 LANE_BOUNDARY_COLOR_WHITE = 1~%uint8 LANE_BOUNDARY_COLOR_YELLOW = 2~%uint8 LANE_BOUNDARY_COLOR_ORANGE = 3~%uint8 LANE_BOUNDARY_COLOR_BLUE = 4~%uint8 LANE_BOUNDARY_COLOR_GREEN = 5~%uint8 LANE_BOUNDARY_COLOR_GRAY = 6~%uint8 LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW = 7~%uint8 LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY = 8~%uint8 LANE_BOUNDARY_OTHER = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundaryColorEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundaryColorEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundaryColorEnum
    (cl:cons ':value (value msg))
))
