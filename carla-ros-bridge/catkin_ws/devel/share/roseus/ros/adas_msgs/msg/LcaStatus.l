;; Auto-generated. Do not edit!


(when (boundp 'adas_msgs::LcaStatus)
  (if (not (find-package "ADAS_MSGS"))
    (make-package "ADAS_MSGS"))
  (shadow 'LcaStatus (find-package "ADAS_MSGS")))
(unless (find-package "ADAS_MSGS::LCASTATUS")
  (make-package "ADAS_MSGS::LCASTATUS"))

(in-package "ROS")
;;//! \htmlinclude LcaStatus.msg.html


(defclass adas_msgs::LcaStatus
  :super ros::object
  :slots (_left_state _right_state ))

(defmethod adas_msgs::LcaStatus
  (:init
   (&key
    ((:left_state __left_state) 0)
    ((:right_state __right_state) 0)
    )
   (send-super :init)
   (setq _left_state (round __left_state))
   (setq _right_state (round __right_state))
   self)
  (:left_state
   (&optional __left_state)
   (if __left_state (setq _left_state __left_state)) _left_state)
  (:right_state
   (&optional __right_state)
   (if __right_state (setq _right_state __right_state)) _right_state)
  (:serialization-length
   ()
   (+
    ;; uint8 _left_state
    1
    ;; uint8 _right_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _left_state
       (write-byte _left_state s)
     ;; uint8 _right_state
       (write-byte _right_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _left_state
     (setq _left_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right_state
     (setq _right_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get adas_msgs::LcaStatus :md5sum-) "2c8ee4997687f4f1b0e5cdcde2cac0d1")
(setf (get adas_msgs::LcaStatus :datatype-) "adas_msgs/LcaStatus")
(setf (get adas_msgs::LcaStatus :definition-)
      "uint8 left_state
uint8 right_state

")



(provide :adas_msgs/LcaStatus "2c8ee4997687f4f1b0e5cdcde2cac0d1")


