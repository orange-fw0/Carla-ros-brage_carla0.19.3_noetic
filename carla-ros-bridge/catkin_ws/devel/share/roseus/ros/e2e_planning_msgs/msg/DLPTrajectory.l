;; Auto-generated. Do not edit!


(when (boundp 'e2e_planning_msgs::DLPTrajectory)
  (if (not (find-package "E2E_PLANNING_MSGS"))
    (make-package "E2E_PLANNING_MSGS"))
  (shadow 'DLPTrajectory (find-package "E2E_PLANNING_MSGS")))
(unless (find-package "E2E_PLANNING_MSGS::DLPTRAJECTORY")
  (make-package "E2E_PLANNING_MSGS::DLPTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude DLPTrajectory.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass e2e_planning_msgs::DLPTrajectory
  :super ros::object
  :slots (_points _type _anchor_type _anchor_id _goal_point _multi_modality_id _object_id _timestamp_us _score _reserved_info ))

(defmethod e2e_planning_msgs::DLPTrajectory
  (:init
   (&key
    ((:points __points) ())
    ((:type __type) (instance e2e_planning_msgs::DLPTrajectoryTypeEnum :init))
    ((:anchor_type __anchor_type) 0)
    ((:anchor_id __anchor_id) 0)
    ((:goal_point __goal_point) (instance perception_interface_msgs::Point3d :init))
    ((:multi_modality_id __multi_modality_id) 0)
    ((:object_id __object_id) 0)
    ((:timestamp_us __timestamp_us) 0)
    ((:score __score) 0.0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _points __points)
   (setq _type __type)
   (setq _anchor_type (round __anchor_type))
   (setq _anchor_id (round __anchor_id))
   (setq _goal_point __goal_point)
   (setq _multi_modality_id (round __multi_modality_id))
   (setq _object_id (round __object_id))
   (setq _timestamp_us (round __timestamp_us))
   (setq _score (float __score))
   (setq _reserved_info (string __reserved_info))
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:anchor_type
   (&optional __anchor_type)
   (if __anchor_type (setq _anchor_type __anchor_type)) _anchor_type)
  (:anchor_id
   (&optional __anchor_id)
   (if __anchor_id (setq _anchor_id __anchor_id)) _anchor_id)
  (:goal_point
   (&rest __goal_point)
   (if (keywordp (car __goal_point))
       (send* _goal_point __goal_point)
     (progn
       (if __goal_point (setq _goal_point (car __goal_point)))
       _goal_point)))
  (:multi_modality_id
   (&optional __multi_modality_id)
   (if __multi_modality_id (setq _multi_modality_id __multi_modality_id)) _multi_modality_id)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; e2e_planning_msgs/DLPTrajectoryPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; e2e_planning_msgs/DLPTrajectoryTypeEnum _type
    (send _type :serialization-length)
    ;; uint8 _anchor_type
    1
    ;; uint64 _anchor_id
    8
    ;; perception_interface_msgs/Point3d _goal_point
    (send _goal_point :serialization-length)
    ;; uint8 _multi_modality_id
    1
    ;; uint64 _object_id
    8
    ;; uint64 _timestamp_us
    8
    ;; float64 _score
    8
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; e2e_planning_msgs/DLPTrajectoryPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; e2e_planning_msgs/DLPTrajectoryTypeEnum _type
       (send _type :serialize s)
     ;; uint8 _anchor_type
       (write-byte _anchor_type s)
     ;; uint64 _anchor_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _anchor_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _anchor_id) (= (length (_anchor_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_anchor_id . bv) 0) 0) s)
              (write-long (ash (elt (_anchor_id . bv) 1) -1) s))
             ((and (class _anchor_id) (= (length (_anchor_id . bv)) 1)) ;; big1
              (write-long (elt (_anchor_id . bv) 0) s)
              (write-long (if (>= _anchor_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _anchor_id s)(write-long (if (>= _anchor_id 0) 0 #xffffffff) s)))
     ;; perception_interface_msgs/Point3d _goal_point
       (send _goal_point :serialize s)
     ;; uint8 _multi_modality_id
       (write-byte _multi_modality_id s)
     ;; uint64 _object_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _object_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _object_id) (= (length (_object_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_object_id . bv) 0) 0) s)
              (write-long (ash (elt (_object_id . bv) 1) -1) s))
             ((and (class _object_id) (= (length (_object_id . bv)) 1)) ;; big1
              (write-long (elt (_object_id . bv) 0) s)
              (write-long (if (>= _object_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _object_id s)(write-long (if (>= _object_id 0) 0 #xffffffff) s)))
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
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; e2e_planning_msgs/DLPTrajectoryPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance e2e_planning_msgs::DLPTrajectoryPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; e2e_planning_msgs/DLPTrajectoryTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; uint8 _anchor_type
     (setq _anchor_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64 _anchor_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _anchor_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _anchor_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; perception_interface_msgs/Point3d _goal_point
     (send _goal_point :deserialize buf ptr-) (incf ptr- (send _goal_point :serialization-length))
   ;; uint8 _multi_modality_id
     (setq _multi_modality_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64 _object_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _object_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _object_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
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
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get e2e_planning_msgs::DLPTrajectory :md5sum-) "b9bda110d1211e623befd2437bb3db8b")
(setf (get e2e_planning_msgs::DLPTrajectory :datatype-) "e2e_planning_msgs/DLPTrajectory")
(setf (get e2e_planning_msgs::DLPTrajectory :definition-)
      "e2e_planning_msgs/DLPTrajectoryPoint[] points
e2e_planning_msgs/DLPTrajectoryTypeEnum type
uint8 anchor_type
uint64 anchor_id
perception_interface_msgs/Point3d goal_point
uint8 multi_modality_id
uint64 object_id
uint64 timestamp_us
float64 score
string reserved_info

================================================================================
MSG: e2e_planning_msgs/DLPTrajectoryPoint
perception_interface_msgs/Point3d position
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

================================================================================
MSG: e2e_planning_msgs/DLPTrajectoryTypeEnum
uint8 DLP_TRAJECTORY_CRUISE = 0
uint8 DLP_TRAJECTORY_LANE_CHANGE = 1
uint8 DLP_TRAJECTORY_REF_PATH = 2
uint8 DLP_TRAJECTORY_PREDICTION = 3
uint8 value

")



(provide :e2e_planning_msgs/DLPTrajectory "b9bda110d1211e623befd2437bb3db8b")


