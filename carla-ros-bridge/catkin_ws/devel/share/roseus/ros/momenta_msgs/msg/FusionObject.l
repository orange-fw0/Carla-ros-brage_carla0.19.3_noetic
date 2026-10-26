;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::FusionObject)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'FusionObject (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::FUSIONOBJECT")
  (make-package "MOMENTA_MSGS::FUSIONOBJECT"))

(in-package "ROS")
;;//! \htmlinclude FusionObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass momenta_msgs::FusionObject
  :super ros::object
  :slots (_track_id _type _const_vel_prob _const_acc_prob _still_prob _coord_turn_prob _position _velocity _accelaration _theta _theta_sigma _omega _omega_sigma _d_omega _d_omega_sigma _sigma_position _sigma_velocity _relative_position _relative_velocity _relative_accelaration _relative_theta _length _width _height ))

(defmethod momenta_msgs::FusionObject
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:type __type) 0)
    ((:const_vel_prob __const_vel_prob) 0.0)
    ((:const_acc_prob __const_acc_prob) 0.0)
    ((:still_prob __still_prob) 0.0)
    ((:coord_turn_prob __coord_turn_prob) 0.0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:accelaration __accelaration) (instance geometry_msgs::Vector3 :init))
    ((:theta __theta) 0.0)
    ((:theta_sigma __theta_sigma) 0.0)
    ((:omega __omega) 0.0)
    ((:omega_sigma __omega_sigma) 0.0)
    ((:d_omega __d_omega) 0.0)
    ((:d_omega_sigma __d_omega_sigma) 0.0)
    ((:sigma_position __sigma_position) (instance geometry_msgs::Vector3 :init))
    ((:sigma_velocity __sigma_velocity) (instance geometry_msgs::Vector3 :init))
    ((:relative_position __relative_position) (instance geometry_msgs::Point :init))
    ((:relative_velocity __relative_velocity) (instance geometry_msgs::Vector3 :init))
    ((:relative_accelaration __relative_accelaration) (instance geometry_msgs::Vector3 :init))
    ((:relative_theta __relative_theta) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _type (round __type))
   (setq _const_vel_prob (float __const_vel_prob))
   (setq _const_acc_prob (float __const_acc_prob))
   (setq _still_prob (float __still_prob))
   (setq _coord_turn_prob (float __coord_turn_prob))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _accelaration __accelaration)
   (setq _theta (float __theta))
   (setq _theta_sigma (float __theta_sigma))
   (setq _omega (float __omega))
   (setq _omega_sigma (float __omega_sigma))
   (setq _d_omega (float __d_omega))
   (setq _d_omega_sigma (float __d_omega_sigma))
   (setq _sigma_position __sigma_position)
   (setq _sigma_velocity __sigma_velocity)
   (setq _relative_position __relative_position)
   (setq _relative_velocity __relative_velocity)
   (setq _relative_accelaration __relative_accelaration)
   (setq _relative_theta (float __relative_theta))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:const_vel_prob
   (&optional __const_vel_prob)
   (if __const_vel_prob (setq _const_vel_prob __const_vel_prob)) _const_vel_prob)
  (:const_acc_prob
   (&optional __const_acc_prob)
   (if __const_acc_prob (setq _const_acc_prob __const_acc_prob)) _const_acc_prob)
  (:still_prob
   (&optional __still_prob)
   (if __still_prob (setq _still_prob __still_prob)) _still_prob)
  (:coord_turn_prob
   (&optional __coord_turn_prob)
   (if __coord_turn_prob (setq _coord_turn_prob __coord_turn_prob)) _coord_turn_prob)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:accelaration
   (&rest __accelaration)
   (if (keywordp (car __accelaration))
       (send* _accelaration __accelaration)
     (progn
       (if __accelaration (setq _accelaration (car __accelaration)))
       _accelaration)))
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:theta_sigma
   (&optional __theta_sigma)
   (if __theta_sigma (setq _theta_sigma __theta_sigma)) _theta_sigma)
  (:omega
   (&optional __omega)
   (if __omega (setq _omega __omega)) _omega)
  (:omega_sigma
   (&optional __omega_sigma)
   (if __omega_sigma (setq _omega_sigma __omega_sigma)) _omega_sigma)
  (:d_omega
   (&optional __d_omega)
   (if __d_omega (setq _d_omega __d_omega)) _d_omega)
  (:d_omega_sigma
   (&optional __d_omega_sigma)
   (if __d_omega_sigma (setq _d_omega_sigma __d_omega_sigma)) _d_omega_sigma)
  (:sigma_position
   (&rest __sigma_position)
   (if (keywordp (car __sigma_position))
       (send* _sigma_position __sigma_position)
     (progn
       (if __sigma_position (setq _sigma_position (car __sigma_position)))
       _sigma_position)))
  (:sigma_velocity
   (&rest __sigma_velocity)
   (if (keywordp (car __sigma_velocity))
       (send* _sigma_velocity __sigma_velocity)
     (progn
       (if __sigma_velocity (setq _sigma_velocity (car __sigma_velocity)))
       _sigma_velocity)))
  (:relative_position
   (&rest __relative_position)
   (if (keywordp (car __relative_position))
       (send* _relative_position __relative_position)
     (progn
       (if __relative_position (setq _relative_position (car __relative_position)))
       _relative_position)))
  (:relative_velocity
   (&rest __relative_velocity)
   (if (keywordp (car __relative_velocity))
       (send* _relative_velocity __relative_velocity)
     (progn
       (if __relative_velocity (setq _relative_velocity (car __relative_velocity)))
       _relative_velocity)))
  (:relative_accelaration
   (&rest __relative_accelaration)
   (if (keywordp (car __relative_accelaration))
       (send* _relative_accelaration __relative_accelaration)
     (progn
       (if __relative_accelaration (setq _relative_accelaration (car __relative_accelaration)))
       _relative_accelaration)))
  (:relative_theta
   (&optional __relative_theta)
   (if __relative_theta (setq _relative_theta __relative_theta)) _relative_theta)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; uint64 _track_id
    8
    ;; uint32 _type
    4
    ;; float32 _const_vel_prob
    4
    ;; float32 _const_acc_prob
    4
    ;; float32 _still_prob
    4
    ;; float32 _coord_turn_prob
    4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _accelaration
    (send _accelaration :serialization-length)
    ;; float32 _theta
    4
    ;; float32 _theta_sigma
    4
    ;; float32 _omega
    4
    ;; float32 _omega_sigma
    4
    ;; float32 _d_omega
    4
    ;; float32 _d_omega_sigma
    4
    ;; geometry_msgs/Vector3 _sigma_position
    (send _sigma_position :serialization-length)
    ;; geometry_msgs/Vector3 _sigma_velocity
    (send _sigma_velocity :serialization-length)
    ;; geometry_msgs/Point _relative_position
    (send _relative_position :serialization-length)
    ;; geometry_msgs/Vector3 _relative_velocity
    (send _relative_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _relative_accelaration
    (send _relative_accelaration :serialization-length)
    ;; float32 _relative_theta
    4
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; float32 _height
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
     ;; uint32 _type
       (write-long _type s)
     ;; float32 _const_vel_prob
       (sys::poke _const_vel_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _const_acc_prob
       (sys::poke _const_acc_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _still_prob
       (sys::poke _still_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _coord_turn_prob
       (sys::poke _coord_turn_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _accelaration
       (send _accelaration :serialize s)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta_sigma
       (sys::poke _theta_sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega
       (sys::poke _omega (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega_sigma
       (sys::poke _omega_sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d_omega
       (sys::poke _d_omega (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d_omega_sigma
       (sys::poke _d_omega_sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _sigma_position
       (send _sigma_position :serialize s)
     ;; geometry_msgs/Vector3 _sigma_velocity
       (send _sigma_velocity :serialize s)
     ;; geometry_msgs/Point _relative_position
       (send _relative_position :serialize s)
     ;; geometry_msgs/Vector3 _relative_velocity
       (send _relative_velocity :serialize s)
     ;; geometry_msgs/Vector3 _relative_accelaration
       (send _relative_accelaration :serialize s)
     ;; float32 _relative_theta
       (sys::poke _relative_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _const_vel_prob
     (setq _const_vel_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _const_acc_prob
     (setq _const_acc_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _still_prob
     (setq _still_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _coord_turn_prob
     (setq _coord_turn_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _accelaration
     (send _accelaration :deserialize buf ptr-) (incf ptr- (send _accelaration :serialization-length))
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta_sigma
     (setq _theta_sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega
     (setq _omega (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega_sigma
     (setq _omega_sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d_omega
     (setq _d_omega (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d_omega_sigma
     (setq _d_omega_sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _sigma_position
     (send _sigma_position :deserialize buf ptr-) (incf ptr- (send _sigma_position :serialization-length))
   ;; geometry_msgs/Vector3 _sigma_velocity
     (send _sigma_velocity :deserialize buf ptr-) (incf ptr- (send _sigma_velocity :serialization-length))
   ;; geometry_msgs/Point _relative_position
     (send _relative_position :deserialize buf ptr-) (incf ptr- (send _relative_position :serialization-length))
   ;; geometry_msgs/Vector3 _relative_velocity
     (send _relative_velocity :deserialize buf ptr-) (incf ptr- (send _relative_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _relative_accelaration
     (send _relative_accelaration :deserialize buf ptr-) (incf ptr- (send _relative_accelaration :serialization-length))
   ;; float32 _relative_theta
     (setq _relative_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::FusionObject :md5sum-) "ee97446f9e719c773f31dee6d5f6be7e")
(setf (get momenta_msgs::FusionObject :datatype-) "momenta_msgs/FusionObject")
(setf (get momenta_msgs::FusionObject :definition-)
      "uint64 track_id
uint32 type
float32 const_vel_prob
float32 const_acc_prob
float32 still_prob
float32 coord_turn_prob
geometry_msgs/Point position
geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 accelaration
float32 theta
float32 theta_sigma
float32 omega
float32 omega_sigma
float32 d_omega
float32 d_omega_sigma
geometry_msgs/Vector3 sigma_position
geometry_msgs/Vector3 sigma_velocity
geometry_msgs/Point relative_position
geometry_msgs/Vector3 relative_velocity
geometry_msgs/Vector3 relative_accelaration
float32 relative_theta
float32 length
float32 width
float32 height

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



(provide :momenta_msgs/FusionObject "ee97446f9e719c773f31dee6d5f6be7e")


