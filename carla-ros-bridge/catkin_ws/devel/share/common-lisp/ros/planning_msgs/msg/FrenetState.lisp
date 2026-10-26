; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude FrenetState.msg.html

(cl:defclass <FrenetState> (roslisp-msg-protocol:ros-message)
  ((position_frenet
    :reader position_frenet
    :initarg :position_frenet
    :type planning_msgs-msg:Point2d
    :initform (cl:make-instance 'planning_msgs-msg:Point2d))
   (dl
    :reader dl
    :initarg :dl
    :type cl:float
    :initform 0.0)
   (ddl
    :reader ddl
    :initarg :ddl
    :type cl:float
    :initform 0.0))
)

(cl:defclass FrenetState (<FrenetState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrenetState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrenetState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<FrenetState> is deprecated: use planning_msgs-msg:FrenetState instead.")))

(cl:ensure-generic-function 'position_frenet-val :lambda-list '(m))
(cl:defmethod position_frenet-val ((m <FrenetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:position_frenet-val is deprecated.  Use planning_msgs-msg:position_frenet instead.")
  (position_frenet m))

(cl:ensure-generic-function 'dl-val :lambda-list '(m))
(cl:defmethod dl-val ((m <FrenetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:dl-val is deprecated.  Use planning_msgs-msg:dl instead.")
  (dl m))

(cl:ensure-generic-function 'ddl-val :lambda-list '(m))
(cl:defmethod ddl-val ((m <FrenetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ddl-val is deprecated.  Use planning_msgs-msg:ddl instead.")
  (ddl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrenetState>) ostream)
  "Serializes a message object of type '<FrenetState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_frenet) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ddl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrenetState>) istream)
  "Deserializes a message object of type '<FrenetState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_frenet) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dl) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ddl) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrenetState>)))
  "Returns string type for a message object of type '<FrenetState>"
  "planning_msgs/FrenetState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrenetState)))
  "Returns string type for a message object of type 'FrenetState"
  "planning_msgs/FrenetState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrenetState>)))
  "Returns md5sum for a message object of type '<FrenetState>"
  "4b854f1907dd1e925fedf8ce687ee633")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrenetState)))
  "Returns md5sum for a message object of type 'FrenetState"
  "4b854f1907dd1e925fedf8ce687ee633")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrenetState>)))
  "Returns full string definition for message of type '<FrenetState>"
  (cl:format cl:nil "planning_msgs/Point2d position_frenet~%float64 dl~%float64 ddl~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrenetState)))
  "Returns full string definition for message of type 'FrenetState"
  (cl:format cl:nil "planning_msgs/Point2d position_frenet~%float64 dl~%float64 ddl~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrenetState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_frenet))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrenetState>))
  "Converts a ROS message object to a list"
  (cl:list 'FrenetState
    (cl:cons ':position_frenet (position_frenet msg))
    (cl:cons ':dl (dl msg))
    (cl:cons ':ddl (ddl msg))
))
