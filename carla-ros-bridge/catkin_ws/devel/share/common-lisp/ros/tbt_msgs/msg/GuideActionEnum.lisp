; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude GuideActionEnum.msg.html

(cl:defclass <GuideActionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GuideActionEnum (<GuideActionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GuideActionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GuideActionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<GuideActionEnum> is deprecated: use tbt_msgs-msg:GuideActionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GuideActionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:value-val is deprecated.  Use tbt_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GuideActionEnum>)))
    "Constants for message type '<GuideActionEnum>"
  '((:NO_NAVI_ACTION . 0)
    (:TURN_LEFT . 1)
    (:TURN_RIGHT . 2)
    (:DRIVE_LEFT_FRONT . 3)
    (:DRIVE_RIGHT_FRONT . 4)
    (:DRIVE_LEFT_REAR . 5)
    (:DRIVE_RIGHT_REAR . 6)
    (:TURN_LEFT_TURN_AROUND . 7)
    (:GO_STRAIGHT . 8)
    (:FRONT_ROAD_ALONG_LEFT . 9)
    (:FRONT_ROAD_ALONG_RIGHT . 10)
    (:TRIFURCATION_ALONG_LEFT . 11)
    (:TRIFURCATION_ALONG_MIDDLE . 12)
    (:TRIFURCATION_ALONG_RIGHT . 13)
    (:TWO_STRAIGHT_ALONG_LEFT . 14)
    (:TWO_STRAIGHT_ALONG_RIGHT . 15)
    (:THREE_STRAIGHT_ALONG_LEFT . 16)
    (:THREE_STRAIGHT_ALONG_MIDDLE . 17)
    (:THREE_STRAIGHT_ALONG_RIGHT . 18)
    (:ENTRY_RING . 19)
    (:DESTINATION . 20))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GuideActionEnum)))
    "Constants for message type 'GuideActionEnum"
  '((:NO_NAVI_ACTION . 0)
    (:TURN_LEFT . 1)
    (:TURN_RIGHT . 2)
    (:DRIVE_LEFT_FRONT . 3)
    (:DRIVE_RIGHT_FRONT . 4)
    (:DRIVE_LEFT_REAR . 5)
    (:DRIVE_RIGHT_REAR . 6)
    (:TURN_LEFT_TURN_AROUND . 7)
    (:GO_STRAIGHT . 8)
    (:FRONT_ROAD_ALONG_LEFT . 9)
    (:FRONT_ROAD_ALONG_RIGHT . 10)
    (:TRIFURCATION_ALONG_LEFT . 11)
    (:TRIFURCATION_ALONG_MIDDLE . 12)
    (:TRIFURCATION_ALONG_RIGHT . 13)
    (:TWO_STRAIGHT_ALONG_LEFT . 14)
    (:TWO_STRAIGHT_ALONG_RIGHT . 15)
    (:THREE_STRAIGHT_ALONG_LEFT . 16)
    (:THREE_STRAIGHT_ALONG_MIDDLE . 17)
    (:THREE_STRAIGHT_ALONG_RIGHT . 18)
    (:ENTRY_RING . 19)
    (:DESTINATION . 20))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GuideActionEnum>) ostream)
  "Serializes a message object of type '<GuideActionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GuideActionEnum>) istream)
  "Deserializes a message object of type '<GuideActionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GuideActionEnum>)))
  "Returns string type for a message object of type '<GuideActionEnum>"
  "tbt_msgs/GuideActionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GuideActionEnum)))
  "Returns string type for a message object of type 'GuideActionEnum"
  "tbt_msgs/GuideActionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GuideActionEnum>)))
  "Returns md5sum for a message object of type '<GuideActionEnum>"
  "1bf7bcf9d33a27178a8a8ccee339fb10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GuideActionEnum)))
  "Returns md5sum for a message object of type 'GuideActionEnum"
  "1bf7bcf9d33a27178a8a8ccee339fb10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GuideActionEnum>)))
  "Returns full string definition for message of type '<GuideActionEnum>"
  (cl:format cl:nil "uint8 NO_NAVI_ACTION = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 DRIVE_LEFT_FRONT = 3~%uint8 DRIVE_RIGHT_FRONT = 4~%uint8 DRIVE_LEFT_REAR = 5~%uint8 DRIVE_RIGHT_REAR = 6~%uint8 TURN_LEFT_TURN_AROUND = 7~%uint8 GO_STRAIGHT = 8~%uint8 FRONT_ROAD_ALONG_LEFT = 9~%uint8 FRONT_ROAD_ALONG_RIGHT = 10~%uint8 TRIFURCATION_ALONG_LEFT = 11~%uint8 TRIFURCATION_ALONG_MIDDLE = 12~%uint8 TRIFURCATION_ALONG_RIGHT = 13~%uint8 TWO_STRAIGHT_ALONG_LEFT = 14~%uint8 TWO_STRAIGHT_ALONG_RIGHT = 15~%uint8 THREE_STRAIGHT_ALONG_LEFT = 16~%uint8 THREE_STRAIGHT_ALONG_MIDDLE = 17~%uint8 THREE_STRAIGHT_ALONG_RIGHT = 18~%uint8 ENTRY_RING = 19~%uint8 DESTINATION = 20~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GuideActionEnum)))
  "Returns full string definition for message of type 'GuideActionEnum"
  (cl:format cl:nil "uint8 NO_NAVI_ACTION = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 DRIVE_LEFT_FRONT = 3~%uint8 DRIVE_RIGHT_FRONT = 4~%uint8 DRIVE_LEFT_REAR = 5~%uint8 DRIVE_RIGHT_REAR = 6~%uint8 TURN_LEFT_TURN_AROUND = 7~%uint8 GO_STRAIGHT = 8~%uint8 FRONT_ROAD_ALONG_LEFT = 9~%uint8 FRONT_ROAD_ALONG_RIGHT = 10~%uint8 TRIFURCATION_ALONG_LEFT = 11~%uint8 TRIFURCATION_ALONG_MIDDLE = 12~%uint8 TRIFURCATION_ALONG_RIGHT = 13~%uint8 TWO_STRAIGHT_ALONG_LEFT = 14~%uint8 TWO_STRAIGHT_ALONG_RIGHT = 15~%uint8 THREE_STRAIGHT_ALONG_LEFT = 16~%uint8 THREE_STRAIGHT_ALONG_MIDDLE = 17~%uint8 THREE_STRAIGHT_ALONG_RIGHT = 18~%uint8 ENTRY_RING = 19~%uint8 DESTINATION = 20~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GuideActionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GuideActionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'GuideActionEnum
    (cl:cons ':value (value msg))
))
