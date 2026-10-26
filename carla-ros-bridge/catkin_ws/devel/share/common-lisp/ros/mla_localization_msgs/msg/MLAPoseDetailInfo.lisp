; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAPoseDetailInfo.msg.html

(cl:defclass <MLAPoseDetailInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (is_keyframe
    :reader is_keyframe
    :initarg :is_keyframe
    :type cl:boolean
    :initform cl:nil)
   (has_scale
    :reader has_scale
    :initarg :has_scale
    :type cl:boolean
    :initform cl:nil)
   (pose_type
    :reader pose_type
    :initarg :pose_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MLAPoseDetailInfo (<MLAPoseDetailInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAPoseDetailInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAPoseDetailInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAPoseDetailInfo> is deprecated: use mla_localization_msgs-msg:MLAPoseDetailInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAPoseDetailInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'is_keyframe-val :lambda-list '(m))
(cl:defmethod is_keyframe-val ((m <MLAPoseDetailInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:is_keyframe-val is deprecated.  Use mla_localization_msgs-msg:is_keyframe instead.")
  (is_keyframe m))

(cl:ensure-generic-function 'has_scale-val :lambda-list '(m))
(cl:defmethod has_scale-val ((m <MLAPoseDetailInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:has_scale-val is deprecated.  Use mla_localization_msgs-msg:has_scale instead.")
  (has_scale m))

(cl:ensure-generic-function 'pose_type-val :lambda-list '(m))
(cl:defmethod pose_type-val ((m <MLAPoseDetailInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:pose_type-val is deprecated.  Use mla_localization_msgs-msg:pose_type instead.")
  (pose_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAPoseDetailInfo>)))
    "Constants for message type '<MLAPoseDetailInfo>"
  '((:MLA_ESTIMATION_UNKNOWN . 0)
    (:MLA_ESTIMATION_PER_FRAME . 1)
    (:MLA_ESTIMATION_WINDOW_OPT . 2)
    (:MLA_ESTIMATION_DR . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAPoseDetailInfo)))
    "Constants for message type 'MLAPoseDetailInfo"
  '((:MLA_ESTIMATION_UNKNOWN . 0)
    (:MLA_ESTIMATION_PER_FRAME . 1)
    (:MLA_ESTIMATION_WINDOW_OPT . 2)
    (:MLA_ESTIMATION_DR . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAPoseDetailInfo>) ostream)
  "Serializes a message object of type '<MLAPoseDetailInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_keyframe) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_scale) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pose_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAPoseDetailInfo>) istream)
  "Deserializes a message object of type '<MLAPoseDetailInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_keyframe) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'has_scale) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pose_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAPoseDetailInfo>)))
  "Returns string type for a message object of type '<MLAPoseDetailInfo>"
  "mla_localization_msgs/MLAPoseDetailInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAPoseDetailInfo)))
  "Returns string type for a message object of type 'MLAPoseDetailInfo"
  "mla_localization_msgs/MLAPoseDetailInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAPoseDetailInfo>)))
  "Returns md5sum for a message object of type '<MLAPoseDetailInfo>"
  "274119bf8783f47f15abb606e09ac47a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAPoseDetailInfo)))
  "Returns md5sum for a message object of type 'MLAPoseDetailInfo"
  "274119bf8783f47f15abb606e09ac47a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAPoseDetailInfo>)))
  "Returns full string definition for message of type '<MLAPoseDetailInfo>"
  (cl:format cl:nil "uint8 MLA_ESTIMATION_UNKNOWN = 0~%uint8 MLA_ESTIMATION_PER_FRAME = 1~%uint8 MLA_ESTIMATION_WINDOW_OPT = 2~%uint8 MLA_ESTIMATION_DR = 3~%uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAPoseDetailInfo)))
  "Returns full string definition for message of type 'MLAPoseDetailInfo"
  (cl:format cl:nil "uint8 MLA_ESTIMATION_UNKNOWN = 0~%uint8 MLA_ESTIMATION_PER_FRAME = 1~%uint8 MLA_ESTIMATION_WINDOW_OPT = 2~%uint8 MLA_ESTIMATION_DR = 3~%uint8 available~%bool is_keyframe~%bool has_scale~%uint8 pose_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAPoseDetailInfo>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAPoseDetailInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAPoseDetailInfo
    (cl:cons ':available (available msg))
    (cl:cons ':is_keyframe (is_keyframe msg))
    (cl:cons ':has_scale (has_scale msg))
    (cl:cons ':pose_type (pose_type msg))
))
