;; Auto-generated. Do not edit!


(when (boundp 'adas_msgs::DowStatus)
  (if (not (find-package "ADAS_MSGS"))
    (make-package "ADAS_MSGS"))
  (shadow 'DowStatus (find-package "ADAS_MSGS")))
(unless (find-package "ADAS_MSGS::DOWSTATUS")
  (make-package "ADAS_MSGS::DOWSTATUS"))

(in-package "ROS")
;;//! \htmlinclude DowStatus.msg.html


(defclass adas_msgs::DowStatus
  :super ros::object
  :slots (_left_front_state _left_rear_state _right_front_state _right_rear_state ))

(defmethod adas_msgs::DowStatus
  (:init
   (&key
    ((:left_front_state __left_front_state) 0)
    ((:left_rear_state __left_rear_state) 0)
    ((:right_front_state __right_front_state) 0)
    ((:right_rear_state __right_rear_state) 0)
    )
   (send-super :init)
   (setq _left_front_state (round __left_front_state))
   (setq _left_rear_state (round __left_rear_state))
   (setq _right_front_state (round __right_front_state))
   (setq _right_rear_state (round __right_rear_state))
   self)
  (:left_front_state
   (&optional __left_front_state)
   (if __left_front_state (setq _left_front_state __left_front_state)) _left_front_state)
  (:left_rear_state
   (&optional __left_rear_state)
   (if __left_rear_state (setq _left_rear_state __left_rear_state)) _left_rear_state)
  (:right_front_state
   (&optional __right_front_state)
   (if __right_front_state (setq _right_front_state __right_front_state)) _right_front_state)
  (:right_rear_state
   (&optional __right_rear_state)
   (if __right_rear_state (setq _right_rear_state __right_rear_state)) _right_rear_state)
  (:serialization-length
   ()
   (+
    ;; uint8 _left_front_state
    1
    ;; uint8 _left_rear_state
    1
    ;; uint8 _right_front_state
    1
    ;; uint8 _right_rear_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _left_front_state
       (write-byte _left_front_state s)
     ;; uint8 _left_rear_state
       (write-byte _left_rear_state s)
     ;; uint8 _right_front_state
       (write-byte _right_front_state s)
     ;; uint8 _right_rear_state
       (write-byte _right_rear_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _left_front_state
     (setq _left_front_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _left_rear_state
     (setq _left_rear_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right_front_state
     (setq _right_front_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right_rear_state
     (setq _right_rear_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get adas_msgs::DowStatus :md5sum-) "9cb3da686013d7fd71bdceb5c759fcd2")
(setf (get adas_msgs::DowStatus :datatype-) "adas_msgs/DowStatus")
(setf (get adas_msgs::DowStatus :definition-)
      "uint8 left_front_state
uint8 left_rear_state
uint8 right_front_state
uint8 right_rear_state

")



(provide :adas_msgs/DowStatus "9cb3da686013d7fd71bdceb5c759fcd2")


