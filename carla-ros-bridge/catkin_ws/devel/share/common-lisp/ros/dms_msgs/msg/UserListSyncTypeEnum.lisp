; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude UserListSyncTypeEnum.msg.html

(cl:defclass <UserListSyncTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UserListSyncTypeEnum (<UserListSyncTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UserListSyncTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UserListSyncTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<UserListSyncTypeEnum> is deprecated: use dms_msgs-msg:UserListSyncTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <UserListSyncTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UserListSyncTypeEnum>)))
    "Constants for message type '<UserListSyncTypeEnum>"
  '((:NO_ACTION . 0)
    (:USER_LIST_SYNC_SUCCESS . 1)
    (:USER_LIST_SYNC_FAIL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UserListSyncTypeEnum)))
    "Constants for message type 'UserListSyncTypeEnum"
  '((:NO_ACTION . 0)
    (:USER_LIST_SYNC_SUCCESS . 1)
    (:USER_LIST_SYNC_FAIL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UserListSyncTypeEnum>) ostream)
  "Serializes a message object of type '<UserListSyncTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UserListSyncTypeEnum>) istream)
  "Deserializes a message object of type '<UserListSyncTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UserListSyncTypeEnum>)))
  "Returns string type for a message object of type '<UserListSyncTypeEnum>"
  "dms_msgs/UserListSyncTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UserListSyncTypeEnum)))
  "Returns string type for a message object of type 'UserListSyncTypeEnum"
  "dms_msgs/UserListSyncTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UserListSyncTypeEnum>)))
  "Returns md5sum for a message object of type '<UserListSyncTypeEnum>"
  "b6b6d1fbf02fda226a17a3fe3119e577")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UserListSyncTypeEnum)))
  "Returns md5sum for a message object of type 'UserListSyncTypeEnum"
  "b6b6d1fbf02fda226a17a3fe3119e577")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UserListSyncTypeEnum>)))
  "Returns full string definition for message of type '<UserListSyncTypeEnum>"
  (cl:format cl:nil "uint8 NO_ACTION = 0~%uint8 USER_LIST_SYNC_SUCCESS = 1~%uint8 USER_LIST_SYNC_FAIL = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UserListSyncTypeEnum)))
  "Returns full string definition for message of type 'UserListSyncTypeEnum"
  (cl:format cl:nil "uint8 NO_ACTION = 0~%uint8 USER_LIST_SYNC_SUCCESS = 1~%uint8 USER_LIST_SYNC_FAIL = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UserListSyncTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UserListSyncTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'UserListSyncTypeEnum
    (cl:cons ':value (value msg))
))
