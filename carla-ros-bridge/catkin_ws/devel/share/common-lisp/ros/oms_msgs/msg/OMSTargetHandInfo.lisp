; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSTargetHandInfo.msg.html

(cl:defclass <OMSTargetHandInfo> (roslisp-msg-protocol:ros-message)
  ((hand_det_result
    :reader hand_det_result
    :initarg :hand_det_result
    :type oms_msgs-msg:OMSHandDetResult
    :initform (cl:make-instance 'oms_msgs-msg:OMSHandDetResult))
   (static_gesture_type
    :reader static_gesture_type
    :initarg :static_gesture_type
    :type oms_msgs-msg:OMSStaticGestureResult
    :initform (cl:make-instance 'oms_msgs-msg:OMSStaticGestureResult))
   (dynamic_gesture_event
    :reader dynamic_gesture_event
    :initarg :dynamic_gesture_event
    :type oms_msgs-msg:OMSDynamicGestureEvent
    :initform (cl:make-instance 'oms_msgs-msg:OMSDynamicGestureEvent)))
)

(cl:defclass OMSTargetHandInfo (<OMSTargetHandInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSTargetHandInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSTargetHandInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSTargetHandInfo> is deprecated: use oms_msgs-msg:OMSTargetHandInfo instead.")))

(cl:ensure-generic-function 'hand_det_result-val :lambda-list '(m))
(cl:defmethod hand_det_result-val ((m <OMSTargetHandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:hand_det_result-val is deprecated.  Use oms_msgs-msg:hand_det_result instead.")
  (hand_det_result m))

(cl:ensure-generic-function 'static_gesture_type-val :lambda-list '(m))
(cl:defmethod static_gesture_type-val ((m <OMSTargetHandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:static_gesture_type-val is deprecated.  Use oms_msgs-msg:static_gesture_type instead.")
  (static_gesture_type m))

(cl:ensure-generic-function 'dynamic_gesture_event-val :lambda-list '(m))
(cl:defmethod dynamic_gesture_event-val ((m <OMSTargetHandInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:dynamic_gesture_event-val is deprecated.  Use oms_msgs-msg:dynamic_gesture_event instead.")
  (dynamic_gesture_event m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSTargetHandInfo>) ostream)
  "Serializes a message object of type '<OMSTargetHandInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hand_det_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'static_gesture_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dynamic_gesture_event) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSTargetHandInfo>) istream)
  "Deserializes a message object of type '<OMSTargetHandInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hand_det_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'static_gesture_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dynamic_gesture_event) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSTargetHandInfo>)))
  "Returns string type for a message object of type '<OMSTargetHandInfo>"
  "oms_msgs/OMSTargetHandInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSTargetHandInfo)))
  "Returns string type for a message object of type 'OMSTargetHandInfo"
  "oms_msgs/OMSTargetHandInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSTargetHandInfo>)))
  "Returns md5sum for a message object of type '<OMSTargetHandInfo>"
  "6de7a2c120d7244b9e7d251bfa2fa828")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSTargetHandInfo)))
  "Returns md5sum for a message object of type 'OMSTargetHandInfo"
  "6de7a2c120d7244b9e7d251bfa2fa828")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSTargetHandInfo>)))
  "Returns full string definition for message of type '<OMSTargetHandInfo>"
  (cl:format cl:nil "oms_msgs/OMSHandDetResult hand_det_result~%oms_msgs/OMSStaticGestureResult static_gesture_type~%oms_msgs/OMSDynamicGestureEvent dynamic_gesture_event~%~%================================================================================~%MSG: oms_msgs/OMSHandDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f hand_rect~%oms_msgs/OMSPoint2f[] hand_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSStaticGestureResult~%uint8 UNAVAILABLE = 0~%uint8 STATIC_GESTURE_FIST = 1~%uint8 STATIC_GESTURE_ONE = 2~%uint8 STATIC_GESTURE_TWO = 3~%uint8 STATIC_GESTURE_THREE = 4~%uint8 STATIC_GESTURE_FOUR = 5~%uint8 STATIC_GESTURE_FIVE = 6~%uint8 STATIC_GESTURE_SIX = 7~%uint8 STATIC_GESTURE_SEVEN = 8~%uint8 STATIC_GESTURE_EIGHT = 9~%uint8 STATIC_GESTURE_NINE = 10~%uint8 STATIC_GESTURE_OK = 11~%uint8 STATIC_GESTURE_THUMB_UP = 12~%uint8 STATIC_GESTURE_THUMB_LEFT = 13~%uint8 STATIC_GESTURE_THUMB_RIGHT = 14~%uint8 STATIC_GESTURE_THUMB_DOWN = 15~%uint8 STATIC_GESTURE_FINGER_LEFT = 16~%uint8 STATIC_GESTURE_FINGER_RIGHT = 17~%uint8 STATIC_GESTURE_FINGER_UP = 18~%uint8 STATIC_GESTURE_RESERVED1 = 19~%uint8 STATIC_GESTURE_RESERVED2 = 20~%uint8 STATIC_GESTURE_RESERVED3 = 21~%uint8 STATIC_GESTURE_RESERVED4 = 22~%uint8 STATIC_GESTURE_RESERVED5 = 23~%uint8 STATIC_GESTURE_OTHER = 24~%uint8 UNCERTAIN = 25~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSDynamicGestureEvent~%uint8 UNAVAILABLE = 0~%uint8 DYNAMIC_GESTURE_FINGER_LASER = 1~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT = 2~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT = 3~%uint8 DYNAMIC_GESTURE_PINCH = 4~%uint8 DYNAMIC_GESTURE_FIST = 5~%uint8 DYNAMIC_GESTURE_GRAB = 6~%uint8 DYNAMIC_GESTURE_PALM = 7~%uint8 DYNAMIC_GESTURE_OK = 8~%uint8 DYNAMIC_GESTURE_THUMBUP_CLICK = 9~%uint8 DYNAMIC_GESTURE_THUMBUP = 10~%uint8 DYNAMIC_GESTURE_GRAB_OR_FIST = 11~%uint8 DYNAMIC_GESTURE_RESERVED1 = 12~%uint8 DYNAMIC_GESTURE_RESERVED2 = 13~%uint8 DYNAMIC_GESTURE_RESERVED3 = 14~%uint8 DYNAMIC_GESTURE_RESERVED4 = 15~%uint8 DYNAMIC_GESTURE_RESERVED5 = 16~%uint8 UNCERTAIN = 17~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSTargetHandInfo)))
  "Returns full string definition for message of type 'OMSTargetHandInfo"
  (cl:format cl:nil "oms_msgs/OMSHandDetResult hand_det_result~%oms_msgs/OMSStaticGestureResult static_gesture_type~%oms_msgs/OMSDynamicGestureEvent dynamic_gesture_event~%~%================================================================================~%MSG: oms_msgs/OMSHandDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f hand_rect~%oms_msgs/OMSPoint2f[] hand_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSStaticGestureResult~%uint8 UNAVAILABLE = 0~%uint8 STATIC_GESTURE_FIST = 1~%uint8 STATIC_GESTURE_ONE = 2~%uint8 STATIC_GESTURE_TWO = 3~%uint8 STATIC_GESTURE_THREE = 4~%uint8 STATIC_GESTURE_FOUR = 5~%uint8 STATIC_GESTURE_FIVE = 6~%uint8 STATIC_GESTURE_SIX = 7~%uint8 STATIC_GESTURE_SEVEN = 8~%uint8 STATIC_GESTURE_EIGHT = 9~%uint8 STATIC_GESTURE_NINE = 10~%uint8 STATIC_GESTURE_OK = 11~%uint8 STATIC_GESTURE_THUMB_UP = 12~%uint8 STATIC_GESTURE_THUMB_LEFT = 13~%uint8 STATIC_GESTURE_THUMB_RIGHT = 14~%uint8 STATIC_GESTURE_THUMB_DOWN = 15~%uint8 STATIC_GESTURE_FINGER_LEFT = 16~%uint8 STATIC_GESTURE_FINGER_RIGHT = 17~%uint8 STATIC_GESTURE_FINGER_UP = 18~%uint8 STATIC_GESTURE_RESERVED1 = 19~%uint8 STATIC_GESTURE_RESERVED2 = 20~%uint8 STATIC_GESTURE_RESERVED3 = 21~%uint8 STATIC_GESTURE_RESERVED4 = 22~%uint8 STATIC_GESTURE_RESERVED5 = 23~%uint8 STATIC_GESTURE_OTHER = 24~%uint8 UNCERTAIN = 25~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSDynamicGestureEvent~%uint8 UNAVAILABLE = 0~%uint8 DYNAMIC_GESTURE_FINGER_LASER = 1~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT = 2~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT = 3~%uint8 DYNAMIC_GESTURE_PINCH = 4~%uint8 DYNAMIC_GESTURE_FIST = 5~%uint8 DYNAMIC_GESTURE_GRAB = 6~%uint8 DYNAMIC_GESTURE_PALM = 7~%uint8 DYNAMIC_GESTURE_OK = 8~%uint8 DYNAMIC_GESTURE_THUMBUP_CLICK = 9~%uint8 DYNAMIC_GESTURE_THUMBUP = 10~%uint8 DYNAMIC_GESTURE_GRAB_OR_FIST = 11~%uint8 DYNAMIC_GESTURE_RESERVED1 = 12~%uint8 DYNAMIC_GESTURE_RESERVED2 = 13~%uint8 DYNAMIC_GESTURE_RESERVED3 = 14~%uint8 DYNAMIC_GESTURE_RESERVED4 = 15~%uint8 DYNAMIC_GESTURE_RESERVED5 = 16~%uint8 UNCERTAIN = 17~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSTargetHandInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hand_det_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'static_gesture_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dynamic_gesture_event))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSTargetHandInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSTargetHandInfo
    (cl:cons ':hand_det_result (hand_det_result msg))
    (cl:cons ':static_gesture_type (static_gesture_type msg))
    (cl:cons ':dynamic_gesture_event (dynamic_gesture_event msg))
))
