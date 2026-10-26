; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude NaviRoadTrafficLightSts.msg.html

(cl:defclass <NaviRoadTrafficLightSts> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (dist
    :reader dist
    :initarg :dist
    :type cl:integer
    :initform 0))
)

(cl:defclass NaviRoadTrafficLightSts (<NaviRoadTrafficLightSts>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviRoadTrafficLightSts>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviRoadTrafficLightSts)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<NaviRoadTrafficLightSts> is deprecated: use tbt_msgs-msg:NaviRoadTrafficLightSts instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NaviRoadTrafficLightSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:status-val is deprecated.  Use tbt_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <NaviRoadTrafficLightSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:dist-val is deprecated.  Use tbt_msgs-msg:dist instead.")
  (dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviRoadTrafficLightSts>) ostream)
  "Serializes a message object of type '<NaviRoadTrafficLightSts>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviRoadTrafficLightSts>) istream)
  "Deserializes a message object of type '<NaviRoadTrafficLightSts>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dist)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dist)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dist)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dist)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviRoadTrafficLightSts>)))
  "Returns string type for a message object of type '<NaviRoadTrafficLightSts>"
  "tbt_msgs/NaviRoadTrafficLightSts")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviRoadTrafficLightSts)))
  "Returns string type for a message object of type 'NaviRoadTrafficLightSts"
  "tbt_msgs/NaviRoadTrafficLightSts")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviRoadTrafficLightSts>)))
  "Returns md5sum for a message object of type '<NaviRoadTrafficLightSts>"
  "90991e479aa00a5c52f481f864cffc23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviRoadTrafficLightSts)))
  "Returns md5sum for a message object of type 'NaviRoadTrafficLightSts"
  "90991e479aa00a5c52f481f864cffc23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviRoadTrafficLightSts>)))
  "Returns full string definition for message of type '<NaviRoadTrafficLightSts>"
  (cl:format cl:nil "uint8 status~%uint32 dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviRoadTrafficLightSts)))
  "Returns full string definition for message of type 'NaviRoadTrafficLightSts"
  (cl:format cl:nil "uint8 status~%uint32 dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviRoadTrafficLightSts>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviRoadTrafficLightSts>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviRoadTrafficLightSts
    (cl:cons ':status (status msg))
    (cl:cons ':dist (dist msg))
))
