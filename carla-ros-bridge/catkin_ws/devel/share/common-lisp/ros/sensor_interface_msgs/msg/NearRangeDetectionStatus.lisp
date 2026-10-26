; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude NearRangeDetectionStatus.msg.html

(cl:defclass <NearRangeDetectionStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NearRangeDetectionStatus (<NearRangeDetectionStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NearRangeDetectionStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NearRangeDetectionStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<NearRangeDetectionStatus> is deprecated: use sensor_interface_msgs-msg:NearRangeDetectionStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <NearRangeDetectionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:value-val is deprecated.  Use sensor_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NearRangeDetectionStatus>)))
    "Constants for message type '<NearRangeDetectionStatus>"
  '((:USS_NEAR_RANGE_UNAVAILABLE . 0)
    (:USS_NEAR_RANGE_NO_DETECTION . 1)
    (:USS_NEAR_RANGE_VALID_DETECTION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NearRangeDetectionStatus)))
    "Constants for message type 'NearRangeDetectionStatus"
  '((:USS_NEAR_RANGE_UNAVAILABLE . 0)
    (:USS_NEAR_RANGE_NO_DETECTION . 1)
    (:USS_NEAR_RANGE_VALID_DETECTION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NearRangeDetectionStatus>) ostream)
  "Serializes a message object of type '<NearRangeDetectionStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NearRangeDetectionStatus>) istream)
  "Deserializes a message object of type '<NearRangeDetectionStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NearRangeDetectionStatus>)))
  "Returns string type for a message object of type '<NearRangeDetectionStatus>"
  "sensor_interface_msgs/NearRangeDetectionStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NearRangeDetectionStatus)))
  "Returns string type for a message object of type 'NearRangeDetectionStatus"
  "sensor_interface_msgs/NearRangeDetectionStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NearRangeDetectionStatus>)))
  "Returns md5sum for a message object of type '<NearRangeDetectionStatus>"
  "ef23a94b1c181048f18af9846917817a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NearRangeDetectionStatus)))
  "Returns md5sum for a message object of type 'NearRangeDetectionStatus"
  "ef23a94b1c181048f18af9846917817a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NearRangeDetectionStatus>)))
  "Returns full string definition for message of type '<NearRangeDetectionStatus>"
  (cl:format cl:nil "uint8 USS_NEAR_RANGE_UNAVAILABLE = 0~%uint8 USS_NEAR_RANGE_NO_DETECTION = 1~%uint8 USS_NEAR_RANGE_VALID_DETECTION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NearRangeDetectionStatus)))
  "Returns full string definition for message of type 'NearRangeDetectionStatus"
  (cl:format cl:nil "uint8 USS_NEAR_RANGE_UNAVAILABLE = 0~%uint8 USS_NEAR_RANGE_NO_DETECTION = 1~%uint8 USS_NEAR_RANGE_VALID_DETECTION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NearRangeDetectionStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NearRangeDetectionStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NearRangeDetectionStatus
    (cl:cons ':value (value msg))
))
