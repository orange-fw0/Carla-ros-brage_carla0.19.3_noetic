; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSObjectProperty.msg.html

(cl:defclass <OMSObjectProperty> (roslisp-msg-protocol:ros-message)
  ((det_roi
    :reader det_roi
    :initarg :det_roi
    :type (cl:vector oms_msgs-msg:OMSRect2f)
   :initform (cl:make-array 0 :element-type 'oms_msgs-msg:OMSRect2f :initial-element (cl:make-instance 'oms_msgs-msg:OMSRect2f)))
   (object_infos
    :reader object_infos
    :initarg :object_infos
    :type (cl:vector oms_msgs-msg:OMSObjectInfo)
   :initform (cl:make-array 0 :element-type 'oms_msgs-msg:OMSObjectInfo :initial-element (cl:make-instance 'oms_msgs-msg:OMSObjectInfo))))
)

(cl:defclass OMSObjectProperty (<OMSObjectProperty>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSObjectProperty>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSObjectProperty)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSObjectProperty> is deprecated: use oms_msgs-msg:OMSObjectProperty instead.")))

(cl:ensure-generic-function 'det_roi-val :lambda-list '(m))
(cl:defmethod det_roi-val ((m <OMSObjectProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:det_roi-val is deprecated.  Use oms_msgs-msg:det_roi instead.")
  (det_roi m))

(cl:ensure-generic-function 'object_infos-val :lambda-list '(m))
(cl:defmethod object_infos-val ((m <OMSObjectProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:object_infos-val is deprecated.  Use oms_msgs-msg:object_infos instead.")
  (object_infos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSObjectProperty>) ostream)
  "Serializes a message object of type '<OMSObjectProperty>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'det_roi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'det_roi))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_infos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_infos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSObjectProperty>) istream)
  "Deserializes a message object of type '<OMSObjectProperty>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'det_roi) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'det_roi)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'oms_msgs-msg:OMSRect2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_infos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_infos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'oms_msgs-msg:OMSObjectInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSObjectProperty>)))
  "Returns string type for a message object of type '<OMSObjectProperty>"
  "oms_msgs/OMSObjectProperty")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSObjectProperty)))
  "Returns string type for a message object of type 'OMSObjectProperty"
  "oms_msgs/OMSObjectProperty")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSObjectProperty>)))
  "Returns md5sum for a message object of type '<OMSObjectProperty>"
  "82143832cfed9889280e3a3c93609985")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSObjectProperty)))
  "Returns md5sum for a message object of type 'OMSObjectProperty"
  "82143832cfed9889280e3a3c93609985")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSObjectProperty>)))
  "Returns full string definition for message of type '<OMSObjectProperty>"
  (cl:format cl:nil "oms_msgs/OMSRect2f[] det_roi~%oms_msgs/OMSObjectInfo[] object_infos~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSObjectInfo~%uint8 seat_id~%oms_msgs/OMSObjectType object_type~%oms_msgs/OMSObjectDetResult object_rect~%~%================================================================================~%MSG: oms_msgs/OMSObjectType~%uint8 UNAVAILABLE = 0~%uint8 COMPUTER = 1~%uint8 PAD = 2~%uint8 WALLET = 3~%uint8 BACKPACK = 4~%uint8 HANDBAG = 5~%uint8 PHONE = 6~%uint8 CHILD_SEAT_HARD = 7~%uint8 CHILD_SEAT_SOFT = 8~%uint8 CHILD_SEAT_BASKET = 9~%uint8 CHILD_SEAT_UNUSUAL = 10~%uint8 CAT = 11~%uint8 DOG = 12~%uint8 RESERVED1 = 13~%uint8 RESERVED2 = 14~%uint8 RESERVED3 = 15~%uint8 RESERVED4 = 16~%uint8 RESERVED5 = 17~%uint8 UNCERTAIN = 18~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSObjectDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f object_rect~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSObjectProperty)))
  "Returns full string definition for message of type 'OMSObjectProperty"
  (cl:format cl:nil "oms_msgs/OMSRect2f[] det_roi~%oms_msgs/OMSObjectInfo[] object_infos~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSObjectInfo~%uint8 seat_id~%oms_msgs/OMSObjectType object_type~%oms_msgs/OMSObjectDetResult object_rect~%~%================================================================================~%MSG: oms_msgs/OMSObjectType~%uint8 UNAVAILABLE = 0~%uint8 COMPUTER = 1~%uint8 PAD = 2~%uint8 WALLET = 3~%uint8 BACKPACK = 4~%uint8 HANDBAG = 5~%uint8 PHONE = 6~%uint8 CHILD_SEAT_HARD = 7~%uint8 CHILD_SEAT_SOFT = 8~%uint8 CHILD_SEAT_BASKET = 9~%uint8 CHILD_SEAT_UNUSUAL = 10~%uint8 CAT = 11~%uint8 DOG = 12~%uint8 RESERVED1 = 13~%uint8 RESERVED2 = 14~%uint8 RESERVED3 = 15~%uint8 RESERVED4 = 16~%uint8 RESERVED5 = 17~%uint8 UNCERTAIN = 18~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSObjectDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f object_rect~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSObjectProperty>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'det_roi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_infos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSObjectProperty>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSObjectProperty
    (cl:cons ':det_roi (det_roi msg))
    (cl:cons ':object_infos (object_infos msg))
))
