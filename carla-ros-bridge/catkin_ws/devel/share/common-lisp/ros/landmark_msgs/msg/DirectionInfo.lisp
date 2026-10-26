; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude DirectionInfo.msg.html

(cl:defclass <DirectionInfo> (roslisp-msg-protocol:ros-message)
  ((road_index
    :reader road_index
    :initarg :road_index
    :type cl:fixnum
    :initform 0)
   (road_sum
    :reader road_sum
    :initarg :road_sum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DirectionInfo (<DirectionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DirectionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DirectionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<DirectionInfo> is deprecated: use landmark_msgs-msg:DirectionInfo instead.")))

(cl:ensure-generic-function 'road_index-val :lambda-list '(m))
(cl:defmethod road_index-val ((m <DirectionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:road_index-val is deprecated.  Use landmark_msgs-msg:road_index instead.")
  (road_index m))

(cl:ensure-generic-function 'road_sum-val :lambda-list '(m))
(cl:defmethod road_sum-val ((m <DirectionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:road_sum-val is deprecated.  Use landmark_msgs-msg:road_sum instead.")
  (road_sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DirectionInfo>) ostream)
  "Serializes a message object of type '<DirectionInfo>"
  (cl:let* ((signed (cl:slot-value msg 'road_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'road_sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DirectionInfo>) istream)
  "Deserializes a message object of type '<DirectionInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'road_index) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'road_sum) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DirectionInfo>)))
  "Returns string type for a message object of type '<DirectionInfo>"
  "landmark_msgs/DirectionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DirectionInfo)))
  "Returns string type for a message object of type 'DirectionInfo"
  "landmark_msgs/DirectionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DirectionInfo>)))
  "Returns md5sum for a message object of type '<DirectionInfo>"
  "f243d642bcb58d5cbd2b586352e3fcb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DirectionInfo)))
  "Returns md5sum for a message object of type 'DirectionInfo"
  "f243d642bcb58d5cbd2b586352e3fcb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DirectionInfo>)))
  "Returns full string definition for message of type '<DirectionInfo>"
  (cl:format cl:nil "int16 road_index~%int16 road_sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DirectionInfo)))
  "Returns full string definition for message of type 'DirectionInfo"
  (cl:format cl:nil "int16 road_index~%int16 road_sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DirectionInfo>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DirectionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DirectionInfo
    (cl:cons ':road_index (road_index msg))
    (cl:cons ':road_sum (road_sum msg))
))
