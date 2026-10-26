;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSRequestRenderLDInfo)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSRequestRenderLDInfo (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSREQUESTRENDERLDINFO")
  (make-package "TOS_MSGS::TOSREQUESTRENDERLDINFO"))

(in-package "ROS")
;;//! \htmlinclude TOSRequestRenderLDInfo.msg.html


(defclass tos_msgs::TOSRequestRenderLDInfo
  :super ros::object
  :slots (_lane_id ))

(defmethod tos_msgs::TOSRequestRenderLDInfo
  (:init
   (&key
    ((:lane_id __lane_id) 0)
    )
   (send-super :init)
   (setq _lane_id (round __lane_id))
   self)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _lane_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _lane_id
       (write-long _lane_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _lane_id
     (setq _lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::TOSRequestRenderLDInfo :md5sum-) "d7d9c9b0d3d32b0727874aaf221489bd")
(setf (get tos_msgs::TOSRequestRenderLDInfo :datatype-) "tos_msgs/TOSRequestRenderLDInfo")
(setf (get tos_msgs::TOSRequestRenderLDInfo :definition-)
      "uint32 lane_id

")



(provide :tos_msgs/TOSRequestRenderLDInfo "d7d9c9b0d3d32b0727874aaf221489bd")


