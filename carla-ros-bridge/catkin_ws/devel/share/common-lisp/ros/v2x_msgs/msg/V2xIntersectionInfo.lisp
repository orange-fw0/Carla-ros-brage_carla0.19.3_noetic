; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xIntersectionInfo.msg.html

(cl:defclass <V2xIntersectionInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (v2x_intersection_data
    :reader v2x_intersection_data
    :initarg :v2x_intersection_data
    :type v2x_msgs-msg:V2xIntersectionData
    :initform (cl:make-instance 'v2x_msgs-msg:V2xIntersectionData)))
)

(cl:defclass V2xIntersectionInfo (<V2xIntersectionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xIntersectionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xIntersectionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xIntersectionInfo> is deprecated: use v2x_msgs-msg:V2xIntersectionInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <V2xIntersectionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:available-val is deprecated.  Use v2x_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'v2x_intersection_data-val :lambda-list '(m))
(cl:defmethod v2x_intersection_data-val ((m <V2xIntersectionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:v2x_intersection_data-val is deprecated.  Use v2x_msgs-msg:v2x_intersection_data instead.")
  (v2x_intersection_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<V2xIntersectionInfo>)))
    "Constants for message type '<V2xIntersectionInfo>"
  '((:V2X_INTERSECTION_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'V2xIntersectionInfo)))
    "Constants for message type 'V2xIntersectionInfo"
  '((:V2X_INTERSECTION_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xIntersectionInfo>) ostream)
  "Serializes a message object of type '<V2xIntersectionInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v2x_intersection_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xIntersectionInfo>) istream)
  "Deserializes a message object of type '<V2xIntersectionInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v2x_intersection_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xIntersectionInfo>)))
  "Returns string type for a message object of type '<V2xIntersectionInfo>"
  "v2x_msgs/V2xIntersectionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xIntersectionInfo)))
  "Returns string type for a message object of type 'V2xIntersectionInfo"
  "v2x_msgs/V2xIntersectionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xIntersectionInfo>)))
  "Returns md5sum for a message object of type '<V2xIntersectionInfo>"
  "4914ab9e446bf43eb2315fece0a5df38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xIntersectionInfo)))
  "Returns md5sum for a message object of type 'V2xIntersectionInfo"
  "4914ab9e446bf43eb2315fece0a5df38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xIntersectionInfo>)))
  "Returns full string definition for message of type '<V2xIntersectionInfo>"
  (cl:format cl:nil "uint8 V2X_INTERSECTION_DATA = 1~%uint8 available~%v2x_msgs/V2xIntersectionData v2x_intersection_data~%~%================================================================================~%MSG: v2x_msgs/V2xIntersectionData~%int32 intersection_id~%float64 enter_angle~%float64 exit_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xIntersectionInfo)))
  "Returns full string definition for message of type 'V2xIntersectionInfo"
  (cl:format cl:nil "uint8 V2X_INTERSECTION_DATA = 1~%uint8 available~%v2x_msgs/V2xIntersectionData v2x_intersection_data~%~%================================================================================~%MSG: v2x_msgs/V2xIntersectionData~%int32 intersection_id~%float64 enter_angle~%float64 exit_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xIntersectionInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v2x_intersection_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xIntersectionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xIntersectionInfo
    (cl:cons ':available (available msg))
    (cl:cons ':v2x_intersection_data (v2x_intersection_data msg))
))
