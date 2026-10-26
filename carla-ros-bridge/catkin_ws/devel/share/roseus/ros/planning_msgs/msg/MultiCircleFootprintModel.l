;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::MultiCircleFootprintModel)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'MultiCircleFootprintModel (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::MULTICIRCLEFOOTPRINTMODEL")
  (make-package "PLANNING_MSGS::MULTICIRCLEFOOTPRINTMODEL"))

(in-package "ROS")
;;//! \htmlinclude MultiCircleFootprintModel.msg.html


(defclass planning_msgs::MultiCircleFootprintModel
  :super ros::object
  :slots (_circles ))

(defmethod planning_msgs::MultiCircleFootprintModel
  (:init
   (&key
    ((:circles __circles) ())
    )
   (send-super :init)
   (setq _circles __circles)
   self)
  (:circles
   (&rest __circles)
   (if (keywordp (car __circles))
       (send* _circles __circles)
     (progn
       (if __circles (setq _circles (car __circles)))
       _circles)))
  (:serialization-length
   ()
   (+
    ;; planning_msgs/Circle[] _circles
    (apply #'+ (send-all _circles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/Circle[] _circles
     (write-long (length _circles) s)
     (dolist (elem _circles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/Circle[] _circles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _circles (let (r) (dotimes (i n) (push (instance planning_msgs::Circle :init) r)) r))
     (dolist (elem- _circles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planning_msgs::MultiCircleFootprintModel :md5sum-) "a385c264c95c8149636a068648ab7b73")
(setf (get planning_msgs::MultiCircleFootprintModel :datatype-) "planning_msgs/MultiCircleFootprintModel")
(setf (get planning_msgs::MultiCircleFootprintModel :definition-)
      "planning_msgs/Circle[] circles

================================================================================
MSG: planning_msgs/Circle
float64 x
float64 y
float64 z
float64 r

")



(provide :planning_msgs/MultiCircleFootprintModel "a385c264c95c8149636a068648ab7b73")


