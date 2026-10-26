; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAPoseDetail.msg.html

(cl:defclass <MLAPoseDetail> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (pose_detail_info
    :reader pose_detail_info
    :initarg :pose_detail_info
    :type mla_localization_msgs-msg:MLAPoseDetailInfo
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPoseDetailInfo)))
)

(cl:defclass MLAPoseDetail (<MLAPoseDetail>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAPoseDetail>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAPoseDetail)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAPoseDetail> is deprecated: use mla_localization_msgs-msg:MLAPoseDetail instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAPoseDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'pose_detail_info-val :lambda-list '(m))
(cl:defmethod pose_detail_info-val ((m <MLAPoseDetail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:pose_detail_info-val is deprecated.  Use mla_localization_msgs-msg:pose_detail_info instead.")
  (pose_detail_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAPoseDetail>)))
    "Constants for message type '<MLAPoseDetail>"
  '((:MLA_POSE_DETAIL_INFO . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAPoseDetail)))
    "Constants for message type 'MLAPoseDetail"
  '((:MLA_POSE_DETAIL_INFO . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAPoseDetail>) ostream)
  "Serializes a message object of type '<MLAPoseDetail>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_detail_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAPoseDetail>) istream)
  "Deserializes a message object of type '<MLAPoseDetail>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_detail_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAPoseDetail>)))
  "Returns string type for a message object of type '<MLAPoseDetail>"
  "mla_localization_msgs/MLAPoseDetail")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAPoseDetail)))
  "Returns string type for a message object of type 'MLAPoseDetail"
  "mla_localization_msgs/MLAPoseDetail")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAPoseDetail>)))
  "Returns md5sum for a message object of type '<MLAPoseDetail>"
  "dc49525cabc3af4ef9362acc115adf41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAPoseDetail)))
  "Returns md5sum for a message object of type 'MLAPoseDetail"
  "dc49525cabc3af4ef9362acc115adf41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAPoseDetail>)))
  "Returns full string definition for message of type '<MLAPoseDetail>"
  (cl:format cl:nil "uint8 MLA_POSE_DETAIL_INFO = 1~%uint8 available~%mla_localization_msgs/MLAPoseDetailInfo pose_detail_info~%~%================================================================================~%MSG: mla_localization_msgs/MLAPoseDetailInfo~%uint8 MLA_ESTIMATION_UNKNOWN = 0~%uint8 MLA_ESTIMATION_PER_FRAME = 1~%uint8 MLA_ESTIMATION_WINDOW_OPT = 2~%uint8 MLA_ESTIMATION_DR = 3~%uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAPoseDetail)))
  "Returns full string definition for message of type 'MLAPoseDetail"
  (cl:format cl:nil "uint8 MLA_POSE_DETAIL_INFO = 1~%uint8 available~%mla_localization_msgs/MLAPoseDetailInfo pose_detail_info~%~%================================================================================~%MSG: mla_localization_msgs/MLAPoseDetailInfo~%uint8 MLA_ESTIMATION_UNKNOWN = 0~%uint8 MLA_ESTIMATION_PER_FRAME = 1~%uint8 MLA_ESTIMATION_WINDOW_OPT = 2~%uint8 MLA_ESTIMATION_DR = 3~%uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAPoseDetail>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_detail_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAPoseDetail>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAPoseDetail
    (cl:cons ':available (available msg))
    (cl:cons ':pose_detail_info (pose_detail_info msg))
))
