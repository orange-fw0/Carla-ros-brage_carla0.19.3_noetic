;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ParkOutInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ParkOutInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PARKOUTINFO")
  (make-package "PLANNING_MSGS::PARKOUTINFO"))

(in-package "ROS")
;;//! \htmlinclude ParkOutInfo.msg.html


(defclass planning_msgs::ParkOutInfo
  :super ros::object
  :slots (_available_direction _recommend_direction _disable_reason _reached_take_over_point _reserved ))

(defmethod planning_msgs::ParkOutInfo
  (:init
   (&key
    ((:available_direction __available_direction) 0)
    ((:recommend_direction __recommend_direction) 0)
    ((:disable_reason __disable_reason) (instance planning_msgs::ParkOutDisableReason :init))
    ((:reached_take_over_point __reached_take_over_point) nil)
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _available_direction (round __available_direction))
   (setq _recommend_direction (round __recommend_direction))
   (setq _disable_reason __disable_reason)
   (setq _reached_take_over_point __reached_take_over_point)
   (setq _reserved (string __reserved))
   self)
  (:available_direction
   (&optional __available_direction)
   (if __available_direction (setq _available_direction __available_direction)) _available_direction)
  (:recommend_direction
   (&optional __recommend_direction)
   (if __recommend_direction (setq _recommend_direction __recommend_direction)) _recommend_direction)
  (:disable_reason
   (&rest __disable_reason)
   (if (keywordp (car __disable_reason))
       (send* _disable_reason __disable_reason)
     (progn
       (if __disable_reason (setq _disable_reason (car __disable_reason)))
       _disable_reason)))
  (:reached_take_over_point
   (&optional (__reached_take_over_point :null))
   (if (not (eq __reached_take_over_point :null)) (setq _reached_take_over_point __reached_take_over_point)) _reached_take_over_point)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint32 _available_direction
    4
    ;; uint32 _recommend_direction
    4
    ;; planning_msgs/ParkOutDisableReason _disable_reason
    (send _disable_reason :serialization-length)
    ;; bool _reached_take_over_point
    1
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _available_direction
       (write-long _available_direction s)
     ;; uint32 _recommend_direction
       (write-long _recommend_direction s)
     ;; planning_msgs/ParkOutDisableReason _disable_reason
       (send _disable_reason :serialize s)
     ;; bool _reached_take_over_point
       (if _reached_take_over_point (write-byte -1 s) (write-byte 0 s))
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _available_direction
     (setq _available_direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _recommend_direction
     (setq _recommend_direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; planning_msgs/ParkOutDisableReason _disable_reason
     (send _disable_reason :deserialize buf ptr-) (incf ptr- (send _disable_reason :serialization-length))
   ;; bool _reached_take_over_point
     (setq _reached_take_over_point (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::ParkOutInfo :md5sum-) "4c6c29f45111b1842a48d69a77ddff9a")
(setf (get planning_msgs::ParkOutInfo :datatype-) "planning_msgs/ParkOutInfo")
(setf (get planning_msgs::ParkOutInfo :definition-)
      "uint32 available_direction
uint32 recommend_direction
planning_msgs/ParkOutDisableReason disable_reason
bool reached_take_over_point
string reserved

================================================================================
MSG: planning_msgs/ParkOutDisableReason
uint32 NONE = 0
uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1
uint32 DISABLED_NON_PARALLEL = 2
uint32 NOT_IN_PARKING_SLOT = 3
uint32 PARKOUT_NOT_READY = 4
uint32 SLOT_TOO_SMALL = 5
uint32 value

")



(provide :planning_msgs/ParkOutInfo "4c6c29f45111b1842a48d69a77ddff9a")


