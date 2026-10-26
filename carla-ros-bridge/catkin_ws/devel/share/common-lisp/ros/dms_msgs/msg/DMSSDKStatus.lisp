; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSSDKStatus.msg.html

(cl:defclass <DMSSDKStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (dms_status_type
    :reader dms_status_type
    :initarg :dms_status_type
    :type dms_msgs-msg:DMSStatusTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSStatusTypeEnum))
   (state_machine_type
    :reader state_machine_type
    :initarg :state_machine_type
    :type dms_msgs-msg:DMSStateMachineTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSStateMachineTypeEnum)))
)

(cl:defclass DMSSDKStatus (<DMSSDKStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSSDKStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSSDKStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSSDKStatus> is deprecated: use dms_msgs-msg:DMSSDKStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSSDKStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'dms_status_type-val :lambda-list '(m))
(cl:defmethod dms_status_type-val ((m <DMSSDKStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:dms_status_type-val is deprecated.  Use dms_msgs-msg:dms_status_type instead.")
  (dms_status_type m))

(cl:ensure-generic-function 'state_machine_type-val :lambda-list '(m))
(cl:defmethod state_machine_type-val ((m <DMSSDKStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:state_machine_type-val is deprecated.  Use dms_msgs-msg:state_machine_type instead.")
  (state_machine_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSSDKStatus>)))
    "Constants for message type '<DMSSDKStatus>"
  '((:SDK_STATUS_AVAILABLE . 1)
    (:STATE_MACHINE_AVAILABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSSDKStatus)))
    "Constants for message type 'DMSSDKStatus"
  '((:SDK_STATUS_AVAILABLE . 1)
    (:STATE_MACHINE_AVAILABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSSDKStatus>) ostream)
  "Serializes a message object of type '<DMSSDKStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dms_status_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_machine_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSSDKStatus>) istream)
  "Deserializes a message object of type '<DMSSDKStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dms_status_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_machine_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSSDKStatus>)))
  "Returns string type for a message object of type '<DMSSDKStatus>"
  "dms_msgs/DMSSDKStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSSDKStatus)))
  "Returns string type for a message object of type 'DMSSDKStatus"
  "dms_msgs/DMSSDKStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSSDKStatus>)))
  "Returns md5sum for a message object of type '<DMSSDKStatus>"
  "c6a155afbed13237c0c62973a59fc68b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSSDKStatus)))
  "Returns md5sum for a message object of type 'DMSSDKStatus"
  "c6a155afbed13237c0c62973a59fc68b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSSDKStatus>)))
  "Returns full string definition for message of type '<DMSSDKStatus>"
  (cl:format cl:nil "uint8 SDK_STATUS_AVAILABLE = 1~%uint8 STATE_MACHINE_AVAILABLE = 2~%uint8 available~%dms_msgs/DMSStatusTypeEnum dms_status_type~%dms_msgs/DMSStateMachineTypeEnum state_machine_type~%~%================================================================================~%MSG: dms_msgs/DMSStatusTypeEnum~%uint8 UNKNOWN = 0~%uint8 INITIALIZING = 1~%uint8 INTERNAL_FAULT = 2~%uint8 EXTERNAL_FAULT = 3~%uint8 INVALID_ENVIRONMENT = 4~%uint8 AUTHENTICATION_FAIL = 5~%uint8 INITIALIZ_OK = 6~%uint8 INITIALIZ_FAIL = 7~%uint8 RUNNING_OK = 8~%uint8 RUNNING_FAIL = 9~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSStateMachineTypeEnum~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 ACTIVE = 2~%uint8 FAILURE = 3~%uint8 UNKNOWN = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSSDKStatus)))
  "Returns full string definition for message of type 'DMSSDKStatus"
  (cl:format cl:nil "uint8 SDK_STATUS_AVAILABLE = 1~%uint8 STATE_MACHINE_AVAILABLE = 2~%uint8 available~%dms_msgs/DMSStatusTypeEnum dms_status_type~%dms_msgs/DMSStateMachineTypeEnum state_machine_type~%~%================================================================================~%MSG: dms_msgs/DMSStatusTypeEnum~%uint8 UNKNOWN = 0~%uint8 INITIALIZING = 1~%uint8 INTERNAL_FAULT = 2~%uint8 EXTERNAL_FAULT = 3~%uint8 INVALID_ENVIRONMENT = 4~%uint8 AUTHENTICATION_FAIL = 5~%uint8 INITIALIZ_OK = 6~%uint8 INITIALIZ_FAIL = 7~%uint8 RUNNING_OK = 8~%uint8 RUNNING_FAIL = 9~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSStateMachineTypeEnum~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 ACTIVE = 2~%uint8 FAILURE = 3~%uint8 UNKNOWN = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSSDKStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dms_status_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_machine_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSSDKStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSSDKStatus
    (cl:cons ':available (available msg))
    (cl:cons ':dms_status_type (dms_status_type msg))
    (cl:cons ':state_machine_type (state_machine_type msg))
))
