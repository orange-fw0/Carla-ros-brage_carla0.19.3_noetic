; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xOverHorizonInfo.msg.html

(cl:defclass <V2xOverHorizonInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (v2x_over_horizon_data
    :reader v2x_over_horizon_data
    :initarg :v2x_over_horizon_data
    :type v2x_msgs-msg:V2xOverHorizonData
    :initform (cl:make-instance 'v2x_msgs-msg:V2xOverHorizonData)))
)

(cl:defclass V2xOverHorizonInfo (<V2xOverHorizonInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xOverHorizonInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xOverHorizonInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xOverHorizonInfo> is deprecated: use v2x_msgs-msg:V2xOverHorizonInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <V2xOverHorizonInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:available-val is deprecated.  Use v2x_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'v2x_over_horizon_data-val :lambda-list '(m))
(cl:defmethod v2x_over_horizon_data-val ((m <V2xOverHorizonInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:v2x_over_horizon_data-val is deprecated.  Use v2x_msgs-msg:v2x_over_horizon_data instead.")
  (v2x_over_horizon_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<V2xOverHorizonInfo>)))
    "Constants for message type '<V2xOverHorizonInfo>"
  '((:V2X_OVER_HORIZON_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'V2xOverHorizonInfo)))
    "Constants for message type 'V2xOverHorizonInfo"
  '((:V2X_OVER_HORIZON_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xOverHorizonInfo>) ostream)
  "Serializes a message object of type '<V2xOverHorizonInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v2x_over_horizon_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xOverHorizonInfo>) istream)
  "Deserializes a message object of type '<V2xOverHorizonInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v2x_over_horizon_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xOverHorizonInfo>)))
  "Returns string type for a message object of type '<V2xOverHorizonInfo>"
  "v2x_msgs/V2xOverHorizonInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xOverHorizonInfo)))
  "Returns string type for a message object of type 'V2xOverHorizonInfo"
  "v2x_msgs/V2xOverHorizonInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xOverHorizonInfo>)))
  "Returns md5sum for a message object of type '<V2xOverHorizonInfo>"
  "9db2d5066d1096c28b17d4fbc24f2ef0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xOverHorizonInfo)))
  "Returns md5sum for a message object of type 'V2xOverHorizonInfo"
  "9db2d5066d1096c28b17d4fbc24f2ef0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xOverHorizonInfo>)))
  "Returns full string definition for message of type '<V2xOverHorizonInfo>"
  (cl:format cl:nil "uint8 V2X_OVER_HORIZON_DATA = 1~%uint8 available~%v2x_msgs/V2xOverHorizonData v2x_over_horizon_data~%~%================================================================================~%MSG: v2x_msgs/V2xOverHorizonData~%int32 intersection_id~%string video_url~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xOverHorizonInfo)))
  "Returns full string definition for message of type 'V2xOverHorizonInfo"
  (cl:format cl:nil "uint8 V2X_OVER_HORIZON_DATA = 1~%uint8 available~%v2x_msgs/V2xOverHorizonData v2x_over_horizon_data~%~%================================================================================~%MSG: v2x_msgs/V2xOverHorizonData~%int32 intersection_id~%string video_url~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xOverHorizonInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v2x_over_horizon_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xOverHorizonInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xOverHorizonInfo
    (cl:cons ':available (available msg))
    (cl:cons ':v2x_over_horizon_data (v2x_over_horizon_data msg))
))
