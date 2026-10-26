; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude MergePoint.msg.html

(cl:defclass <MergePoint> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type worldmodel_msgs-msg:MergeType
    :initform (cl:make-instance 'worldmodel_msgs-msg:MergeType)))
)

(cl:defclass MergePoint (<MergePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MergePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MergePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<MergePoint> is deprecated: use worldmodel_msgs-msg:MergePoint instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <MergePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance-val is deprecated.  Use worldmodel_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MergePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:type-val is deprecated.  Use worldmodel_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MergePoint>) ostream)
  "Serializes a message object of type '<MergePoint>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MergePoint>) istream)
  "Deserializes a message object of type '<MergePoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MergePoint>)))
  "Returns string type for a message object of type '<MergePoint>"
  "worldmodel_msgs/MergePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MergePoint)))
  "Returns string type for a message object of type 'MergePoint"
  "worldmodel_msgs/MergePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MergePoint>)))
  "Returns md5sum for a message object of type '<MergePoint>"
  "fc4aa91f76393862e9bc4f6ac3c197a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MergePoint)))
  "Returns md5sum for a message object of type 'MergePoint"
  "fc4aa91f76393862e9bc4f6ac3c197a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MergePoint>)))
  "Returns full string definition for message of type '<MergePoint>"
  (cl:format cl:nil "float64 distance~%worldmodel_msgs/MergeType type~%~%================================================================================~%MSG: worldmodel_msgs/MergeType~%uint8 UNKNOWN = 0~%uint8 UNRELATED = 1~%uint8 FROM_RIGHT = 2~%uint8 FROM_LEFT = 3~%uint8 FROM_BOTH = 4~%uint8 LANE_END = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MergePoint)))
  "Returns full string definition for message of type 'MergePoint"
  (cl:format cl:nil "float64 distance~%worldmodel_msgs/MergeType type~%~%================================================================================~%MSG: worldmodel_msgs/MergeType~%uint8 UNKNOWN = 0~%uint8 UNRELATED = 1~%uint8 FROM_RIGHT = 2~%uint8 FROM_LEFT = 3~%uint8 FROM_BOTH = 4~%uint8 LANE_END = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MergePoint>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MergePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'MergePoint
    (cl:cons ':distance (distance msg))
    (cl:cons ':type (type msg))
))
