; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSStaticGestureResult.msg.html

(cl:defclass <OMSStaticGestureResult> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass OMSStaticGestureResult (<OMSStaticGestureResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSStaticGestureResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSStaticGestureResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSStaticGestureResult> is deprecated: use oms_msgs-msg:OMSStaticGestureResult instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSStaticGestureResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <OMSStaticGestureResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:score-val is deprecated.  Use oms_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSStaticGestureResult>)))
    "Constants for message type '<OMSStaticGestureResult>"
  '((:UNAVAILABLE . 0)
    (:STATIC_GESTURE_FIST . 1)
    (:STATIC_GESTURE_ONE . 2)
    (:STATIC_GESTURE_TWO . 3)
    (:STATIC_GESTURE_THREE . 4)
    (:STATIC_GESTURE_FOUR . 5)
    (:STATIC_GESTURE_FIVE . 6)
    (:STATIC_GESTURE_SIX . 7)
    (:STATIC_GESTURE_SEVEN . 8)
    (:STATIC_GESTURE_EIGHT . 9)
    (:STATIC_GESTURE_NINE . 10)
    (:STATIC_GESTURE_OK . 11)
    (:STATIC_GESTURE_THUMB_UP . 12)
    (:STATIC_GESTURE_THUMB_LEFT . 13)
    (:STATIC_GESTURE_THUMB_RIGHT . 14)
    (:STATIC_GESTURE_THUMB_DOWN . 15)
    (:STATIC_GESTURE_FINGER_LEFT . 16)
    (:STATIC_GESTURE_FINGER_RIGHT . 17)
    (:STATIC_GESTURE_FINGER_UP . 18)
    (:STATIC_GESTURE_RESERVED1 . 19)
    (:STATIC_GESTURE_RESERVED2 . 20)
    (:STATIC_GESTURE_RESERVED3 . 21)
    (:STATIC_GESTURE_RESERVED4 . 22)
    (:STATIC_GESTURE_RESERVED5 . 23)
    (:STATIC_GESTURE_OTHER . 24)
    (:UNCERTAIN . 25))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSStaticGestureResult)))
    "Constants for message type 'OMSStaticGestureResult"
  '((:UNAVAILABLE . 0)
    (:STATIC_GESTURE_FIST . 1)
    (:STATIC_GESTURE_ONE . 2)
    (:STATIC_GESTURE_TWO . 3)
    (:STATIC_GESTURE_THREE . 4)
    (:STATIC_GESTURE_FOUR . 5)
    (:STATIC_GESTURE_FIVE . 6)
    (:STATIC_GESTURE_SIX . 7)
    (:STATIC_GESTURE_SEVEN . 8)
    (:STATIC_GESTURE_EIGHT . 9)
    (:STATIC_GESTURE_NINE . 10)
    (:STATIC_GESTURE_OK . 11)
    (:STATIC_GESTURE_THUMB_UP . 12)
    (:STATIC_GESTURE_THUMB_LEFT . 13)
    (:STATIC_GESTURE_THUMB_RIGHT . 14)
    (:STATIC_GESTURE_THUMB_DOWN . 15)
    (:STATIC_GESTURE_FINGER_LEFT . 16)
    (:STATIC_GESTURE_FINGER_RIGHT . 17)
    (:STATIC_GESTURE_FINGER_UP . 18)
    (:STATIC_GESTURE_RESERVED1 . 19)
    (:STATIC_GESTURE_RESERVED2 . 20)
    (:STATIC_GESTURE_RESERVED3 . 21)
    (:STATIC_GESTURE_RESERVED4 . 22)
    (:STATIC_GESTURE_RESERVED5 . 23)
    (:STATIC_GESTURE_OTHER . 24)
    (:UNCERTAIN . 25))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSStaticGestureResult>) ostream)
  "Serializes a message object of type '<OMSStaticGestureResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSStaticGestureResult>) istream)
  "Deserializes a message object of type '<OMSStaticGestureResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSStaticGestureResult>)))
  "Returns string type for a message object of type '<OMSStaticGestureResult>"
  "oms_msgs/OMSStaticGestureResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSStaticGestureResult)))
  "Returns string type for a message object of type 'OMSStaticGestureResult"
  "oms_msgs/OMSStaticGestureResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSStaticGestureResult>)))
  "Returns md5sum for a message object of type '<OMSStaticGestureResult>"
  "5f6483eeb794330305e85d635cada1b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSStaticGestureResult)))
  "Returns md5sum for a message object of type 'OMSStaticGestureResult"
  "5f6483eeb794330305e85d635cada1b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSStaticGestureResult>)))
  "Returns full string definition for message of type '<OMSStaticGestureResult>"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 STATIC_GESTURE_FIST = 1~%uint8 STATIC_GESTURE_ONE = 2~%uint8 STATIC_GESTURE_TWO = 3~%uint8 STATIC_GESTURE_THREE = 4~%uint8 STATIC_GESTURE_FOUR = 5~%uint8 STATIC_GESTURE_FIVE = 6~%uint8 STATIC_GESTURE_SIX = 7~%uint8 STATIC_GESTURE_SEVEN = 8~%uint8 STATIC_GESTURE_EIGHT = 9~%uint8 STATIC_GESTURE_NINE = 10~%uint8 STATIC_GESTURE_OK = 11~%uint8 STATIC_GESTURE_THUMB_UP = 12~%uint8 STATIC_GESTURE_THUMB_LEFT = 13~%uint8 STATIC_GESTURE_THUMB_RIGHT = 14~%uint8 STATIC_GESTURE_THUMB_DOWN = 15~%uint8 STATIC_GESTURE_FINGER_LEFT = 16~%uint8 STATIC_GESTURE_FINGER_RIGHT = 17~%uint8 STATIC_GESTURE_FINGER_UP = 18~%uint8 STATIC_GESTURE_RESERVED1 = 19~%uint8 STATIC_GESTURE_RESERVED2 = 20~%uint8 STATIC_GESTURE_RESERVED3 = 21~%uint8 STATIC_GESTURE_RESERVED4 = 22~%uint8 STATIC_GESTURE_RESERVED5 = 23~%uint8 STATIC_GESTURE_OTHER = 24~%uint8 UNCERTAIN = 25~%uint8 value~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSStaticGestureResult)))
  "Returns full string definition for message of type 'OMSStaticGestureResult"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 STATIC_GESTURE_FIST = 1~%uint8 STATIC_GESTURE_ONE = 2~%uint8 STATIC_GESTURE_TWO = 3~%uint8 STATIC_GESTURE_THREE = 4~%uint8 STATIC_GESTURE_FOUR = 5~%uint8 STATIC_GESTURE_FIVE = 6~%uint8 STATIC_GESTURE_SIX = 7~%uint8 STATIC_GESTURE_SEVEN = 8~%uint8 STATIC_GESTURE_EIGHT = 9~%uint8 STATIC_GESTURE_NINE = 10~%uint8 STATIC_GESTURE_OK = 11~%uint8 STATIC_GESTURE_THUMB_UP = 12~%uint8 STATIC_GESTURE_THUMB_LEFT = 13~%uint8 STATIC_GESTURE_THUMB_RIGHT = 14~%uint8 STATIC_GESTURE_THUMB_DOWN = 15~%uint8 STATIC_GESTURE_FINGER_LEFT = 16~%uint8 STATIC_GESTURE_FINGER_RIGHT = 17~%uint8 STATIC_GESTURE_FINGER_UP = 18~%uint8 STATIC_GESTURE_RESERVED1 = 19~%uint8 STATIC_GESTURE_RESERVED2 = 20~%uint8 STATIC_GESTURE_RESERVED3 = 21~%uint8 STATIC_GESTURE_RESERVED4 = 22~%uint8 STATIC_GESTURE_RESERVED5 = 23~%uint8 STATIC_GESTURE_OTHER = 24~%uint8 UNCERTAIN = 25~%uint8 value~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSStaticGestureResult>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSStaticGestureResult>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSStaticGestureResult
    (cl:cons ':value (value msg))
    (cl:cons ':score (score msg))
))
