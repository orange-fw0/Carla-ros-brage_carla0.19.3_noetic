; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude GearCommandData.msg.html

(cl:defclass <GearCommandData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (gear_enable
    :reader gear_enable
    :initarg :gear_enable
    :type cl:boolean
    :initform cl:nil)
   (gear_type
    :reader gear_type
    :initarg :gear_type
    :type endpoint_msgs-msg:Gear
    :initform (cl:make-instance 'endpoint_msgs-msg:Gear)))
)

(cl:defclass GearCommandData (<GearCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GearCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GearCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<GearCommandData> is deprecated: use endpoint_msgs-msg:GearCommandData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <GearCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'gear_enable-val :lambda-list '(m))
(cl:defmethod gear_enable-val ((m <GearCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:gear_enable-val is deprecated.  Use endpoint_msgs-msg:gear_enable instead.")
  (gear_enable m))

(cl:ensure-generic-function 'gear_type-val :lambda-list '(m))
(cl:defmethod gear_type-val ((m <GearCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:gear_type-val is deprecated.  Use endpoint_msgs-msg:gear_type instead.")
  (gear_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GearCommandData>) ostream)
  "Serializes a message object of type '<GearCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gear_enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GearCommandData>) istream)
  "Deserializes a message object of type '<GearCommandData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gear_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GearCommandData>)))
  "Returns string type for a message object of type '<GearCommandData>"
  "endpoint_msgs/GearCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GearCommandData)))
  "Returns string type for a message object of type 'GearCommandData"
  "endpoint_msgs/GearCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GearCommandData>)))
  "Returns md5sum for a message object of type '<GearCommandData>"
  "86c7880c669a37780aba2223a30bda18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GearCommandData)))
  "Returns md5sum for a message object of type 'GearCommandData"
  "86c7880c669a37780aba2223a30bda18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GearCommandData>)))
  "Returns full string definition for message of type '<GearCommandData>"
  (cl:format cl:nil "uint64 timestamp_us~%bool gear_enable~%endpoint_msgs/Gear gear_type~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GearCommandData)))
  "Returns full string definition for message of type 'GearCommandData"
  (cl:format cl:nil "uint64 timestamp_us~%bool gear_enable~%endpoint_msgs/Gear gear_type~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GearCommandData>))
  (cl:+ 0
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GearCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'GearCommandData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':gear_enable (gear_enable msg))
    (cl:cons ':gear_type (gear_type msg))
))
