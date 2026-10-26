;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterDisappearanceConfidence)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterDisappearanceConfidence (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTERDISAPPEARANCECONFIDENCE")
  (make-package "LANDMARK_MSGS::LANECENTERDISAPPEARANCECONFIDENCE"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterDisappearanceConfidence.msg.html


(defclass landmark_msgs::LaneCenterDisappearanceConfidence
  :super ros::object
  :slots (_reliable _lane_center_disappearances ))

(defmethod landmark_msgs::LaneCenterDisappearanceConfidence
  (:init
   (&key
    ((:reliable __reliable) nil)
    ((:lane_center_disappearances __lane_center_disappearances) ())
    )
   (send-super :init)
   (setq _reliable __reliable)
   (setq _lane_center_disappearances __lane_center_disappearances)
   self)
  (:reliable
   (&optional (__reliable :null))
   (if (not (eq __reliable :null)) (setq _reliable __reliable)) _reliable)
  (:lane_center_disappearances
   (&rest __lane_center_disappearances)
   (if (keywordp (car __lane_center_disappearances))
       (send* _lane_center_disappearances __lane_center_disappearances)
     (progn
       (if __lane_center_disappearances (setq _lane_center_disappearances (car __lane_center_disappearances)))
       _lane_center_disappearances)))
  (:serialization-length
   ()
   (+
    ;; bool _reliable
    1
    ;; landmark_msgs/LaneCenterDisappearance[] _lane_center_disappearances
    (apply #'+ (send-all _lane_center_disappearances :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reliable
       (if _reliable (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/LaneCenterDisappearance[] _lane_center_disappearances
     (write-long (length _lane_center_disappearances) s)
     (dolist (elem _lane_center_disappearances)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reliable
     (setq _reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/LaneCenterDisappearance[] _lane_center_disappearances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_center_disappearances (let (r) (dotimes (i n) (push (instance landmark_msgs::LaneCenterDisappearance :init) r)) r))
     (dolist (elem- _lane_center_disappearances)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::LaneCenterDisappearanceConfidence :md5sum-) "4b515cea7479ac8b48254410fe0662df")
(setf (get landmark_msgs::LaneCenterDisappearanceConfidence :datatype-) "landmark_msgs/LaneCenterDisappearanceConfidence")
(setf (get landmark_msgs::LaneCenterDisappearanceConfidence :definition-)
      "bool reliable
landmark_msgs/LaneCenterDisappearance[] lane_center_disappearances

================================================================================
MSG: landmark_msgs/LaneCenterDisappearance
landmark_msgs/LaneRecordConfidence left_lane_boundary
landmark_msgs/LaneRecordConfidence right_lane_boundary

================================================================================
MSG: landmark_msgs/LaneRecordConfidence
uint64 track_id
uint64 track_frames_count

")



(provide :landmark_msgs/LaneCenterDisappearanceConfidence "4b515cea7479ac8b48254410fe0662df")


