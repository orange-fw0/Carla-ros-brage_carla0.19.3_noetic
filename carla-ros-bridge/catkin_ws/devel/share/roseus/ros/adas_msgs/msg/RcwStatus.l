;; Auto-generated. Do not edit!


(when (boundp 'adas_msgs::RcwStatus)
  (if (not (find-package "ADAS_MSGS"))
    (make-package "ADAS_MSGS"))
  (shadow 'RcwStatus (find-package "ADAS_MSGS")))
(unless (find-package "ADAS_MSGS::RCWSTATUS")
  (make-package "ADAS_MSGS::RCWSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RcwStatus.msg.html


(defclass adas_msgs::RcwStatus
  :super ros::object
  :slots (_rcw_state _rlw_state _plw_state ))

(defmethod adas_msgs::RcwStatus
  (:init
   (&key
    ((:rcw_state __rcw_state) 0)
    ((:rlw_state __rlw_state) 0)
    ((:plw_state __plw_state) 0)
    )
   (send-super :init)
   (setq _rcw_state (round __rcw_state))
   (setq _rlw_state (round __rlw_state))
   (setq _plw_state (round __plw_state))
   self)
  (:rcw_state
   (&optional __rcw_state)
   (if __rcw_state (setq _rcw_state __rcw_state)) _rcw_state)
  (:rlw_state
   (&optional __rlw_state)
   (if __rlw_state (setq _rlw_state __rlw_state)) _rlw_state)
  (:plw_state
   (&optional __plw_state)
   (if __plw_state (setq _plw_state __plw_state)) _plw_state)
  (:serialization-length
   ()
   (+
    ;; uint8 _rcw_state
    1
    ;; uint8 _rlw_state
    1
    ;; uint8 _plw_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _rcw_state
       (write-byte _rcw_state s)
     ;; uint8 _rlw_state
       (write-byte _rlw_state s)
     ;; uint8 _plw_state
       (write-byte _plw_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _rcw_state
     (setq _rcw_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rlw_state
     (setq _rlw_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _plw_state
     (setq _plw_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get adas_msgs::RcwStatus :md5sum-) "be1d15965bf623787477c33874ccdb3d")
(setf (get adas_msgs::RcwStatus :datatype-) "adas_msgs/RcwStatus")
(setf (get adas_msgs::RcwStatus :definition-)
      "uint8 rcw_state
uint8 rlw_state
uint8 plw_state

")



(provide :adas_msgs/RcwStatus "be1d15965bf623787477c33874ccdb3d")


