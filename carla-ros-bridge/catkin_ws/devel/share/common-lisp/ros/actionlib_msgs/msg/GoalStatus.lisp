; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude GoalStatus.msg.html

(cl:defclass <GoalStatus> (roslisp-msg-protocol:ros-message)
  ((goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass GoalStatus (<GoalStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<GoalStatus> is deprecated: use actionlib_msgs-msg:GoalStatus instead.")))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <GoalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:goal_id-val is deprecated.  Use actionlib_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GoalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:status-val is deprecated.  Use actionlib_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <GoalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:text-val is deprecated.  Use actionlib_msgs-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GoalStatus>)))
    "Constants for message type '<GoalStatus>"
  '((:PENDING . 0)
    (:ACTIVE . 1)
    (:PREEMPTED . 2)
    (:SUCCEEDED . 3)
    (:ABORTED . 4)
    (:REJECTED . 5)
    (:PREEMPTING . 6)
    (:RECALLING . 7)
    (:RECALLED . 8)
    (:LOST . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GoalStatus)))
    "Constants for message type 'GoalStatus"
  '((:PENDING . 0)
    (:ACTIVE . 1)
    (:PREEMPTED . 2)
    (:SUCCEEDED . 3)
    (:ABORTED . 4)
    (:REJECTED . 5)
    (:PREEMPTING . 6)
    (:RECALLING . 7)
    (:RECALLED . 8)
    (:LOST . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalStatus>) ostream)
  "Serializes a message object of type '<GoalStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalStatus>) istream)
  "Deserializes a message object of type '<GoalStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalStatus>)))
  "Returns string type for a message object of type '<GoalStatus>"
  "actionlib_msgs/GoalStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalStatus)))
  "Returns string type for a message object of type 'GoalStatus"
  "actionlib_msgs/GoalStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalStatus>)))
  "Returns md5sum for a message object of type '<GoalStatus>"
  "3d3c005b84876912c1e35e034e8d68c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalStatus)))
  "Returns md5sum for a message object of type 'GoalStatus"
  "3d3c005b84876912c1e35e034e8d68c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalStatus>)))
  "Returns full string definition for message of type '<GoalStatus>"
  (cl:format cl:nil "uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalStatus)))
  "Returns full string definition for message of type 'GoalStatus"
  (cl:format cl:nil "uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     1
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalStatus
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':text (text msg))
))
