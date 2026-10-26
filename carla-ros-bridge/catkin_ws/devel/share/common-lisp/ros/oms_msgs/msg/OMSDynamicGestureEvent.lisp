; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSDynamicGestureEvent.msg.html

(cl:defclass <OMSDynamicGestureEvent> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (start_time
    :reader start_time
    :initarg :start_time
    :type cl:integer
    :initform 0)
   (end_time
    :reader end_time
    :initarg :end_time
    :type cl:integer
    :initform 0))
)

(cl:defclass OMSDynamicGestureEvent (<OMSDynamicGestureEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSDynamicGestureEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSDynamicGestureEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSDynamicGestureEvent> is deprecated: use oms_msgs-msg:OMSDynamicGestureEvent instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSDynamicGestureEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <OMSDynamicGestureEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:score-val is deprecated.  Use oms_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <OMSDynamicGestureEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:start_time-val is deprecated.  Use oms_msgs-msg:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'end_time-val :lambda-list '(m))
(cl:defmethod end_time-val ((m <OMSDynamicGestureEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:end_time-val is deprecated.  Use oms_msgs-msg:end_time instead.")
  (end_time m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSDynamicGestureEvent>)))
    "Constants for message type '<OMSDynamicGestureEvent>"
  '((:UNAVAILABLE . 0)
    (:DYNAMIC_GESTURE_FINGER_LASER . 1)
    (:DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT . 2)
    (:DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT . 3)
    (:DYNAMIC_GESTURE_PINCH . 4)
    (:DYNAMIC_GESTURE_FIST . 5)
    (:DYNAMIC_GESTURE_GRAB . 6)
    (:DYNAMIC_GESTURE_PALM . 7)
    (:DYNAMIC_GESTURE_OK . 8)
    (:DYNAMIC_GESTURE_THUMBUP_CLICK . 9)
    (:DYNAMIC_GESTURE_THUMBUP . 10)
    (:DYNAMIC_GESTURE_GRAB_OR_FIST . 11)
    (:DYNAMIC_GESTURE_RESERVED1 . 12)
    (:DYNAMIC_GESTURE_RESERVED2 . 13)
    (:DYNAMIC_GESTURE_RESERVED3 . 14)
    (:DYNAMIC_GESTURE_RESERVED4 . 15)
    (:DYNAMIC_GESTURE_RESERVED5 . 16)
    (:UNCERTAIN . 17))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSDynamicGestureEvent)))
    "Constants for message type 'OMSDynamicGestureEvent"
  '((:UNAVAILABLE . 0)
    (:DYNAMIC_GESTURE_FINGER_LASER . 1)
    (:DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT . 2)
    (:DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT . 3)
    (:DYNAMIC_GESTURE_PINCH . 4)
    (:DYNAMIC_GESTURE_FIST . 5)
    (:DYNAMIC_GESTURE_GRAB . 6)
    (:DYNAMIC_GESTURE_PALM . 7)
    (:DYNAMIC_GESTURE_OK . 8)
    (:DYNAMIC_GESTURE_THUMBUP_CLICK . 9)
    (:DYNAMIC_GESTURE_THUMBUP . 10)
    (:DYNAMIC_GESTURE_GRAB_OR_FIST . 11)
    (:DYNAMIC_GESTURE_RESERVED1 . 12)
    (:DYNAMIC_GESTURE_RESERVED2 . 13)
    (:DYNAMIC_GESTURE_RESERVED3 . 14)
    (:DYNAMIC_GESTURE_RESERVED4 . 15)
    (:DYNAMIC_GESTURE_RESERVED5 . 16)
    (:UNCERTAIN . 17))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSDynamicGestureEvent>) ostream)
  "Serializes a message object of type '<OMSDynamicGestureEvent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'end_time)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSDynamicGestureEvent>) istream)
  "Deserializes a message object of type '<OMSDynamicGestureEvent>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSDynamicGestureEvent>)))
  "Returns string type for a message object of type '<OMSDynamicGestureEvent>"
  "oms_msgs/OMSDynamicGestureEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSDynamicGestureEvent)))
  "Returns string type for a message object of type 'OMSDynamicGestureEvent"
  "oms_msgs/OMSDynamicGestureEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSDynamicGestureEvent>)))
  "Returns md5sum for a message object of type '<OMSDynamicGestureEvent>"
  "97313da58e48d579dcb48ac49cd095ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSDynamicGestureEvent)))
  "Returns md5sum for a message object of type 'OMSDynamicGestureEvent"
  "97313da58e48d579dcb48ac49cd095ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSDynamicGestureEvent>)))
  "Returns full string definition for message of type '<OMSDynamicGestureEvent>"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 DYNAMIC_GESTURE_FINGER_LASER = 1~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT = 2~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT = 3~%uint8 DYNAMIC_GESTURE_PINCH = 4~%uint8 DYNAMIC_GESTURE_FIST = 5~%uint8 DYNAMIC_GESTURE_GRAB = 6~%uint8 DYNAMIC_GESTURE_PALM = 7~%uint8 DYNAMIC_GESTURE_OK = 8~%uint8 DYNAMIC_GESTURE_THUMBUP_CLICK = 9~%uint8 DYNAMIC_GESTURE_THUMBUP = 10~%uint8 DYNAMIC_GESTURE_GRAB_OR_FIST = 11~%uint8 DYNAMIC_GESTURE_RESERVED1 = 12~%uint8 DYNAMIC_GESTURE_RESERVED2 = 13~%uint8 DYNAMIC_GESTURE_RESERVED3 = 14~%uint8 DYNAMIC_GESTURE_RESERVED4 = 15~%uint8 DYNAMIC_GESTURE_RESERVED5 = 16~%uint8 UNCERTAIN = 17~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSDynamicGestureEvent)))
  "Returns full string definition for message of type 'OMSDynamicGestureEvent"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 DYNAMIC_GESTURE_FINGER_LASER = 1~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT = 2~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT = 3~%uint8 DYNAMIC_GESTURE_PINCH = 4~%uint8 DYNAMIC_GESTURE_FIST = 5~%uint8 DYNAMIC_GESTURE_GRAB = 6~%uint8 DYNAMIC_GESTURE_PALM = 7~%uint8 DYNAMIC_GESTURE_OK = 8~%uint8 DYNAMIC_GESTURE_THUMBUP_CLICK = 9~%uint8 DYNAMIC_GESTURE_THUMBUP = 10~%uint8 DYNAMIC_GESTURE_GRAB_OR_FIST = 11~%uint8 DYNAMIC_GESTURE_RESERVED1 = 12~%uint8 DYNAMIC_GESTURE_RESERVED2 = 13~%uint8 DYNAMIC_GESTURE_RESERVED3 = 14~%uint8 DYNAMIC_GESTURE_RESERVED4 = 15~%uint8 DYNAMIC_GESTURE_RESERVED5 = 16~%uint8 UNCERTAIN = 17~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSDynamicGestureEvent>))
  (cl:+ 0
     1
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSDynamicGestureEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSDynamicGestureEvent
    (cl:cons ':value (value msg))
    (cl:cons ':score (score msg))
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':end_time (end_time msg))
))
