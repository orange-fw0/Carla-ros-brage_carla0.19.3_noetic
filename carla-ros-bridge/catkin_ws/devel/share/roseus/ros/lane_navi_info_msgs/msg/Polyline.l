;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::Polyline)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'Polyline (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::POLYLINE")
  (make-package "LANE_NAVI_INFO_MSGS::POLYLINE"))

(in-package "ROS")
;;//! \htmlinclude Polyline.msg.html


(defclass lane_navi_info_msgs::Polyline
  :super ros::object
  :slots (_points ))

(defmethod lane_navi_info_msgs::Polyline
  (:init
   (&key
    ((:points __points) ())
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::Polyline :md5sum-) "3fb3f9dacc279b964c4c8341122c34df")
(setf (get lane_navi_info_msgs::Polyline :datatype-) "lane_navi_info_msgs/Polyline")
(setf (get lane_navi_info_msgs::Polyline :definition-)
      "lane_navi_info_msgs/Point[] points

================================================================================
MSG: lane_navi_info_msgs/Point
float64 x
float64 y
float64 z

")



(provide :lane_navi_info_msgs/Polyline "3fb3f9dacc279b964c4c8341122c34df")


