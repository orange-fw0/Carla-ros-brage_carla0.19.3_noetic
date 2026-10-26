; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WindowState.msg.html

(cl:defclass <WindowState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WindowState (<WindowState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WindowState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WindowState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WindowState> is deprecated: use endpoint_msgs-msg:WindowState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WindowState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WindowState>)))
    "Constants for message type '<WindowState>"
  '((:WINDOW_CLOSED . 0)
    (:WINDOW_OPENED . 1)
    (:WINDOW_MIDDLE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WindowState)))
    "Constants for message type 'WindowState"
  '((:WINDOW_CLOSED . 0)
    (:WINDOW_OPENED . 1)
    (:WINDOW_MIDDLE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WindowState>) ostream)
  "Serializes a message object of type '<WindowState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WindowState>) istream)
  "Deserializes a message object of type '<WindowState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WindowState>)))
  "Returns string type for a message object of type '<WindowState>"
  "endpoint_msgs/WindowState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WindowState)))
  "Returns string type for a message object of type 'WindowState"
  "endpoint_msgs/WindowState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WindowState>)))
  "Returns md5sum for a message object of type '<WindowState>"
  "ae4490b7f5b7c532eb42ac3bf4aa7491")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WindowState)))
  "Returns md5sum for a message object of type 'WindowState"
  "ae4490b7f5b7c532eb42ac3bf4aa7491")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WindowState>)))
  "Returns full string definition for message of type '<WindowState>"
  (cl:format cl:nil "uint8 WINDOW_CLOSED = 0~%uint8 WINDOW_OPENED = 1~%uint8 WINDOW_MIDDLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WindowState)))
  "Returns full string definition for message of type 'WindowState"
  (cl:format cl:nil "uint8 WINDOW_CLOSED = 0~%uint8 WINDOW_OPENED = 1~%uint8 WINDOW_MIDDLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WindowState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WindowState>))
  "Converts a ROS message object to a list"
  (cl:list 'WindowState
    (cl:cons ':value (value msg))
))
