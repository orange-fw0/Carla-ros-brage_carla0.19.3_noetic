; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSRequestRenderLDInfo.msg.html

(cl:defclass <TOSRequestRenderLDInfo> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0))
)

(cl:defclass TOSRequestRenderLDInfo (<TOSRequestRenderLDInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSRequestRenderLDInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSRequestRenderLDInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSRequestRenderLDInfo> is deprecated: use tos_msgs-msg:TOSRequestRenderLDInfo instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <TOSRequestRenderLDInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:lane_id-val is deprecated.  Use tos_msgs-msg:lane_id instead.")
  (lane_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSRequestRenderLDInfo>) ostream)
  "Serializes a message object of type '<TOSRequestRenderLDInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lane_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lane_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSRequestRenderLDInfo>) istream)
  "Deserializes a message object of type '<TOSRequestRenderLDInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lane_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lane_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSRequestRenderLDInfo>)))
  "Returns string type for a message object of type '<TOSRequestRenderLDInfo>"
  "tos_msgs/TOSRequestRenderLDInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSRequestRenderLDInfo)))
  "Returns string type for a message object of type 'TOSRequestRenderLDInfo"
  "tos_msgs/TOSRequestRenderLDInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSRequestRenderLDInfo>)))
  "Returns md5sum for a message object of type '<TOSRequestRenderLDInfo>"
  "d7d9c9b0d3d32b0727874aaf221489bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSRequestRenderLDInfo)))
  "Returns md5sum for a message object of type 'TOSRequestRenderLDInfo"
  "d7d9c9b0d3d32b0727874aaf221489bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSRequestRenderLDInfo>)))
  "Returns full string definition for message of type '<TOSRequestRenderLDInfo>"
  (cl:format cl:nil "uint32 lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSRequestRenderLDInfo)))
  "Returns full string definition for message of type 'TOSRequestRenderLDInfo"
  (cl:format cl:nil "uint32 lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSRequestRenderLDInfo>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSRequestRenderLDInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSRequestRenderLDInfo
    (cl:cons ':lane_id (lane_id msg))
))
