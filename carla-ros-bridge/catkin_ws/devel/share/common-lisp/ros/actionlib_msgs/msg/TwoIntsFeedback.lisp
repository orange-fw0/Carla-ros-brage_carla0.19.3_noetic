; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude TwoIntsFeedback.msg.html

(cl:defclass <TwoIntsFeedback> (roslisp-msg-protocol:ros-message)
  ((mfrmsg_empty_value
    :reader mfrmsg_empty_value
    :initarg :mfrmsg_empty_value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TwoIntsFeedback (<TwoIntsFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TwoIntsFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TwoIntsFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<TwoIntsFeedback> is deprecated: use actionlib_msgs-msg:TwoIntsFeedback instead.")))

(cl:ensure-generic-function 'mfrmsg_empty_value-val :lambda-list '(m))
(cl:defmethod mfrmsg_empty_value-val ((m <TwoIntsFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:mfrmsg_empty_value-val is deprecated.  Use actionlib_msgs-msg:mfrmsg_empty_value instead.")
  (mfrmsg_empty_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TwoIntsFeedback>) ostream)
  "Serializes a message object of type '<TwoIntsFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mfrmsg_empty_value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TwoIntsFeedback>) istream)
  "Deserializes a message object of type '<TwoIntsFeedback>"
    (cl:setf (cl:slot-value msg 'mfrmsg_empty_value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TwoIntsFeedback>)))
  "Returns string type for a message object of type '<TwoIntsFeedback>"
  "actionlib_msgs/TwoIntsFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TwoIntsFeedback)))
  "Returns string type for a message object of type 'TwoIntsFeedback"
  "actionlib_msgs/TwoIntsFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TwoIntsFeedback>)))
  "Returns md5sum for a message object of type '<TwoIntsFeedback>"
  "73e8a879fb095c7ddf7ef49b93137539")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TwoIntsFeedback)))
  "Returns md5sum for a message object of type 'TwoIntsFeedback"
  "73e8a879fb095c7ddf7ef49b93137539")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TwoIntsFeedback>)))
  "Returns full string definition for message of type '<TwoIntsFeedback>"
  (cl:format cl:nil "bool mfrmsg_empty_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TwoIntsFeedback)))
  "Returns full string definition for message of type 'TwoIntsFeedback"
  (cl:format cl:nil "bool mfrmsg_empty_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TwoIntsFeedback>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TwoIntsFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TwoIntsFeedback
    (cl:cons ':mfrmsg_empty_value (mfrmsg_empty_value msg))
))
