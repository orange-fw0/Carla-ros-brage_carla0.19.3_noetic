; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude LaneSegmentPointEnum.msg.html

(cl:defclass <LaneSegmentPointEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneSegmentPointEnum (<LaneSegmentPointEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneSegmentPointEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneSegmentPointEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<LaneSegmentPointEnum> is deprecated: use perception_interface_msgs-msg:LaneSegmentPointEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneSegmentPointEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneSegmentPointEnum>)))
    "Constants for message type '<LaneSegmentPointEnum>"
  '((:LANE_SEGMENT_POINT_UNKNOWN . 0)
    (:LANE_SEGMENT_POINT_FAKE_POINT . 1)
    (:LANE_SEGMENT_POINT_REAL_POINT . 2)
    (:LANE_SEGMENT_POINT_FARTHEST_POINT . 3)
    (:LANE_SEGMENT_POINT_OCCLUSION_POINT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneSegmentPointEnum)))
    "Constants for message type 'LaneSegmentPointEnum"
  '((:LANE_SEGMENT_POINT_UNKNOWN . 0)
    (:LANE_SEGMENT_POINT_FAKE_POINT . 1)
    (:LANE_SEGMENT_POINT_REAL_POINT . 2)
    (:LANE_SEGMENT_POINT_FARTHEST_POINT . 3)
    (:LANE_SEGMENT_POINT_OCCLUSION_POINT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneSegmentPointEnum>) ostream)
  "Serializes a message object of type '<LaneSegmentPointEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneSegmentPointEnum>) istream)
  "Deserializes a message object of type '<LaneSegmentPointEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneSegmentPointEnum>)))
  "Returns string type for a message object of type '<LaneSegmentPointEnum>"
  "perception_interface_msgs/LaneSegmentPointEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneSegmentPointEnum)))
  "Returns string type for a message object of type 'LaneSegmentPointEnum"
  "perception_interface_msgs/LaneSegmentPointEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneSegmentPointEnum>)))
  "Returns md5sum for a message object of type '<LaneSegmentPointEnum>"
  "7c3775ea63f9345e02ce4664a9779553")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneSegmentPointEnum)))
  "Returns md5sum for a message object of type 'LaneSegmentPointEnum"
  "7c3775ea63f9345e02ce4664a9779553")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneSegmentPointEnum>)))
  "Returns full string definition for message of type '<LaneSegmentPointEnum>"
  (cl:format cl:nil "uint8 LANE_SEGMENT_POINT_UNKNOWN = 0~%uint8 LANE_SEGMENT_POINT_FAKE_POINT = 1~%uint8 LANE_SEGMENT_POINT_REAL_POINT = 2~%uint8 LANE_SEGMENT_POINT_FARTHEST_POINT = 3~%uint8 LANE_SEGMENT_POINT_OCCLUSION_POINT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneSegmentPointEnum)))
  "Returns full string definition for message of type 'LaneSegmentPointEnum"
  (cl:format cl:nil "uint8 LANE_SEGMENT_POINT_UNKNOWN = 0~%uint8 LANE_SEGMENT_POINT_FAKE_POINT = 1~%uint8 LANE_SEGMENT_POINT_REAL_POINT = 2~%uint8 LANE_SEGMENT_POINT_FARTHEST_POINT = 3~%uint8 LANE_SEGMENT_POINT_OCCLUSION_POINT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneSegmentPointEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneSegmentPointEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneSegmentPointEnum
    (cl:cons ':value (value msg))
))
