;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDCheckPoint)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDCheckPoint (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDCHECKPOINT")
  (make-package "LANE_NAVI_INFO_MSGS::SDCHECKPOINT"))

(in-package "ROS")
;;//! \htmlinclude SDCheckPoint.msg.html


(defclass lane_navi_info_msgs::SDCheckPoint
  :super ros::object
  :slots (_offset ))

(defmethod lane_navi_info_msgs::SDCheckPoint
  (:init
   (&key
    ((:offset __offset) 0.0)
    )
   (send-super :init)
   (setq _offset (float __offset))
   self)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:serialization-length
   ()
   (+
    ;; float32 _offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDCheckPoint :md5sum-) "a9eb115d4fadb60ffa9aaabb89513cf3")
(setf (get lane_navi_info_msgs::SDCheckPoint :datatype-) "lane_navi_info_msgs/SDCheckPoint")
(setf (get lane_navi_info_msgs::SDCheckPoint :definition-)
      "float32 offset

")



(provide :lane_navi_info_msgs/SDCheckPoint "a9eb115d4fadb60ffa9aaabb89513cf3")


