;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::MDKDiRoadId)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'MDKDiRoadId (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::MDKDIROADID")
  (make-package "FRAMEWORK_STATUS_MSGS::MDKDIROADID"))

(in-package "ROS")
;;//! \htmlinclude MDKDiRoadId.msg.html


(defclass framework_status_msgs::MDKDiRoadId
  :super ros::object
  :slots (_tile_id _road_count _dir_reversed ))

(defmethod framework_status_msgs::MDKDiRoadId
  (:init
   (&key
    ((:tile_id __tile_id) 0)
    ((:road_count __road_count) 0)
    ((:dir_reversed __dir_reversed) nil)
    )
   (send-super :init)
   (setq _tile_id (round __tile_id))
   (setq _road_count (round __road_count))
   (setq _dir_reversed __dir_reversed)
   self)
  (:tile_id
   (&optional __tile_id)
   (if __tile_id (setq _tile_id __tile_id)) _tile_id)
  (:road_count
   (&optional __road_count)
   (if __road_count (setq _road_count __road_count)) _road_count)
  (:dir_reversed
   (&optional (__dir_reversed :null))
   (if (not (eq __dir_reversed :null)) (setq _dir_reversed __dir_reversed)) _dir_reversed)
  (:serialization-length
   ()
   (+
    ;; int64 _tile_id
    8
    ;; int64 _road_count
    8
    ;; bool _dir_reversed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _tile_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tile_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tile_id) (= (length (_tile_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tile_id . bv) 0) 0) s)
              (write-long (ash (elt (_tile_id . bv) 1) -1) s))
             ((and (class _tile_id) (= (length (_tile_id . bv)) 1)) ;; big1
              (write-long (elt (_tile_id . bv) 0) s)
              (write-long (if (>= _tile_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tile_id s)(write-long (if (>= _tile_id 0) 0 #xffffffff) s)))
     ;; int64 _road_count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _road_count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _road_count) (= (length (_road_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_road_count . bv) 0) 0) s)
              (write-long (ash (elt (_road_count . bv) 1) -1) s))
             ((and (class _road_count) (= (length (_road_count . bv)) 1)) ;; big1
              (write-long (elt (_road_count . bv) 0) s)
              (write-long (if (>= _road_count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _road_count s)(write-long (if (>= _road_count 0) 0 #xffffffff) s)))
     ;; bool _dir_reversed
       (if _dir_reversed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _tile_id
#+(or :alpha :irix6 :x86_64)
      (setf _tile_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tile_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _road_count
#+(or :alpha :irix6 :x86_64)
      (setf _road_count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _road_count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _dir_reversed
     (setq _dir_reversed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get framework_status_msgs::MDKDiRoadId :md5sum-) "3cd02c3e1caee2c32fb2bfa11a15f76a")
(setf (get framework_status_msgs::MDKDiRoadId :datatype-) "framework_status_msgs/MDKDiRoadId")
(setf (get framework_status_msgs::MDKDiRoadId :definition-)
      "int64 tile_id
int64 road_count
bool dir_reversed

")



(provide :framework_status_msgs/MDKDiRoadId "3cd02c3e1caee2c32fb2bfa11a15f76a")


