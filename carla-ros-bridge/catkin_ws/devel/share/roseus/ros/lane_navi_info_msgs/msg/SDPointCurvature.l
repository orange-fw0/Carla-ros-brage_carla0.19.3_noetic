;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDPointCurvature)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDPointCurvature (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDPOINTCURVATURE")
  (make-package "LANE_NAVI_INFO_MSGS::SDPOINTCURVATURE"))

(in-package "ROS")
;;//! \htmlinclude SDPointCurvature.msg.html


(defclass lane_navi_info_msgs::SDPointCurvature
  :super ros::object
  :slots (_offset _value ))

(defmethod lane_navi_info_msgs::SDPointCurvature
  (:init
   (&key
    ((:offset __offset) 0.0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _offset (float __offset))
   (setq _value (float __value))
   self)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float32 _offset
    4
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDPointCurvature :md5sum-) "a89e5e12d6932ebdd9f391c7e9fea59b")
(setf (get lane_navi_info_msgs::SDPointCurvature :datatype-) "lane_navi_info_msgs/SDPointCurvature")
(setf (get lane_navi_info_msgs::SDPointCurvature :definition-)
      "float32 offset
float32 value

")



(provide :lane_navi_info_msgs/SDPointCurvature "a89e5e12d6932ebdd9f391c7e9fea59b")


