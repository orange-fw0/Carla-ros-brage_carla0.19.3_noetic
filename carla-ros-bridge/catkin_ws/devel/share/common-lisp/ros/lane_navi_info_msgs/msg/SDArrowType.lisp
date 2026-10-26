; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDArrowType.msg.html

(cl:defclass <SDArrowType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SDArrowType (<SDArrowType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDArrowType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDArrowType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDArrowType> is deprecated: use lane_navi_info_msgs-msg:SDArrowType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SDArrowType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SDArrowType>)))
    "Constants for message type '<SDArrowType>"
  '((:SD_ARROW_TYPE_LEFTUTURN . 0)
    (:SD_ARROW_TYPE_TURNLEFT . 1)
    (:SD_ARROW_TYPE_STRAIGHT . 2)
    (:SD_ARROW_TYPE_TURNRIGHT . 3)
    (:SD_ARROW_TYPE_RIGHTUTURN . 4)
    (:SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE . 5)
    (:SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE . 6)
    (:SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN . 7)
    (:SD_ARROW_TYPE_LEFT_CURVATURE . 8)
    (:SD_ARROW_TYPE_RIGHT_CURVATURE . 9)
    (:SD_ARROW_TYPE_EMPTY_LANE . 10)
    (:SD_ARROW_TYPE_INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SDArrowType)))
    "Constants for message type 'SDArrowType"
  '((:SD_ARROW_TYPE_LEFTUTURN . 0)
    (:SD_ARROW_TYPE_TURNLEFT . 1)
    (:SD_ARROW_TYPE_STRAIGHT . 2)
    (:SD_ARROW_TYPE_TURNRIGHT . 3)
    (:SD_ARROW_TYPE_RIGHTUTURN . 4)
    (:SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE . 5)
    (:SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE . 6)
    (:SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN . 7)
    (:SD_ARROW_TYPE_LEFT_CURVATURE . 8)
    (:SD_ARROW_TYPE_RIGHT_CURVATURE . 9)
    (:SD_ARROW_TYPE_EMPTY_LANE . 10)
    (:SD_ARROW_TYPE_INVALID . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDArrowType>) ostream)
  "Serializes a message object of type '<SDArrowType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDArrowType>) istream)
  "Deserializes a message object of type '<SDArrowType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDArrowType>)))
  "Returns string type for a message object of type '<SDArrowType>"
  "lane_navi_info_msgs/SDArrowType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDArrowType)))
  "Returns string type for a message object of type 'SDArrowType"
  "lane_navi_info_msgs/SDArrowType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDArrowType>)))
  "Returns md5sum for a message object of type '<SDArrowType>"
  "f3168dcc7bd862efec8c96b55d9de149")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDArrowType)))
  "Returns md5sum for a message object of type 'SDArrowType"
  "f3168dcc7bd862efec8c96b55d9de149")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDArrowType>)))
  "Returns full string definition for message of type '<SDArrowType>"
  (cl:format cl:nil "uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDArrowType)))
  "Returns full string definition for message of type 'SDArrowType"
  (cl:format cl:nil "uint8 SD_ARROW_TYPE_LEFTUTURN = 0~%uint8 SD_ARROW_TYPE_TURNLEFT = 1~%uint8 SD_ARROW_TYPE_STRAIGHT = 2~%uint8 SD_ARROW_TYPE_TURNRIGHT = 3~%uint8 SD_ARROW_TYPE_RIGHTUTURN = 4~%uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5~%uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6~%uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7~%uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8~%uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9~%uint8 SD_ARROW_TYPE_EMPTY_LANE = 10~%uint8 SD_ARROW_TYPE_INVALID = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDArrowType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDArrowType>))
  "Converts a ROS message object to a list"
  (cl:list 'SDArrowType
    (cl:cons ':type (type msg))
))
