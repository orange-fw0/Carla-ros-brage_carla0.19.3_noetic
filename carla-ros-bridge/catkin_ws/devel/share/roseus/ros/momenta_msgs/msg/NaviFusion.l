;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::NaviFusion)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'NaviFusion (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::NAVIFUSION")
  (make-package "MOMENTA_MSGS::NAVIFUSION"))

(in-package "ROS")
;;//! \htmlinclude NaviFusion.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::NaviFusion
  :super ros::object
  :slots (_header _enu _pose _wgs84_position _imu _vel _vel_scalar _gps_status _sat_cnt1 _sat_cnt2 ))

(defmethod momenta_msgs::NaviFusion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:enu __enu) (instance geometry_msgs::Pose :init))
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    ((:wgs84_position __wgs84_position) (instance sensor_msgs::NavSatFix :init))
    ((:imu __imu) (instance sensor_msgs::Imu :init))
    ((:vel __vel) (instance geometry_msgs::Twist :init))
    ((:vel_scalar __vel_scalar) 0.0)
    ((:gps_status __gps_status) 0)
    ((:sat_cnt1 __sat_cnt1) 0)
    ((:sat_cnt2 __sat_cnt2) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _enu __enu)
   (setq _pose __pose)
   (setq _wgs84_position __wgs84_position)
   (setq _imu __imu)
   (setq _vel __vel)
   (setq _vel_scalar (float __vel_scalar))
   (setq _gps_status (round __gps_status))
   (setq _sat_cnt1 (round __sat_cnt1))
   (setq _sat_cnt2 (round __sat_cnt2))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:enu
   (&rest __enu)
   (if (keywordp (car __enu))
       (send* _enu __enu)
     (progn
       (if __enu (setq _enu (car __enu)))
       _enu)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:wgs84_position
   (&rest __wgs84_position)
   (if (keywordp (car __wgs84_position))
       (send* _wgs84_position __wgs84_position)
     (progn
       (if __wgs84_position (setq _wgs84_position (car __wgs84_position)))
       _wgs84_position)))
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:vel_scalar
   (&optional __vel_scalar)
   (if __vel_scalar (setq _vel_scalar __vel_scalar)) _vel_scalar)
  (:gps_status
   (&optional __gps_status)
   (if __gps_status (setq _gps_status __gps_status)) _gps_status)
  (:sat_cnt1
   (&optional __sat_cnt1)
   (if __sat_cnt1 (setq _sat_cnt1 __sat_cnt1)) _sat_cnt1)
  (:sat_cnt2
   (&optional __sat_cnt2)
   (if __sat_cnt2 (setq _sat_cnt2 __sat_cnt2)) _sat_cnt2)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _enu
    (send _enu :serialization-length)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ;; sensor_msgs/NavSatFix _wgs84_position
    (send _wgs84_position :serialization-length)
    ;; sensor_msgs/Imu _imu
    (send _imu :serialization-length)
    ;; geometry_msgs/Twist _vel
    (send _vel :serialization-length)
    ;; float64 _vel_scalar
    8
    ;; uint8 _gps_status
    1
    ;; uint8 _sat_cnt1
    1
    ;; uint8 _sat_cnt2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _enu
       (send _enu :serialize s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;; sensor_msgs/NavSatFix _wgs84_position
       (send _wgs84_position :serialize s)
     ;; sensor_msgs/Imu _imu
       (send _imu :serialize s)
     ;; geometry_msgs/Twist _vel
       (send _vel :serialize s)
     ;; float64 _vel_scalar
       (sys::poke _vel_scalar (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _gps_status
       (write-byte _gps_status s)
     ;; uint8 _sat_cnt1
       (write-byte _sat_cnt1 s)
     ;; uint8 _sat_cnt2
       (write-byte _sat_cnt2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _enu
     (send _enu :deserialize buf ptr-) (incf ptr- (send _enu :serialization-length))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; sensor_msgs/NavSatFix _wgs84_position
     (send _wgs84_position :deserialize buf ptr-) (incf ptr- (send _wgs84_position :serialization-length))
   ;; sensor_msgs/Imu _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; geometry_msgs/Twist _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;; float64 _vel_scalar
     (setq _vel_scalar (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _gps_status
     (setq _gps_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sat_cnt1
     (setq _sat_cnt1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sat_cnt2
     (setq _sat_cnt2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::NaviFusion :md5sum-) "026fb76e29658a0e5c85e1bf4f35d61a")
(setf (get momenta_msgs::NaviFusion :datatype-) "momenta_msgs/NaviFusion")
(setf (get momenta_msgs::NaviFusion :definition-)
      "std_msgs/Header header
geometry_msgs/Pose enu
geometry_msgs/Pose2D pose
sensor_msgs/NavSatFix wgs84_position
sensor_msgs/Imu imu
geometry_msgs/Twist vel
float64 vel_scalar
uint8 gps_status
uint8 sat_cnt1
uint8 sat_cnt2

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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
MSG: sensor_msgs/NavSatFix
# Navigation Satellite fix for any Global Navigation Satellite System
#
# Specified using the WGS 84 reference ellipsoid

# header.stamp specifies the ROS time for this measurement (the
#        corresponding satellite time may be reported using the
#        sensor_msgs/TimeReference message).
#
# header.frame_id is the frame of reference reported by the satellite
#        receiver, usually the location of the antenna.  This is a
#        Euclidean frame relative to the vehicle, not a reference
#        ellipsoid.
Header header

# satellite fix status information
NavSatStatus status

# Latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid
# (quiet NaN if no altitude is available).
float64 altitude

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.
#
# Beware: this coordinate system exhibits singularities at the poles.

float64[9] position_covariance

# If the covariance of the fix is known, fill it in completely. If the
# GPS receiver provides the variance of each measurement, put them
# along the diagonal. If only Dilution of Precision is available,
# estimate an approximate covariance from that.

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3

uint8 position_covariance_type

================================================================================
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

================================================================================
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

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
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :momenta_msgs/NaviFusion "026fb76e29658a0e5c85e1bf4f35d61a")


