; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude RwsSysStatus.msg.html

(cl:defclass <RwsSysStatus> (roslisp-msg-protocol:ros-message)
  ((valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RwsSysStatus (<RwsSysStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RwsSysStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RwsSysStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<RwsSysStatus> is deprecated: use endpoint_msgs-msg:RwsSysStatus instead.")))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <RwsSysStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RwsSysStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RwsSysStatus>)))
    "Constants for message type '<RwsSysStatus>"
  '((:STANDARD_MODE . 0)
    (:COMFORTABLE_MODE . 1)
    (:SPORT_MODE . 2)
    (:AD_MODE . 3)
    (:ADLOCK_MODE . 4)
    (:RESERVED . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RwsSysStatus)))
    "Constants for message type 'RwsSysStatus"
  '((:STANDARD_MODE . 0)
    (:COMFORTABLE_MODE . 1)
    (:SPORT_MODE . 2)
    (:AD_MODE . 3)
    (:ADLOCK_MODE . 4)
    (:RESERVED . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RwsSysStatus>) ostream)
  "Serializes a message object of type '<RwsSysStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RwsSysStatus>) istream)
  "Deserializes a message object of type '<RwsSysStatus>"
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RwsSysStatus>)))
  "Returns string type for a message object of type '<RwsSysStatus>"
  "endpoint_msgs/RwsSysStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RwsSysStatus)))
  "Returns string type for a message object of type 'RwsSysStatus"
  "endpoint_msgs/RwsSysStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RwsSysStatus>)))
  "Returns md5sum for a message object of type '<RwsSysStatus>"
  "38403c07eda968077bd17861bf649086")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RwsSysStatus)))
  "Returns md5sum for a message object of type 'RwsSysStatus"
  "38403c07eda968077bd17861bf649086")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RwsSysStatus>)))
  "Returns full string definition for message of type '<RwsSysStatus>"
  (cl:format cl:nil "uint8 STANDARD_MODE = 0~%uint8 COMFORTABLE_MODE = 1~%uint8 SPORT_MODE = 2~%uint8 AD_MODE = 3~%uint8 ADLOCK_MODE = 4~%uint8 RESERVED = 5~%bool valid~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RwsSysStatus)))
  "Returns full string definition for message of type 'RwsSysStatus"
  (cl:format cl:nil "uint8 STANDARD_MODE = 0~%uint8 COMFORTABLE_MODE = 1~%uint8 SPORT_MODE = 2~%uint8 AD_MODE = 3~%uint8 ADLOCK_MODE = 4~%uint8 RESERVED = 5~%bool valid~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RwsSysStatus>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RwsSysStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RwsSysStatus
    (cl:cons ':valid (valid msg))
    (cl:cons ':value (value msg))
))
