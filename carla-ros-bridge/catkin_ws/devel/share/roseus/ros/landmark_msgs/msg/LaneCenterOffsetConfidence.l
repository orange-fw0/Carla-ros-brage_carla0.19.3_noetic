;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterOffsetConfidence)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterOffsetConfidence (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTEROFFSETCONFIDENCE")
  (make-package "LANDMARK_MSGS::LANECENTEROFFSETCONFIDENCE"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterOffsetConfidence.msg.html


(defclass landmark_msgs::LaneCenterOffsetConfidence
  :super ros::object
  :slots (_reliable _lane_center_offsets ))

(defmethod landmark_msgs::LaneCenterOffsetConfidence
  (:init
   (&key
    ((:reliable __reliable) nil)
    ((:lane_center_offsets __lane_center_offsets) ())
    )
   (send-super :init)
   (setq _reliable __reliable)
   (setq _lane_center_offsets __lane_center_offsets)
   self)
  (:reliable
   (&optional (__reliable :null))
   (if (not (eq __reliable :null)) (setq _reliable __reliable)) _reliable)
  (:lane_center_offsets
   (&rest __lane_center_offsets)
   (if (keywordp (car __lane_center_offsets))
       (send* _lane_center_offsets __lane_center_offsets)
     (progn
       (if __lane_center_offsets (setq _lane_center_offsets (car __lane_center_offsets)))
       _lane_center_offsets)))
  (:serialization-length
   ()
   (+
    ;; bool _reliable
    1
    ;; landmark_msgs/LaneCenterOffset[] _lane_center_offsets
    (apply #'+ (send-all _lane_center_offsets :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reliable
       (if _reliable (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/LaneCenterOffset[] _lane_center_offsets
     (write-long (length _lane_center_offsets) s)
     (dolist (elem _lane_center_offsets)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reliable
     (setq _reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/LaneCenterOffset[] _lane_center_offsets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_center_offsets (let (r) (dotimes (i n) (push (instance landmark_msgs::LaneCenterOffset :init) r)) r))
     (dolist (elem- _lane_center_offsets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::LaneCenterOffsetConfidence :md5sum-) "18ffa8bd9721e4c7317226a15247de21")
(setf (get landmark_msgs::LaneCenterOffsetConfidence :datatype-) "landmark_msgs/LaneCenterOffsetConfidence")
(setf (get landmark_msgs::LaneCenterOffsetConfidence :definition-)
      "bool reliable
landmark_msgs/LaneCenterOffset[] lane_center_offsets

================================================================================
MSG: landmark_msgs/LaneCenterOffset
uint64 track_id
uint64 track_frames_count
float32 accumulative_offset
float32 relative_offset

")



(provide :landmark_msgs/LaneCenterOffsetConfidence "18ffa8bd9721e4c7317226a15247de21")


