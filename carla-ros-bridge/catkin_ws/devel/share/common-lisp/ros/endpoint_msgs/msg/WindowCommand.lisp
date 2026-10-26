; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WindowCommand.msg.html

(cl:defclass <WindowCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (window_command_data
    :reader window_command_data
    :initarg :window_command_data
    :type endpoint_msgs-msg:WindowCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowCommandData)))
)

(cl:defclass WindowCommand (<WindowCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WindowCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WindowCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WindowCommand> is deprecated: use endpoint_msgs-msg:WindowCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WindowCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'window_command_data-val :lambda-list '(m))
(cl:defmethod window_command_data-val ((m <WindowCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_command_data-val is deprecated.  Use endpoint_msgs-msg:window_command_data instead.")
  (window_command_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WindowCommand>)))
    "Constants for message type '<WindowCommand>"
  '((:WINDOW_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WindowCommand)))
    "Constants for message type 'WindowCommand"
  '((:WINDOW_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WindowCommand>) ostream)
  "Serializes a message object of type '<WindowCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_command_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WindowCommand>) istream)
  "Deserializes a message object of type '<WindowCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_command_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WindowCommand>)))
  "Returns string type for a message object of type '<WindowCommand>"
  "endpoint_msgs/WindowCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WindowCommand)))
  "Returns string type for a message object of type 'WindowCommand"
  "endpoint_msgs/WindowCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WindowCommand>)))
  "Returns md5sum for a message object of type '<WindowCommand>"
  "48ff333a635b2a168eadf988567f71f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WindowCommand)))
  "Returns md5sum for a message object of type 'WindowCommand"
  "48ff333a635b2a168eadf988567f71f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WindowCommand>)))
  "Returns full string definition for message of type '<WindowCommand>"
  (cl:format cl:nil "uint8 WINDOW_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/WindowCommandData window_command_data~%~%================================================================================~%MSG: endpoint_msgs/WindowCommandData~%uint64 timestamp_us~%bool window_lock~%endpoint_msgs/WindowType window_left_front~%endpoint_msgs/WindowType window_right_front~%endpoint_msgs/WindowType window_left_rear~%endpoint_msgs/WindowType window_right_rear~%endpoint_msgs/WindowType window_top~%~%================================================================================~%MSG: endpoint_msgs/WindowType~%uint8 LIFT_STOP = 0~%uint8 LIFT_UP = 1~%uint8 LIFT_DOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WindowCommand)))
  "Returns full string definition for message of type 'WindowCommand"
  (cl:format cl:nil "uint8 WINDOW_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/WindowCommandData window_command_data~%~%================================================================================~%MSG: endpoint_msgs/WindowCommandData~%uint64 timestamp_us~%bool window_lock~%endpoint_msgs/WindowType window_left_front~%endpoint_msgs/WindowType window_right_front~%endpoint_msgs/WindowType window_left_rear~%endpoint_msgs/WindowType window_right_rear~%endpoint_msgs/WindowType window_top~%~%================================================================================~%MSG: endpoint_msgs/WindowType~%uint8 LIFT_STOP = 0~%uint8 LIFT_UP = 1~%uint8 LIFT_DOWN = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WindowCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_command_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WindowCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'WindowCommand
    (cl:cons ':available (available msg))
    (cl:cons ':window_command_data (window_command_data msg))
))
