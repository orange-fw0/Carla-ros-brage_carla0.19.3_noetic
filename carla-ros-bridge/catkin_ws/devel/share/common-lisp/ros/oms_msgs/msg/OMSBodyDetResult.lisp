; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSBodyDetResult.msg.html

(cl:defclass <OMSBodyDetResult> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (body_rect
    :reader body_rect
    :initarg :body_rect
    :type oms_msgs-msg:OMSRect2f
    :initform (cl:make-instance 'oms_msgs-msg:OMSRect2f))
   (body_keypoints
    :reader body_keypoints
    :initarg :body_keypoints
    :type (cl:vector oms_msgs-msg:OMSPoint2f)
   :initform (cl:make-array 0 :element-type 'oms_msgs-msg:OMSPoint2f :initial-element (cl:make-instance 'oms_msgs-msg:OMSPoint2f))))
)

(cl:defclass OMSBodyDetResult (<OMSBodyDetResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSBodyDetResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSBodyDetResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSBodyDetResult> is deprecated: use oms_msgs-msg:OMSBodyDetResult instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSBodyDetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'body_rect-val :lambda-list '(m))
(cl:defmethod body_rect-val ((m <OMSBodyDetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:body_rect-val is deprecated.  Use oms_msgs-msg:body_rect instead.")
  (body_rect m))

(cl:ensure-generic-function 'body_keypoints-val :lambda-list '(m))
(cl:defmethod body_keypoints-val ((m <OMSBodyDetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:body_keypoints-val is deprecated.  Use oms_msgs-msg:body_keypoints instead.")
  (body_keypoints m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSBodyDetResult>)))
    "Constants for message type '<OMSBodyDetResult>"
  '((:UNAVAILABLE . 0)
    (:AVAILABLE . 1)
    (:UNCERTAIN . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSBodyDetResult)))
    "Constants for message type 'OMSBodyDetResult"
  '((:UNAVAILABLE . 0)
    (:AVAILABLE . 1)
    (:UNCERTAIN . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSBodyDetResult>) ostream)
  "Serializes a message object of type '<OMSBodyDetResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_rect) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'body_keypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'body_keypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSBodyDetResult>) istream)
  "Deserializes a message object of type '<OMSBodyDetResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_rect) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'body_keypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'body_keypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'oms_msgs-msg:OMSPoint2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSBodyDetResult>)))
  "Returns string type for a message object of type '<OMSBodyDetResult>"
  "oms_msgs/OMSBodyDetResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSBodyDetResult)))
  "Returns string type for a message object of type 'OMSBodyDetResult"
  "oms_msgs/OMSBodyDetResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSBodyDetResult>)))
  "Returns md5sum for a message object of type '<OMSBodyDetResult>"
  "570d586291ac92487503233915f91243")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSBodyDetResult)))
  "Returns md5sum for a message object of type 'OMSBodyDetResult"
  "570d586291ac92487503233915f91243")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSBodyDetResult>)))
  "Returns full string definition for message of type '<OMSBodyDetResult>"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f body_rect~%oms_msgs/OMSPoint2f[] body_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSBodyDetResult)))
  "Returns full string definition for message of type 'OMSBodyDetResult"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f body_rect~%oms_msgs/OMSPoint2f[] body_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSBodyDetResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_rect))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'body_keypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSBodyDetResult>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSBodyDetResult
    (cl:cons ':value (value msg))
    (cl:cons ':body_rect (body_rect msg))
    (cl:cons ':body_keypoints (body_keypoints msg))
))
