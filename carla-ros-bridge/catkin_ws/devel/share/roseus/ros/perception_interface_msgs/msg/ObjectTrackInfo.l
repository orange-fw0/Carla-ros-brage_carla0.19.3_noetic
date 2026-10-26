;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ObjectTrackInfo)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ObjectTrackInfo (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTRACKINFO")
  (make-package "PERCEPTION_INTERFACE_MSGS::OBJECTTRACKINFO"))

(in-package "ROS")
;;//! \htmlinclude ObjectTrackInfo.msg.html


(defclass perception_interface_msgs::ObjectTrackInfo
  :super ros::object
  :slots (_track_id _track_times _age_in_seconds ))

(defmethod perception_interface_msgs::ObjectTrackInfo
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:track_times __track_times) 0)
    ((:age_in_seconds __age_in_seconds) 0.0)
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _track_times (round __track_times))
   (setq _age_in_seconds (float __age_in_seconds))
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:track_times
   (&optional __track_times)
   (if __track_times (setq _track_times __track_times)) _track_times)
  (:age_in_seconds
   (&optional __age_in_seconds)
   (if __age_in_seconds (setq _age_in_seconds __age_in_seconds)) _age_in_seconds)
  (:serialization-length
   ()
   (+
    ;; uint64 _track_id
    8
    ;; uint64 _track_times
    8
    ;; float32 _age_in_seconds
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
     ;; uint64 _track_times
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _track_times (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _track_times) (= (length (_track_times . bv)) 2)) ;; bignum
              (write-long (ash (elt (_track_times . bv) 0) 0) s)
              (write-long (ash (elt (_track_times . bv) 1) -1) s))
             ((and (class _track_times) (= (length (_track_times . bv)) 1)) ;; big1
              (write-long (elt (_track_times . bv) 0) s)
              (write-long (if (>= _track_times 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _track_times s)(write-long (if (>= _track_times 0) 0 #xffffffff) s)))
     ;; float32 _age_in_seconds
       (sys::poke _age_in_seconds (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint64 _track_times
     
#+(or :alpha :irix6 :x86_64)
      (setf _track_times (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _track_times (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _age_in_seconds
     (setq _age_in_seconds (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::ObjectTrackInfo :md5sum-) "6d42038cbaad464379e51e22de977155")
(setf (get perception_interface_msgs::ObjectTrackInfo :datatype-) "perception_interface_msgs/ObjectTrackInfo")
(setf (get perception_interface_msgs::ObjectTrackInfo :definition-)
      "uint64 track_id
uint64 track_times
float32 age_in_seconds

")



(provide :perception_interface_msgs/ObjectTrackInfo "6d42038cbaad464379e51e22de977155")


