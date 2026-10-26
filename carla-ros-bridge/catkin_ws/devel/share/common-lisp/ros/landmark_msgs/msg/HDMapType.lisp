; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude HDMapType.msg.html

(cl:defclass <HDMapType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HDMapType (<HDMapType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDMapType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDMapType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<HDMapType> is deprecated: use landmark_msgs-msg:HDMapType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <HDMapType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HDMapType>)))
    "Constants for message type '<HDMapType>"
  '((:NORMAL . 0)
    (:LPNP . 1)
    (:PNP . 2)
    (:OTHER . 99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HDMapType)))
    "Constants for message type 'HDMapType"
  '((:NORMAL . 0)
    (:LPNP . 1)
    (:PNP . 2)
    (:OTHER . 99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDMapType>) ostream)
  "Serializes a message object of type '<HDMapType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDMapType>) istream)
  "Deserializes a message object of type '<HDMapType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDMapType>)))
  "Returns string type for a message object of type '<HDMapType>"
  "landmark_msgs/HDMapType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDMapType)))
  "Returns string type for a message object of type 'HDMapType"
  "landmark_msgs/HDMapType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDMapType>)))
  "Returns md5sum for a message object of type '<HDMapType>"
  "4802d2675249524ba039b439b8640846")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDMapType)))
  "Returns md5sum for a message object of type 'HDMapType"
  "4802d2675249524ba039b439b8640846")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDMapType>)))
  "Returns full string definition for message of type '<HDMapType>"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 LPNP = 1~%uint8 PNP = 2~%uint8 OTHER = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDMapType)))
  "Returns full string definition for message of type 'HDMapType"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 LPNP = 1~%uint8 PNP = 2~%uint8 OTHER = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDMapType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDMapType>))
  "Converts a ROS message object to a list"
  (cl:list 'HDMapType
    (cl:cons ':value (value msg))
))
