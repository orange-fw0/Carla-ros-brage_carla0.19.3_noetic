; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude Orientation.msg.html

(cl:defclass <Orientation> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Orientation (<Orientation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Orientation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Orientation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<Orientation> is deprecated: use worldmodel_msgs-msg:Orientation instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Orientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Orientation>)))
    "Constants for message type '<Orientation>"
  '((:UNKNOWN . 0)
    (:LEFT . 1)
    (:RIGHT . 2)
    (:INTERSECT . 3)
    (:IGNORED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Orientation)))
    "Constants for message type 'Orientation"
  '((:UNKNOWN . 0)
    (:LEFT . 1)
    (:RIGHT . 2)
    (:INTERSECT . 3)
    (:IGNORED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Orientation>) ostream)
  "Serializes a message object of type '<Orientation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Orientation>) istream)
  "Deserializes a message object of type '<Orientation>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Orientation>)))
  "Returns string type for a message object of type '<Orientation>"
  "worldmodel_msgs/Orientation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Orientation)))
  "Returns string type for a message object of type 'Orientation"
  "worldmodel_msgs/Orientation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Orientation>)))
  "Returns md5sum for a message object of type '<Orientation>"
  "85dfd6d51fcc0ed33de9ae7c0a784970")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Orientation)))
  "Returns md5sum for a message object of type 'Orientation"
  "85dfd6d51fcc0ed33de9ae7c0a784970")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Orientation>)))
  "Returns full string definition for message of type '<Orientation>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 IGNORED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Orientation)))
  "Returns full string definition for message of type 'Orientation"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 IGNORED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Orientation>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Orientation>))
  "Converts a ROS message object to a list"
  (cl:list 'Orientation
    (cl:cons ':value (value msg))
))
