; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude ObstacleKeyPointData.msg.html

(cl:defclass <ObstacleKeyPointData> (roslisp-msg-protocol:ros-message)
  ((point_x
    :reader point_x
    :initarg :point_x
    :type cl:float
    :initform 0.0)
   (point_y
    :reader point_y
    :initarg :point_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass ObstacleKeyPointData (<ObstacleKeyPointData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleKeyPointData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleKeyPointData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<ObstacleKeyPointData> is deprecated: use sensor_interface_msgs-msg:ObstacleKeyPointData instead.")))

(cl:ensure-generic-function 'point_x-val :lambda-list '(m))
(cl:defmethod point_x-val ((m <ObstacleKeyPointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:point_x-val is deprecated.  Use sensor_interface_msgs-msg:point_x instead.")
  (point_x m))

(cl:ensure-generic-function 'point_y-val :lambda-list '(m))
(cl:defmethod point_y-val ((m <ObstacleKeyPointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:point_y-val is deprecated.  Use sensor_interface_msgs-msg:point_y instead.")
  (point_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleKeyPointData>) ostream)
  "Serializes a message object of type '<ObstacleKeyPointData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'point_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'point_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleKeyPointData>) istream)
  "Deserializes a message object of type '<ObstacleKeyPointData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'point_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'point_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleKeyPointData>)))
  "Returns string type for a message object of type '<ObstacleKeyPointData>"
  "sensor_interface_msgs/ObstacleKeyPointData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleKeyPointData)))
  "Returns string type for a message object of type 'ObstacleKeyPointData"
  "sensor_interface_msgs/ObstacleKeyPointData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleKeyPointData>)))
  "Returns md5sum for a message object of type '<ObstacleKeyPointData>"
  "ded096c89bb10760d1911fa12d549ebe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleKeyPointData)))
  "Returns md5sum for a message object of type 'ObstacleKeyPointData"
  "ded096c89bb10760d1911fa12d549ebe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleKeyPointData>)))
  "Returns full string definition for message of type '<ObstacleKeyPointData>"
  (cl:format cl:nil "float32 point_x~%float32 point_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleKeyPointData)))
  "Returns full string definition for message of type 'ObstacleKeyPointData"
  (cl:format cl:nil "float32 point_x~%float32 point_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleKeyPointData>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleKeyPointData>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleKeyPointData
    (cl:cons ':point_x (point_x msg))
    (cl:cons ':point_y (point_y msg))
))
