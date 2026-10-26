; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ReplanInfo.msg.html

(cl:defclass <ReplanInfo> (roslisp-msg-protocol:ros-message)
  ((lat_replan
    :reader lat_replan
    :initarg :lat_replan
    :type cl:boolean
    :initform cl:nil)
   (lon_replan
    :reader lon_replan
    :initarg :lon_replan
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReplanInfo (<ReplanInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReplanInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReplanInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ReplanInfo> is deprecated: use planning_msgs-msg:ReplanInfo instead.")))

(cl:ensure-generic-function 'lat_replan-val :lambda-list '(m))
(cl:defmethod lat_replan-val ((m <ReplanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_replan-val is deprecated.  Use planning_msgs-msg:lat_replan instead.")
  (lat_replan m))

(cl:ensure-generic-function 'lon_replan-val :lambda-list '(m))
(cl:defmethod lon_replan-val ((m <ReplanInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lon_replan-val is deprecated.  Use planning_msgs-msg:lon_replan instead.")
  (lon_replan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReplanInfo>) ostream)
  "Serializes a message object of type '<ReplanInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lat_replan) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lon_replan) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReplanInfo>) istream)
  "Deserializes a message object of type '<ReplanInfo>"
    (cl:setf (cl:slot-value msg 'lat_replan) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lon_replan) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReplanInfo>)))
  "Returns string type for a message object of type '<ReplanInfo>"
  "planning_msgs/ReplanInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReplanInfo)))
  "Returns string type for a message object of type 'ReplanInfo"
  "planning_msgs/ReplanInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReplanInfo>)))
  "Returns md5sum for a message object of type '<ReplanInfo>"
  "46928ab455f29add02698da45eda1bbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReplanInfo)))
  "Returns md5sum for a message object of type 'ReplanInfo"
  "46928ab455f29add02698da45eda1bbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReplanInfo>)))
  "Returns full string definition for message of type '<ReplanInfo>"
  (cl:format cl:nil "bool lat_replan~%bool lon_replan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReplanInfo)))
  "Returns full string definition for message of type 'ReplanInfo"
  (cl:format cl:nil "bool lat_replan~%bool lon_replan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReplanInfo>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReplanInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ReplanInfo
    (cl:cons ':lat_replan (lat_replan msg))
    (cl:cons ':lon_replan (lon_replan msg))
))
