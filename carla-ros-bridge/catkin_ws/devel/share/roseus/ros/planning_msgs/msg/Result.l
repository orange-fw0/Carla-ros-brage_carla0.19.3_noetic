;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Result)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Result (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::RESULT")
  (make-package "PLANNING_MSGS::RESULT"))

(in-package "ROS")
;;//! \htmlinclude Result.msg.html


(intern "*ITERATION_TIMES*" (find-package "PLANNING_MSGS::RESULT"))
(shadow '*ITERATION_TIMES* (find-package "PLANNING_MSGS::RESULT"))
(defconstant planning_msgs::Result::*ITERATION_TIMES* 1)
(intern "*TRAJECTORY*" (find-package "PLANNING_MSGS::RESULT"))
(shadow '*TRAJECTORY* (find-package "PLANNING_MSGS::RESULT"))
(defconstant planning_msgs::Result::*TRAJECTORY* 2)
(intern "*NUM_SEGMENTS*" (find-package "PLANNING_MSGS::RESULT"))
(shadow '*NUM_SEGMENTS* (find-package "PLANNING_MSGS::RESULT"))
(defconstant planning_msgs::Result::*NUM_SEGMENTS* 4)
(intern "*FAILURE_REASON*" (find-package "PLANNING_MSGS::RESULT"))
(shadow '*FAILURE_REASON* (find-package "PLANNING_MSGS::RESULT"))
(defconstant planning_msgs::Result::*FAILURE_REASON* 8)

(defun planning_msgs::Result-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::Result::*ITERATION_TIMES*)
        ((= const 2) 'planning_msgs::Result::*TRAJECTORY*)
        ((= const 4) 'planning_msgs::Result::*NUM_SEGMENTS*)
        ((= const 8) 'planning_msgs::Result::*FAILURE_REASON*)
        (t nil)))

(defclass planning_msgs::Result
  :super ros::object
  :slots (_available _iteration_times _trajectory _num_segments _failure_reason ))

(defmethod planning_msgs::Result
  (:init
   (&key
    ((:available __available) 0)
    ((:iteration_times __iteration_times) 0)
    ((:trajectory __trajectory) ())
    ((:num_segments __num_segments) 0)
    ((:failure_reason __failure_reason) (instance planning_msgs::FailureReasonEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _iteration_times (round __iteration_times))
   (setq _trajectory __trajectory)
   (setq _num_segments (round __num_segments))
   (setq _failure_reason __failure_reason)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:iteration_times
   (&optional __iteration_times)
   (if __iteration_times (setq _iteration_times __iteration_times)) _iteration_times)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:num_segments
   (&optional __num_segments)
   (if __num_segments (setq _num_segments __num_segments)) _num_segments)
  (:failure_reason
   (&rest __failure_reason)
   (if (keywordp (car __failure_reason))
       (send* _failure_reason __failure_reason)
     (progn
       (if __failure_reason (setq _failure_reason (car __failure_reason)))
       _failure_reason)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; int64 _iteration_times
    8
    ;; planning_msgs/SBPVehicleState[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ;; uint8 _num_segments
    1
    ;; planning_msgs/FailureReasonEnum _failure_reason
    (send _failure_reason :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; int64 _iteration_times
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _iteration_times (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _iteration_times) (= (length (_iteration_times . bv)) 2)) ;; bignum
              (write-long (ash (elt (_iteration_times . bv) 0) 0) s)
              (write-long (ash (elt (_iteration_times . bv) 1) -1) s))
             ((and (class _iteration_times) (= (length (_iteration_times . bv)) 1)) ;; big1
              (write-long (elt (_iteration_times . bv) 0) s)
              (write-long (if (>= _iteration_times 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _iteration_times s)(write-long (if (>= _iteration_times 0) 0 #xffffffff) s)))
     ;; planning_msgs/SBPVehicleState[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;; uint8 _num_segments
       (write-byte _num_segments s)
     ;; planning_msgs/FailureReasonEnum _failure_reason
       (send _failure_reason :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int64 _iteration_times
#+(or :alpha :irix6 :x86_64)
      (setf _iteration_times (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _iteration_times (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; planning_msgs/SBPVehicleState[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance planning_msgs::SBPVehicleState :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _num_segments
     (setq _num_segments (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/FailureReasonEnum _failure_reason
     (send _failure_reason :deserialize buf ptr-) (incf ptr- (send _failure_reason :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::Result :md5sum-) "15596995cf3716cea00fa41baf53c382")
(setf (get planning_msgs::Result :datatype-) "planning_msgs/Result")
(setf (get planning_msgs::Result :definition-)
      "uint8 ITERATION_TIMES = 1
uint8 TRAJECTORY = 2
uint8 NUM_SEGMENTS = 4
uint8 FAILURE_REASON = 8
uint8 available
int64 iteration_times
planning_msgs/SBPVehicleState[] trajectory
uint8 num_segments
planning_msgs/FailureReasonEnum failure_reason

================================================================================
MSG: planning_msgs/SBPVehicleState
geometry_msgs/Pose2D pose
float32 steer
planning_msgs/SteerModeEnum steer_mode
int8 gear

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: planning_msgs/SteerModeEnum
uint8 NORMAL = 0
uint8 TWIST = 1
uint8 TRANSLATION = 2
uint8 value

================================================================================
MSG: planning_msgs/FailureReasonEnum
uint8 INFEASIBLE = 1
uint8 TIMEOUT = 2
uint8 EXCEPTION = 4
uint8 value

")



(provide :planning_msgs/Result "15596995cf3716cea00fa41baf53c382")


