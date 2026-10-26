;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneBoundaryPolyline)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneBoundaryPolyline (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANEBOUNDARYPOLYLINE")
  (make-package "WORLDMODEL_MSGS::LANEBOUNDARYPOLYLINE"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundaryPolyline.msg.html


(defclass worldmodel_msgs::LaneBoundaryPolyline
  :super ros::object
  :slots (_track_id _poly_coefficient _available_interval ))

(defmethod worldmodel_msgs::LaneBoundaryPolyline
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:poly_coefficient __poly_coefficient) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:available_interval __available_interval) (instance worldmodel_msgs::Interval :init))
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _poly_coefficient __poly_coefficient)
   (setq _available_interval __available_interval)
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:poly_coefficient
   (&optional __poly_coefficient)
   (if __poly_coefficient (setq _poly_coefficient __poly_coefficient)) _poly_coefficient)
  (:available_interval
   (&rest __available_interval)
   (if (keywordp (car __available_interval))
       (send* _available_interval __available_interval)
     (progn
       (if __available_interval (setq _available_interval (car __available_interval)))
       _available_interval)))
  (:serialization-length
   ()
   (+
    ;; uint64 _track_id
    8
    ;; float64[] _poly_coefficient
    (* 8    (length _poly_coefficient)) 4
    ;; worldmodel_msgs/Interval _available_interval
    (send _available_interval :serialization-length)
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
     ;; float64[] _poly_coefficient
     (write-long (length _poly_coefficient) s)
     (dotimes (i (length _poly_coefficient))
       (sys::poke (elt _poly_coefficient i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; worldmodel_msgs/Interval _available_interval
       (send _available_interval :serialize s)
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
   ;; float64[] _poly_coefficient
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poly_coefficient (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _poly_coefficient i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; worldmodel_msgs/Interval _available_interval
     (send _available_interval :deserialize buf ptr-) (incf ptr- (send _available_interval :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::LaneBoundaryPolyline :md5sum-) "73d1ce9f545be02950ccc75118f40d8b")
(setf (get worldmodel_msgs::LaneBoundaryPolyline :datatype-) "worldmodel_msgs/LaneBoundaryPolyline")
(setf (get worldmodel_msgs::LaneBoundaryPolyline :definition-)
      "uint64 track_id
float64[] poly_coefficient
worldmodel_msgs/Interval available_interval

================================================================================
MSG: worldmodel_msgs/Interval
float64 begin
float64 end

")



(provide :worldmodel_msgs/LaneBoundaryPolyline "73d1ce9f545be02950ccc75118f40d8b")


