; Auto-generated. Do not edit!


(cl:in-package hdmap_msgs-msg)


;//! \htmlinclude ODDPriorityType.msg.html

(cl:defclass <ODDPriorityType> (roslisp-msg-protocol:ros-message)
  ((priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ODDPriorityType (<ODDPriorityType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ODDPriorityType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ODDPriorityType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdmap_msgs-msg:<ODDPriorityType> is deprecated: use hdmap_msgs-msg:ODDPriorityType instead.")))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <ODDPriorityType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:priority-val is deprecated.  Use hdmap_msgs-msg:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ODDPriorityType>)))
    "Constants for message type '<ODDPriorityType>"
  '((:UNKNOWN . 0)
    (:HDMAP_PRIORITY . 1)
    (:NO_HDMAP_PRIORITY . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ODDPriorityType)))
    "Constants for message type 'ODDPriorityType"
  '((:UNKNOWN . 0)
    (:HDMAP_PRIORITY . 1)
    (:NO_HDMAP_PRIORITY . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ODDPriorityType>) ostream)
  "Serializes a message object of type '<ODDPriorityType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ODDPriorityType>) istream)
  "Deserializes a message object of type '<ODDPriorityType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ODDPriorityType>)))
  "Returns string type for a message object of type '<ODDPriorityType>"
  "hdmap_msgs/ODDPriorityType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ODDPriorityType)))
  "Returns string type for a message object of type 'ODDPriorityType"
  "hdmap_msgs/ODDPriorityType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ODDPriorityType>)))
  "Returns md5sum for a message object of type '<ODDPriorityType>"
  "dfd45b92a1de6f3374867ccaf1e52c8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ODDPriorityType)))
  "Returns md5sum for a message object of type 'ODDPriorityType"
  "dfd45b92a1de6f3374867ccaf1e52c8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ODDPriorityType>)))
  "Returns full string definition for message of type '<ODDPriorityType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 HDMAP_PRIORITY = 1~%uint8 NO_HDMAP_PRIORITY = 2~%uint8 priority~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ODDPriorityType)))
  "Returns full string definition for message of type 'ODDPriorityType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 HDMAP_PRIORITY = 1~%uint8 NO_HDMAP_PRIORITY = 2~%uint8 priority~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ODDPriorityType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ODDPriorityType>))
  "Converts a ROS message object to a list"
  (cl:list 'ODDPriorityType
    (cl:cons ':priority (priority msg))
))
