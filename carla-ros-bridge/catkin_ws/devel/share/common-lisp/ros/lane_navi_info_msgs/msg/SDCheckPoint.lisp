; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDCheckPoint.msg.html

(cl:defclass <SDCheckPoint> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass SDCheckPoint (<SDCheckPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDCheckPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDCheckPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDCheckPoint> is deprecated: use lane_navi_info_msgs-msg:SDCheckPoint instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <SDCheckPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:offset-val is deprecated.  Use lane_navi_info_msgs-msg:offset instead.")
  (offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDCheckPoint>) ostream)
  "Serializes a message object of type '<SDCheckPoint>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDCheckPoint>) istream)
  "Deserializes a message object of type '<SDCheckPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDCheckPoint>)))
  "Returns string type for a message object of type '<SDCheckPoint>"
  "lane_navi_info_msgs/SDCheckPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDCheckPoint)))
  "Returns string type for a message object of type 'SDCheckPoint"
  "lane_navi_info_msgs/SDCheckPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDCheckPoint>)))
  "Returns md5sum for a message object of type '<SDCheckPoint>"
  "a9eb115d4fadb60ffa9aaabb89513cf3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDCheckPoint)))
  "Returns md5sum for a message object of type 'SDCheckPoint"
  "a9eb115d4fadb60ffa9aaabb89513cf3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDCheckPoint>)))
  "Returns full string definition for message of type '<SDCheckPoint>"
  (cl:format cl:nil "float32 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDCheckPoint)))
  "Returns full string definition for message of type 'SDCheckPoint"
  (cl:format cl:nil "float32 offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDCheckPoint>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDCheckPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'SDCheckPoint
    (cl:cons ':offset (offset msg))
))
