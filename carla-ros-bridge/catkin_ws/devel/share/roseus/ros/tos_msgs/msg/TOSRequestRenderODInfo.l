;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSRequestRenderODInfo)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSRequestRenderODInfo (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSREQUESTRENDERODINFO")
  (make-package "TOS_MSGS::TOSREQUESTRENDERODINFO"))

(in-package "ROS")
;;//! \htmlinclude TOSRequestRenderODInfo.msg.html


(defclass tos_msgs::TOSRequestRenderODInfo
  :super ros::object
  :slots (_id _target_s _target_l ))

(defmethod tos_msgs::TOSRequestRenderODInfo
  (:init
   (&key
    ((:id __id) 0)
    ((:target_s __target_s) 0.0)
    ((:target_l __target_l) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _target_s (float __target_s))
   (setq _target_l (float __target_l))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:target_s
   (&optional __target_s)
   (if __target_s (setq _target_s __target_s)) _target_s)
  (:target_l
   (&optional __target_l)
   (if __target_l (setq _target_l __target_l)) _target_l)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; float64 _target_s
    8
    ;; float64 _target_l
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; float64 _target_s
       (sys::poke _target_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_l
       (sys::poke _target_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _target_s
     (setq _target_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_l
     (setq _target_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tos_msgs::TOSRequestRenderODInfo :md5sum-) "8a972246949806bb2f0407b295673a74")
(setf (get tos_msgs::TOSRequestRenderODInfo :datatype-) "tos_msgs/TOSRequestRenderODInfo")
(setf (get tos_msgs::TOSRequestRenderODInfo :definition-)
      "uint32 id
float64 target_s
float64 target_l

")



(provide :tos_msgs/TOSRequestRenderODInfo "8a972246949806bb2f0407b295673a74")


