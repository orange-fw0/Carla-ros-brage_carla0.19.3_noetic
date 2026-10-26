; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFuncLimitedResult.msg.html

(cl:defclass <DMSFuncLimitedResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (function_limited_type
    :reader function_limited_type
    :initarg :function_limited_type
    :type dms_msgs-msg:DMSFunctionLimitedTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSFunctionLimitedTypeEnum))
   (l2_function_limited_type
    :reader l2_function_limited_type
    :initarg :l2_function_limited_type
    :type dms_msgs-msg:L2DMSFunctionLimitedTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L2DMSFunctionLimitedTypeEnum))
   (l3_function_limited_type
    :reader l3_function_limited_type
    :initarg :l3_function_limited_type
    :type dms_msgs-msg:L3DMSFunctionLimitedTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L3DMSFunctionLimitedTypeEnum))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0)
   (func_limited_params
    :reader func_limited_params
    :initarg :func_limited_params
    :type cl:string
    :initform ""))
)

(cl:defclass DMSFuncLimitedResult (<DMSFuncLimitedResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFuncLimitedResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFuncLimitedResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFuncLimitedResult> is deprecated: use dms_msgs-msg:DMSFuncLimitedResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSFuncLimitedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'function_limited_type-val :lambda-list '(m))
(cl:defmethod function_limited_type-val ((m <DMSFuncLimitedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:function_limited_type-val is deprecated.  Use dms_msgs-msg:function_limited_type instead.")
  (function_limited_type m))

(cl:ensure-generic-function 'l2_function_limited_type-val :lambda-list '(m))
(cl:defmethod l2_function_limited_type-val ((m <DMSFuncLimitedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_function_limited_type-val is deprecated.  Use dms_msgs-msg:l2_function_limited_type instead.")
  (l2_function_limited_type m))

(cl:ensure-generic-function 'l3_function_limited_type-val :lambda-list '(m))
(cl:defmethod l3_function_limited_type-val ((m <DMSFuncLimitedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_function_limited_type-val is deprecated.  Use dms_msgs-msg:l3_function_limited_type instead.")
  (l3_function_limited_type m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <DMSFuncLimitedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'func_limited_params-val :lambda-list '(m))
(cl:defmethod func_limited_params-val ((m <DMSFuncLimitedResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:func_limited_params-val is deprecated.  Use dms_msgs-msg:func_limited_params instead.")
  (func_limited_params m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSFuncLimitedResult>)))
    "Constants for message type '<DMSFuncLimitedResult>"
  '((:UN_AVAILABLE . 0)
    (:FUNCTION_LIMITED_TYPE_AVAILABLE . 1)
    (:L2_FUNCTION_LIMITED_TYPE_AVAILABLE . 2)
    (:L3_FUNCTION_LIMITED_TYPE_AVAILABLE . 4)
    (:RESERVED . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSFuncLimitedResult)))
    "Constants for message type 'DMSFuncLimitedResult"
  '((:UN_AVAILABLE . 0)
    (:FUNCTION_LIMITED_TYPE_AVAILABLE . 1)
    (:L2_FUNCTION_LIMITED_TYPE_AVAILABLE . 2)
    (:L3_FUNCTION_LIMITED_TYPE_AVAILABLE . 4)
    (:RESERVED . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFuncLimitedResult>) ostream)
  "Serializes a message object of type '<DMSFuncLimitedResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'function_limited_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l2_function_limited_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l3_function_limited_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'func_limited_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'func_limited_params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFuncLimitedResult>) istream)
  "Deserializes a message object of type '<DMSFuncLimitedResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'function_limited_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l2_function_limited_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l3_function_limited_type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'func_limited_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'func_limited_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFuncLimitedResult>)))
  "Returns string type for a message object of type '<DMSFuncLimitedResult>"
  "dms_msgs/DMSFuncLimitedResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFuncLimitedResult)))
  "Returns string type for a message object of type 'DMSFuncLimitedResult"
  "dms_msgs/DMSFuncLimitedResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFuncLimitedResult>)))
  "Returns md5sum for a message object of type '<DMSFuncLimitedResult>"
  "f27f64c429ae56367dec0d4320ccb5d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFuncLimitedResult)))
  "Returns md5sum for a message object of type 'DMSFuncLimitedResult"
  "f27f64c429ae56367dec0d4320ccb5d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFuncLimitedResult>)))
  "Returns full string definition for message of type '<DMSFuncLimitedResult>"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 FUNCTION_LIMITED_TYPE_AVAILABLE = 1~%uint8 L2_FUNCTION_LIMITED_TYPE_AVAILABLE = 2~%uint8 L3_FUNCTION_LIMITED_TYPE_AVAILABLE = 4~%uint8 RESERVED = 8~%uint8 available~%dms_msgs/DMSFunctionLimitedTypeEnum function_limited_type~%dms_msgs/L2DMSFunctionLimitedTypeEnum l2_function_limited_type~%dms_msgs/L3DMSFunctionLimitedTypeEnum l3_function_limited_type~%uint8 reserved~%string func_limited_params~%~%================================================================================~%MSG: dms_msgs/DMSFunctionLimitedTypeEnum~%uint8 DMS_NORMAL_FUNCTION_STATE = 0~%uint8 DMS_LIMITED_FUNCTION_STATE = 1~%uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2~%uint8 value~%~%================================================================================~%MSG: dms_msgs/L2DMSFunctionLimitedTypeEnum~%uint8 DMS_NORMAL_FUNCTION_STATE = 0~%uint8 DMS_LIMITED_FUNCTION_STATE = 1~%uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2~%uint8 value~%~%================================================================================~%MSG: dms_msgs/L3DMSFunctionLimitedTypeEnum~%uint8 DMS_NORMAL_FUNCTION_STATE = 0~%uint8 DMS_LIMITED_FUNCTION_STATE = 1~%uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFuncLimitedResult)))
  "Returns full string definition for message of type 'DMSFuncLimitedResult"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 FUNCTION_LIMITED_TYPE_AVAILABLE = 1~%uint8 L2_FUNCTION_LIMITED_TYPE_AVAILABLE = 2~%uint8 L3_FUNCTION_LIMITED_TYPE_AVAILABLE = 4~%uint8 RESERVED = 8~%uint8 available~%dms_msgs/DMSFunctionLimitedTypeEnum function_limited_type~%dms_msgs/L2DMSFunctionLimitedTypeEnum l2_function_limited_type~%dms_msgs/L3DMSFunctionLimitedTypeEnum l3_function_limited_type~%uint8 reserved~%string func_limited_params~%~%================================================================================~%MSG: dms_msgs/DMSFunctionLimitedTypeEnum~%uint8 DMS_NORMAL_FUNCTION_STATE = 0~%uint8 DMS_LIMITED_FUNCTION_STATE = 1~%uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2~%uint8 value~%~%================================================================================~%MSG: dms_msgs/L2DMSFunctionLimitedTypeEnum~%uint8 DMS_NORMAL_FUNCTION_STATE = 0~%uint8 DMS_LIMITED_FUNCTION_STATE = 1~%uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2~%uint8 value~%~%================================================================================~%MSG: dms_msgs/L3DMSFunctionLimitedTypeEnum~%uint8 DMS_NORMAL_FUNCTION_STATE = 0~%uint8 DMS_LIMITED_FUNCTION_STATE = 1~%uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFuncLimitedResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'function_limited_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l2_function_limited_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l3_function_limited_type))
     1
     4 (cl:length (cl:slot-value msg 'func_limited_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFuncLimitedResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFuncLimitedResult
    (cl:cons ':available (available msg))
    (cl:cons ':function_limited_type (function_limited_type msg))
    (cl:cons ':l2_function_limited_type (l2_function_limited_type msg))
    (cl:cons ':l3_function_limited_type (l3_function_limited_type msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':func_limited_params (func_limited_params msg))
))
