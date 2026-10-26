; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficLightPositionFeature.msg.html

(cl:defclass <TrafficLightPositionFeature> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrafficLightPositionFeature (<TrafficLightPositionFeature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightPositionFeature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightPositionFeature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficLightPositionFeature> is deprecated: use perception_interface_msgs-msg:TrafficLightPositionFeature instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <TrafficLightPositionFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:position-val is deprecated.  Use perception_interface_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <TrafficLightPositionFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:yaw-val is deprecated.  Use perception_interface_msgs-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightPositionFeature>) ostream)
  "Serializes a message object of type '<TrafficLightPositionFeature>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightPositionFeature>) istream)
  "Deserializes a message object of type '<TrafficLightPositionFeature>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightPositionFeature>)))
  "Returns string type for a message object of type '<TrafficLightPositionFeature>"
  "perception_interface_msgs/TrafficLightPositionFeature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightPositionFeature)))
  "Returns string type for a message object of type 'TrafficLightPositionFeature"
  "perception_interface_msgs/TrafficLightPositionFeature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightPositionFeature>)))
  "Returns md5sum for a message object of type '<TrafficLightPositionFeature>"
  "120424d47bdd77414d185cd2012b8330")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightPositionFeature)))
  "Returns md5sum for a message object of type 'TrafficLightPositionFeature"
  "120424d47bdd77414d185cd2012b8330")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightPositionFeature>)))
  "Returns full string definition for message of type '<TrafficLightPositionFeature>"
  (cl:format cl:nil "perception_interface_msgs/Point3f position~%float32 yaw~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightPositionFeature)))
  "Returns full string definition for message of type 'TrafficLightPositionFeature"
  (cl:format cl:nil "perception_interface_msgs/Point3f position~%float32 yaw~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightPositionFeature>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightPositionFeature>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightPositionFeature
    (cl:cons ':position (position msg))
    (cl:cons ':yaw (yaw msg))
))
