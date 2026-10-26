;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSRequestRenderInfo)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSRequestRenderInfo (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSREQUESTRENDERINFO")
  (make-package "TOS_MSGS::TOSREQUESTRENDERINFO"))

(in-package "ROS")
;;//! \htmlinclude TOSRequestRenderInfo.msg.html


(defclass tos_msgs::TOSRequestRenderInfo
  :super ros::object
  :slots (_od_info _ld_info _candidates ))

(defmethod tos_msgs::TOSRequestRenderInfo
  (:init
   (&key
    ((:od_info __od_info) ())
    ((:ld_info __ld_info) ())
    ((:candidates __candidates) ())
    )
   (send-super :init)
   (setq _od_info __od_info)
   (setq _ld_info __ld_info)
   (setq _candidates __candidates)
   self)
  (:od_info
   (&rest __od_info)
   (if (keywordp (car __od_info))
       (send* _od_info __od_info)
     (progn
       (if __od_info (setq _od_info (car __od_info)))
       _od_info)))
  (:ld_info
   (&rest __ld_info)
   (if (keywordp (car __ld_info))
       (send* _ld_info __ld_info)
     (progn
       (if __ld_info (setq _ld_info (car __ld_info)))
       _ld_info)))
  (:candidates
   (&rest __candidates)
   (if (keywordp (car __candidates))
       (send* _candidates __candidates)
     (progn
       (if __candidates (setq _candidates (car __candidates)))
       _candidates)))
  (:serialization-length
   ()
   (+
    ;; tos_msgs/TOSRequestRenderODInfo[] _od_info
    (apply #'+ (send-all _od_info :serialization-length)) 4
    ;; tos_msgs/TOSRequestRenderLDInfo[] _ld_info
    (apply #'+ (send-all _ld_info :serialization-length)) 4
    ;; tos_msgs/TOSRequestCandidate[] _candidates
    (apply #'+ (send-all _candidates :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tos_msgs/TOSRequestRenderODInfo[] _od_info
     (write-long (length _od_info) s)
     (dolist (elem _od_info)
       (send elem :serialize s)
       )
     ;; tos_msgs/TOSRequestRenderLDInfo[] _ld_info
     (write-long (length _ld_info) s)
     (dolist (elem _ld_info)
       (send elem :serialize s)
       )
     ;; tos_msgs/TOSRequestCandidate[] _candidates
     (write-long (length _candidates) s)
     (dolist (elem _candidates)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tos_msgs/TOSRequestRenderODInfo[] _od_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _od_info (let (r) (dotimes (i n) (push (instance tos_msgs::TOSRequestRenderODInfo :init) r)) r))
     (dolist (elem- _od_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tos_msgs/TOSRequestRenderLDInfo[] _ld_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ld_info (let (r) (dotimes (i n) (push (instance tos_msgs::TOSRequestRenderLDInfo :init) r)) r))
     (dolist (elem- _ld_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tos_msgs/TOSRequestCandidate[] _candidates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _candidates (let (r) (dotimes (i n) (push (instance tos_msgs::TOSRequestCandidate :init) r)) r))
     (dolist (elem- _candidates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tos_msgs::TOSRequestRenderInfo :md5sum-) "3602094068c5eafb47bd4bcea349b97b")
(setf (get tos_msgs::TOSRequestRenderInfo :datatype-) "tos_msgs/TOSRequestRenderInfo")
(setf (get tos_msgs::TOSRequestRenderInfo :definition-)
      "tos_msgs/TOSRequestRenderODInfo[] od_info
tos_msgs/TOSRequestRenderLDInfo[] ld_info
tos_msgs/TOSRequestCandidate[] candidates

================================================================================
MSG: tos_msgs/TOSRequestRenderODInfo
uint32 id
float64 target_s
float64 target_l

================================================================================
MSG: tos_msgs/TOSRequestRenderLDInfo
uint32 lane_id

================================================================================
MSG: tos_msgs/TOSRequestCandidate
uint32 candidate_id
perception_interface_msgs/Point3d[] traj

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

")



(provide :tos_msgs/TOSRequestRenderInfo "3602094068c5eafb47bd4bcea349b97b")


