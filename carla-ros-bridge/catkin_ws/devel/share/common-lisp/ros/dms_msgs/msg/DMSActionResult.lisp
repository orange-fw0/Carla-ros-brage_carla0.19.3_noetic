; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSActionResult.msg.html

(cl:defclass <DMSActionResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (actions
    :reader actions
    :initarg :actions
    :type (cl:vector dms_msgs-msg:DMSFaceAction)
   :initform (cl:make-array 0 :element-type 'dms_msgs-msg:DMSFaceAction :initial-element (cl:make-instance 'dms_msgs-msg:DMSFaceAction))))
)

(cl:defclass DMSActionResult (<DMSActionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSActionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSActionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSActionResult> is deprecated: use dms_msgs-msg:DMSActionResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <DMSActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:actions-val is deprecated.  Use dms_msgs-msg:actions instead.")
  (actions m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSActionResult>)))
    "Constants for message type '<DMSActionResult>"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSActionResult)))
    "Constants for message type 'DMSActionResult"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSActionResult>) ostream)
  "Serializes a message object of type '<DMSActionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSActionResult>) istream)
  "Deserializes a message object of type '<DMSActionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dms_msgs-msg:DMSFaceAction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSActionResult>)))
  "Returns string type for a message object of type '<DMSActionResult>"
  "dms_msgs/DMSActionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSActionResult)))
  "Returns string type for a message object of type 'DMSActionResult"
  "dms_msgs/DMSActionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSActionResult>)))
  "Returns md5sum for a message object of type '<DMSActionResult>"
  "b5f789c741a3116750d3ff8b46e01f7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSActionResult)))
  "Returns md5sum for a message object of type 'DMSActionResult"
  "b5f789c741a3116750d3ff8b46e01f7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSActionResult>)))
  "Returns full string definition for message of type '<DMSActionResult>"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%dms_msgs/DMSFaceAction[] actions~%~%================================================================================~%MSG: dms_msgs/DMSFaceAction~%string name~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSActionResult)))
  "Returns full string definition for message of type 'DMSActionResult"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%dms_msgs/DMSFaceAction[] actions~%~%================================================================================~%MSG: dms_msgs/DMSFaceAction~%string name~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSActionResult>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSActionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSActionResult
    (cl:cons ':available (available msg))
    (cl:cons ':actions (actions msg))
))
