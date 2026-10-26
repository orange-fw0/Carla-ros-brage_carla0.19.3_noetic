;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::LidarPerceptionObjectData)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'LidarPerceptionObjectData (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LIDARPERCEPTIONOBJECTDATA")
  (make-package "PERCEPTION_INTERFACE_MSGS::LIDARPERCEPTIONOBJECTDATA"))

(in-package "ROS")
;;//! \htmlinclude LidarPerceptionObjectData.msg.html


(defclass perception_interface_msgs::LidarPerceptionObjectData
  :super ros::object
  :slots (_track_id _type_info _shape _shape_sigma _position _position_sigma _velocity _velocity_sigma _acceleration _acceleration_sigma _heading_yaw _heading_yaw_sigma _angular_velocity _angular_velocity_sigma _relative_position _relative_position_sigma _relative_velocity _relative_velocity_sigma _relative_acceleration _relative_acceleration_sigma _relative_heading_yaw _relative_heading_yaw_sigma _relative_angular_velocity _relative_angular_velocity_sigma _velocity_relative_to_ground _velocity_relative_to_ground_sigma _acceleration_relative_to_ground _acceleration_relative_to_ground_sigma _score _polygon_bottom _polygon_top _available _reserved_info ))

(defmethod perception_interface_msgs::LidarPerceptionObjectData
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:type_info __type_info) (instance perception_interface_msgs::ObjectTypeInfo :init))
    ((:shape __shape) (instance perception_interface_msgs::Shape3d :init))
    ((:shape_sigma __shape_sigma) (instance perception_interface_msgs::Shape3d :init))
    ((:position __position) (instance perception_interface_msgs::Point3d :init))
    ((:position_sigma __position_sigma) (instance perception_interface_msgs::Point3d :init))
    ((:velocity __velocity) (instance perception_interface_msgs::Vector3d :init))
    ((:velocity_sigma __velocity_sigma) (instance perception_interface_msgs::Vector3d :init))
    ((:acceleration __acceleration) (instance perception_interface_msgs::Vector3d :init))
    ((:acceleration_sigma __acceleration_sigma) (instance perception_interface_msgs::Vector3d :init))
    ((:heading_yaw __heading_yaw) 0.0)
    ((:heading_yaw_sigma __heading_yaw_sigma) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    ((:angular_velocity_sigma __angular_velocity_sigma) 0.0)
    ((:relative_position __relative_position) (instance perception_interface_msgs::Point3d :init))
    ((:relative_position_sigma __relative_position_sigma) (instance perception_interface_msgs::Point3d :init))
    ((:relative_velocity __relative_velocity) (instance perception_interface_msgs::Vector3d :init))
    ((:relative_velocity_sigma __relative_velocity_sigma) (instance perception_interface_msgs::Vector3d :init))
    ((:relative_acceleration __relative_acceleration) (instance perception_interface_msgs::Vector3d :init))
    ((:relative_acceleration_sigma __relative_acceleration_sigma) (instance perception_interface_msgs::Vector3d :init))
    ((:relative_heading_yaw __relative_heading_yaw) 0.0)
    ((:relative_heading_yaw_sigma __relative_heading_yaw_sigma) 0.0)
    ((:relative_angular_velocity __relative_angular_velocity) 0.0)
    ((:relative_angular_velocity_sigma __relative_angular_velocity_sigma) 0.0)
    ((:velocity_relative_to_ground __velocity_relative_to_ground) (instance perception_interface_msgs::Vector3d :init))
    ((:velocity_relative_to_ground_sigma __velocity_relative_to_ground_sigma) (instance perception_interface_msgs::Vector3d :init))
    ((:acceleration_relative_to_ground __acceleration_relative_to_ground) (instance perception_interface_msgs::Vector3d :init))
    ((:acceleration_relative_to_ground_sigma __acceleration_relative_to_ground_sigma) (instance perception_interface_msgs::Vector3d :init))
    ((:score __score) 0.0)
    ((:polygon_bottom __polygon_bottom) (instance perception_interface_msgs::Polygon3f :init))
    ((:polygon_top __polygon_top) (instance perception_interface_msgs::Polygon3f :init))
    ((:available __available) 0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _type_info __type_info)
   (setq _shape __shape)
   (setq _shape_sigma __shape_sigma)
   (setq _position __position)
   (setq _position_sigma __position_sigma)
   (setq _velocity __velocity)
   (setq _velocity_sigma __velocity_sigma)
   (setq _acceleration __acceleration)
   (setq _acceleration_sigma __acceleration_sigma)
   (setq _heading_yaw (float __heading_yaw))
   (setq _heading_yaw_sigma (float __heading_yaw_sigma))
   (setq _angular_velocity (float __angular_velocity))
   (setq _angular_velocity_sigma (float __angular_velocity_sigma))
   (setq _relative_position __relative_position)
   (setq _relative_position_sigma __relative_position_sigma)
   (setq _relative_velocity __relative_velocity)
   (setq _relative_velocity_sigma __relative_velocity_sigma)
   (setq _relative_acceleration __relative_acceleration)
   (setq _relative_acceleration_sigma __relative_acceleration_sigma)
   (setq _relative_heading_yaw (float __relative_heading_yaw))
   (setq _relative_heading_yaw_sigma (float __relative_heading_yaw_sigma))
   (setq _relative_angular_velocity (float __relative_angular_velocity))
   (setq _relative_angular_velocity_sigma (float __relative_angular_velocity_sigma))
   (setq _velocity_relative_to_ground __velocity_relative_to_ground)
   (setq _velocity_relative_to_ground_sigma __velocity_relative_to_ground_sigma)
   (setq _acceleration_relative_to_ground __acceleration_relative_to_ground)
   (setq _acceleration_relative_to_ground_sigma __acceleration_relative_to_ground_sigma)
   (setq _score (float __score))
   (setq _polygon_bottom __polygon_bottom)
   (setq _polygon_top __polygon_top)
   (setq _available (round __available))
   (setq _reserved_info (string __reserved_info))
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:type_info
   (&rest __type_info)
   (if (keywordp (car __type_info))
       (send* _type_info __type_info)
     (progn
       (if __type_info (setq _type_info (car __type_info)))
       _type_info)))
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:shape_sigma
   (&rest __shape_sigma)
   (if (keywordp (car __shape_sigma))
       (send* _shape_sigma __shape_sigma)
     (progn
       (if __shape_sigma (setq _shape_sigma (car __shape_sigma)))
       _shape_sigma)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:position_sigma
   (&rest __position_sigma)
   (if (keywordp (car __position_sigma))
       (send* _position_sigma __position_sigma)
     (progn
       (if __position_sigma (setq _position_sigma (car __position_sigma)))
       _position_sigma)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:velocity_sigma
   (&rest __velocity_sigma)
   (if (keywordp (car __velocity_sigma))
       (send* _velocity_sigma __velocity_sigma)
     (progn
       (if __velocity_sigma (setq _velocity_sigma (car __velocity_sigma)))
       _velocity_sigma)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:acceleration_sigma
   (&rest __acceleration_sigma)
   (if (keywordp (car __acceleration_sigma))
       (send* _acceleration_sigma __acceleration_sigma)
     (progn
       (if __acceleration_sigma (setq _acceleration_sigma (car __acceleration_sigma)))
       _acceleration_sigma)))
  (:heading_yaw
   (&optional __heading_yaw)
   (if __heading_yaw (setq _heading_yaw __heading_yaw)) _heading_yaw)
  (:heading_yaw_sigma
   (&optional __heading_yaw_sigma)
   (if __heading_yaw_sigma (setq _heading_yaw_sigma __heading_yaw_sigma)) _heading_yaw_sigma)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:angular_velocity_sigma
   (&optional __angular_velocity_sigma)
   (if __angular_velocity_sigma (setq _angular_velocity_sigma __angular_velocity_sigma)) _angular_velocity_sigma)
  (:relative_position
   (&rest __relative_position)
   (if (keywordp (car __relative_position))
       (send* _relative_position __relative_position)
     (progn
       (if __relative_position (setq _relative_position (car __relative_position)))
       _relative_position)))
  (:relative_position_sigma
   (&rest __relative_position_sigma)
   (if (keywordp (car __relative_position_sigma))
       (send* _relative_position_sigma __relative_position_sigma)
     (progn
       (if __relative_position_sigma (setq _relative_position_sigma (car __relative_position_sigma)))
       _relative_position_sigma)))
  (:relative_velocity
   (&rest __relative_velocity)
   (if (keywordp (car __relative_velocity))
       (send* _relative_velocity __relative_velocity)
     (progn
       (if __relative_velocity (setq _relative_velocity (car __relative_velocity)))
       _relative_velocity)))
  (:relative_velocity_sigma
   (&rest __relative_velocity_sigma)
   (if (keywordp (car __relative_velocity_sigma))
       (send* _relative_velocity_sigma __relative_velocity_sigma)
     (progn
       (if __relative_velocity_sigma (setq _relative_velocity_sigma (car __relative_velocity_sigma)))
       _relative_velocity_sigma)))
  (:relative_acceleration
   (&rest __relative_acceleration)
   (if (keywordp (car __relative_acceleration))
       (send* _relative_acceleration __relative_acceleration)
     (progn
       (if __relative_acceleration (setq _relative_acceleration (car __relative_acceleration)))
       _relative_acceleration)))
  (:relative_acceleration_sigma
   (&rest __relative_acceleration_sigma)
   (if (keywordp (car __relative_acceleration_sigma))
       (send* _relative_acceleration_sigma __relative_acceleration_sigma)
     (progn
       (if __relative_acceleration_sigma (setq _relative_acceleration_sigma (car __relative_acceleration_sigma)))
       _relative_acceleration_sigma)))
  (:relative_heading_yaw
   (&optional __relative_heading_yaw)
   (if __relative_heading_yaw (setq _relative_heading_yaw __relative_heading_yaw)) _relative_heading_yaw)
  (:relative_heading_yaw_sigma
   (&optional __relative_heading_yaw_sigma)
   (if __relative_heading_yaw_sigma (setq _relative_heading_yaw_sigma __relative_heading_yaw_sigma)) _relative_heading_yaw_sigma)
  (:relative_angular_velocity
   (&optional __relative_angular_velocity)
   (if __relative_angular_velocity (setq _relative_angular_velocity __relative_angular_velocity)) _relative_angular_velocity)
  (:relative_angular_velocity_sigma
   (&optional __relative_angular_velocity_sigma)
   (if __relative_angular_velocity_sigma (setq _relative_angular_velocity_sigma __relative_angular_velocity_sigma)) _relative_angular_velocity_sigma)
  (:velocity_relative_to_ground
   (&rest __velocity_relative_to_ground)
   (if (keywordp (car __velocity_relative_to_ground))
       (send* _velocity_relative_to_ground __velocity_relative_to_ground)
     (progn
       (if __velocity_relative_to_ground (setq _velocity_relative_to_ground (car __velocity_relative_to_ground)))
       _velocity_relative_to_ground)))
  (:velocity_relative_to_ground_sigma
   (&rest __velocity_relative_to_ground_sigma)
   (if (keywordp (car __velocity_relative_to_ground_sigma))
       (send* _velocity_relative_to_ground_sigma __velocity_relative_to_ground_sigma)
     (progn
       (if __velocity_relative_to_ground_sigma (setq _velocity_relative_to_ground_sigma (car __velocity_relative_to_ground_sigma)))
       _velocity_relative_to_ground_sigma)))
  (:acceleration_relative_to_ground
   (&rest __acceleration_relative_to_ground)
   (if (keywordp (car __acceleration_relative_to_ground))
       (send* _acceleration_relative_to_ground __acceleration_relative_to_ground)
     (progn
       (if __acceleration_relative_to_ground (setq _acceleration_relative_to_ground (car __acceleration_relative_to_ground)))
       _acceleration_relative_to_ground)))
  (:acceleration_relative_to_ground_sigma
   (&rest __acceleration_relative_to_ground_sigma)
   (if (keywordp (car __acceleration_relative_to_ground_sigma))
       (send* _acceleration_relative_to_ground_sigma __acceleration_relative_to_ground_sigma)
     (progn
       (if __acceleration_relative_to_ground_sigma (setq _acceleration_relative_to_ground_sigma (car __acceleration_relative_to_ground_sigma)))
       _acceleration_relative_to_ground_sigma)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:polygon_bottom
   (&rest __polygon_bottom)
   (if (keywordp (car __polygon_bottom))
       (send* _polygon_bottom __polygon_bottom)
     (progn
       (if __polygon_bottom (setq _polygon_bottom (car __polygon_bottom)))
       _polygon_bottom)))
  (:polygon_top
   (&rest __polygon_top)
   (if (keywordp (car __polygon_top))
       (send* _polygon_top __polygon_top)
     (progn
       (if __polygon_top (setq _polygon_top (car __polygon_top)))
       _polygon_top)))
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint64 _track_id
    8
    ;; perception_interface_msgs/ObjectTypeInfo _type_info
    (send _type_info :serialization-length)
    ;; perception_interface_msgs/Shape3d _shape
    (send _shape :serialization-length)
    ;; perception_interface_msgs/Shape3d _shape_sigma
    (send _shape_sigma :serialization-length)
    ;; perception_interface_msgs/Point3d _position
    (send _position :serialization-length)
    ;; perception_interface_msgs/Point3d _position_sigma
    (send _position_sigma :serialization-length)
    ;; perception_interface_msgs/Vector3d _velocity
    (send _velocity :serialization-length)
    ;; perception_interface_msgs/Vector3d _velocity_sigma
    (send _velocity_sigma :serialization-length)
    ;; perception_interface_msgs/Vector3d _acceleration
    (send _acceleration :serialization-length)
    ;; perception_interface_msgs/Vector3d _acceleration_sigma
    (send _acceleration_sigma :serialization-length)
    ;; float32 _heading_yaw
    4
    ;; float32 _heading_yaw_sigma
    4
    ;; float32 _angular_velocity
    4
    ;; float32 _angular_velocity_sigma
    4
    ;; perception_interface_msgs/Point3d _relative_position
    (send _relative_position :serialization-length)
    ;; perception_interface_msgs/Point3d _relative_position_sigma
    (send _relative_position_sigma :serialization-length)
    ;; perception_interface_msgs/Vector3d _relative_velocity
    (send _relative_velocity :serialization-length)
    ;; perception_interface_msgs/Vector3d _relative_velocity_sigma
    (send _relative_velocity_sigma :serialization-length)
    ;; perception_interface_msgs/Vector3d _relative_acceleration
    (send _relative_acceleration :serialization-length)
    ;; perception_interface_msgs/Vector3d _relative_acceleration_sigma
    (send _relative_acceleration_sigma :serialization-length)
    ;; float32 _relative_heading_yaw
    4
    ;; float32 _relative_heading_yaw_sigma
    4
    ;; float32 _relative_angular_velocity
    4
    ;; float32 _relative_angular_velocity_sigma
    4
    ;; perception_interface_msgs/Vector3d _velocity_relative_to_ground
    (send _velocity_relative_to_ground :serialization-length)
    ;; perception_interface_msgs/Vector3d _velocity_relative_to_ground_sigma
    (send _velocity_relative_to_ground_sigma :serialization-length)
    ;; perception_interface_msgs/Vector3d _acceleration_relative_to_ground
    (send _acceleration_relative_to_ground :serialization-length)
    ;; perception_interface_msgs/Vector3d _acceleration_relative_to_ground_sigma
    (send _acceleration_relative_to_ground_sigma :serialization-length)
    ;; float32 _score
    4
    ;; perception_interface_msgs/Polygon3f _polygon_bottom
    (send _polygon_bottom :serialization-length)
    ;; perception_interface_msgs/Polygon3f _polygon_top
    (send _polygon_top :serialization-length)
    ;; uint8 _available
    1
    ;; string _reserved_info
    4 (length _reserved_info)
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
     ;; perception_interface_msgs/ObjectTypeInfo _type_info
       (send _type_info :serialize s)
     ;; perception_interface_msgs/Shape3d _shape
       (send _shape :serialize s)
     ;; perception_interface_msgs/Shape3d _shape_sigma
       (send _shape_sigma :serialize s)
     ;; perception_interface_msgs/Point3d _position
       (send _position :serialize s)
     ;; perception_interface_msgs/Point3d _position_sigma
       (send _position_sigma :serialize s)
     ;; perception_interface_msgs/Vector3d _velocity
       (send _velocity :serialize s)
     ;; perception_interface_msgs/Vector3d _velocity_sigma
       (send _velocity_sigma :serialize s)
     ;; perception_interface_msgs/Vector3d _acceleration
       (send _acceleration :serialize s)
     ;; perception_interface_msgs/Vector3d _acceleration_sigma
       (send _acceleration_sigma :serialize s)
     ;; float32 _heading_yaw
       (sys::poke _heading_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading_yaw_sigma
       (sys::poke _heading_yaw_sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity_sigma
       (sys::poke _angular_velocity_sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Point3d _relative_position
       (send _relative_position :serialize s)
     ;; perception_interface_msgs/Point3d _relative_position_sigma
       (send _relative_position_sigma :serialize s)
     ;; perception_interface_msgs/Vector3d _relative_velocity
       (send _relative_velocity :serialize s)
     ;; perception_interface_msgs/Vector3d _relative_velocity_sigma
       (send _relative_velocity_sigma :serialize s)
     ;; perception_interface_msgs/Vector3d _relative_acceleration
       (send _relative_acceleration :serialize s)
     ;; perception_interface_msgs/Vector3d _relative_acceleration_sigma
       (send _relative_acceleration_sigma :serialize s)
     ;; float32 _relative_heading_yaw
       (sys::poke _relative_heading_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_heading_yaw_sigma
       (sys::poke _relative_heading_yaw_sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_angular_velocity
       (sys::poke _relative_angular_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relative_angular_velocity_sigma
       (sys::poke _relative_angular_velocity_sigma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Vector3d _velocity_relative_to_ground
       (send _velocity_relative_to_ground :serialize s)
     ;; perception_interface_msgs/Vector3d _velocity_relative_to_ground_sigma
       (send _velocity_relative_to_ground_sigma :serialize s)
     ;; perception_interface_msgs/Vector3d _acceleration_relative_to_ground
       (send _acceleration_relative_to_ground :serialize s)
     ;; perception_interface_msgs/Vector3d _acceleration_relative_to_ground_sigma
       (send _acceleration_relative_to_ground_sigma :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Polygon3f _polygon_bottom
       (send _polygon_bottom :serialize s)
     ;; perception_interface_msgs/Polygon3f _polygon_top
       (send _polygon_top :serialize s)
     ;; uint8 _available
       (write-byte _available s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
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
   ;; perception_interface_msgs/ObjectTypeInfo _type_info
     (send _type_info :deserialize buf ptr-) (incf ptr- (send _type_info :serialization-length))
   ;; perception_interface_msgs/Shape3d _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;; perception_interface_msgs/Shape3d _shape_sigma
     (send _shape_sigma :deserialize buf ptr-) (incf ptr- (send _shape_sigma :serialization-length))
   ;; perception_interface_msgs/Point3d _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; perception_interface_msgs/Point3d _position_sigma
     (send _position_sigma :deserialize buf ptr-) (incf ptr- (send _position_sigma :serialization-length))
   ;; perception_interface_msgs/Vector3d _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; perception_interface_msgs/Vector3d _velocity_sigma
     (send _velocity_sigma :deserialize buf ptr-) (incf ptr- (send _velocity_sigma :serialization-length))
   ;; perception_interface_msgs/Vector3d _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; perception_interface_msgs/Vector3d _acceleration_sigma
     (send _acceleration_sigma :deserialize buf ptr-) (incf ptr- (send _acceleration_sigma :serialization-length))
   ;; float32 _heading_yaw
     (setq _heading_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading_yaw_sigma
     (setq _heading_yaw_sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity_sigma
     (setq _angular_velocity_sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Point3d _relative_position
     (send _relative_position :deserialize buf ptr-) (incf ptr- (send _relative_position :serialization-length))
   ;; perception_interface_msgs/Point3d _relative_position_sigma
     (send _relative_position_sigma :deserialize buf ptr-) (incf ptr- (send _relative_position_sigma :serialization-length))
   ;; perception_interface_msgs/Vector3d _relative_velocity
     (send _relative_velocity :deserialize buf ptr-) (incf ptr- (send _relative_velocity :serialization-length))
   ;; perception_interface_msgs/Vector3d _relative_velocity_sigma
     (send _relative_velocity_sigma :deserialize buf ptr-) (incf ptr- (send _relative_velocity_sigma :serialization-length))
   ;; perception_interface_msgs/Vector3d _relative_acceleration
     (send _relative_acceleration :deserialize buf ptr-) (incf ptr- (send _relative_acceleration :serialization-length))
   ;; perception_interface_msgs/Vector3d _relative_acceleration_sigma
     (send _relative_acceleration_sigma :deserialize buf ptr-) (incf ptr- (send _relative_acceleration_sigma :serialization-length))
   ;; float32 _relative_heading_yaw
     (setq _relative_heading_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_heading_yaw_sigma
     (setq _relative_heading_yaw_sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_angular_velocity
     (setq _relative_angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relative_angular_velocity_sigma
     (setq _relative_angular_velocity_sigma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Vector3d _velocity_relative_to_ground
     (send _velocity_relative_to_ground :deserialize buf ptr-) (incf ptr- (send _velocity_relative_to_ground :serialization-length))
   ;; perception_interface_msgs/Vector3d _velocity_relative_to_ground_sigma
     (send _velocity_relative_to_ground_sigma :deserialize buf ptr-) (incf ptr- (send _velocity_relative_to_ground_sigma :serialization-length))
   ;; perception_interface_msgs/Vector3d _acceleration_relative_to_ground
     (send _acceleration_relative_to_ground :deserialize buf ptr-) (incf ptr- (send _acceleration_relative_to_ground :serialization-length))
   ;; perception_interface_msgs/Vector3d _acceleration_relative_to_ground_sigma
     (send _acceleration_relative_to_ground_sigma :deserialize buf ptr-) (incf ptr- (send _acceleration_relative_to_ground_sigma :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Polygon3f _polygon_bottom
     (send _polygon_bottom :deserialize buf ptr-) (incf ptr- (send _polygon_bottom :serialization-length))
   ;; perception_interface_msgs/Polygon3f _polygon_top
     (send _polygon_top :deserialize buf ptr-) (incf ptr- (send _polygon_top :serialization-length))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::LidarPerceptionObjectData :md5sum-) "2fd75493b6255b96a71ae09d8d3fd4e7")
(setf (get perception_interface_msgs::LidarPerceptionObjectData :datatype-) "perception_interface_msgs/LidarPerceptionObjectData")
(setf (get perception_interface_msgs::LidarPerceptionObjectData :definition-)
      "uint64 track_id
perception_interface_msgs/ObjectTypeInfo type_info
perception_interface_msgs/Shape3d shape
perception_interface_msgs/Shape3d shape_sigma
perception_interface_msgs/Point3d position
perception_interface_msgs/Point3d position_sigma
perception_interface_msgs/Vector3d velocity
perception_interface_msgs/Vector3d velocity_sigma
perception_interface_msgs/Vector3d acceleration
perception_interface_msgs/Vector3d acceleration_sigma
float32 heading_yaw
float32 heading_yaw_sigma
float32 angular_velocity
float32 angular_velocity_sigma
perception_interface_msgs/Point3d relative_position
perception_interface_msgs/Point3d relative_position_sigma
perception_interface_msgs/Vector3d relative_velocity
perception_interface_msgs/Vector3d relative_velocity_sigma
perception_interface_msgs/Vector3d relative_acceleration
perception_interface_msgs/Vector3d relative_acceleration_sigma
float32 relative_heading_yaw
float32 relative_heading_yaw_sigma
float32 relative_angular_velocity
float32 relative_angular_velocity_sigma
perception_interface_msgs/Vector3d velocity_relative_to_ground
perception_interface_msgs/Vector3d velocity_relative_to_ground_sigma
perception_interface_msgs/Vector3d acceleration_relative_to_ground
perception_interface_msgs/Vector3d acceleration_relative_to_ground_sigma
float32 score
perception_interface_msgs/Polygon3f polygon_bottom
perception_interface_msgs/Polygon3f polygon_top
uint8 available
string reserved_info

================================================================================
MSG: perception_interface_msgs/ObjectTypeInfo
perception_interface_msgs/ObjectTypePropertyEnum[] type_properties
perception_interface_msgs/ObjectTypeEnum type
perception_interface_msgs/GeneralObjectTypeEnum general_object_type
perception_interface_msgs/VehicleTypeEnum vehicle_type
perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type
perception_interface_msgs/VRUTypeEnum vru_type
perception_interface_msgs/VRUSubTypeEnum vru_sub_type
perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type
perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type
perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type
perception_interface_msgs/TrafficLightTypeEnum traffic_light_type
perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type

================================================================================
MSG: perception_interface_msgs/ObjectTypePropertyEnum
uint8 PROPERTY_OBJECT_TYPE_ENUM = 0
uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1
uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2
uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3
uint8 PROPERTY_VRU_TYPE_ENUM = 4
uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5
uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6
uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/ObjectTypeEnum
uint8 OBJECT_TYPE_GENERAL_OBJECT = 0
uint8 OBJECT_TYPE_VEHICLE = 1
uint8 OBJECT_TYPE_VRU = 2
uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3
uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/GeneralObjectTypeEnum
uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0
uint8 GENERAL_OBJECT_TYPE_POINT = 1
uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/VehicleTypeEnum
uint8 VEHICLE_TYPE_UNKNOWN = 0
uint8 VEHICLE_TYPE_CAR = 1
uint8 VEHICLE_TYPE_TRUCK = 2
uint8 VEHICLE_TYPE_BUS = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/VehicleSubTypeEnum
uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0
uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1
uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2
uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3
uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4
uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5
uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6
uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7
uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8
uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9
uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10
uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11
uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12
uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13
uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14
uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15
uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16
uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17
uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18
uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19
uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20
uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21
uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22
uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23
uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24
uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25
uint8 VEHICLE_SUB_TYPE_RV_BUS = 26
uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27
uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28
uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29
uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30
uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31
uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32
uint8 value

================================================================================
MSG: perception_interface_msgs/VRUTypeEnum
uint8 VRU_TYPE_UNKNOWN = 0
uint8 VRU_TYPE_PEDESTRIAN = 1
uint8 VRU_TYPE_BICYCLIST = 2
uint8 VRU_TYPE_TRICYCLIST = 3
uint8 VRU_TYPE_TROLLEY = 4
uint8 VRU_TYPE_ANIMAL = 5
uint8 value

================================================================================
MSG: perception_interface_msgs/VRUSubTypeEnum
uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0
uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1
uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2
uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3
uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4
uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5
uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6
uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7
uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8
uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9
uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10
uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11
uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12
uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13
uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14
uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15
uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16
uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17
uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18
uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19
uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20
uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21
uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22
uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23
uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24
uint8 VRU_SUB_TYPE_ANIMAL = 25
uint8 value

================================================================================
MSG: perception_interface_msgs/VRUAniSubTypeEnum
uint8 VRU_TYPE_UNKNOWN = 0
uint8 VRU_ANI_TYPE_DOG = 1
uint8 VRU_ANI_TYPE_CAT = 2
uint8 VRU_ANI_TYPE_HORSE = 3
uint8 VRU_ANI_TYPE_COW = 4
uint8 VRU_ANI_TYPE_SHEEP = 5
uint8 VRU_ANI_TYPE_PIG = 6
uint8 VRU_ANI_TYPE_OTHER = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/VRUPedSubTypeEnum
uint8 VRU_TYPE_UNKNOWN = 0
uint8 VRU_PED_TYPE_WORKER = 1
uint8 VRU_PED_TYPE_CHILD = 2
uint8 VRU_PED_TYPE_ADULT = 3
uint8 VRU_PED_TYPE_POLICE = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficBarrierTypeEnum
uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0
uint8 TRAFFIC_BARRIER_TYPE_CONE = 1
uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2
uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3
uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4
uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5
uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6
uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7
uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8
uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9
uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10
uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11
uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12
uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13
uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14
uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15
uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16
uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17
uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18
uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19
uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20
uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21
uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22
uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23
uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24
uint8 TRAFFIC_BARRIER_TYPE_FAR = 25
uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightTypeEnum
uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/AvoidObjectTypeEnum
uint8 AVOID_VEHICLE_TYPE = 0
uint8 AVOID_VRU_TYPE = 1
uint8 AVOID_BARRIER_TYPE = 2
uint8 AVOID_OTHER_TYPE = 3
uint8 AVOID_TYPE_UNMARKED = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/Shape3d
float64 height
float64 length
float64 width

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

================================================================================
MSG: perception_interface_msgs/Vector3d
float64 x
float64 y
float64 z

================================================================================
MSG: perception_interface_msgs/Polygon3f
perception_interface_msgs/Point3f[] points

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :perception_interface_msgs/LidarPerceptionObjectData "2fd75493b6255b96a71ae09d8d3fd4e7")


