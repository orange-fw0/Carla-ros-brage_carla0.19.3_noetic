; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude GoalID.msg.html

(cl:defclass <GoalID> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:integer
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass GoalID (<GoalID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<GoalID> is deprecated: use actionlib_msgs-msg:GoalID instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GoalID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:stamp-val is deprecated.  Use actionlib_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GoalID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:id-val is deprecated.  Use actionlib_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalID>) ostream)
  "Serializes a message object of type '<GoalID>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'stamp)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalID>) istream)
  "Deserializes a message object of type '<GoalID>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalID>)))
  "Returns string type for a message object of type '<GoalID>"
  "actionlib_msgs/GoalID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalID)))
  "Returns string type for a message object of type 'GoalID"
  "actionlib_msgs/GoalID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalID>)))
  "Returns md5sum for a message object of type '<GoalID>"
  "526c4c5d244807edb583556d1614e7f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalID)))
  "Returns md5sum for a message object of type 'GoalID"
  "526c4c5d244807edb583556d1614e7f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalID>)))
  "Returns full string definition for message of type '<GoalID>"
  (cl:format cl:nil "uint64 stamp~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalID)))
  "Returns full string definition for message of type 'GoalID"
  (cl:format cl:nil "uint64 stamp~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalID>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalID>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalID
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':id (id msg))
))
