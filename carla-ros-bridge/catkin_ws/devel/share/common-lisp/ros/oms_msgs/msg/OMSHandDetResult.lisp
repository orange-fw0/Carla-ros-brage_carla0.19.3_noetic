; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSHandDetResult.msg.html

(cl:defclass <OMSHandDetResult> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (hand_rect
    :reader hand_rect
    :initarg :hand_rect
    :type oms_msgs-msg:OMSRect2f
    :initform (cl:make-instance 'oms_msgs-msg:OMSRect2f))
   (hand_keypoints
    :reader hand_keypoints
    :initarg :hand_keypoints
    :type (cl:vector oms_msgs-msg:OMSPoint2f)
   :initform (cl:make-array 0 :element-type 'oms_msgs-msg:OMSPoint2f :initial-element (cl:make-instance 'oms_msgs-msg:OMSPoint2f))))
)

(cl:defclass OMSHandDetResult (<OMSHandDetResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSHandDetResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSHandDetResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSHandDetResult> is deprecated: use oms_msgs-msg:OMSHandDetResult instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSHandDetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'hand_rect-val :lambda-list '(m))
(cl:defmethod hand_rect-val ((m <OMSHandDetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:hand_rect-val is deprecated.  Use oms_msgs-msg:hand_rect instead.")
  (hand_rect m))

(cl:ensure-generic-function 'hand_keypoints-val :lambda-list '(m))
(cl:defmethod hand_keypoints-val ((m <OMSHandDetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:hand_keypoints-val is deprecated.  Use oms_msgs-msg:hand_keypoints instead.")
  (hand_keypoints m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSHandDetResult>)))
    "Constants for message type '<OMSHandDetResult>"
  '((:UNAVAILABLE . 0)
    (:AVAILABLE . 1)
    (:UNCERTAIN . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSHandDetResult)))
    "Constants for message type 'OMSHandDetResult"
  '((:UNAVAILABLE . 0)
    (:AVAILABLE . 1)
    (:UNCERTAIN . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSHandDetResult>) ostream)
  "Serializes a message object of type '<OMSHandDetResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hand_rect) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hand_keypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'hand_keypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSHandDetResult>) istream)
  "Deserializes a message object of type '<OMSHandDetResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hand_rect) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hand_keypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hand_keypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'oms_msgs-msg:OMSPoint2f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSHandDetResult>)))
  "Returns string type for a message object of type '<OMSHandDetResult>"
  "oms_msgs/OMSHandDetResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSHandDetResult)))
  "Returns string type for a message object of type 'OMSHandDetResult"
  "oms_msgs/OMSHandDetResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSHandDetResult>)))
  "Returns md5sum for a message object of type '<OMSHandDetResult>"
  "0d5382ebb4618a129bd15ef86384e6d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSHandDetResult)))
  "Returns md5sum for a message object of type 'OMSHandDetResult"
  "0d5382ebb4618a129bd15ef86384e6d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSHandDetResult>)))
  "Returns full string definition for message of type '<OMSHandDetResult>"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f hand_rect~%oms_msgs/OMSPoint2f[] hand_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSHandDetResult)))
  "Returns full string definition for message of type 'OMSHandDetResult"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f hand_rect~%oms_msgs/OMSPoint2f[] hand_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSHandDetResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hand_rect))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hand_keypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSHandDetResult>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSHandDetResult
    (cl:cons ':value (value msg))
    (cl:cons ':hand_rect (hand_rect msg))
    (cl:cons ':hand_keypoints (hand_keypoints msg))
))
