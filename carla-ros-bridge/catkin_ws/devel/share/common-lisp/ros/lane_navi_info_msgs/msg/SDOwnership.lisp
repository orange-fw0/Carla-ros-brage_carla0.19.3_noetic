; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDOwnership.msg.html

(cl:defclass <SDOwnership> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SDOwnership (<SDOwnership>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDOwnership>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDOwnership)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDOwnership> is deprecated: use lane_navi_info_msgs-msg:SDOwnership instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SDOwnership>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SDOwnership>)))
    "Constants for message type '<SDOwnership>"
  '((:OWNERSHIP_PUBLIC . 0)
    (:OWNERSHIP_INNER . 1)
    (:OWNERSHIP_PRIVATE . 2)
    (:OWNERSHIP_UNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SDOwnership)))
    "Constants for message type 'SDOwnership"
  '((:OWNERSHIP_PUBLIC . 0)
    (:OWNERSHIP_INNER . 1)
    (:OWNERSHIP_PRIVATE . 2)
    (:OWNERSHIP_UNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDOwnership>) ostream)
  "Serializes a message object of type '<SDOwnership>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDOwnership>) istream)
  "Deserializes a message object of type '<SDOwnership>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDOwnership>)))
  "Returns string type for a message object of type '<SDOwnership>"
  "lane_navi_info_msgs/SDOwnership")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDOwnership)))
  "Returns string type for a message object of type 'SDOwnership"
  "lane_navi_info_msgs/SDOwnership")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDOwnership>)))
  "Returns md5sum for a message object of type '<SDOwnership>"
  "cef523620754f85298e7ffec284e8d1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDOwnership)))
  "Returns md5sum for a message object of type 'SDOwnership"
  "cef523620754f85298e7ffec284e8d1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDOwnership>)))
  "Returns full string definition for message of type '<SDOwnership>"
  (cl:format cl:nil "uint8 OWNERSHIP_PUBLIC = 0~%uint8 OWNERSHIP_INNER = 1~%uint8 OWNERSHIP_PRIVATE = 2~%uint8 OWNERSHIP_UNKNOWN = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDOwnership)))
  "Returns full string definition for message of type 'SDOwnership"
  (cl:format cl:nil "uint8 OWNERSHIP_PUBLIC = 0~%uint8 OWNERSHIP_INNER = 1~%uint8 OWNERSHIP_PRIVATE = 2~%uint8 OWNERSHIP_UNKNOWN = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDOwnership>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDOwnership>))
  "Converts a ROS message object to a list"
  (cl:list 'SDOwnership
    (cl:cons ':value (value msg))
))
