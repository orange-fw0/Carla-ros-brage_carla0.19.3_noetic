;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::TrafficJam)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'TrafficJam (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::TRAFFICJAM")
  (make-package "TBT_MSGS::TRAFFICJAM"))

(in-package "ROS")
;;//! \htmlinclude TrafficJam.msg.html


(defclass tbt_msgs::TrafficJam
  :super ros::object
  :slots (_status _length _distance_to_jam ))

(defmethod tbt_msgs::TrafficJam
  (:init
   (&key
    ((:status __status) (instance tbt_msgs::TrafficJamStatusEnum :init))
    ((:length __length) 0)
    ((:distance_to_jam __distance_to_jam) 0)
    )
   (send-super :init)
   (setq _status __status)
   (setq _length (round __length))
   (setq _distance_to_jam (round __distance_to_jam))
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:distance_to_jam
   (&optional __distance_to_jam)
   (if __distance_to_jam (setq _distance_to_jam __distance_to_jam)) _distance_to_jam)
  (:serialization-length
   ()
   (+
    ;; tbt_msgs/TrafficJamStatusEnum _status
    (send _status :serialization-length)
    ;; uint32 _length
    4
    ;; uint32 _distance_to_jam
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tbt_msgs/TrafficJamStatusEnum _status
       (send _status :serialize s)
     ;; uint32 _length
       (write-long _length s)
     ;; uint32 _distance_to_jam
       (write-long _distance_to_jam s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tbt_msgs/TrafficJamStatusEnum _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; uint32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _distance_to_jam
     (setq _distance_to_jam (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tbt_msgs::TrafficJam :md5sum-) "5f76f89549e15659ef7306ece9884c75")
(setf (get tbt_msgs::TrafficJam :datatype-) "tbt_msgs/TrafficJam")
(setf (get tbt_msgs::TrafficJam :definition-)
      "tbt_msgs/TrafficJamStatusEnum status
uint32 length
uint32 distance_to_jam

================================================================================
MSG: tbt_msgs/TrafficJamStatusEnum
uint8 Unkwon = 0
uint8 TrafStsFast = 1
uint8 TrafStsSlow = 2
uint8 TrafStsJamed = 3
uint8 TrafStsJamedBad = 4
uint8 value

")



(provide :tbt_msgs/TrafficJam "5f76f89549e15659ef7306ece9884c75")


