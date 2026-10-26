; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude APADebugInfo.msg.html

(cl:defclass <APADebugInfo> (roslisp-msg-protocol:ros-message)
  ((mc_footprint_model
    :reader mc_footprint_model
    :initarg :mc_footprint_model
    :type planning_msgs-msg:MultiCircleFootprintModel
    :initform (cl:make-instance 'planning_msgs-msg:MultiCircleFootprintModel))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass APADebugInfo (<APADebugInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <APADebugInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'APADebugInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<APADebugInfo> is deprecated: use planning_msgs-msg:APADebugInfo instead.")))

(cl:ensure-generic-function 'mc_footprint_model-val :lambda-list '(m))
(cl:defmethod mc_footprint_model-val ((m <APADebugInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:mc_footprint_model-val is deprecated.  Use planning_msgs-msg:mc_footprint_model instead.")
  (mc_footprint_model m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <APADebugInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:reserved-val is deprecated.  Use planning_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <APADebugInfo>) ostream)
  "Serializes a message object of type '<APADebugInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mc_footprint_model) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <APADebugInfo>) istream)
  "Deserializes a message object of type '<APADebugInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mc_footprint_model) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<APADebugInfo>)))
  "Returns string type for a message object of type '<APADebugInfo>"
  "planning_msgs/APADebugInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'APADebugInfo)))
  "Returns string type for a message object of type 'APADebugInfo"
  "planning_msgs/APADebugInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<APADebugInfo>)))
  "Returns md5sum for a message object of type '<APADebugInfo>"
  "567c5f0ef920f678aa4bbbce985eff5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'APADebugInfo)))
  "Returns md5sum for a message object of type 'APADebugInfo"
  "567c5f0ef920f678aa4bbbce985eff5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<APADebugInfo>)))
  "Returns full string definition for message of type '<APADebugInfo>"
  (cl:format cl:nil "planning_msgs/MultiCircleFootprintModel mc_footprint_model~%string reserved~%~%================================================================================~%MSG: planning_msgs/MultiCircleFootprintModel~%planning_msgs/Circle[] circles~%~%================================================================================~%MSG: planning_msgs/Circle~%float64 x~%float64 y~%float64 z~%float64 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'APADebugInfo)))
  "Returns full string definition for message of type 'APADebugInfo"
  (cl:format cl:nil "planning_msgs/MultiCircleFootprintModel mc_footprint_model~%string reserved~%~%================================================================================~%MSG: planning_msgs/MultiCircleFootprintModel~%planning_msgs/Circle[] circles~%~%================================================================================~%MSG: planning_msgs/Circle~%float64 x~%float64 y~%float64 z~%float64 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <APADebugInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mc_footprint_model))
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <APADebugInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'APADebugInfo
    (cl:cons ':mc_footprint_model (mc_footprint_model msg))
    (cl:cons ':reserved (reserved msg))
))
