;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSSetSpeedCmd)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSSetSpeedCmd (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSSETSPEEDCMD")
  (make-package "TOS_MSGS::TOSSETSPEEDCMD"))

(in-package "ROS")
;;//! \htmlinclude TOSSetSpeedCmd.msg.html


(defclass tos_msgs::TOSSetSpeedCmd
  :super ros::object
  :slots (_available _tos_set_speed ))

(defmethod tos_msgs::TOSSetSpeedCmd
  (:init
   (&key
    ((:available __available) 0)
    ((:tos_set_speed __tos_set_speed) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _tos_set_speed (float __tos_set_speed))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:tos_set_speed
   (&optional __tos_set_speed)
   (if __tos_set_speed (setq _tos_set_speed __tos_set_speed)) _tos_set_speed)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float64 _tos_set_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float64 _tos_set_speed
       (sys::poke _tos_set_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _tos_set_speed
     (setq _tos_set_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tos_msgs::TOSSetSpeedCmd :md5sum-) "f16660392dbc6c56c5fcd09450314119")
(setf (get tos_msgs::TOSSetSpeedCmd :datatype-) "tos_msgs/TOSSetSpeedCmd")
(setf (get tos_msgs::TOSSetSpeedCmd :definition-)
      "uint8 available
float64 tos_set_speed

")



(provide :tos_msgs/TOSSetSpeedCmd "f16660392dbc6c56c5fcd09450314119")


