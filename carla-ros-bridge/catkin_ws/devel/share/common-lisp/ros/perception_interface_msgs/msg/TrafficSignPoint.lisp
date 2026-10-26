; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficSignPoint.msg.html

(cl:defclass <TrafficSignPoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Point2f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point2f))
   (visibility
    :reader visibility
    :initarg :visibility
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrafficSignPoint (<TrafficSignPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficSignPoint> is deprecated: use perception_interface_msgs-msg:TrafficSignPoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <TrafficSignPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:position-val is deprecated.  Use perception_interface_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'visibility-val :lambda-list '(m))
(cl:defmethod visibility-val ((m <TrafficSignPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:visibility-val is deprecated.  Use perception_interface_msgs-msg:visibility instead.")
  (visibility m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignPoint>) ostream)
  "Serializes a message object of type '<TrafficSignPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'visibility))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignPoint>) istream)
  "Deserializes a message object of type '<TrafficSignPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'visibility) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignPoint>)))
  "Returns string type for a message object of type '<TrafficSignPoint>"
  "perception_interface_msgs/TrafficSignPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignPoint)))
  "Returns string type for a message object of type 'TrafficSignPoint"
  "perception_interface_msgs/TrafficSignPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignPoint>)))
  "Returns md5sum for a message object of type '<TrafficSignPoint>"
  "55f6a2c955a230791ba601376c12a539")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignPoint)))
  "Returns md5sum for a message object of type 'TrafficSignPoint"
  "55f6a2c955a230791ba601376c12a539")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignPoint>)))
  "Returns full string definition for message of type '<TrafficSignPoint>"
  (cl:format cl:nil "perception_interface_msgs/Point2f position~%float32 visibility~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignPoint)))
  "Returns full string definition for message of type 'TrafficSignPoint"
  (cl:format cl:nil "perception_interface_msgs/Point2f position~%float32 visibility~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignPoint
    (cl:cons ':position (position msg))
    (cl:cons ':visibility (visibility msg))
))
