;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterOffset)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterOffset (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTEROFFSET")
  (make-package "LANDMARK_MSGS::LANECENTEROFFSET"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterOffset.msg.html


(defclass landmark_msgs::LaneCenterOffset
  :super ros::object
  :slots (_track_id _track_frames_count _accumulative_offset _relative_offset ))

(defmethod landmark_msgs::LaneCenterOffset
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:track_frames_count __track_frames_count) 0)
    ((:accumulative_offset __accumulative_offset) 0.0)
    ((:relative_offset __relative_offset) 0.0)
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _track_frames_count (round __track_frames_count))
   (setq _accumulative_offset (float __accumulative_offset))
   (setq _relative_offset (float __relative_offset))
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:track_frames_count
   (&optional __track_frames_count)
   (if __track_frames_count (setq _track_frames_count __track_frames_count)) _track_frames_count)
  (:accumulative_offset
   (&optional __accumulative_offset)
   (if __accumulative_offset (setq _accumulative_offset __accumulative_offset)) _accumulative_offset)
  (:relative_offset
   (&optional __relative_offset)
   (if __relative_offset (setq _relative_offset __relative_offset)) _relative_offset)
  (:serialization-length
   ()
   (+
    ;; uint64 _track_id
    8
    ;; uint64 _track_frames_count
    8
    ;; float32 _accumulative_offset
    4
    ;; float32 _relative_offset
    4
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
     ;; float32 _accumulative_offset
       (sys::poke _accumulative_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_offset
       (sys::poke _relative_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _accumulative_offset
     (setq _accumulative_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_offset
     (setq _relative_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::LaneCenterOffset :md5sum-) "01c833d8de1057736d9a8b42605167bd")
(setf (get landmark_msgs::LaneCenterOffset :datatype-) "landmark_msgs/LaneCenterOffset")
(setf (get landmark_msgs::LaneCenterOffset :definition-)
      "uint64 track_id
uint64 track_frames_count
float32 accumulative_offset
float32 relative_offset

")



(provide :landmark_msgs/LaneCenterOffset "01c833d8de1057736d9a8b42605167bd")


