;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::APADebugInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'APADebugInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::APADEBUGINFO")
  (make-package "PLANNING_MSGS::APADEBUGINFO"))

(in-package "ROS")
;;//! \htmlinclude APADebugInfo.msg.html


(defclass planning_msgs::APADebugInfo
  :super ros::object
  :slots (_mc_footprint_model _reserved ))

(defmethod planning_msgs::APADebugInfo
  (:init
   (&key
    ((:mc_footprint_model __mc_footprint_model) (instance planning_msgs::MultiCircleFootprintModel :init))
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _mc_footprint_model __mc_footprint_model)
   (setq _reserved (string __reserved))
   self)
  (:mc_footprint_model
   (&rest __mc_footprint_model)
   (if (keywordp (car __mc_footprint_model))
       (send* _mc_footprint_model __mc_footprint_model)
     (progn
       (if __mc_footprint_model (setq _mc_footprint_model (car __mc_footprint_model)))
       _mc_footprint_model)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; planning_msgs/MultiCircleFootprintModel _mc_footprint_model
    (send _mc_footprint_model :serialization-length)
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/MultiCircleFootprintModel _mc_footprint_model
       (send _mc_footprint_model :serialize s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/MultiCircleFootprintModel _mc_footprint_model
     (send _mc_footprint_model :deserialize buf ptr-) (incf ptr- (send _mc_footprint_model :serialization-length))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::APADebugInfo :md5sum-) "567c5f0ef920f678aa4bbbce985eff5e")
(setf (get planning_msgs::APADebugInfo :datatype-) "planning_msgs/APADebugInfo")
(setf (get planning_msgs::APADebugInfo :definition-)
      "planning_msgs/MultiCircleFootprintModel mc_footprint_model
string reserved

================================================================================
MSG: planning_msgs/MultiCircleFootprintModel
planning_msgs/Circle[] circles

================================================================================
MSG: planning_msgs/Circle
float64 x
float64 y
float64 z
float64 r

")



(provide :planning_msgs/APADebugInfo "567c5f0ef920f678aa4bbbce985eff5e")


