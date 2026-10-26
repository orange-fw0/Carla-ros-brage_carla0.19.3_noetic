;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSGestureProperty)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSGestureProperty (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSGESTUREPROPERTY")
  (make-package "OMS_MSGS::OMSGESTUREPROPERTY"))

(in-package "ROS")
;;//! \htmlinclude OMSGestureProperty.msg.html


(defclass oms_msgs::OMSGestureProperty
  :super ros::object
  :slots (_det_roi _target_hand _all_hands_det_results ))

(defmethod oms_msgs::OMSGestureProperty
  (:init
   (&key
    ((:det_roi __det_roi) ())
    ((:target_hand __target_hand) (instance oms_msgs::OMSTargetHandInfo :init))
    ((:all_hands_det_results __all_hands_det_results) ())
    )
   (send-super :init)
   (setq _det_roi __det_roi)
   (setq _target_hand __target_hand)
   (setq _all_hands_det_results __all_hands_det_results)
   self)
  (:det_roi
   (&rest __det_roi)
   (if (keywordp (car __det_roi))
       (send* _det_roi __det_roi)
     (progn
       (if __det_roi (setq _det_roi (car __det_roi)))
       _det_roi)))
  (:target_hand
   (&rest __target_hand)
   (if (keywordp (car __target_hand))
       (send* _target_hand __target_hand)
     (progn
       (if __target_hand (setq _target_hand (car __target_hand)))
       _target_hand)))
  (:all_hands_det_results
   (&rest __all_hands_det_results)
   (if (keywordp (car __all_hands_det_results))
       (send* _all_hands_det_results __all_hands_det_results)
     (progn
       (if __all_hands_det_results (setq _all_hands_det_results (car __all_hands_det_results)))
       _all_hands_det_results)))
  (:serialization-length
   ()
   (+
    ;; oms_msgs/OMSRect2f[] _det_roi
    (apply #'+ (send-all _det_roi :serialization-length)) 4
    ;; oms_msgs/OMSTargetHandInfo _target_hand
    (send _target_hand :serialization-length)
    ;; oms_msgs/OMSHandDetResult[] _all_hands_det_results
    (apply #'+ (send-all _all_hands_det_results :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; oms_msgs/OMSRect2f[] _det_roi
     (write-long (length _det_roi) s)
     (dolist (elem _det_roi)
       (send elem :serialize s)
       )
     ;; oms_msgs/OMSTargetHandInfo _target_hand
       (send _target_hand :serialize s)
     ;; oms_msgs/OMSHandDetResult[] _all_hands_det_results
     (write-long (length _all_hands_det_results) s)
     (dolist (elem _all_hands_det_results)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; oms_msgs/OMSRect2f[] _det_roi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _det_roi (let (r) (dotimes (i n) (push (instance oms_msgs::OMSRect2f :init) r)) r))
     (dolist (elem- _det_roi)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; oms_msgs/OMSTargetHandInfo _target_hand
     (send _target_hand :deserialize buf ptr-) (incf ptr- (send _target_hand :serialization-length))
   ;; oms_msgs/OMSHandDetResult[] _all_hands_det_results
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _all_hands_det_results (let (r) (dotimes (i n) (push (instance oms_msgs::OMSHandDetResult :init) r)) r))
     (dolist (elem- _all_hands_det_results)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get oms_msgs::OMSGestureProperty :md5sum-) "44bee6b775e36ff69aa69a355c6d7346")
(setf (get oms_msgs::OMSGestureProperty :datatype-) "oms_msgs/OMSGestureProperty")
(setf (get oms_msgs::OMSGestureProperty :definition-)
      "oms_msgs/OMSRect2f[] det_roi
oms_msgs/OMSTargetHandInfo target_hand
oms_msgs/OMSHandDetResult[] all_hands_det_results

================================================================================
MSG: oms_msgs/OMSRect2f
float32 left
float32 top
float32 right
float32 bottom
float32 score

================================================================================
MSG: oms_msgs/OMSTargetHandInfo
oms_msgs/OMSHandDetResult hand_det_result
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



(provide :oms_msgs/OMSGestureProperty "44bee6b775e36ff69aa69a355c6d7346")


