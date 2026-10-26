;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLALocalization)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLALocalization (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLALOCALIZATION")
  (make-package "MLA_LOCALIZATION_MSGS::MLALOCALIZATION"))

(in-package "ROS")
;;//! \htmlinclude MLALocalization.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mla_localization_msgs::MLALocalization
  :super ros::object
  :slots (_header _meta _position _velocity _angular_velocity _orientation _acceleration _position_std _velocity_std _angular_velocity_std _orientation_std _acceleration_std _status _status_ddld _transform _pose_detail _road_lane_id_info _link_offset_infos _reserved ))

(defmethod mla_localization_msgs::MLALocalization
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance mla_localization_msgs::MLALocalizationMeta :init))
    ((:position __position) (instance mla_localization_msgs::MLAPosition :init))
    ((:velocity __velocity) (instance mla_localization_msgs::MLAVelocity :init))
    ((:angular_velocity __angular_velocity) (instance mla_localization_msgs::MLAAngularVelocity :init))
    ((:orientation __orientation) (instance mla_localization_msgs::MLAOrientation :init))
    ((:acceleration __acceleration) (instance mla_localization_msgs::MLAAcceleration :init))
    ((:position_std __position_std) (instance mla_localization_msgs::MLAPositionStd :init))
    ((:velocity_std __velocity_std) (instance mla_localization_msgs::MLAVelocityStd :init))
    ((:angular_velocity_std __angular_velocity_std) (instance mla_localization_msgs::MLAAngularVelocityStd :init))
    ((:orientation_std __orientation_std) (instance mla_localization_msgs::MLAOrientationStd :init))
    ((:acceleration_std __acceleration_std) (instance mla_localization_msgs::MLAAccelerationStd :init))
    ((:status __status) (instance mla_localization_msgs::MLAStatus :init))
    ((:status_ddld __status_ddld) (instance mla_localization_msgs::MLAStatus :init))
    ((:transform __transform) (instance mla_localization_msgs::MLATransform :init))
    ((:pose_detail __pose_detail) (instance mla_localization_msgs::MLAPoseDetail :init))
    ((:road_lane_id_info __road_lane_id_info) (instance mla_localization_msgs::MLARoadLaneIdInfo :init))
    ((:link_offset_infos __link_offset_infos) ())
    ((:reserved __reserved) (instance mla_localization_msgs::MLAReserved :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _angular_velocity __angular_velocity)
   (setq _orientation __orientation)
   (setq _acceleration __acceleration)
   (setq _position_std __position_std)
   (setq _velocity_std __velocity_std)
   (setq _angular_velocity_std __angular_velocity_std)
   (setq _orientation_std __orientation_std)
   (setq _acceleration_std __acceleration_std)
   (setq _status __status)
   (setq _status_ddld __status_ddld)
   (setq _transform __transform)
   (setq _pose_detail __pose_detail)
   (setq _road_lane_id_info __road_lane_id_info)
   (setq _link_offset_infos __link_offset_infos)
   (setq _reserved __reserved)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
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
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:position_std
   (&rest __position_std)
   (if (keywordp (car __position_std))
       (send* _position_std __position_std)
     (progn
       (if __position_std (setq _position_std (car __position_std)))
       _position_std)))
  (:velocity_std
   (&rest __velocity_std)
   (if (keywordp (car __velocity_std))
       (send* _velocity_std __velocity_std)
     (progn
       (if __velocity_std (setq _velocity_std (car __velocity_std)))
       _velocity_std)))
  (:angular_velocity_std
   (&rest __angular_velocity_std)
   (if (keywordp (car __angular_velocity_std))
       (send* _angular_velocity_std __angular_velocity_std)
     (progn
       (if __angular_velocity_std (setq _angular_velocity_std (car __angular_velocity_std)))
       _angular_velocity_std)))
  (:orientation_std
   (&rest __orientation_std)
   (if (keywordp (car __orientation_std))
       (send* _orientation_std __orientation_std)
     (progn
       (if __orientation_std (setq _orientation_std (car __orientation_std)))
       _orientation_std)))
  (:acceleration_std
   (&rest __acceleration_std)
   (if (keywordp (car __acceleration_std))
       (send* _acceleration_std __acceleration_std)
     (progn
       (if __acceleration_std (setq _acceleration_std (car __acceleration_std)))
       _acceleration_std)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:status_ddld
   (&rest __status_ddld)
   (if (keywordp (car __status_ddld))
       (send* _status_ddld __status_ddld)
     (progn
       (if __status_ddld (setq _status_ddld (car __status_ddld)))
       _status_ddld)))
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:pose_detail
   (&rest __pose_detail)
   (if (keywordp (car __pose_detail))
       (send* _pose_detail __pose_detail)
     (progn
       (if __pose_detail (setq _pose_detail (car __pose_detail)))
       _pose_detail)))
  (:road_lane_id_info
   (&rest __road_lane_id_info)
   (if (keywordp (car __road_lane_id_info))
       (send* _road_lane_id_info __road_lane_id_info)
     (progn
       (if __road_lane_id_info (setq _road_lane_id_info (car __road_lane_id_info)))
       _road_lane_id_info)))
  (:link_offset_infos
   (&rest __link_offset_infos)
   (if (keywordp (car __link_offset_infos))
       (send* _link_offset_infos __link_offset_infos)
     (progn
       (if __link_offset_infos (setq _link_offset_infos (car __link_offset_infos)))
       _link_offset_infos)))
  (:reserved
   (&rest __reserved)
   (if (keywordp (car __reserved))
       (send* _reserved __reserved)
     (progn
       (if __reserved (setq _reserved (car __reserved)))
       _reserved)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mla_localization_msgs/MLALocalizationMeta _meta
    (send _meta :serialization-length)
    ;; mla_localization_msgs/MLAPosition _position
    (send _position :serialization-length)
    ;; mla_localization_msgs/MLAVelocity _velocity
    (send _velocity :serialization-length)
    ;; mla_localization_msgs/MLAAngularVelocity _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; mla_localization_msgs/MLAOrientation _orientation
    (send _orientation :serialization-length)
    ;; mla_localization_msgs/MLAAcceleration _acceleration
    (send _acceleration :serialization-length)
    ;; mla_localization_msgs/MLAPositionStd _position_std
    (send _position_std :serialization-length)
    ;; mla_localization_msgs/MLAVelocityStd _velocity_std
    (send _velocity_std :serialization-length)
    ;; mla_localization_msgs/MLAAngularVelocityStd _angular_velocity_std
    (send _angular_velocity_std :serialization-length)
    ;; mla_localization_msgs/MLAOrientationStd _orientation_std
    (send _orientation_std :serialization-length)
    ;; mla_localization_msgs/MLAAccelerationStd _acceleration_std
    (send _acceleration_std :serialization-length)
    ;; mla_localization_msgs/MLAStatus _status
    (send _status :serialization-length)
    ;; mla_localization_msgs/MLAStatus _status_ddld
    (send _status_ddld :serialization-length)
    ;; mla_localization_msgs/MLATransform _transform
    (send _transform :serialization-length)
    ;; mla_localization_msgs/MLAPoseDetail _pose_detail
    (send _pose_detail :serialization-length)
    ;; mla_localization_msgs/MLARoadLaneIdInfo _road_lane_id_info
    (send _road_lane_id_info :serialization-length)
    ;; mla_localization_msgs/MLALinkOffsetInfo[] _link_offset_infos
    (apply #'+ (send-all _link_offset_infos :serialization-length)) 4
    ;; mla_localization_msgs/MLAReserved _reserved
    (send _reserved :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mla_localization_msgs/MLALocalizationMeta _meta
       (send _meta :serialize s)
     ;; mla_localization_msgs/MLAPosition _position
       (send _position :serialize s)
     ;; mla_localization_msgs/MLAVelocity _velocity
       (send _velocity :serialize s)
     ;; mla_localization_msgs/MLAAngularVelocity _angular_velocity
       (send _angular_velocity :serialize s)
     ;; mla_localization_msgs/MLAOrientation _orientation
       (send _orientation :serialize s)
     ;; mla_localization_msgs/MLAAcceleration _acceleration
       (send _acceleration :serialize s)
     ;; mla_localization_msgs/MLAPositionStd _position_std
       (send _position_std :serialize s)
     ;; mla_localization_msgs/MLAVelocityStd _velocity_std
       (send _velocity_std :serialize s)
     ;; mla_localization_msgs/MLAAngularVelocityStd _angular_velocity_std
       (send _angular_velocity_std :serialize s)
     ;; mla_localization_msgs/MLAOrientationStd _orientation_std
       (send _orientation_std :serialize s)
     ;; mla_localization_msgs/MLAAccelerationStd _acceleration_std
       (send _acceleration_std :serialize s)
     ;; mla_localization_msgs/MLAStatus _status
       (send _status :serialize s)
     ;; mla_localization_msgs/MLAStatus _status_ddld
       (send _status_ddld :serialize s)
     ;; mla_localization_msgs/MLATransform _transform
       (send _transform :serialize s)
     ;; mla_localization_msgs/MLAPoseDetail _pose_detail
       (send _pose_detail :serialize s)
     ;; mla_localization_msgs/MLARoadLaneIdInfo _road_lane_id_info
       (send _road_lane_id_info :serialize s)
     ;; mla_localization_msgs/MLALinkOffsetInfo[] _link_offset_infos
     (write-long (length _link_offset_infos) s)
     (dolist (elem _link_offset_infos)
       (send elem :serialize s)
       )
     ;; mla_localization_msgs/MLAReserved _reserved
       (send _reserved :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mla_localization_msgs/MLALocalizationMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; mla_localization_msgs/MLAPosition _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; mla_localization_msgs/MLAVelocity _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; mla_localization_msgs/MLAAngularVelocity _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; mla_localization_msgs/MLAOrientation _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; mla_localization_msgs/MLAAcceleration _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; mla_localization_msgs/MLAPositionStd _position_std
     (send _position_std :deserialize buf ptr-) (incf ptr- (send _position_std :serialization-length))
   ;; mla_localization_msgs/MLAVelocityStd _velocity_std
     (send _velocity_std :deserialize buf ptr-) (incf ptr- (send _velocity_std :serialization-length))
   ;; mla_localization_msgs/MLAAngularVelocityStd _angular_velocity_std
     (send _angular_velocity_std :deserialize buf ptr-) (incf ptr- (send _angular_velocity_std :serialization-length))
   ;; mla_localization_msgs/MLAOrientationStd _orientation_std
     (send _orientation_std :deserialize buf ptr-) (incf ptr- (send _orientation_std :serialization-length))
   ;; mla_localization_msgs/MLAAccelerationStd _acceleration_std
     (send _acceleration_std :deserialize buf ptr-) (incf ptr- (send _acceleration_std :serialization-length))
   ;; mla_localization_msgs/MLAStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; mla_localization_msgs/MLAStatus _status_ddld
     (send _status_ddld :deserialize buf ptr-) (incf ptr- (send _status_ddld :serialization-length))
   ;; mla_localization_msgs/MLATransform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; mla_localization_msgs/MLAPoseDetail _pose_detail
     (send _pose_detail :deserialize buf ptr-) (incf ptr- (send _pose_detail :serialization-length))
   ;; mla_localization_msgs/MLARoadLaneIdInfo _road_lane_id_info
     (send _road_lane_id_info :deserialize buf ptr-) (incf ptr- (send _road_lane_id_info :serialization-length))
   ;; mla_localization_msgs/MLALinkOffsetInfo[] _link_offset_infos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_offset_infos (let (r) (dotimes (i n) (push (instance mla_localization_msgs::MLALinkOffsetInfo :init) r)) r))
     (dolist (elem- _link_offset_infos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; mla_localization_msgs/MLAReserved _reserved
     (send _reserved :deserialize buf ptr-) (incf ptr- (send _reserved :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLALocalization :md5sum-) "60a9dfde75cc9220fd3b9a4368c09f9e")
(setf (get mla_localization_msgs::MLALocalization :datatype-) "mla_localization_msgs/MLALocalization")
(setf (get mla_localization_msgs::MLALocalization :definition-)
      "std_msgs/Header header
mla_localization_msgs/MLALocalizationMeta meta
mla_localization_msgs/MLAPosition position
mla_localization_msgs/MLAVelocity velocity
mla_localization_msgs/MLAAngularVelocity angular_velocity
mla_localization_msgs/MLAOrientation orientation
mla_localization_msgs/MLAAcceleration acceleration
mla_localization_msgs/MLAPositionStd position_std
mla_localization_msgs/MLAVelocityStd velocity_std
mla_localization_msgs/MLAAngularVelocityStd angular_velocity_std
mla_localization_msgs/MLAOrientationStd orientation_std
mla_localization_msgs/MLAAccelerationStd acceleration_std
mla_localization_msgs/MLAStatus status
mla_localization_msgs/MLAStatus status_ddld
mla_localization_msgs/MLATransform transform
mla_localization_msgs/MLAPoseDetail pose_detail
mla_localization_msgs/MLARoadLaneIdInfo road_lane_id_info
mla_localization_msgs/MLALinkOffsetInfo[] link_offset_infos
mla_localization_msgs/MLAReserved reserved

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
MSG: mla_localization_msgs/MLALocalizationMeta
uint8 MLA_PARKING = 1
uint8 MLA_PILOT = 2
uint64 timestamp_us
uint64 seq
uint8 type

================================================================================
MSG: mla_localization_msgs/MLAPosition
uint8 MLA_POSITION_GLOBAL = 1
uint8 MLA_POSITION_LOCAL = 2
uint8 available
mla_localization_msgs/MLAPosGlobal position_global
mla_localization_msgs/MLAPosLocal position_local

================================================================================
MSG: mla_localization_msgs/MLAPosGlobal
float64 latitude
float64 longitude
float64 altitude

================================================================================
MSG: mla_localization_msgs/MLAPosLocal
float64 x
float64 y
float64 z

================================================================================
MSG: mla_localization_msgs/MLAVelocity
uint8 MLA_VEL_GLOBAL = 1
uint8 MLA_VEL_LOCAL = 2
uint8 available
mla_localization_msgs/MLAVelGlobal velocity_global
mla_localization_msgs/MLAVelLocal velocity_local

================================================================================
MSG: mla_localization_msgs/MLAVelGlobal
float64 ve
float64 vn
float64 vu

================================================================================
MSG: mla_localization_msgs/MLAVelLocal
float64 vx
float64 vy
float64 vz

================================================================================
MSG: mla_localization_msgs/MLAAngularVelocity
uint8 MLA_ANGVEL_LOCAL = 1
uint8 available
mla_localization_msgs/MLAAngVelLocal angvelocity_local

================================================================================
MSG: mla_localization_msgs/MLAAngVelLocal
float64 vx
float64 vy
float64 vz

================================================================================
MSG: mla_localization_msgs/MLAOrientation
uint8 MLA_EULER_GLOBAL = 1
uint8 MLA_QUATERNION_GLOBAL = 2
uint8 MLA_EULER_LOCAL = 4
uint8 MLA_QUATERNION_LOCAL = 8
uint8 available
mla_localization_msgs/MLAEuler euler_global
mla_localization_msgs/MLAQuaternion quaternion_global
mla_localization_msgs/MLAEuler euler_local
mla_localization_msgs/MLAQuaternion quaternion_local

================================================================================
MSG: mla_localization_msgs/MLAEuler
float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: mla_localization_msgs/MLAQuaternion
float64 w
float64 x
float64 y
float64 z

================================================================================
MSG: mla_localization_msgs/MLAAcceleration
uint8 MLA_ACC_GLOBAL = 1
uint8 MLA_ACC_LOCAL = 2
uint8 available
mla_localization_msgs/MLAAccGlobal acceleration_global
mla_localization_msgs/MLAAccLocal acceleration_local

================================================================================
MSG: mla_localization_msgs/MLAAccGlobal
float64 ae
float64 an
float64 au

================================================================================
MSG: mla_localization_msgs/MLAAccLocal
float64 ax
float64 ay
float64 az

================================================================================
MSG: mla_localization_msgs/MLAPositionStd
uint8 MLA_POS_STD_GLOBAL = 1
uint8 MLA_POS_STD_LOCAL = 2
uint8 available
mla_localization_msgs/MLAPosStdGlobal pos_std_global
mla_localization_msgs/MLAPosStdLocal pos_std_local

================================================================================
MSG: mla_localization_msgs/MLAPosStdGlobal
float64 std_pe
float64 std_pn
float64 std_pu

================================================================================
MSG: mla_localization_msgs/MLAPosStdLocal
float64 std_px
float64 std_py
float64 std_pz

================================================================================
MSG: mla_localization_msgs/MLAVelocityStd
uint8 MLA_VEL_STD_GLOBAL = 1
uint8 MLA_VEL_STD_LOCAL = 2
uint8 available
mla_localization_msgs/MLAVelStdGlobal vel_std_global
mla_localization_msgs/MLAVelStdLocal vel_std_local

================================================================================
MSG: mla_localization_msgs/MLAVelStdGlobal
float64 std_ve
float64 std_vn
float64 std_vu

================================================================================
MSG: mla_localization_msgs/MLAVelStdLocal
float64 std_vx
float64 std_vy
float64 std_vz

================================================================================
MSG: mla_localization_msgs/MLAAngularVelocityStd
uint8 MLA_ANGVEL_STD_LOCAL = 1
uint8 available
mla_localization_msgs/MLAAngVelStdLocal angvel_std_local

================================================================================
MSG: mla_localization_msgs/MLAAngVelStdLocal
float64 std_vx
float64 std_vy
float64 std_vz

================================================================================
MSG: mla_localization_msgs/MLAOrientationStd
uint8 MLA_ORI_STD_XYZ = 1
uint8 available
mla_localization_msgs/MLAOriStdXyz ori_std_xyz

================================================================================
MSG: mla_localization_msgs/MLAOriStdXyz
float64 std_faix
float64 std_faiy
float64 std_faiz

================================================================================
MSG: mla_localization_msgs/MLAAccelerationStd
uint8 MLA_ACC_STD_GLOBAL = 1
uint8 MLA_ACC_STD_LOCAL = 2
uint8 available
mla_localization_msgs/MLAAccStdGlobal acc_std_global
mla_localization_msgs/MLAAccStdLocal acc_std_local

================================================================================
MSG: mla_localization_msgs/MLAAccStdGlobal
float64 std_ae
float64 std_an
float64 std_au

================================================================================
MSG: mla_localization_msgs/MLAAccStdLocal
float64 std_ax
float64 std_ay
float64 std_az

================================================================================
MSG: mla_localization_msgs/MLAStatus
uint8 MLA_STATUS_INFO = 1
uint8 available
mla_localization_msgs/MLAStatusInfo status_info

================================================================================
MSG: mla_localization_msgs/MLAStatusInfo
uint8 quality
uint64 common
uint64 extended
uint8 type

================================================================================
MSG: mla_localization_msgs/MLATransform
uint8 MLA_TRANSFORM_LLH_TO_BOOT = 1
uint8 MLA_TRANSFORM_AVPMAP_TO_BOOT = 2
uint8 MLA_TRANSFORM_EGOMOTION_TO_BOOT = 4
uint8 available
mla_localization_msgs/MLATransformInfo transform_llh_to_boot
mla_localization_msgs/MLATransformInfo transform_avp_map_to_boot
mla_localization_msgs/MLATransformInfo transform_ego_motion_to_boot

================================================================================
MSG: mla_localization_msgs/MLATransformInfo
mla_localization_msgs/MLAQuaternion transform_q
mla_localization_msgs/MLAPosLocal transform_t
mla_localization_msgs/MLAPosGlobal transform_center

================================================================================
MSG: mla_localization_msgs/MLAPoseDetail
uint8 MLA_POSE_DETAIL_INFO = 1
uint8 available
mla_localization_msgs/MLAPoseDetailInfo pose_detail_info

================================================================================
MSG: mla_localization_msgs/MLAPoseDetailInfo
uint8 MLA_ESTIMATION_UNKNOWN = 0
uint8 MLA_ESTIMATION_PER_FRAME = 1
uint8 MLA_ESTIMATION_WINDOW_OPT = 2
uint8 MLA_ESTIMATION_DR = 3
uint8 available
bool is_keyframe
bool has_scale
uint8 pose_type

================================================================================
MSG: mla_localization_msgs/MLARoadLaneIdInfo
landmark_msgs/TrackId lane_id
landmark_msgs/TrackId road_id
uint32 offset
uint16 road_class
float64 floor_id
uint16 status
uint16 reserved

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: mla_localization_msgs/MLALinkOffsetInfo
string source
landmark_msgs/TrackId link_id
uint32 offset
uint16 status
uint16 reserved

================================================================================
MSG: mla_localization_msgs/MLAReserved
uint8 MLA_RESERVED_DATA = 1
uint8 available
uint64[] reserved_data

")



(provide :mla_localization_msgs/MLALocalization "60a9dfde75cc9220fd3b9a4368c09f9e")


