; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SplitMergeInfo.msg.html

(cl:defclass <SplitMergeInfo> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SplitMergeInfo (<SplitMergeInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SplitMergeInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SplitMergeInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SplitMergeInfo> is deprecated: use lane_navi_info_msgs-msg:SplitMergeInfo instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SplitMergeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SplitMergeInfo>)))
    "Constants for message type '<SplitMergeInfo>"
  '((:NONE . 0)
    (:SPLIT . 1)
    (:MERGE . 2)
    (:CONTINUE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SplitMergeInfo)))
    "Constants for message type 'SplitMergeInfo"
  '((:NONE . 0)
    (:SPLIT . 1)
    (:MERGE . 2)
    (:CONTINUE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SplitMergeInfo>) ostream)
  "Serializes a message object of type '<SplitMergeInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SplitMergeInfo>) istream)
  "Deserializes a message object of type '<SplitMergeInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SplitMergeInfo>)))
  "Returns string type for a message object of type '<SplitMergeInfo>"
  "lane_navi_info_msgs/SplitMergeInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SplitMergeInfo)))
  "Returns string type for a message object of type 'SplitMergeInfo"
  "lane_navi_info_msgs/SplitMergeInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SplitMergeInfo>)))
  "Returns md5sum for a message object of type '<SplitMergeInfo>"
  "e79514809decbf1e76d4edb807a2daf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SplitMergeInfo)))
  "Returns md5sum for a message object of type 'SplitMergeInfo"
  "e79514809decbf1e76d4edb807a2daf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SplitMergeInfo>)))
  "Returns full string definition for message of type '<SplitMergeInfo>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 SPLIT = 1~%uint8 MERGE = 2~%uint8 CONTINUE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SplitMergeInfo)))
  "Returns full string definition for message of type 'SplitMergeInfo"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 SPLIT = 1~%uint8 MERGE = 2~%uint8 CONTINUE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SplitMergeInfo>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SplitMergeInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SplitMergeInfo
    (cl:cons ':value (value msg))
))
