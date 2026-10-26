; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude NaviInfoSource.msg.html

(cl:defclass <NaviInfoSource> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NaviInfoSource (<NaviInfoSource>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviInfoSource>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviInfoSource)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<NaviInfoSource> is deprecated: use landmark_msgs-msg:NaviInfoSource instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <NaviInfoSource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NaviInfoSource>)))
    "Constants for message type '<NaviInfoSource>"
  '((:UNKNOWN . 0)
    (:DEFAULT . 1)
    (:HDMAP . 2)
    (:LANDTOPO . 3)
    (:TBT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NaviInfoSource)))
    "Constants for message type 'NaviInfoSource"
  '((:UNKNOWN . 0)
    (:DEFAULT . 1)
    (:HDMAP . 2)
    (:LANDTOPO . 3)
    (:TBT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviInfoSource>) ostream)
  "Serializes a message object of type '<NaviInfoSource>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviInfoSource>) istream)
  "Deserializes a message object of type '<NaviInfoSource>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviInfoSource>)))
  "Returns string type for a message object of type '<NaviInfoSource>"
  "landmark_msgs/NaviInfoSource")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviInfoSource)))
  "Returns string type for a message object of type 'NaviInfoSource"
  "landmark_msgs/NaviInfoSource")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviInfoSource>)))
  "Returns md5sum for a message object of type '<NaviInfoSource>"
  "f5a78212b207ce59ebe4011678a06ed5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviInfoSource)))
  "Returns md5sum for a message object of type 'NaviInfoSource"
  "f5a78212b207ce59ebe4011678a06ed5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviInfoSource>)))
  "Returns full string definition for message of type '<NaviInfoSource>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 DEFAULT = 1~%uint8 HDMAP = 2~%uint8 LANDTOPO = 3~%uint8 TBT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviInfoSource)))
  "Returns full string definition for message of type 'NaviInfoSource"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 DEFAULT = 1~%uint8 HDMAP = 2~%uint8 LANDTOPO = 3~%uint8 TBT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviInfoSource>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviInfoSource>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviInfoSource
    (cl:cons ':value (value msg))
))
