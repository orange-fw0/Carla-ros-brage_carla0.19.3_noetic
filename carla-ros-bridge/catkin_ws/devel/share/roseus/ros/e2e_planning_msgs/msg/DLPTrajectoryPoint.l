;; Auto-generated. Do not edit!


(when (boundp 'e2e_planning_msgs::DLPTrajectoryPoint)
  (if (not (find-package "E2E_PLANNING_MSGS"))
    (make-package "E2E_PLANNING_MSGS"))
  (shadow 'DLPTrajectoryPoint (find-package "E2E_PLANNING_MSGS")))
(unless (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORYPOINT")
  (make-package "E2E_PLANNING_MSGS::DLPTRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude DLPTrajectoryPoint.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass e2e_planning_msgs::DLPTrajectoryPoint
  :super ros::object
  :slots (_position _velocity _acceleration _jerk _heading_angle _score _timestamp_us _valid ))

(defmethod e2e_planning_msgs::DLPTrajectoryPoint
  (:init
   (&key
    ((:position __position) (instance perception_interface_msgs::Point3d :init))
    ((:velocity __velocity) (instance perception_interface_msgs::Vector3d :init))
    ((:acceleration __acceleration) (instance perception_interface_msgs::Vector3d :init))
    ((:jerk __jerk) (instance perception_interface_msgs::Vector3d :init))
    ((:heading_angle __heading_angle) 0.0)
    ((:score __score) 0.0)
    ((:timestamp_us __timestamp_us) 0)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _jerk __jerk)
   (setq _heading_angle (float __heading_angle))
   (setq _score (float __score))
   (setq _timestamp_us (round __timestamp_us))
   (setq _valid __valid)
   self)
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
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:jerk
   (&rest __jerk)
   (if (keywordp (car __jerk))
       (send* _jerk __jerk)
     (progn
       (if __jerk (setq _jerk (car __jerk)))
       _jerk)))
  (:heading_angle
   (&optional __heading_angle)
   (if __heading_angle (setq _heading_angle __heading_angle)) _heading_angle)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/Point3d _position
    (send _position :serialization-length)
    ;; perception_interface_msgs/Vector3d _velocity
    (send _velocity :serialization-length)
    ;; perception_interface_msgs/Vector3d _acceleration
    (send _acceleration :serialization-length)
    ;; perception_interface_msgs/Vector3d _jerk
    (send _jerk :serialization-length)
    ;; float64 _heading_angle
    8
    ;; float64 _score
    8
    ;; uint64 _timestamp_us
    8
    ;; bool _valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/Point3d _position
       (send _position :serialize s)
     ;; perception_interface_msgs/Vector3d _velocity
       (send _velocity :serialize s)
     ;; perception_interface_msgs/Vector3d _acceleration
       (send _acceleration :serialize s)
     ;; perception_interface_msgs/Vector3d _jerk
       (send _jerk :serialize s)
     ;; float64 _heading_angle
       (sys::poke _heading_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint64 _timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp_us . bv) 1) -1) s))
             ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_timestamp_us . bv) 0) s)
              (write-long (if (>= _timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp_us s)(write-long (if (>= _timestamp_us 0) 0 #xffffffff) s)))
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/Point3d _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; perception_interface_msgs/Vector3d _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; perception_interface_msgs/Vector3d _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; perception_interface_msgs/Vector3d _jerk
     (send _jerk :deserialize buf ptr-) (incf ptr- (send _jerk :serialization-length))
   ;; float64 _heading_angle
     (setq _heading_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint64 _timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get e2e_planning_msgs::DLPTrajectoryPoint :md5sum-) "521241416e0c4ef02461fd962ac448e4")
(setf (get e2e_planning_msgs::DLPTrajectoryPoint :datatype-) "e2e_planning_msgs/DLPTrajectoryPoint")
(setf (get e2e_planning_msgs::DLPTrajectoryPoint :definition-)
      "perception_interface_msgs/Point3d position
perception_interface_msgs/Vector3d velocity
perception_interface_msgs/Vector3d acceleration
perception_interface_msgs/Vector3d jerk
float64 heading_angle
float64 score
uint64 timestamp_us
bool valid

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

")



(provide :e2e_planning_msgs/DLPTrajectoryPoint "521241416e0c4ef02461fd962ac448e4")


