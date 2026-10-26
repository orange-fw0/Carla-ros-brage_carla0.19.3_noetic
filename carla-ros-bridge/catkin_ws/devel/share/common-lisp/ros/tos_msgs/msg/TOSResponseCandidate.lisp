; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSResponseCandidate.msg.html

(cl:defclass <TOSResponseCandidate> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass TOSResponseCandidate (<TOSResponseCandidate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSResponseCandidate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSResponseCandidate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSResponseCandidate> is deprecated: use tos_msgs-msg:TOSResponseCandidate instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TOSResponseCandidate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:id-val is deprecated.  Use tos_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSResponseCandidate>) ostream)
  "Serializes a message object of type '<TOSResponseCandidate>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSResponseCandidate>) istream)
  "Deserializes a message object of type '<TOSResponseCandidate>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSResponseCandidate>)))
  "Returns string type for a message object of type '<TOSResponseCandidate>"
  "tos_msgs/TOSResponseCandidate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSResponseCandidate)))
  "Returns string type for a message object of type 'TOSResponseCandidate"
  "tos_msgs/TOSResponseCandidate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSResponseCandidate>)))
  "Returns md5sum for a message object of type '<TOSResponseCandidate>"
  "309d4b30834b338cced19e5622a97a03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSResponseCandidate)))
  "Returns md5sum for a message object of type 'TOSResponseCandidate"
  "309d4b30834b338cced19e5622a97a03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSResponseCandidate>)))
  "Returns full string definition for message of type '<TOSResponseCandidate>"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSResponseCandidate)))
  "Returns full string definition for message of type 'TOSResponseCandidate"
  (cl:format cl:nil "uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSResponseCandidate>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSResponseCandidate>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSResponseCandidate
    (cl:cons ':id (id msg))
))
