;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneRecordConfidence)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneRecordConfidence (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANERECORDCONFIDENCE")
  (make-package "LANDMARK_MSGS::LANERECORDCONFIDENCE"))

(in-package "ROS")
;;//! \htmlinclude LaneRecordConfidence.msg.html


(defclass landmark_msgs::LaneRecordConfidence
  :super ros::object
  :slots (_track_id _track_frames_count ))

(defmethod landmark_msgs::LaneRecordConfidence
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:track_frames_count __track_frames_count) 0)
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _track_frames_count (round __track_frames_count))
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:track_frames_count
   (&optional __track_frames_count)
   (if __track_frames_count (setq _track_frames_count __track_frames_count)) _track_frames_count)
  (:serialization-length
   ()
   (+
    ;; uint64 _track_id
    8
    ;; uint64 _track_frames_count
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _track_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _track_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _track_id) (= (length (_track_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_track_id . bv) 0) 0) s)
              (write-long (ash (elt (_track_id . bv) 1) -1) s))
             ((and (class _track_id) (= (length (_track_id . bv)) 1)) ;; big1
              (write-long (elt (_track_id . bv) 0) s)
              (write-long (if (>= _track_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _track_id s)(write-long (if (>= _track_id 0) 0 #xffffffff) s)))
     ;; uint64 _track_frames_count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _track_frames_count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _track_frames_count) (= (length (_track_frames_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_track_frames_count . bv) 0) 0) s)
              (write-long (ash (elt (_track_frames_count . bv) 1) -1) s))
             ((and (class _track_frames_count) (= (length (_track_frames_count . bv)) 1)) ;; big1
              (write-long (elt (_track_frames_count . bv) 0) s)
              (write-long (if (>= _track_frames_count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _track_frames_count s)(write-long (if (>= _track_frames_count 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _track_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _track_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _track_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _track_frames_count
     
#+(or :alpha :irix6 :x86_64)
      (setf _track_frames_count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _track_frames_count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get landmark_msgs::LaneRecordConfidence :md5sum-) "a3f99cb32d9202d133a0b4c504d28beb")
(setf (get landmark_msgs::LaneRecordConfidence :datatype-) "landmark_msgs/LaneRecordConfidence")
(setf (get landmark_msgs::LaneRecordConfidence :definition-)
      "uint64 track_id
uint64 track_frames_count

")



(provide :landmark_msgs/LaneRecordConfidence "a3f99cb32d9202d133a0b4c504d28beb")


