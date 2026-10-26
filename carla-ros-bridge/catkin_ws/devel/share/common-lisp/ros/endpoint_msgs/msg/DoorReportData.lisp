; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude DoorReportData.msg.html

(cl:defclass <DoorReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (opened_door_array
    :reader opened_door_array
    :initarg :opened_door_array
    :type (cl:vector endpoint_msgs-msg:DoorType)
   :initform (cl:make-array 0 :element-type 'endpoint_msgs-msg:DoorType :initial-element (cl:make-instance 'endpoint_msgs-msg:DoorType)))
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DoorReportData (<DoorReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<DoorReportData> is deprecated: use endpoint_msgs-msg:DoorReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <DoorReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'opened_door_array-val :lambda-list '(m))
(cl:defmethod opened_door_array-val ((m <DoorReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:opened_door_array-val is deprecated.  Use endpoint_msgs-msg:opened_door_array instead.")
  (opened_door_array m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <DoorReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorReportData>) ostream)
  "Serializes a message object of type '<DoorReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'opened_door_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'opened_door_array))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorReportData>) istream)
  "Deserializes a message object of type '<DoorReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'opened_door_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'opened_door_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'endpoint_msgs-msg:DoorType))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorReportData>)))
  "Returns string type for a message object of type '<DoorReportData>"
  "endpoint_msgs/DoorReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorReportData)))
  "Returns string type for a message object of type 'DoorReportData"
  "endpoint_msgs/DoorReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorReportData>)))
  "Returns md5sum for a message object of type '<DoorReportData>"
  "85a4ee7ea87c38816f3b71fbd0df1296")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorReportData)))
  "Returns md5sum for a message object of type 'DoorReportData"
  "85a4ee7ea87c38816f3b71fbd0df1296")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorReportData>)))
  "Returns full string definition for message of type '<DoorReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/DoorType[] opened_door_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/DoorType~%uint8 DRIVER = 0~%uint8 PASSENGER = 1~%uint8 REAR_LEFT = 2~%uint8 REAR_RIGHT = 3~%uint8 HOOD = 4~%uint8 TRUNK = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorReportData)))
  "Returns full string definition for message of type 'DoorReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/DoorType[] opened_door_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/DoorType~%uint8 DRIVER = 0~%uint8 PASSENGER = 1~%uint8 REAR_LEFT = 2~%uint8 REAR_RIGHT = 3~%uint8 HOOD = 4~%uint8 TRUNK = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorReportData>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'opened_door_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':opened_door_array (opened_door_array msg))
    (cl:cons ':valid (valid msg))
))
