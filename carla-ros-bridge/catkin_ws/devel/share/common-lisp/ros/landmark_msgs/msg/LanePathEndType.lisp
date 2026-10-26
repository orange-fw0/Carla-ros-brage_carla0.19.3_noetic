; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LanePathEndType.msg.html

(cl:defclass <LanePathEndType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LanePathEndType (<LanePathEndType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LanePathEndType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LanePathEndType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LanePathEndType> is deprecated: use landmark_msgs-msg:LanePathEndType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LanePathEndType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LanePathEndType>)))
    "Constants for message type '<LanePathEndType>"
  '((:UNKNOWN . 0)
    (:OFF_ROUTE_END . 1)
    (:SEARCH_RANGE_END . 2)
    (:DEST_END . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LanePathEndType)))
    "Constants for message type 'LanePathEndType"
  '((:UNKNOWN . 0)
    (:OFF_ROUTE_END . 1)
    (:SEARCH_RANGE_END . 2)
    (:DEST_END . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LanePathEndType>) ostream)
  "Serializes a message object of type '<LanePathEndType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LanePathEndType>) istream)
  "Deserializes a message object of type '<LanePathEndType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LanePathEndType>)))
  "Returns string type for a message object of type '<LanePathEndType>"
  "landmark_msgs/LanePathEndType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LanePathEndType)))
  "Returns string type for a message object of type 'LanePathEndType"
  "landmark_msgs/LanePathEndType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LanePathEndType>)))
  "Returns md5sum for a message object of type '<LanePathEndType>"
  "0249be1799ef634c26b7f7366a7bc11c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LanePathEndType)))
  "Returns md5sum for a message object of type 'LanePathEndType"
  "0249be1799ef634c26b7f7366a7bc11c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LanePathEndType>)))
  "Returns full string definition for message of type '<LanePathEndType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 OFF_ROUTE_END = 1~%uint8 SEARCH_RANGE_END = 2~%uint8 DEST_END = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LanePathEndType)))
  "Returns full string definition for message of type 'LanePathEndType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 OFF_ROUTE_END = 1~%uint8 SEARCH_RANGE_END = 2~%uint8 DEST_END = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LanePathEndType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LanePathEndType>))
  "Converts a ROS message object to a list"
  (cl:list 'LanePathEndType
    (cl:cons ':value (value msg))
))
