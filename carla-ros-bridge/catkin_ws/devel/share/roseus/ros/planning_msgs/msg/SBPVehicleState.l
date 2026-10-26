;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::SBPVehicleState)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'SBPVehicleState (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::SBPVEHICLESTATE")
  (make-package "PLANNING_MSGS::SBPVEHICLESTATE"))

(in-package "ROS")
;;//! \htmlinclude SBPVehicleState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass planning_msgs::SBPVehicleState
  :super ros::object
  :slots (_pose _steer _steer_mode _gear ))

(defmethod planning_msgs::SBPVehicleState
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    ((:steer __steer) 0.0)
    ((:steer_mode __steer_mode) (instance planning_msgs::SteerModeEnum :init))
    ((:gear __gear) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _steer (float __steer))
   (setq _steer_mode __steer_mode)
   (setq _gear (round __gear))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:steer_mode
   (&rest __steer_mode)
   (if (keywordp (car __steer_mode))
       (send* _steer_mode __steer_mode)
     (progn
       (if __steer_mode (setq _steer_mode (car __steer_mode)))
       _steer_mode)))
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ;; float32 _steer
    4
    ;; planning_msgs/SteerModeEnum _steer_mode
    (send _steer_mode :serialization-length)
    ;; int8 _gear
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;; float32 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; planning_msgs/SteerModeEnum _steer_mode
       (send _steer_mode :serialize s)
     ;; int8 _gear
       (write-byte _gear s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _steer
     (setq _steer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; planning_msgs/SteerModeEnum _steer_mode
     (send _steer_mode :deserialize buf ptr-) (incf ptr- (send _steer_mode :serialization-length))
   ;; int8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gear 127) (setq _gear (- _gear 256)))
   ;;
   self)
  )

(setf (get planning_msgs::SBPVehicleState :md5sum-) "469762bb97b862ed87ff4c90a0363d5d")
(setf (get planning_msgs::SBPVehicleState :datatype-) "planning_msgs/SBPVehicleState")
(setf (get planning_msgs::SBPVehicleState :definition-)
      "geometry_msgs/Pose2D pose
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

")



(provide :planning_msgs/SBPVehicleState "469762bb97b862ed87ff4c90a0363d5d")


