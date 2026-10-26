;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::PerceptionConfidence)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'PerceptionConfidence (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::PERCEPTIONCONFIDENCE")
  (make-package "LANDMARK_MSGS::PERCEPTIONCONFIDENCE"))

(in-package "ROS")
;;//! \htmlinclude PerceptionConfidence.msg.html


(defclass landmark_msgs::PerceptionConfidence
  :super ros::object
  :slots (_reliable _lane_center_offset_confidence _lane_center_disappearance_confidence _lane_center_intersect_with_road_boundary_confidence _no_motor_lanecenters _vanished_normal_lanecenters _too_close_to_laneboundary_lanecenters ))

(defmethod landmark_msgs::PerceptionConfidence
  (:init
   (&key
    ((:reliable __reliable) nil)
    ((:lane_center_offset_confidence __lane_center_offset_confidence) (instance landmark_msgs::LaneCenterOffsetConfidence :init))
    ((:lane_center_disappearance_confidence __lane_center_disappearance_confidence) (instance landmark_msgs::LaneCenterDisappearanceConfidence :init))
    ((:lane_center_intersect_with_road_boundary_confidence __lane_center_intersect_with_road_boundary_confidence) (instance landmark_msgs::LaneCenterIntersectWithRoadBoundaryConfidence :init))
    ((:no_motor_lanecenters __no_motor_lanecenters) (make-array 0 :initial-element 0 :element-type :integer))
    ((:vanished_normal_lanecenters __vanished_normal_lanecenters) (make-array 0 :initial-element 0 :element-type :integer))
    ((:too_close_to_laneboundary_lanecenters __too_close_to_laneboundary_lanecenters) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _reliable __reliable)
   (setq _lane_center_offset_confidence __lane_center_offset_confidence)
   (setq _lane_center_disappearance_confidence __lane_center_disappearance_confidence)
   (setq _lane_center_intersect_with_road_boundary_confidence __lane_center_intersect_with_road_boundary_confidence)
   (setq _no_motor_lanecenters __no_motor_lanecenters)
   (setq _vanished_normal_lanecenters __vanished_normal_lanecenters)
   (setq _too_close_to_laneboundary_lanecenters __too_close_to_laneboundary_lanecenters)
   self)
  (:reliable
   (&optional (__reliable :null))
   (if (not (eq __reliable :null)) (setq _reliable __reliable)) _reliable)
  (:lane_center_offset_confidence
   (&rest __lane_center_offset_confidence)
   (if (keywordp (car __lane_center_offset_confidence))
       (send* _lane_center_offset_confidence __lane_center_offset_confidence)
     (progn
       (if __lane_center_offset_confidence (setq _lane_center_offset_confidence (car __lane_center_offset_confidence)))
       _lane_center_offset_confidence)))
  (:lane_center_disappearance_confidence
   (&rest __lane_center_disappearance_confidence)
   (if (keywordp (car __lane_center_disappearance_confidence))
       (send* _lane_center_disappearance_confidence __lane_center_disappearance_confidence)
     (progn
       (if __lane_center_disappearance_confidence (setq _lane_center_disappearance_confidence (car __lane_center_disappearance_confidence)))
       _lane_center_disappearance_confidence)))
  (:lane_center_intersect_with_road_boundary_confidence
   (&rest __lane_center_intersect_with_road_boundary_confidence)
   (if (keywordp (car __lane_center_intersect_with_road_boundary_confidence))
       (send* _lane_center_intersect_with_road_boundary_confidence __lane_center_intersect_with_road_boundary_confidence)
     (progn
       (if __lane_center_intersect_with_road_boundary_confidence (setq _lane_center_intersect_with_road_boundary_confidence (car __lane_center_intersect_with_road_boundary_confidence)))
       _lane_center_intersect_with_road_boundary_confidence)))
  (:no_motor_lanecenters
   (&optional __no_motor_lanecenters)
   (if __no_motor_lanecenters (setq _no_motor_lanecenters __no_motor_lanecenters)) _no_motor_lanecenters)
  (:vanished_normal_lanecenters
   (&optional __vanished_normal_lanecenters)
   (if __vanished_normal_lanecenters (setq _vanished_normal_lanecenters __vanished_normal_lanecenters)) _vanished_normal_lanecenters)
  (:too_close_to_laneboundary_lanecenters
   (&optional __too_close_to_laneboundary_lanecenters)
   (if __too_close_to_laneboundary_lanecenters (setq _too_close_to_laneboundary_lanecenters __too_close_to_laneboundary_lanecenters)) _too_close_to_laneboundary_lanecenters)
  (:serialization-length
   ()
   (+
    ;; bool _reliable
    1
    ;; landmark_msgs/LaneCenterOffsetConfidence _lane_center_offset_confidence
    (send _lane_center_offset_confidence :serialization-length)
    ;; landmark_msgs/LaneCenterDisappearanceConfidence _lane_center_disappearance_confidence
    (send _lane_center_disappearance_confidence :serialization-length)
    ;; landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence _lane_center_intersect_with_road_boundary_confidence
    (send _lane_center_intersect_with_road_boundary_confidence :serialization-length)
    ;; uint64[] _no_motor_lanecenters
    (* 8    (length _no_motor_lanecenters)) 4
    ;; uint64[] _vanished_normal_lanecenters
    (* 8    (length _vanished_normal_lanecenters)) 4
    ;; uint64[] _too_close_to_laneboundary_lanecenters
    (* 8    (length _too_close_to_laneboundary_lanecenters)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reliable
       (if _reliable (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/LaneCenterOffsetConfidence _lane_center_offset_confidence
       (send _lane_center_offset_confidence :serialize s)
     ;; landmark_msgs/LaneCenterDisappearanceConfidence _lane_center_disappearance_confidence
       (send _lane_center_disappearance_confidence :serialize s)
     ;; landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence _lane_center_intersect_with_road_boundary_confidence
       (send _lane_center_intersect_with_road_boundary_confidence :serialize s)
     ;; uint64[] _no_motor_lanecenters
     (write-long (length _no_motor_lanecenters) s)
     (dotimes (i (length _no_motor_lanecenters))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _no_motor_lanecenters i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _no_motor_lanecenters i)) (= (length ((elt _no_motor_lanecenters i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _no_motor_lanecenters i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _no_motor_lanecenters i) . bv) 1) -1) s))
             ((and (class (elt _no_motor_lanecenters i)) (= (length ((elt _no_motor_lanecenters i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _no_motor_lanecenters i) . bv) 0) s)
              (write-long (if (>= (elt _no_motor_lanecenters i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _no_motor_lanecenters i) s)(write-long (if (>= (elt _no_motor_lanecenters i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _vanished_normal_lanecenters
     (write-long (length _vanished_normal_lanecenters) s)
     (dotimes (i (length _vanished_normal_lanecenters))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _vanished_normal_lanecenters i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _vanished_normal_lanecenters i)) (= (length ((elt _vanished_normal_lanecenters i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _vanished_normal_lanecenters i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _vanished_normal_lanecenters i) . bv) 1) -1) s))
             ((and (class (elt _vanished_normal_lanecenters i)) (= (length ((elt _vanished_normal_lanecenters i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _vanished_normal_lanecenters i) . bv) 0) s)
              (write-long (if (>= (elt _vanished_normal_lanecenters i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _vanished_normal_lanecenters i) s)(write-long (if (>= (elt _vanished_normal_lanecenters i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _too_close_to_laneboundary_lanecenters
     (write-long (length _too_close_to_laneboundary_lanecenters) s)
     (dotimes (i (length _too_close_to_laneboundary_lanecenters))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _too_close_to_laneboundary_lanecenters i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _too_close_to_laneboundary_lanecenters i)) (= (length ((elt _too_close_to_laneboundary_lanecenters i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _too_close_to_laneboundary_lanecenters i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _too_close_to_laneboundary_lanecenters i) . bv) 1) -1) s))
             ((and (class (elt _too_close_to_laneboundary_lanecenters i)) (= (length ((elt _too_close_to_laneboundary_lanecenters i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _too_close_to_laneboundary_lanecenters i) . bv) 0) s)
              (write-long (if (>= (elt _too_close_to_laneboundary_lanecenters i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _too_close_to_laneboundary_lanecenters i) s)(write-long (if (>= (elt _too_close_to_laneboundary_lanecenters i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reliable
     (setq _reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/LaneCenterOffsetConfidence _lane_center_offset_confidence
     (send _lane_center_offset_confidence :deserialize buf ptr-) (incf ptr- (send _lane_center_offset_confidence :serialization-length))
   ;; landmark_msgs/LaneCenterDisappearanceConfidence _lane_center_disappearance_confidence
     (send _lane_center_disappearance_confidence :deserialize buf ptr-) (incf ptr- (send _lane_center_disappearance_confidence :serialization-length))
   ;; landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence _lane_center_intersect_with_road_boundary_confidence
     (send _lane_center_intersect_with_road_boundary_confidence :deserialize buf ptr-) (incf ptr- (send _lane_center_intersect_with_road_boundary_confidence :serialization-length))
   ;; uint64[] _no_motor_lanecenters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _no_motor_lanecenters (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _no_motor_lanecenters i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _no_motor_lanecenters i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _vanished_normal_lanecenters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vanished_normal_lanecenters (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _vanished_normal_lanecenters i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _vanished_normal_lanecenters i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _too_close_to_laneboundary_lanecenters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _too_close_to_laneboundary_lanecenters (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _too_close_to_laneboundary_lanecenters i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _too_close_to_laneboundary_lanecenters i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::PerceptionConfidence :md5sum-) "8f6912cd46f6fbec8e732a23e3f51bcd")
(setf (get landmark_msgs::PerceptionConfidence :datatype-) "landmark_msgs/PerceptionConfidence")
(setf (get landmark_msgs::PerceptionConfidence :definition-)
      "bool reliable
landmark_msgs/LaneCenterOffsetConfidence lane_center_offset_confidence
landmark_msgs/LaneCenterDisappearanceConfidence lane_center_disappearance_confidence
landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence lane_center_intersect_with_road_boundary_confidence
uint64[] no_motor_lanecenters
uint64[] vanished_normal_lanecenters
uint64[] too_close_to_laneboundary_lanecenters

================================================================================
MSG: landmark_msgs/LaneCenterOffsetConfidence
bool reliable
landmark_msgs/LaneCenterOffset[] lane_center_offsets

================================================================================
MSG: landmark_msgs/LaneCenterOffset
uint64 track_id
uint64 track_frames_count
float32 accumulative_offset
float32 relative_offset

================================================================================
MSG: landmark_msgs/LaneCenterDisappearanceConfidence
bool reliable
landmark_msgs/LaneCenterDisappearance[] lane_center_disappearances

================================================================================
MSG: landmark_msgs/LaneCenterDisappearance
landmark_msgs/LaneRecordConfidence left_lane_boundary
landmark_msgs/LaneRecordConfidence right_lane_boundary

================================================================================
MSG: landmark_msgs/LaneRecordConfidence
uint64 track_id
uint64 track_frames_count

================================================================================
MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence
bool reliable
landmark_msgs/LaneCenterIntersectWithRoadBoundary[] lane_center_intersect_with_road_boundaries

================================================================================
MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundary
landmark_msgs/LaneRecordConfidence lane_center
landmark_msgs/LaneRecordConfidence road_boundary
landmark_msgs/IntersectTypeEnum intersect_type
float64 min_distance

================================================================================
MSG: landmark_msgs/IntersectTypeEnum
uint8 UNKNOWN = 0
uint8 CROSS = 1
uint8 CLOSE = 2
uint8 value

")



(provide :landmark_msgs/PerceptionConfidence "8f6912cd46f6fbec8e732a23e3f51bcd")


