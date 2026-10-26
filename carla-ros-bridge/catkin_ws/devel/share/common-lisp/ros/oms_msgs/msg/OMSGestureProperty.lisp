; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSGestureProperty.msg.html

(cl:defclass <OMSGestureProperty> (roslisp-msg-protocol:ros-message)
  ((det_roi
    :reader det_roi
    :initarg :det_roi
    :type (cl:vector oms_msgs-msg:OMSRect2f)
   :initform (cl:make-array 0 :element-type 'oms_msgs-msg:OMSRect2f :initial-element (cl:make-instance 'oms_msgs-msg:OMSRect2f)))
   (target_hand
    :reader target_hand
    :initarg :target_hand
    :type oms_msgs-msg:OMSTargetHandInfo
    :initform (cl:make-instance 'oms_msgs-msg:OMSTargetHandInfo))
   (all_hands_det_results
    :reader all_hands_det_results
    :initarg :all_hands_det_results
    :type (cl:vector oms_msgs-msg:OMSHandDetResult)
   :initform (cl:make-array 0 :element-type 'oms_msgs-msg:OMSHandDetResult :initial-element (cl:make-instance 'oms_msgs-msg:OMSHandDetResult))))
)

(cl:defclass OMSGestureProperty (<OMSGestureProperty>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSGestureProperty>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSGestureProperty)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSGestureProperty> is deprecated: use oms_msgs-msg:OMSGestureProperty instead.")))

(cl:ensure-generic-function 'det_roi-val :lambda-list '(m))
(cl:defmethod det_roi-val ((m <OMSGestureProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:det_roi-val is deprecated.  Use oms_msgs-msg:det_roi instead.")
  (det_roi m))

(cl:ensure-generic-function 'target_hand-val :lambda-list '(m))
(cl:defmethod target_hand-val ((m <OMSGestureProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:target_hand-val is deprecated.  Use oms_msgs-msg:target_hand instead.")
  (target_hand m))

(cl:ensure-generic-function 'all_hands_det_results-val :lambda-list '(m))
(cl:defmethod all_hands_det_results-val ((m <OMSGestureProperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:all_hands_det_results-val is deprecated.  Use oms_msgs-msg:all_hands_det_results instead.")
  (all_hands_det_results m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSGestureProperty>) ostream)
  "Serializes a message object of type '<OMSGestureProperty>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'det_roi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'det_roi))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_hand) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'all_hands_det_results))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'all_hands_det_results))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSGestureProperty>) istream)
  "Deserializes a message object of type '<OMSGestureProperty>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_hand) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'all_hands_det_results) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'all_hands_det_results)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'oms_msgs-msg:OMSHandDetResult))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSGestureProperty>)))
  "Returns string type for a message object of type '<OMSGestureProperty>"
  "oms_msgs/OMSGestureProperty")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSGestureProperty)))
  "Returns string type for a message object of type 'OMSGestureProperty"
  "oms_msgs/OMSGestureProperty")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSGestureProperty>)))
  "Returns md5sum for a message object of type '<OMSGestureProperty>"
  "44bee6b775e36ff69aa69a355c6d7346")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSGestureProperty)))
  "Returns md5sum for a message object of type 'OMSGestureProperty"
  "44bee6b775e36ff69aa69a355c6d7346")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSGestureProperty>)))
  "Returns full string definition for message of type '<OMSGestureProperty>"
  (cl:format cl:nil "oms_msgs/OMSRect2f[] det_roi~%oms_msgs/OMSTargetHandInfo target_hand~%oms_msgs/OMSHandDetResult[] all_hands_det_results~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSTargetHandInfo~%oms_msgs/OMSHandDetResult hand_det_result~%oms_msgs/OMSStaticGestureResult static_gesture_type~%oms_msgs/OMSDynamicGestureEvent dynamic_gesture_event~%~%================================================================================~%MSG: oms_msgs/OMSHandDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f hand_rect~%oms_msgs/OMSPoint2f[] hand_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSStaticGestureResult~%uint8 UNAVAILABLE = 0~%uint8 STATIC_GESTURE_FIST = 1~%uint8 STATIC_GESTURE_ONE = 2~%uint8 STATIC_GESTURE_TWO = 3~%uint8 STATIC_GESTURE_THREE = 4~%uint8 STATIC_GESTURE_FOUR = 5~%uint8 STATIC_GESTURE_FIVE = 6~%uint8 STATIC_GESTURE_SIX = 7~%uint8 STATIC_GESTURE_SEVEN = 8~%uint8 STATIC_GESTURE_EIGHT = 9~%uint8 STATIC_GESTURE_NINE = 10~%uint8 STATIC_GESTURE_OK = 11~%uint8 STATIC_GESTURE_THUMB_UP = 12~%uint8 STATIC_GESTURE_THUMB_LEFT = 13~%uint8 STATIC_GESTURE_THUMB_RIGHT = 14~%uint8 STATIC_GESTURE_THUMB_DOWN = 15~%uint8 STATIC_GESTURE_FINGER_LEFT = 16~%uint8 STATIC_GESTURE_FINGER_RIGHT = 17~%uint8 STATIC_GESTURE_FINGER_UP = 18~%uint8 STATIC_GESTURE_RESERVED1 = 19~%uint8 STATIC_GESTURE_RESERVED2 = 20~%uint8 STATIC_GESTURE_RESERVED3 = 21~%uint8 STATIC_GESTURE_RESERVED4 = 22~%uint8 STATIC_GESTURE_RESERVED5 = 23~%uint8 STATIC_GESTURE_OTHER = 24~%uint8 UNCERTAIN = 25~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSDynamicGestureEvent~%uint8 UNAVAILABLE = 0~%uint8 DYNAMIC_GESTURE_FINGER_LASER = 1~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT = 2~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT = 3~%uint8 DYNAMIC_GESTURE_PINCH = 4~%uint8 DYNAMIC_GESTURE_FIST = 5~%uint8 DYNAMIC_GESTURE_GRAB = 6~%uint8 DYNAMIC_GESTURE_PALM = 7~%uint8 DYNAMIC_GESTURE_OK = 8~%uint8 DYNAMIC_GESTURE_THUMBUP_CLICK = 9~%uint8 DYNAMIC_GESTURE_THUMBUP = 10~%uint8 DYNAMIC_GESTURE_GRAB_OR_FIST = 11~%uint8 DYNAMIC_GESTURE_RESERVED1 = 12~%uint8 DYNAMIC_GESTURE_RESERVED2 = 13~%uint8 DYNAMIC_GESTURE_RESERVED3 = 14~%uint8 DYNAMIC_GESTURE_RESERVED4 = 15~%uint8 DYNAMIC_GESTURE_RESERVED5 = 16~%uint8 UNCERTAIN = 17~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSGestureProperty)))
  "Returns full string definition for message of type 'OMSGestureProperty"
  (cl:format cl:nil "oms_msgs/OMSRect2f[] det_roi~%oms_msgs/OMSTargetHandInfo target_hand~%oms_msgs/OMSHandDetResult[] all_hands_det_results~%~%================================================================================~%MSG: oms_msgs/OMSRect2f~%float32 left~%float32 top~%float32 right~%float32 bottom~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSTargetHandInfo~%oms_msgs/OMSHandDetResult hand_det_result~%oms_msgs/OMSStaticGestureResult static_gesture_type~%oms_msgs/OMSDynamicGestureEvent dynamic_gesture_event~%~%================================================================================~%MSG: oms_msgs/OMSHandDetResult~%uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 UNCERTAIN = 2~%uint8 value~%oms_msgs/OMSRect2f hand_rect~%oms_msgs/OMSPoint2f[] hand_keypoints~%~%================================================================================~%MSG: oms_msgs/OMSPoint2f~%float32 x~%float32 y~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSStaticGestureResult~%uint8 UNAVAILABLE = 0~%uint8 STATIC_GESTURE_FIST = 1~%uint8 STATIC_GESTURE_ONE = 2~%uint8 STATIC_GESTURE_TWO = 3~%uint8 STATIC_GESTURE_THREE = 4~%uint8 STATIC_GESTURE_FOUR = 5~%uint8 STATIC_GESTURE_FIVE = 6~%uint8 STATIC_GESTURE_SIX = 7~%uint8 STATIC_GESTURE_SEVEN = 8~%uint8 STATIC_GESTURE_EIGHT = 9~%uint8 STATIC_GESTURE_NINE = 10~%uint8 STATIC_GESTURE_OK = 11~%uint8 STATIC_GESTURE_THUMB_UP = 12~%uint8 STATIC_GESTURE_THUMB_LEFT = 13~%uint8 STATIC_GESTURE_THUMB_RIGHT = 14~%uint8 STATIC_GESTURE_THUMB_DOWN = 15~%uint8 STATIC_GESTURE_FINGER_LEFT = 16~%uint8 STATIC_GESTURE_FINGER_RIGHT = 17~%uint8 STATIC_GESTURE_FINGER_UP = 18~%uint8 STATIC_GESTURE_RESERVED1 = 19~%uint8 STATIC_GESTURE_RESERVED2 = 20~%uint8 STATIC_GESTURE_RESERVED3 = 21~%uint8 STATIC_GESTURE_RESERVED4 = 22~%uint8 STATIC_GESTURE_RESERVED5 = 23~%uint8 STATIC_GESTURE_OTHER = 24~%uint8 UNCERTAIN = 25~%uint8 value~%float32 score~%~%================================================================================~%MSG: oms_msgs/OMSDynamicGestureEvent~%uint8 UNAVAILABLE = 0~%uint8 DYNAMIC_GESTURE_FINGER_LASER = 1~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT = 2~%uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT = 3~%uint8 DYNAMIC_GESTURE_PINCH = 4~%uint8 DYNAMIC_GESTURE_FIST = 5~%uint8 DYNAMIC_GESTURE_GRAB = 6~%uint8 DYNAMIC_GESTURE_PALM = 7~%uint8 DYNAMIC_GESTURE_OK = 8~%uint8 DYNAMIC_GESTURE_THUMBUP_CLICK = 9~%uint8 DYNAMIC_GESTURE_THUMBUP = 10~%uint8 DYNAMIC_GESTURE_GRAB_OR_FIST = 11~%uint8 DYNAMIC_GESTURE_RESERVED1 = 12~%uint8 DYNAMIC_GESTURE_RESERVED2 = 13~%uint8 DYNAMIC_GESTURE_RESERVED3 = 14~%uint8 DYNAMIC_GESTURE_RESERVED4 = 15~%uint8 DYNAMIC_GESTURE_RESERVED5 = 16~%uint8 UNCERTAIN = 17~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSGestureProperty>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'det_roi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_hand))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'all_hands_det_results) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSGestureProperty>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSGestureProperty
    (cl:cons ':det_roi (det_roi msg))
    (cl:cons ':target_hand (target_hand msg))
    (cl:cons ':all_hands_det_results (all_hands_det_results msg))
))
