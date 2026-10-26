;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::NaviRoadTrafficLightSts)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'NaviRoadTrafficLightSts (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::NAVIROADTRAFFICLIGHTSTS")
  (make-package "TBT_MSGS::NAVIROADTRAFFICLIGHTSTS"))

(in-package "ROS")
;;//! \htmlinclude NaviRoadTrafficLightSts.msg.html


(defclass tbt_msgs::NaviRoadTrafficLightSts
  :super ros::object
  :slots (_status _dist ))

(defmethod tbt_msgs::NaviRoadTrafficLightSts
  (:init
   (&key
    ((:status __status) 0)
    ((:dist __dist) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _dist (round __dist))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; uint32 _dist
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; uint32 _dist
       (write-long _dist s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _dist
     (setq _dist (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tbt_msgs::NaviRoadTrafficLightSts :md5sum-) "90991e479aa00a5c52f481f864cffc23")
(setf (get tbt_msgs::NaviRoadTrafficLightSts :datatype-) "tbt_msgs/NaviRoadTrafficLightSts")
(setf (get tbt_msgs::NaviRoadTrafficLightSts :definition-)
      "uint8 status
uint32 dist

")



(provide :tbt_msgs/NaviRoadTrafficLightSts "90991e479aa00a5c52f481f864cffc23")


