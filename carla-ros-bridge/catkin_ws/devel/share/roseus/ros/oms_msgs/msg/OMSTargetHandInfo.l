;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSTargetHandInfo)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSTargetHandInfo (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSTARGETHANDINFO")
  (make-package "OMS_MSGS::OMSTARGETHANDINFO"))

(in-package "ROS")
;;//! \htmlinclude OMSTargetHandInfo.msg.html


(defclass oms_msgs::OMSTargetHandInfo
  :super ros::object
  :slots (_hand_det_result _static_gesture_type _dynamic_gesture_event ))

(defmethod oms_msgs::OMSTargetHandInfo
  (:init
   (&key
    ((:hand_det_result __hand_det_result) (instance oms_msgs::OMSHandDetResult :init))
    ((:static_gesture_type __static_gesture_type) (instance oms_msgs::OMSStaticGestureResult :init))
    ((:dynamic_gesture_event __dynamic_gesture_event) (instance oms_msgs::OMSDynamicGestureEvent :init))
    )
   (send-super :init)
   (setq _hand_det_result __hand_det_result)
   (setq _static_gesture_type __static_gesture_type)
   (setq _dynamic_gesture_event __dynamic_gesture_event)
   self)
  (:hand_det_result
   (&rest __hand_det_result)
   (if (keywordp (car __hand_det_result))
       (send* _hand_det_result __hand_det_result)
     (progn
       (if __hand_det_result (setq _hand_det_result (car __hand_det_result)))
       _hand_det_result)))
  (:static_gesture_type
   (&rest __static_gesture_type)
   (if (keywordp (car __static_gesture_type))
       (send* _static_gesture_type __static_gesture_type)
     (progn
       (if __static_gesture_type (setq _static_gesture_type (car __static_gesture_type)))
       _static_gesture_type)))
  (:dynamic_gesture_event
   (&rest __dynamic_gesture_event)
   (if (keywordp (car __dynamic_gesture_event))
       (send* _dynamic_gesture_event __dynamic_gesture_event)
     (progn
       (if __dynamic_gesture_event (setq _dynamic_gesture_event (car __dynamic_gesture_event)))
       _dynamic_gesture_event)))
  (:serialization-length
   ()
   (+
    ;; oms_msgs/OMSHandDetResult _hand_det_result
    (send _hand_det_result :serialization-length)
    ;; oms_msgs/OMSStaticGestureResult _static_gesture_type
    (send _static_gesture_type :serialization-length)
    ;; oms_msgs/OMSDynamicGestureEvent _dynamic_gesture_event
    (send _dynamic_gesture_event :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; oms_msgs/OMSHandDetResult _hand_det_result
       (send _hand_det_result :serialize s)
     ;; oms_msgs/OMSStaticGestureResult _static_gesture_type
       (send _static_gesture_type :serialize s)
     ;; oms_msgs/OMSDynamicGestureEvent _dynamic_gesture_event
       (send _dynamic_gesture_event :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; oms_msgs/OMSHandDetResult _hand_det_result
     (send _hand_det_result :deserialize buf ptr-) (incf ptr- (send _hand_det_result :serialization-length))
   ;; oms_msgs/OMSStaticGestureResult _static_gesture_type
     (send _static_gesture_type :deserialize buf ptr-) (incf ptr- (send _static_gesture_type :serialization-length))
   ;; oms_msgs/OMSDynamicGestureEvent _dynamic_gesture_event
     (send _dynamic_gesture_event :deserialize buf ptr-) (incf ptr- (send _dynamic_gesture_event :serialization-length))
   ;;
   self)
  )

(setf (get oms_msgs::OMSTargetHandInfo :md5sum-) "6de7a2c120d7244b9e7d251bfa2fa828")
(setf (get oms_msgs::OMSTargetHandInfo :datatype-) "oms_msgs/OMSTargetHandInfo")
(setf (get oms_msgs::OMSTargetHandInfo :definition-)
      "oms_msgs/OMSHandDetResult hand_det_result
oms_msgs/OMSStaticGestureResult static_gesture_type
oms_msgs/OMSDynamicGestureEvent dynamic_gesture_event

================================================================================
MSG: oms_msgs/OMSHandDetResult
uint8 UNAVAILABLE = 0
uint8 AVAILABLE = 1
uint8 UNCERTAIN = 2
uint8 value
oms_msgs/OMSRect2f hand_rect
oms_msgs/OMSPoint2f[] hand_keypoints

================================================================================
MSG: oms_msgs/OMSRect2f
float32 left
float32 top
float32 right
float32 bottom
float32 score

================================================================================
MSG: oms_msgs/OMSPoint2f
float32 x
float32 y
float32 score

================================================================================
MSG: oms_msgs/OMSStaticGestureResult
uint8 UNAVAILABLE = 0
uint8 STATIC_GESTURE_FIST = 1
uint8 STATIC_GESTURE_ONE = 2
uint8 STATIC_GESTURE_TWO = 3
uint8 STATIC_GESTURE_THREE = 4
uint8 STATIC_GESTURE_FOUR = 5
uint8 STATIC_GESTURE_FIVE = 6
uint8 STATIC_GESTURE_SIX = 7
uint8 STATIC_GESTURE_SEVEN = 8
uint8 STATIC_GESTURE_EIGHT = 9
uint8 STATIC_GESTURE_NINE = 10
uint8 STATIC_GESTURE_OK = 11
uint8 STATIC_GESTURE_THUMB_UP = 12
uint8 STATIC_GESTURE_THUMB_LEFT = 13
uint8 STATIC_GESTURE_THUMB_RIGHT = 14
uint8 STATIC_GESTURE_THUMB_DOWN = 15
uint8 STATIC_GESTURE_FINGER_LEFT = 16
uint8 STATIC_GESTURE_FINGER_RIGHT = 17
uint8 STATIC_GESTURE_FINGER_UP = 18
uint8 STATIC_GESTURE_RESERVED1 = 19
uint8 STATIC_GESTURE_RESERVED2 = 20
uint8 STATIC_GESTURE_RESERVED3 = 21
uint8 STATIC_GESTURE_RESERVED4 = 22
uint8 STATIC_GESTURE_RESERVED5 = 23
uint8 STATIC_GESTURE_OTHER = 24
uint8 UNCERTAIN = 25
uint8 value
float32 score

================================================================================
MSG: oms_msgs/OMSDynamicGestureEvent
uint8 UNAVAILABLE = 0
uint8 DYNAMIC_GESTURE_FINGER_LASER = 1
uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT = 2
uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT = 3
uint8 DYNAMIC_GESTURE_PINCH = 4
uint8 DYNAMIC_GESTURE_FIST = 5
uint8 DYNAMIC_GESTURE_GRAB = 6
uint8 DYNAMIC_GESTURE_PALM = 7
uint8 DYNAMIC_GESTURE_OK = 8
uint8 DYNAMIC_GESTURE_THUMBUP_CLICK = 9
uint8 DYNAMIC_GESTURE_THUMBUP = 10
uint8 DYNAMIC_GESTURE_GRAB_OR_FIST = 11
uint8 DYNAMIC_GESTURE_RESERVED1 = 12
uint8 DYNAMIC_GESTURE_RESERVED2 = 13
uint8 DYNAMIC_GESTURE_RESERVED3 = 14
uint8 DYNAMIC_GESTURE_RESERVED4 = 15
uint8 DYNAMIC_GESTURE_RESERVED5 = 16
uint8 UNCERTAIN = 17
uint8 value
float32 score
uint64 start_time
uint64 end_time

")



(provide :oms_msgs/OMSTargetHandInfo "6de7a2c120d7244b9e7d251bfa2fa828")


