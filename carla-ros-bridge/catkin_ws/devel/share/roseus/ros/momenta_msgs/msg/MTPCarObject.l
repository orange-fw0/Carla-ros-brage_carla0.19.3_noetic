;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MTPCarObject)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MTPCarObject (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MTPCAROBJECT")
  (make-package "MOMENTA_MSGS::MTPCAROBJECT"))

(in-package "ROS")
;;//! \htmlinclude MTPCarObject.msg.html


(defclass momenta_msgs::MTPCarObject
  :super ros::object
  :slots (_available _left _top _right _bottom _score _visibility _wheels_position_x _wheels_position_y _wheels_visibility _wheels_count _pillars_position_x _pillars_visibility _pillars_count _heading _track_id _track_times _live _angle_yaw _backlamp _type _reid_feature_length _reid_feature ))

(defmethod momenta_msgs::MTPCarObject
  (:init
   (&key
    ((:available __available) 0)
    ((:left __left) 0.0)
    ((:top __top) 0.0)
    ((:right __right) 0.0)
    ((:bottom __bottom) 0.0)
    ((:score __score) 0.0)
    ((:visibility __visibility) 0)
    ((:wheels_position_x __wheels_position_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wheels_position_y __wheels_position_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wheels_visibility __wheels_visibility) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wheels_count __wheels_count) 0)
    ((:pillars_position_x __pillars_position_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pillars_visibility __pillars_visibility) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pillars_count __pillars_count) 0)
    ((:heading __heading) 0)
    ((:track_id __track_id) 0)
    ((:track_times __track_times) 0)
    ((:live __live) 0)
    ((:angle_yaw __angle_yaw) 0.0)
    ((:backlamp __backlamp) 0)
    ((:type __type) 0)
    ((:reid_feature_length __reid_feature_length) 0)
    ((:reid_feature __reid_feature) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _left (float __left))
   (setq _top (float __top))
   (setq _right (float __right))
   (setq _bottom (float __bottom))
   (setq _score (float __score))
   (setq _visibility (round __visibility))
   (setq _wheels_position_x __wheels_position_x)
   (setq _wheels_position_y __wheels_position_y)
   (setq _wheels_visibility __wheels_visibility)
   (setq _wheels_count (round __wheels_count))
   (setq _pillars_position_x __pillars_position_x)
   (setq _pillars_visibility __pillars_visibility)
   (setq _pillars_count (round __pillars_count))
   (setq _heading (round __heading))
   (setq _track_id (round __track_id))
   (setq _track_times (round __track_times))
   (setq _live (round __live))
   (setq _angle_yaw (float __angle_yaw))
   (setq _backlamp (round __backlamp))
   (setq _type (round __type))
   (setq _reid_feature_length (round __reid_feature_length))
   (setq _reid_feature __reid_feature)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:top
   (&optional __top)
   (if __top (setq _top __top)) _top)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:bottom
   (&optional __bottom)
   (if __bottom (setq _bottom __bottom)) _bottom)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:visibility
   (&optional __visibility)
   (if __visibility (setq _visibility __visibility)) _visibility)
  (:wheels_position_x
   (&optional __wheels_position_x)
   (if __wheels_position_x (setq _wheels_position_x __wheels_position_x)) _wheels_position_x)
  (:wheels_position_y
   (&optional __wheels_position_y)
   (if __wheels_position_y (setq _wheels_position_y __wheels_position_y)) _wheels_position_y)
  (:wheels_visibility
   (&optional __wheels_visibility)
   (if __wheels_visibility (setq _wheels_visibility __wheels_visibility)) _wheels_visibility)
  (:wheels_count
   (&optional __wheels_count)
   (if __wheels_count (setq _wheels_count __wheels_count)) _wheels_count)
  (:pillars_position_x
   (&optional __pillars_position_x)
   (if __pillars_position_x (setq _pillars_position_x __pillars_position_x)) _pillars_position_x)
  (:pillars_visibility
   (&optional __pillars_visibility)
   (if __pillars_visibility (setq _pillars_visibility __pillars_visibility)) _pillars_visibility)
  (:pillars_count
   (&optional __pillars_count)
   (if __pillars_count (setq _pillars_count __pillars_count)) _pillars_count)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:track_times
   (&optional __track_times)
   (if __track_times (setq _track_times __track_times)) _track_times)
  (:live
   (&optional __live)
   (if __live (setq _live __live)) _live)
  (:angle_yaw
   (&optional __angle_yaw)
   (if __angle_yaw (setq _angle_yaw __angle_yaw)) _angle_yaw)
  (:backlamp
   (&optional __backlamp)
   (if __backlamp (setq _backlamp __backlamp)) _backlamp)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:reid_feature_length
   (&optional __reid_feature_length)
   (if __reid_feature_length (setq _reid_feature_length __reid_feature_length)) _reid_feature_length)
  (:reid_feature
   (&optional __reid_feature)
   (if __reid_feature (setq _reid_feature __reid_feature)) _reid_feature)
  (:serialization-length
   ()
   (+
    ;; uint64 _available
    8
    ;; float32 _left
    4
    ;; float32 _top
    4
    ;; float32 _right
    4
    ;; float32 _bottom
    4
    ;; float32 _score
    4
    ;; int32 _visibility
    4
    ;; float32[] _wheels_position_x
    (* 4    (length _wheels_position_x)) 4
    ;; float32[] _wheels_position_y
    (* 4    (length _wheels_position_y)) 4
    ;; float32[] _wheels_visibility
    (* 4    (length _wheels_visibility)) 4
    ;; int32 _wheels_count
    4
    ;; float32[] _pillars_position_x
    (* 4    (length _pillars_position_x)) 4
    ;; float32[] _pillars_visibility
    (* 4    (length _pillars_visibility)) 4
    ;; int32 _pillars_count
    4
    ;; uint32 _heading
    4
    ;; uint64 _track_id
    8
    ;; uint64 _track_times
    8
    ;; int32 _live
    4
    ;; float32 _angle_yaw
    4
    ;; uint32 _backlamp
    4
    ;; uint32 _type
    4
    ;; uint32 _reid_feature_length
    4
    ;; float32[] _reid_feature
    (* 4    (length _reid_feature)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _available
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _available (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _available) (= (length (_available . bv)) 2)) ;; bignum
              (write-long (ash (elt (_available . bv) 0) 0) s)
              (write-long (ash (elt (_available . bv) 1) -1) s))
             ((and (class _available) (= (length (_available . bv)) 1)) ;; big1
              (write-long (elt (_available . bv) 0) s)
              (write-long (if (>= _available 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _available s)(write-long (if (>= _available 0) 0 #xffffffff) s)))
     ;; float32 _left
       (sys::poke _left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _top
       (sys::poke _top (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right
       (sys::poke _right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bottom
       (sys::poke _bottom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _visibility
       (write-long _visibility s)
     ;; float32[] _wheels_position_x
     (write-long (length _wheels_position_x) s)
     (dotimes (i (length _wheels_position_x))
       (sys::poke (elt _wheels_position_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _wheels_position_y
     (write-long (length _wheels_position_y) s)
     (dotimes (i (length _wheels_position_y))
       (sys::poke (elt _wheels_position_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _wheels_visibility
     (write-long (length _wheels_visibility) s)
     (dotimes (i (length _wheels_visibility))
       (sys::poke (elt _wheels_visibility i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _wheels_count
       (write-long _wheels_count s)
     ;; float32[] _pillars_position_x
     (write-long (length _pillars_position_x) s)
     (dotimes (i (length _pillars_position_x))
       (sys::poke (elt _pillars_position_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pillars_visibility
     (write-long (length _pillars_visibility) s)
     (dotimes (i (length _pillars_visibility))
       (sys::poke (elt _pillars_visibility i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _pillars_count
       (write-long _pillars_count s)
     ;; uint32 _heading
       (write-long _heading s)
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
     ;; int32 _live
       (write-long _live s)
     ;; float32 _angle_yaw
       (sys::poke _angle_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _backlamp
       (write-long _backlamp s)
     ;; uint32 _type
       (write-long _type s)
     ;; uint32 _reid_feature_length
       (write-long _reid_feature_length s)
     ;; float32[] _reid_feature
     (write-long (length _reid_feature) s)
     (dotimes (i (length _reid_feature))
       (sys::poke (elt _reid_feature i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _available
     
#+(or :alpha :irix6 :x86_64)
      (setf _available (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _available (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _left
     (setq _left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _top
     (setq _top (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right
     (setq _right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bottom
     (setq _bottom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _visibility
     (setq _visibility (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _wheels_position_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheels_position_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheels_position_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _wheels_position_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheels_position_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheels_position_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _wheels_visibility
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheels_visibility (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheels_visibility i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _wheels_count
     (setq _wheels_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _pillars_position_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pillars_position_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pillars_position_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pillars_visibility
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pillars_visibility (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pillars_visibility i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _pillars_count
     (setq _pillars_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _heading
     (setq _heading (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; int32 _live
     (setq _live (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _angle_yaw
     (setq _angle_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _backlamp
     (setq _backlamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reid_feature_length
     (setq _reid_feature_length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _reid_feature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reid_feature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _reid_feature i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::MTPCarObject :md5sum-) "77a423611d04ca20ceb99fc7f5d80ce9")
(setf (get momenta_msgs::MTPCarObject :datatype-) "momenta_msgs/MTPCarObject")
(setf (get momenta_msgs::MTPCarObject :definition-)
      "uint64 available
float32 left
float32 top
float32 right
float32 bottom
float32 score
int32 visibility
float32[] wheels_position_x
float32[] wheels_position_y
float32[] wheels_visibility
int32 wheels_count
float32[] pillars_position_x
float32[] pillars_visibility
int32 pillars_count
uint32 heading
uint64 track_id
uint64 track_times
int32 live
float32 angle_yaw
uint32 backlamp
uint32 type
uint32 reid_feature_length
float32[] reid_feature

")



(provide :momenta_msgs/MTPCarObject "77a423611d04ca20ceb99fc7f5d80ce9")


