; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFidUserListInfo.msg.html

(cl:defclass <DMSFidUserListInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (user_list
    :reader user_list
    :initarg :user_list
    :type (cl:vector dms_msgs-msg:DMSFidUserInfo)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSFidUserInfo :initial-element (cl:make-instance 'dms_msgs-msg:DMSFidUserInfo)))
   (user_list_sync_type
    :reader user_list_sync_type
    :initarg :user_list_sync_type
    :type dms_msgs-msg:UserListSyncTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:UserListSyncTypeEnum)))
)

(cl:defclass DMSFidUserListInfo (<DMSFidUserListInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFidUserListInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFidUserListInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFidUserListInfo> is deprecated: use dms_msgs-msg:DMSFidUserListInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSFidUserListInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'user_list-val :lambda-list '(m))
(cl:defmethod user_list-val ((m <DMSFidUserListInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:user_list-val is deprecated.  Use dms_msgs-msg:user_list instead.")
  (user_list m))

(cl:ensure-generic-function 'user_list_sync_type-val :lambda-list '(m))
(cl:defmethod user_list_sync_type-val ((m <DMSFidUserListInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:user_list_sync_type-val is deprecated.  Use dms_msgs-msg:user_list_sync_type instead.")
  (user_list_sync_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSFidUserListInfo>)))
    "Constants for message type '<DMSFidUserListInfo>"
  '((:USER_LIST_INFO_UN_AVAILABLE . 0)
    (:USER_LIST_INFO_AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSFidUserListInfo)))
    "Constants for message type 'DMSFidUserListInfo"
  '((:USER_LIST_INFO_UN_AVAILABLE . 0)
    (:USER_LIST_INFO_AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFidUserListInfo>) ostream)
  "Serializes a message object of type '<DMSFidUserListInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'user_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'user_list))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'user_list_sync_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFidUserListInfo>) istream)
  "Deserializes a message object of type '<DMSFidUserListInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'user_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'user_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSFidUserInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'user_list_sync_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFidUserListInfo>)))
  "Returns string type for a message object of type '<DMSFidUserListInfo>"
  "dms_msgs/DMSFidUserListInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFidUserListInfo)))
  "Returns string type for a message object of type 'DMSFidUserListInfo"
  "dms_msgs/DMSFidUserListInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFidUserListInfo>)))
  "Returns md5sum for a message object of type '<DMSFidUserListInfo>"
  "828fbff18db307cd0d669e5661bfa95a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFidUserListInfo)))
  "Returns md5sum for a message object of type 'DMSFidUserListInfo"
  "828fbff18db307cd0d669e5661bfa95a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFidUserListInfo>)))
  "Returns full string definition for message of type '<DMSFidUserListInfo>"
  (cl:format cl:nil "uint8 USER_LIST_INFO_UN_AVAILABLE = 0~%uint8 USER_LIST_INFO_AVAILABLE = 1~%uint8 available~%dms_msgs/DMSFidUserInfo[] user_list~%dms_msgs/UserListSyncTypeEnum user_list_sync_type~%~%================================================================================~%MSG: dms_msgs/DMSFidUserInfo~%string user_id~%string create_time~%~%================================================================================~%MSG: dms_msgs/UserListSyncTypeEnum~%uint8 NO_ACTION = 0~%uint8 USER_LIST_SYNC_SUCCESS = 1~%uint8 USER_LIST_SYNC_FAIL = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFidUserListInfo)))
  "Returns full string definition for message of type 'DMSFidUserListInfo"
  (cl:format cl:nil "uint8 USER_LIST_INFO_UN_AVAILABLE = 0~%uint8 USER_LIST_INFO_AVAILABLE = 1~%uint8 available~%dms_msgs/DMSFidUserInfo[] user_list~%dms_msgs/UserListSyncTypeEnum user_list_sync_type~%~%================================================================================~%MSG: dms_msgs/DMSFidUserInfo~%string user_id~%string create_time~%~%================================================================================~%MSG: dms_msgs/UserListSyncTypeEnum~%uint8 NO_ACTION = 0~%uint8 USER_LIST_SYNC_SUCCESS = 1~%uint8 USER_LIST_SYNC_FAIL = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFidUserListInfo>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'user_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'user_list_sync_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFidUserListInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFidUserListInfo
    (cl:cons ':available (available msg))
    (cl:cons ':user_list (user_list msg))
    (cl:cons ':user_list_sync_type (user_list_sync_type msg))
))
