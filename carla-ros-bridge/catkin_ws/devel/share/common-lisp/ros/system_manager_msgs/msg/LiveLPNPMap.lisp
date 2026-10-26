; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude LiveLPNPMap.msg.html

(cl:defclass <LiveLPNPMap> (roslisp-msg-protocol:ros-message)
  ((psd_map
    :reader psd_map
    :initarg :psd_map
    :type (cl:vector system_manager_msgs-msg:ParkingSpaceInfo)
   :initform (cl:make-array 0 :element-type 'system_manager_msgs-msg:ParkingSpaceInfo :initial-element (cl:make-instance 'system_manager_msgs-msg:ParkingSpaceInfo)))
   (speed_bumps
    :reader speed_bumps
    :initarg :speed_bumps
    :type (cl:vector system_manager_msgs-msg:PointsPosition)
   :initform (cl:make-array 0 :element-type 'system_manager_msgs-msg:PointsPosition :initial-element (cl:make-instance 'system_manager_msgs-msg:PointsPosition)))
   (pillars
    :reader pillars
    :initarg :pillars
    :type (cl:vector system_manager_msgs-msg:PointsPosition)
   :initform (cl:make-array 0 :element-type 'system_manager_msgs-msg:PointsPosition :initial-element (cl:make-instance 'system_manager_msgs-msg:PointsPosition)))
   (walls
    :reader walls
    :initarg :walls
    :type (cl:vector system_manager_msgs-msg:PointsPosition)
   :initform (cl:make-array 0 :element-type 'system_manager_msgs-msg:PointsPosition :initial-element (cl:make-instance 'system_manager_msgs-msg:PointsPosition)))
   (intersections
    :reader intersections
    :initarg :intersections
    :type (cl:vector system_manager_msgs-msg:PointsPosition)
   :initform (cl:make-array 0 :element-type 'system_manager_msgs-msg:PointsPosition :initial-element (cl:make-instance 'system_manager_msgs-msg:PointsPosition)))
   (parking_gates
    :reader parking_gates
    :initarg :parking_gates
    :type (cl:vector system_manager_msgs-msg:PointsPosition)
   :initform (cl:make-array 0 :element-type 'system_manager_msgs-msg:PointsPosition :initial-element (cl:make-instance 'system_manager_msgs-msg:PointsPosition)))
   (trajectory_points
    :reader trajectory_points
    :initarg :trajectory_points
    :type (cl:vector system_manager_msgs-msg:LiveLPNPMapRoadPoint)
   :initform (cl:make-array 0 :element-type 'system_manager_msgs-msg:LiveLPNPMapRoadPoint :initial-element (cl:make-instance 'system_manager_msgs-msg:LiveLPNPMapRoadPoint)))
   (road_id
    :reader road_id
    :initarg :road_id
    :type cl:integer
    :initform 0)
   (road_type
    :reader road_type
    :initarg :road_type
    :type system_manager_msgs-msg:RoadTypeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:RoadTypeEnum))
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped)))
)

(cl:defclass LiveLPNPMap (<LiveLPNPMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LiveLPNPMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LiveLPNPMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<LiveLPNPMap> is deprecated: use system_manager_msgs-msg:LiveLPNPMap instead.")))

(cl:ensure-generic-function 'psd_map-val :lambda-list '(m))
(cl:defmethod psd_map-val ((m <LiveLPNPMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:psd_map-val is deprecated.  Use system_manager_msgs-msg:psd_map instead.")
  (psd_map m))

(cl:ensure-generic-function 'speed_bumps-val :lambda-list '(m))
(cl:defmethod speed_bumps-val ((m <LiveLPNPMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:speed_bumps-val is deprecated.  Use system_manager_msgs-msg:speed_bumps instead.")
  (speed_bumps m))

(cl:ensure-generic-function 'pillars-val :lambda-list '(m))
(cl:defmethod pillars-val ((m <LiveLPNPMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:pillars-val is deprecated.  Use system_manager_msgs-msg:pillars instead.")
  (pillars m))

(cl:ensure-generic-function 'walls-val :lambda-list '(m))
(cl:defmethod walls-val ((m <LiveLPNPMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:walls-val is deprecated.  Use system_manager_msgs-msg:walls instead.")
  (walls m))

(cl:ensure-generic-function 'intersections-val :lambda-list '(m))
(cl:defmethod intersections-val ((m <LiveLPNPMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:intersections-val is deprecated.  Use system_manager_msgs-msg:intersections instead.")
  (intersections m))

(cl:ensure-generic-function 'parking_gates-val :lambda-list '(m))
(cl:defmethod parking_gates-val ((m <LiveLPNPMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_gates-val is deprecated.  Use system_manager_msgs-msg:parking_gates instead.")
  (parking_gates m))

(cl:ensure-generic-function 'trajectory_points-val :lambda-list '(m))
(cl:defmethod trajectory_points-val ((m <LiveLPNPMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:trajectory_points-val is deprecated.  Use system_manager_msgs-msg:trajectory_points instead.")
  (trajectory_points m))

(cl:ensure-generic-function 'road_id-val :lambda-list '(m))
(cl:defmethod road_id-val ((m <LiveLPNPMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:road_id-val is deprecated.  Use system_manager_msgs-msg:road_id instead.")
  (road_id m))

(cl:ensure-generic-function 'road_type-val :lambda-list '(m))
(cl:defmethod road_type-val ((m <LiveLPNPMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:road_type-val is deprecated.  Use system_manager_msgs-msg:road_type instead.")
  (road_type m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <LiveLPNPMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:transform-val is deprecated.  Use system_manager_msgs-msg:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LiveLPNPMap>) ostream)
  "Serializes a message object of type '<LiveLPNPMap>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'psd_map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'psd_map))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speed_bumps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'speed_bumps))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pillars))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pillars))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'walls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'walls))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intersections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'intersections))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parking_gates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parking_gates))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory_points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'road_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'road_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'road_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LiveLPNPMap>) istream)
  "Deserializes a message object of type '<LiveLPNPMap>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'psd_map) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'psd_map)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_manager_msgs-msg:ParkingSpaceInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speed_bumps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speed_bumps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_manager_msgs-msg:PointsPosition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pillars) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pillars)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_manager_msgs-msg:PointsPosition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'walls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'walls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_manager_msgs-msg:PointsPosition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intersections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intersections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_manager_msgs-msg:PointsPosition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parking_gates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parking_gates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_manager_msgs-msg:PointsPosition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_manager_msgs-msg:LiveLPNPMapRoadPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'road_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'road_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'road_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LiveLPNPMap>)))
  "Returns string type for a message object of type '<LiveLPNPMap>"
  "system_manager_msgs/LiveLPNPMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LiveLPNPMap)))
  "Returns string type for a message object of type 'LiveLPNPMap"
  "system_manager_msgs/LiveLPNPMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LiveLPNPMap>)))
  "Returns md5sum for a message object of type '<LiveLPNPMap>"
  "b966108b5c783baed293373c10146e4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LiveLPNPMap)))
  "Returns md5sum for a message object of type 'LiveLPNPMap"
  "b966108b5c783baed293373c10146e4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LiveLPNPMap>)))
  "Returns full string definition for message of type '<LiveLPNPMap>"
  (cl:format cl:nil "system_manager_msgs/ParkingSpaceInfo[] psd_map~%system_manager_msgs/PointsPosition[] speed_bumps~%system_manager_msgs/PointsPosition[] pillars~%system_manager_msgs/PointsPosition[] walls~%system_manager_msgs/PointsPosition[] intersections~%system_manager_msgs/PointsPosition[] parking_gates~%system_manager_msgs/LiveLPNPMapRoadPoint[] trajectory_points~%uint32 road_id~%system_manager_msgs/RoadTypeEnum road_type~%geometry_msgs/TransformStamped transform~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceInfo~%uint64 id~%uint8 code~%system_manager_msgs/ParkingSpaceStatusEnum status~%system_manager_msgs/ParkingSpaceTypeEnum type~%mla_localization_msgs/MLAPosLocal[] corners~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceStatusEnum~%uint8 NO_INFORMATION = 0~%uint8 PARKING_SPACE_VACANT = 1~%uint8 PARKING_SPACE_OCCUPIED = 2~%uint8 PARKING_SPACE_HIGHLIGHT = 3~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceTypeEnum~%uint8 UNKNOWN = 0~%uint8 PARKING_SPACE_WITH_CHARGING = 1~%uint8 value~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: system_manager_msgs/PointsPosition~%mla_localization_msgs/MLAPosLocal[] points~%~%================================================================================~%MSG: system_manager_msgs/LiveLPNPMapRoadPoint~%float64 x~%float64 y~%float64 z~%float64 width~%~%================================================================================~%MSG: system_manager_msgs/RoadTypeEnum~%uint8 UNKNOWN = 0~%uint8 LEVEL = 1~%uint8 DOWNHILL = 2~%uint8 UPHILL = 3~%uint8 GROUND_PARKING = 4~%uint8 PUBLIC_ROAD = 5~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LiveLPNPMap)))
  "Returns full string definition for message of type 'LiveLPNPMap"
  (cl:format cl:nil "system_manager_msgs/ParkingSpaceInfo[] psd_map~%system_manager_msgs/PointsPosition[] speed_bumps~%system_manager_msgs/PointsPosition[] pillars~%system_manager_msgs/PointsPosition[] walls~%system_manager_msgs/PointsPosition[] intersections~%system_manager_msgs/PointsPosition[] parking_gates~%system_manager_msgs/LiveLPNPMapRoadPoint[] trajectory_points~%uint32 road_id~%system_manager_msgs/RoadTypeEnum road_type~%geometry_msgs/TransformStamped transform~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceInfo~%uint64 id~%uint8 code~%system_manager_msgs/ParkingSpaceStatusEnum status~%system_manager_msgs/ParkingSpaceTypeEnum type~%mla_localization_msgs/MLAPosLocal[] corners~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceStatusEnum~%uint8 NO_INFORMATION = 0~%uint8 PARKING_SPACE_VACANT = 1~%uint8 PARKING_SPACE_OCCUPIED = 2~%uint8 PARKING_SPACE_HIGHLIGHT = 3~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ParkingSpaceTypeEnum~%uint8 UNKNOWN = 0~%uint8 PARKING_SPACE_WITH_CHARGING = 1~%uint8 value~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: system_manager_msgs/PointsPosition~%mla_localization_msgs/MLAPosLocal[] points~%~%================================================================================~%MSG: system_manager_msgs/LiveLPNPMapRoadPoint~%float64 x~%float64 y~%float64 z~%float64 width~%~%================================================================================~%MSG: system_manager_msgs/RoadTypeEnum~%uint8 UNKNOWN = 0~%uint8 LEVEL = 1~%uint8 DOWNHILL = 2~%uint8 UPHILL = 3~%uint8 GROUND_PARKING = 4~%uint8 PUBLIC_ROAD = 5~%uint8 value~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LiveLPNPMap>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'psd_map) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speed_bumps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pillars) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'walls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intersections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parking_gates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LiveLPNPMap>))
  "Converts a ROS message object to a list"
  (cl:list 'LiveLPNPMap
    (cl:cons ':psd_map (psd_map msg))
    (cl:cons ':speed_bumps (speed_bumps msg))
    (cl:cons ':pillars (pillars msg))
    (cl:cons ':walls (walls msg))
    (cl:cons ':intersections (intersections msg))
    (cl:cons ':parking_gates (parking_gates msg))
    (cl:cons ':trajectory_points (trajectory_points msg))
    (cl:cons ':road_id (road_id msg))
    (cl:cons ':road_type (road_type msg))
    (cl:cons ':transform (transform msg))
))
