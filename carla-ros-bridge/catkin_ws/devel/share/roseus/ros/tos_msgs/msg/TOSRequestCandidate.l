;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSRequestCandidate)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSRequestCandidate (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSREQUESTCANDIDATE")
  (make-package "TOS_MSGS::TOSREQUESTCANDIDATE"))

(in-package "ROS")
;;//! \htmlinclude TOSRequestCandidate.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass tos_msgs::TOSRequestCandidate
  :super ros::object
  :slots (_candidate_id _traj ))

(defmethod tos_msgs::TOSRequestCandidate
  (:init
   (&key
    ((:candidate_id __candidate_id) 0)
    ((:traj __traj) ())
    )
   (send-super :init)
   (setq _candidate_id (round __candidate_id))
   (setq _traj __traj)
   self)
  (:candidate_id
   (&optional __candidate_id)
   (if __candidate_id (setq _candidate_id __candidate_id)) _candidate_id)
  (:traj
   (&rest __traj)
   (if (keywordp (car __traj))
       (send* _traj __traj)
     (progn
       (if __traj (setq _traj (car __traj)))
       _traj)))
  (:serialization-length
   ()
   (+
    ;; uint32 _candidate_id
    4
    ;; perception_interface_msgs/Point3d[] _traj
    (apply #'+ (send-all _traj :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _candidate_id
       (write-long _candidate_id s)
     ;; perception_interface_msgs/Point3d[] _traj
     (write-long (length _traj) s)
     (dolist (elem _traj)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _candidate_id
     (setq _candidate_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; perception_interface_msgs/Point3d[] _traj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traj (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3d :init) r)) r))
     (dolist (elem- _traj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tos_msgs::TOSRequestCandidate :md5sum-) "4c1d15627e1447d3cf6bdaaaa85f0747")
(setf (get tos_msgs::TOSRequestCandidate :datatype-) "tos_msgs/TOSRequestCandidate")
(setf (get tos_msgs::TOSRequestCandidate :definition-)
      "uint32 candidate_id
perception_interface_msgs/Point3d[] traj

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

")



(provide :tos_msgs/TOSRequestCandidate "4c1d15627e1447d3cf6bdaaaa85f0747")


