; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude TaskInfo.msg.html

(cl:defclass <TaskInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (request
    :reader request
    :initarg :request
    :type planning_msgs-msg:RequestEnum
    :initform (cl:make-instance 'planning_msgs-msg:RequestEnum))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID)))
)

(cl:defclass TaskInfo (<TaskInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<TaskInfo> is deprecated: use planning_msgs-msg:TaskInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <TaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:request-val is deprecated.  Use planning_msgs-msg:request instead.")
  (request m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <TaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:goal_id-val is deprecated.  Use planning_msgs-msg:goal_id instead.")
  (goal_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TaskInfo>)))
    "Constants for message type '<TaskInfo>"
  '((:REQUEST . 1)
    (:GOAL_ID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TaskInfo)))
    "Constants for message type 'TaskInfo"
  '((:REQUEST . 1)
    (:GOAL_ID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskInfo>) ostream)
  "Serializes a message object of type '<TaskInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskInfo>) istream)
  "Deserializes a message object of type '<TaskInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskInfo>)))
  "Returns string type for a message object of type '<TaskInfo>"
  "planning_msgs/TaskInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskInfo)))
  "Returns string type for a message object of type 'TaskInfo"
  "planning_msgs/TaskInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskInfo>)))
  "Returns md5sum for a message object of type '<TaskInfo>"
  "3e972068d88fd139e7fc177083ab9353")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskInfo)))
  "Returns md5sum for a message object of type 'TaskInfo"
  "3e972068d88fd139e7fc177083ab9353")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskInfo>)))
  "Returns full string definition for message of type '<TaskInfo>"
  (cl:format cl:nil "uint8 REQUEST = 1~%uint8 GOAL_ID = 2~%uint8 available~%planning_msgs/RequestEnum request~%actionlib_msgs/GoalID goal_id~%~%================================================================================~%MSG: planning_msgs/RequestEnum~%uint8 START_TASK = 1~%uint8 ABORT_TASK = 2~%uint8 value~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskInfo)))
  "Returns full string definition for message of type 'TaskInfo"
  (cl:format cl:nil "uint8 REQUEST = 1~%uint8 GOAL_ID = 2~%uint8 available~%planning_msgs/RequestEnum request~%actionlib_msgs/GoalID goal_id~%~%================================================================================~%MSG: planning_msgs/RequestEnum~%uint8 START_TASK = 1~%uint8 ABORT_TASK = 2~%uint8 value~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskInfo
    (cl:cons ':available (available msg))
    (cl:cons ':request (request msg))
    (cl:cons ':goal_id (goal_id msg))
))
