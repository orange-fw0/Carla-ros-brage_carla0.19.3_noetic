; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude PlacCalibStatusEnum.msg.html

(cl:defclass <PlacCalibStatusEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PlacCalibStatusEnum (<PlacCalibStatusEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlacCalibStatusEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlacCalibStatusEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<PlacCalibStatusEnum> is deprecated: use calib_interface_msgs-msg:PlacCalibStatusEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PlacCalibStatusEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:value-val is deprecated.  Use calib_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlacCalibStatusEnum>)))
    "Constants for message type '<PlacCalibStatusEnum>"
  '((:CALIB_STATUS_IDLE . 0)
    (:CALIB_STATUS_RUNNING . 1)
    (:CALIB_STATUS_SUCCESS . 2)
    (:CALIB_STATUS_FAIL . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlacCalibStatusEnum)))
    "Constants for message type 'PlacCalibStatusEnum"
  '((:CALIB_STATUS_IDLE . 0)
    (:CALIB_STATUS_RUNNING . 1)
    (:CALIB_STATUS_SUCCESS . 2)
    (:CALIB_STATUS_FAIL . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlacCalibStatusEnum>) ostream)
  "Serializes a message object of type '<PlacCalibStatusEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlacCalibStatusEnum>) istream)
  "Deserializes a message object of type '<PlacCalibStatusEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlacCalibStatusEnum>)))
  "Returns string type for a message object of type '<PlacCalibStatusEnum>"
  "calib_interface_msgs/PlacCalibStatusEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlacCalibStatusEnum)))
  "Returns string type for a message object of type 'PlacCalibStatusEnum"
  "calib_interface_msgs/PlacCalibStatusEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlacCalibStatusEnum>)))
  "Returns md5sum for a message object of type '<PlacCalibStatusEnum>"
  "14931cc4e4fe154bc24d7611ff34cd95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlacCalibStatusEnum)))
  "Returns md5sum for a message object of type 'PlacCalibStatusEnum"
  "14931cc4e4fe154bc24d7611ff34cd95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlacCalibStatusEnum>)))
  "Returns full string definition for message of type '<PlacCalibStatusEnum>"
  (cl:format cl:nil "uint8 CALIB_STATUS_IDLE = 0~%uint8 CALIB_STATUS_RUNNING = 1~%uint8 CALIB_STATUS_SUCCESS = 2~%uint8 CALIB_STATUS_FAIL = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlacCalibStatusEnum)))
  "Returns full string definition for message of type 'PlacCalibStatusEnum"
  (cl:format cl:nil "uint8 CALIB_STATUS_IDLE = 0~%uint8 CALIB_STATUS_RUNNING = 1~%uint8 CALIB_STATUS_SUCCESS = 2~%uint8 CALIB_STATUS_FAIL = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlacCalibStatusEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlacCalibStatusEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'PlacCalibStatusEnum
    (cl:cons ':value (value msg))
))
