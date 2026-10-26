; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSAbnormalActionResult.msg.html

(cl:defclass <DMSAbnormalActionResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (abnormal_action_type
    :reader abnormal_action_type
    :initarg :abnormal_action_type
    :type dms_msgs-msg:DMSAbnormalActionTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSAbnormalActionTypeEnum))
   (l2_abnormal_action_type
    :reader l2_abnormal_action_type
    :initarg :l2_abnormal_action_type
    :type dms_msgs-msg:L2DMSAbnormalActionTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L2DMSAbnormalActionTypeEnum))
   (l3_abnormal_action_type
    :reader l3_abnormal_action_type
    :initarg :l3_abnormal_action_type
    :type dms_msgs-msg:L3DMSAbnormalActionTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L3DMSAbnormalActionTypeEnum))
   (actions
    :reader actions
    :initarg :actions
    :type (cl:vector dms_msgs-msg:DMSActionResult)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSActionResult :initial-element (cl:make-instance 'dms_msgs-msg:DMSActionResult)))
   (l2_actions
    :reader l2_actions
    :initarg :l2_actions
    :type (cl:vector dms_msgs-msg:DMSActionResult)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSActionResult :initial-element (cl:make-instance 'dms_msgs-msg:DMSActionResult)))
   (l3_actions
    :reader l3_actions
    :initarg :l3_actions
    :type (cl:vector dms_msgs-msg:DMSActionResult)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSActionResult :initial-element (cl:make-instance 'dms_msgs-msg:DMSActionResult)))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass DMSAbnormalActionResult (<DMSAbnormalActionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSAbnormalActionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSAbnormalActionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSAbnormalActionResult> is deprecated: use dms_msgs-msg:DMSAbnormalActionResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSAbnormalActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'abnormal_action_type-val :lambda-list '(m))
(cl:defmethod abnormal_action_type-val ((m <DMSAbnormalActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:abnormal_action_type-val is deprecated.  Use dms_msgs-msg:abnormal_action_type instead.")
  (abnormal_action_type m))

(cl:ensure-generic-function 'l2_abnormal_action_type-val :lambda-list '(m))
(cl:defmethod l2_abnormal_action_type-val ((m <DMSAbnormalActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_abnormal_action_type-val is deprecated.  Use dms_msgs-msg:l2_abnormal_action_type instead.")
  (l2_abnormal_action_type m))

(cl:ensure-generic-function 'l3_abnormal_action_type-val :lambda-list '(m))
(cl:defmethod l3_abnormal_action_type-val ((m <DMSAbnormalActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_abnormal_action_type-val is deprecated.  Use dms_msgs-msg:l3_abnormal_action_type instead.")
  (l3_abnormal_action_type m))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <DMSAbnormalActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:actions-val is deprecated.  Use dms_msgs-msg:actions instead.")
  (actions m))

(cl:ensure-generic-function 'l2_actions-val :lambda-list '(m))
(cl:defmethod l2_actions-val ((m <DMSAbnormalActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_actions-val is deprecated.  Use dms_msgs-msg:l2_actions instead.")
  (l2_actions m))

(cl:ensure-generic-function 'l3_actions-val :lambda-list '(m))
(cl:defmethod l3_actions-val ((m <DMSAbnormalActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_actions-val is deprecated.  Use dms_msgs-msg:l3_actions instead.")
  (l3_actions m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <DMSAbnormalActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSAbnormalActionResult>)))
    "Constants for message type '<DMSAbnormalActionResult>"
  '((:ABNORMAL_ACTION_TYPE_AVAILABLE . 1)
    (:L2_ABNORMAL_ACTION_TYPE_AVAILABLE . 2)
    (:L3_ABNORMAL_ACTION_TYPE_AVAILABLE . 4)
    (:ACTIONS_AVAILABLE . 8)
    (:L2_ACTIONS_AVAILABLE . 16)
    (:L3_ACTIONS_AVAILABLE . 32)
    (:RESERVED . 64))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSAbnormalActionResult)))
    "Constants for message type 'DMSAbnormalActionResult"
  '((:ABNORMAL_ACTION_TYPE_AVAILABLE . 1)
    (:L2_ABNORMAL_ACTION_TYPE_AVAILABLE . 2)
    (:L3_ABNORMAL_ACTION_TYPE_AVAILABLE . 4)
    (:ACTIONS_AVAILABLE . 8)
    (:L2_ACTIONS_AVAILABLE . 16)
    (:L3_ACTIONS_AVAILABLE . 32)
    (:RESERVED . 64))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSAbnormalActionResult>) ostream)
  "Serializes a message object of type '<DMSAbnormalActionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'abnormal_action_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l2_abnormal_action_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l3_abnormal_action_type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'l2_actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'l2_actions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'l3_actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'l3_actions))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSAbnormalActionResult>) istream)
  "Deserializes a message object of type '<DMSAbnormalActionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'abnormal_action_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l2_abnormal_action_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l3_abnormal_action_type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSActionResult))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'l2_actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'l2_actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSActionResult))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'l3_actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'l3_actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSActionResult))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSAbnormalActionResult>)))
  "Returns string type for a message object of type '<DMSAbnormalActionResult>"
  "dms_msgs/DMSAbnormalActionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSAbnormalActionResult)))
  "Returns string type for a message object of type 'DMSAbnormalActionResult"
  "dms_msgs/DMSAbnormalActionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSAbnormalActionResult>)))
  "Returns md5sum for a message object of type '<DMSAbnormalActionResult>"
  "eb4ac1b4a09793a7d8fc5ab48fd60359")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSAbnormalActionResult)))
  "Returns md5sum for a message object of type 'DMSAbnormalActionResult"
  "eb4ac1b4a09793a7d8fc5ab48fd60359")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSAbnormalActionResult>)))
  "Returns full string definition for message of type '<DMSAbnormalActionResult>"
  (cl:format cl:nil "uint16 ABNORMAL_ACTION_TYPE_AVAILABLE = 1~%uint16 L2_ABNORMAL_ACTION_TYPE_AVAILABLE = 2~%uint16 L3_ABNORMAL_ACTION_TYPE_AVAILABLE = 4~%uint16 ACTIONS_AVAILABLE = 8~%uint16 L2_ACTIONS_AVAILABLE = 16~%uint16 L3_ACTIONS_AVAILABLE = 32~%uint16 RESERVED = 64~%uint16 available~%dms_msgs/DMSAbnormalActionTypeEnum abnormal_action_type~%dms_msgs/L2DMSAbnormalActionTypeEnum l2_abnormal_action_type~%dms_msgs/L3DMSAbnormalActionTypeEnum l3_abnormal_action_type~%dms_msgs/DMSActionResult[] actions~%dms_msgs/DMSActionResult[] l2_actions~%dms_msgs/DMSActionResult[] l3_actions~%string reserved~%~%================================================================================~%MSG: dms_msgs/DMSAbnormalActionTypeEnum~%uint16 NORMAL = 1~%uint16 EYE_CLOSE = 2~%uint16 YAWN = 4~%uint16 DRINK = 8~%uint16 PHONE_CALL = 16~%uint16 SMOKE = 32~%uint16 EAT = 64~%uint16 PHONE_HAND = 128~%uint16 PHONE_EAR = 256~%uint16 RESERVED1 = 512~%uint16 RESERVED2 = 1024~%uint16 RESERVED3 = 2048~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L2DMSAbnormalActionTypeEnum~%uint16 NORMAL = 1~%uint16 EYE_CLOSE = 2~%uint16 YAWN = 4~%uint16 DRINK = 8~%uint16 PHONE_CALL = 16~%uint16 SMOKE = 32~%uint16 EAT = 64~%uint16 PHONE_HAND = 128~%uint16 PHONE_EAR = 256~%uint16 RESERVED1 = 512~%uint16 RESERVED2 = 1024~%uint16 RESERVED3 = 2048~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L3DMSAbnormalActionTypeEnum~%uint16 NORMAL = 1~%uint16 EYE_CLOSE = 2~%uint16 YAWN = 4~%uint16 DRINK = 8~%uint16 PHONE_CALL = 16~%uint16 SMOKE = 32~%uint16 EAT = 64~%uint16 PHONE_HAND = 128~%uint16 PHONE_EAR = 256~%uint16 RESERVED1 = 512~%uint16 RESERVED2 = 1024~%uint16 RESERVED3 = 2048~%uint16 value~%~%================================================================================~%MSG: dms_msgs/DMSActionResult~%uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%dms_msgs/DMSFaceAction[] actions~%~%================================================================================~%MSG: dms_msgs/DMSFaceAction~%string name~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSAbnormalActionResult)))
  "Returns full string definition for message of type 'DMSAbnormalActionResult"
  (cl:format cl:nil "uint16 ABNORMAL_ACTION_TYPE_AVAILABLE = 1~%uint16 L2_ABNORMAL_ACTION_TYPE_AVAILABLE = 2~%uint16 L3_ABNORMAL_ACTION_TYPE_AVAILABLE = 4~%uint16 ACTIONS_AVAILABLE = 8~%uint16 L2_ACTIONS_AVAILABLE = 16~%uint16 L3_ACTIONS_AVAILABLE = 32~%uint16 RESERVED = 64~%uint16 available~%dms_msgs/DMSAbnormalActionTypeEnum abnormal_action_type~%dms_msgs/L2DMSAbnormalActionTypeEnum l2_abnormal_action_type~%dms_msgs/L3DMSAbnormalActionTypeEnum l3_abnormal_action_type~%dms_msgs/DMSActionResult[] actions~%dms_msgs/DMSActionResult[] l2_actions~%dms_msgs/DMSActionResult[] l3_actions~%string reserved~%~%================================================================================~%MSG: dms_msgs/DMSAbnormalActionTypeEnum~%uint16 NORMAL = 1~%uint16 EYE_CLOSE = 2~%uint16 YAWN = 4~%uint16 DRINK = 8~%uint16 PHONE_CALL = 16~%uint16 SMOKE = 32~%uint16 EAT = 64~%uint16 PHONE_HAND = 128~%uint16 PHONE_EAR = 256~%uint16 RESERVED1 = 512~%uint16 RESERVED2 = 1024~%uint16 RESERVED3 = 2048~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L2DMSAbnormalActionTypeEnum~%uint16 NORMAL = 1~%uint16 EYE_CLOSE = 2~%uint16 YAWN = 4~%uint16 DRINK = 8~%uint16 PHONE_CALL = 16~%uint16 SMOKE = 32~%uint16 EAT = 64~%uint16 PHONE_HAND = 128~%uint16 PHONE_EAR = 256~%uint16 RESERVED1 = 512~%uint16 RESERVED2 = 1024~%uint16 RESERVED3 = 2048~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L3DMSAbnormalActionTypeEnum~%uint16 NORMAL = 1~%uint16 EYE_CLOSE = 2~%uint16 YAWN = 4~%uint16 DRINK = 8~%uint16 PHONE_CALL = 16~%uint16 SMOKE = 32~%uint16 EAT = 64~%uint16 PHONE_HAND = 128~%uint16 PHONE_EAR = 256~%uint16 RESERVED1 = 512~%uint16 RESERVED2 = 1024~%uint16 RESERVED3 = 2048~%uint16 value~%~%================================================================================~%MSG: dms_msgs/DMSActionResult~%uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%dms_msgs/DMSFaceAction[] actions~%~%================================================================================~%MSG: dms_msgs/DMSFaceAction~%string name~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSAbnormalActionResult>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'abnormal_action_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l2_abnormal_action_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l3_abnormal_action_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'l2_actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'l3_actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSAbnormalActionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSAbnormalActionResult
    (cl:cons ':available (available msg))
    (cl:cons ':abnormal_action_type (abnormal_action_type msg))
    (cl:cons ':l2_abnormal_action_type (l2_abnormal_action_type msg))
    (cl:cons ':l3_abnormal_action_type (l3_abnormal_action_type msg))
    (cl:cons ':actions (actions msg))
    (cl:cons ':l2_actions (l2_actions msg))
    (cl:cons ':l3_actions (l3_actions msg))
    (cl:cons ':reserved (reserved msg))
))
