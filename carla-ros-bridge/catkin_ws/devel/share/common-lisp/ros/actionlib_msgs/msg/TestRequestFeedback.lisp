; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude TestRequestFeedback.msg.html

(cl:defclass <TestRequestFeedback> (roslisp-msg-protocol:ros-message)
  ((mfrmsg_empty_value
    :reader mfrmsg_empty_value
    :initarg :mfrmsg_empty_value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TestRequestFeedback (<TestRequestFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestRequestFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestRequestFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<TestRequestFeedback> is deprecated: use actionlib_msgs-msg:TestRequestFeedback instead.")))

(cl:ensure-generic-function 'mfrmsg_empty_value-val :lambda-list '(m))
(cl:defmethod mfrmsg_empty_value-val ((m <TestRequestFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:mfrmsg_empty_value-val is deprecated.  Use actionlib_msgs-msg:mfrmsg_empty_value instead.")
  (mfrmsg_empty_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestRequestFeedback>) ostream)
  "Serializes a message object of type '<TestRequestFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mfrmsg_empty_value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestRequestFeedback>) istream)
  "Deserializes a message object of type '<TestRequestFeedback>"
    (cl:setf (cl:slot-value msg 'mfrmsg_empty_value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestRequestFeedback>)))
  "Returns string type for a message object of type '<TestRequestFeedback>"
  "actionlib_msgs/TestRequestFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestFeedback)))
  "Returns string type for a message object of type 'TestRequestFeedback"
  "actionlib_msgs/TestRequestFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestRequestFeedback>)))
  "Returns md5sum for a message object of type '<TestRequestFeedback>"
  "73e8a879fb095c7ddf7ef49b93137539")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestRequestFeedback)))
  "Returns md5sum for a message object of type 'TestRequestFeedback"
  "73e8a879fb095c7ddf7ef49b93137539")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestRequestFeedback>)))
  "Returns full string definition for message of type '<TestRequestFeedback>"
  (cl:format cl:nil "bool mfrmsg_empty_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestRequestFeedback)))
  "Returns full string definition for message of type 'TestRequestFeedback"
  (cl:format cl:nil "bool mfrmsg_empty_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestRequestFeedback>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestRequestFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TestRequestFeedback
    (cl:cons ':mfrmsg_empty_value (mfrmsg_empty_value msg))
))
