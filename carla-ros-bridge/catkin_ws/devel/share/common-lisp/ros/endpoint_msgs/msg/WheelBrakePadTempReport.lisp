; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WheelBrakePadTempReport.msg.html

(cl:defclass <WheelBrakePadTempReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (wheel_brake_pad_temp_data
    :reader wheel_brake_pad_temp_data
    :initarg :wheel_brake_pad_temp_data
    :type endpoint_msgs-msg:WheelBrakePadTempData
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelBrakePadTempData)))
)

(cl:defclass WheelBrakePadTempReport (<WheelBrakePadTempReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelBrakePadTempReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelBrakePadTempReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WheelBrakePadTempReport> is deprecated: use endpoint_msgs-msg:WheelBrakePadTempReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WheelBrakePadTempReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'wheel_brake_pad_temp_data-val :lambda-list '(m))
(cl:defmethod wheel_brake_pad_temp_data-val ((m <WheelBrakePadTempReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_brake_pad_temp_data-val is deprecated.  Use endpoint_msgs-msg:wheel_brake_pad_temp_data instead.")
  (wheel_brake_pad_temp_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WheelBrakePadTempReport>)))
    "Constants for message type '<WheelBrakePadTempReport>"
  '((:WHEEL_BRAKE_PAD_TEMP_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WheelBrakePadTempReport)))
    "Constants for message type 'WheelBrakePadTempReport"
  '((:WHEEL_BRAKE_PAD_TEMP_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelBrakePadTempReport>) ostream)
  "Serializes a message object of type '<WheelBrakePadTempReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_brake_pad_temp_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelBrakePadTempReport>) istream)
  "Deserializes a message object of type '<WheelBrakePadTempReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_brake_pad_temp_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelBrakePadTempReport>)))
  "Returns string type for a message object of type '<WheelBrakePadTempReport>"
  "endpoint_msgs/WheelBrakePadTempReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelBrakePadTempReport)))
  "Returns string type for a message object of type 'WheelBrakePadTempReport"
  "endpoint_msgs/WheelBrakePadTempReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelBrakePadTempReport>)))
  "Returns md5sum for a message object of type '<WheelBrakePadTempReport>"
  "7c06db4a91197a98259780edeaec81e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelBrakePadTempReport)))
  "Returns md5sum for a message object of type 'WheelBrakePadTempReport"
  "7c06db4a91197a98259780edeaec81e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelBrakePadTempReport>)))
  "Returns full string definition for message of type '<WheelBrakePadTempReport>"
  (cl:format cl:nil "uint8 WHEEL_BRAKE_PAD_TEMP_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelBrakePadTempData wheel_brake_pad_temp_data~%~%================================================================================~%MSG: endpoint_msgs/WheelBrakePadTempData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelBrakePadTempReport)))
  "Returns full string definition for message of type 'WheelBrakePadTempReport"
  (cl:format cl:nil "uint8 WHEEL_BRAKE_PAD_TEMP_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelBrakePadTempData wheel_brake_pad_temp_data~%~%================================================================================~%MSG: endpoint_msgs/WheelBrakePadTempData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelBrakePadTempReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_brake_pad_temp_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelBrakePadTempReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelBrakePadTempReport
    (cl:cons ':available (available msg))
    (cl:cons ':wheel_brake_pad_temp_data (wheel_brake_pad_temp_data msg))
))
