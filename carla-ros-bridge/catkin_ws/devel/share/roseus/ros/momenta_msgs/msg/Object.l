;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::Object)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'Object (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::OBJECT")
  (make-package "MOMENTA_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass momenta_msgs::Object
  :super ros::object
  :slots (_track_id _det_trunc _position _sigma_position _velocity _sigma_velocity _length _width _height _sigma_length _sigma_width _sigma_height _theta _sigma_theta _type _track_times _visibility _back_lamp _det_score _bbox_pts _reid_feature ))

(defmethod momenta_msgs::Object
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:det_trunc __det_trunc) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:sigma_position __sigma_position) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:sigma_velocity __sigma_velocity) (instance geometry_msgs::Vector3 :init))
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:sigma_length __sigma_length) 0.0)
    ((:sigma_width __sigma_width) 0.0)
    ((:sigma_height __sigma_height) 0.0)
    ((:theta __theta) 0.0)
    ((:sigma_theta __sigma_theta) 0.0)
    ((:type __type) 0)
    ((:track_times __track_times) 0)
    ((:visibility __visibility) 0)
    ((:back_lamp __back_lamp) 0)
    ((:det_score __det_score) 0.0)
    ((:bbox_pts __bbox_pts) (make-array 0 :initial-element 0 :element-type :integer))
    ((:reid_feature __reid_feature) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _det_trunc (round __det_trunc))
   (setq _position __position)
   (setq _sigma_position __sigma_position)
   (setq _velocity __velocity)
   (setq _sigma_velocity __sigma_velocity)
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _sigma_length (float __sigma_length))
   (setq _sigma_width (float __sigma_width))
   (setq _sigma_height (float __sigma_height))
   (setq _theta (float __theta))
   (setq _sigma_theta (float __sigma_theta))
   (setq _type (round __type))
   (setq _track_times (round __track_times))
   (setq _visibility (round __visibility))
   (setq _back_lamp (round __back_lamp))
   (setq _det_score (float __det_score))
   (setq _bbox_pts __bbox_pts)
   (setq _reid_feature __reid_feature)
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:det_trunc
   (&optional __det_trunc)
   (if __det_trunc (setq _det_trunc __det_trunc)) _det_trunc)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:sigma_position
   (&rest __sigma_position)
   (if (keywordp (car __sigma_position))
       (send* _sigma_position __sigma_position)
     (progn
       (if __sigma_position (setq _sigma_position (car __sigma_position)))
       _sigma_position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:sigma_velocity
   (&rest __sigma_velocity)
   (if (keywordp (car __sigma_velocity))
       (send* _sigma_velocity __sigma_velocity)
     (progn
       (if __sigma_velocity (setq _sigma_velocity (car __sigma_velocity)))
       _sigma_velocity)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:sigma_length
   (&optional __sigma_length)
   (if __sigma_length (setq _sigma_length __sigma_length)) _sigma_length)
  (:sigma_width
   (&optional __sigma_width)
   (if __sigma_width (setq _sigma_width __sigma_width)) _sigma_width)
  (:sigma_height
   (&optional __sigma_height)
   (if __sigma_height (setq _sigma_height __sigma_height)) _sigma_height)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:sigma_theta
   (&optional __sigma_theta)
   (if __sigma_theta (setq _sigma_theta __sigma_theta)) _sigma_theta)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:track_times
   (&optional __track_times)
   (if __track_times (setq _track_times __track_times)) _track_times)
  (:visibility
   (&optional __visibility)
   (if __visibility (setq _visibility __visibility)) _visibility)
  (:back_lamp
   (&optional __back_lamp)
   (if __back_lamp (setq _back_lamp __back_lamp)) _back_lamp)
  (:det_score
   (&optional __det_score)
   (if __det_score (setq _det_score __det_score)) _det_score)
  (:bbox_pts
   (&optional __bbox_pts)
   (if __bbox_pts (setq _bbox_pts __bbox_pts)) _bbox_pts)
  (:reid_feature
   (&optional __reid_feature)
   (if __reid_feature (setq _reid_feature __reid_feature)) _reid_feature)
  (:serialization-length
   ()
   (+
    ;; uint64 _track_id
    8
    ;; int32 _det_trunc
    4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _sigma_position
    (send _sigma_position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _sigma_velocity
    (send _sigma_velocity :serialization-length)
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; float32 _height
    4
    ;; float32 _sigma_length
    4
    ;; float32 _sigma_width
    4
    ;; float32 _sigma_height
    4
    ;; float32 _theta
    4
    ;; float32 _sigma_theta
    4
    ;; uint32 _type
    4
    ;; uint64 _track_times
    8
    ;; int32 _visibility
    4
    ;; int32 _back_lamp
    4
    ;; float32 _det_score
    4
    ;; int32[] _bbox_pts
    (* 4    (length _bbox_pts)) 4
    ;; float32[] _reid_feature
    (* 4    (length _reid_feature)) 4
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
     ;; int32 _det_trunc
       (write-long _det_trunc s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _sigma_position
       (send _sigma_position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _sigma_velocity
       (send _sigma_velocity :serialize s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sigma_length
       (sys::poke _sigma_length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sigma_width
       (sys::poke _sigma_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sigma_height
       (sys::poke _sigma_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sigma_theta
       (sys::poke _sigma_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _type
       (write-long _type s)
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
     ;; int32 _visibility
       (write-long _visibility s)
     ;; int32 _back_lamp
       (write-long _back_lamp s)
     ;; float32 _det_score
       (sys::poke _det_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32[] _bbox_pts
     (write-long (length _bbox_pts) s)
     (dotimes (i (length _bbox_pts))
       (write-long (elt _bbox_pts i) s)
       )
     ;; float32[] _reid_feature
     (write-long (length _reid_feature) s)
     (dotimes (i (length _reid_feature))
       (sys::poke (elt _reid_feature i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
   ;; int32 _det_trunc
     (setq _det_trunc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _sigma_position
     (send _sigma_position :deserialize buf ptr-) (incf ptr- (send _sigma_position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _sigma_velocity
     (send _sigma_velocity :deserialize buf ptr-) (incf ptr- (send _sigma_velocity :serialization-length))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sigma_length
     (setq _sigma_length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sigma_width
     (setq _sigma_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sigma_height
     (setq _sigma_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sigma_theta
     (setq _sigma_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; int32 _visibility
     (setq _visibility (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _back_lamp
     (setq _back_lamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _det_score
     (setq _det_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32[] _bbox_pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bbox_pts (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _bbox_pts i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
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

(setf (get momenta_msgs::Object :md5sum-) "ef54b0b3b22f969ed9a8987b9425a2ea")
(setf (get momenta_msgs::Object :datatype-) "momenta_msgs/Object")
(setf (get momenta_msgs::Object :definition-)
      "uint64 track_id
int32 det_trunc
geometry_msgs/Point position
geometry_msgs/Vector3 sigma_position
geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 sigma_velocity
float32 length
float32 width
float32 height
float32 sigma_length
float32 sigma_width
float32 sigma_height
float32 theta
float32 sigma_theta
uint32 type
uint64 track_times
int32 visibility
int32 back_lamp
float32 det_score
int32[] bbox_pts
float32[] reid_feature

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :momenta_msgs/Object "ef54b0b3b22f969ed9a8987b9425a2ea")


