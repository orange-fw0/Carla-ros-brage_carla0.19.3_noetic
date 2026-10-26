; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneConnectDirection.msg.html

(cl:defclass <LaneConnectDirection> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneConnectDirection (<LaneConnectDirection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneConnectDirection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneConnectDirection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneConnectDirection> is deprecated: use worldmodel_msgs-msg:LaneConnectDirection instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneConnectDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneConnectDirection>)))
    "Constants for message type '<LaneConnectDirection>"
  '((:NORMAL . 0)
    (:SPLIT_TO_LEFT . 1)
    (:SPLIT_TO_RIGHT . 2)
    (:MERGE_FROM_LEFT . 3)
    (:MERGE_FROM_RIGHT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneConnectDirection)))
    "Constants for message type 'LaneConnectDirection"
  '((:NORMAL . 0)
    (:SPLIT_TO_LEFT . 1)
    (:SPLIT_TO_RIGHT . 2)
    (:MERGE_FROM_LEFT . 3)
    (:MERGE_FROM_RIGHT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneConnectDirection>) ostream)
  "Serializes a message object of type '<LaneConnectDirection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneConnectDirection>) istream)
  "Deserializes a message object of type '<LaneConnectDirection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneConnectDirection>)))
  "Returns string type for a message object of type '<LaneConnectDirection>"
  "worldmodel_msgs/LaneConnectDirection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneConnectDirection)))
  "Returns string type for a message object of type 'LaneConnectDirection"
  "worldmodel_msgs/LaneConnectDirection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneConnectDirection>)))
  "Returns md5sum for a message object of type '<LaneConnectDirection>"
  "e38e6a23888d9908b136b8c0a1418367")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneConnectDirection)))
  "Returns md5sum for a message object of type 'LaneConnectDirection"
  "e38e6a23888d9908b136b8c0a1418367")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneConnectDirection>)))
  "Returns full string definition for message of type '<LaneConnectDirection>"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneConnectDirection)))
  "Returns full string definition for message of type 'LaneConnectDirection"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneConnectDirection>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneConnectDirection>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneConnectDirection
    (cl:cons ':value (value msg))
))
