; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LanePathDirection.msg.html

(cl:defclass <LanePathDirection> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LanePathDirection (<LanePathDirection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LanePathDirection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LanePathDirection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LanePathDirection> is deprecated: use landmark_msgs-msg:LanePathDirection instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LanePathDirection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LanePathDirection>)))
    "Constants for message type '<LanePathDirection>"
  '((:UNKNOWN . 0)
    (:CONTINUE . 1)
    (:LEFT . 2)
    (:RIGHT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LanePathDirection)))
    "Constants for message type 'LanePathDirection"
  '((:UNKNOWN . 0)
    (:CONTINUE . 1)
    (:LEFT . 2)
    (:RIGHT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LanePathDirection>) ostream)
  "Serializes a message object of type '<LanePathDirection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LanePathDirection>) istream)
  "Deserializes a message object of type '<LanePathDirection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LanePathDirection>)))
  "Returns string type for a message object of type '<LanePathDirection>"
  "landmark_msgs/LanePathDirection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LanePathDirection)))
  "Returns string type for a message object of type 'LanePathDirection"
  "landmark_msgs/LanePathDirection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LanePathDirection>)))
  "Returns md5sum for a message object of type '<LanePathDirection>"
  "7a4a9524d9874ae8fd1f5111ca2f00e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LanePathDirection)))
  "Returns md5sum for a message object of type 'LanePathDirection"
  "7a4a9524d9874ae8fd1f5111ca2f00e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LanePathDirection>)))
  "Returns full string definition for message of type '<LanePathDirection>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 CONTINUE = 1~%uint8 LEFT = 2~%uint8 RIGHT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LanePathDirection)))
  "Returns full string definition for message of type 'LanePathDirection"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 CONTINUE = 1~%uint8 LEFT = 2~%uint8 RIGHT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LanePathDirection>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LanePathDirection>))
  "Converts a ROS message object to a list"
  (cl:list 'LanePathDirection
    (cl:cons ':value (value msg))
))
