;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ParkingSlot)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ParkingSlot (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOT")
  (make-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOT"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlot.msg.html


(defclass perception_interface_msgs::ParkingSlot
  :super ros::object
  :slots (_camera_source _camera_model _available _corner_points _center_point _wheel_stop_points _points_3d ))

(defmethod perception_interface_msgs::ParkingSlot
  (:init
   (&key
    ((:camera_source __camera_source) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance perception_interface_msgs::CameraModelEnum :init))
    ((:available __available) 0)
    ((:corner_points __corner_points) ())
    ((:center_point __center_point) (instance perception_interface_msgs::ParkingSlotCenterPoint :init))
    ((:wheel_stop_points __wheel_stop_points) ())
    ((:points_3d __points_3d) ())
    )
   (send-super :init)
   (setq _camera_source __camera_source)
   (setq _camera_model __camera_model)
   (setq _available (round __available))
   (setq _corner_points __corner_points)
   (setq _center_point __center_point)
   (setq _wheel_stop_points __wheel_stop_points)
   (setq _points_3d __points_3d)
   self)
  (:camera_source
   (&rest __camera_source)
   (if (keywordp (car __camera_source))
       (send* _camera_source __camera_source)
     (progn
       (if __camera_source (setq _camera_source (car __camera_source)))
       _camera_source)))
  (:camera_model
   (&rest __camera_model)
   (if (keywordp (car __camera_model))
       (send* _camera_model __camera_model)
     (progn
       (if __camera_model (setq _camera_model (car __camera_model)))
       _camera_model)))
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:corner_points
   (&rest __corner_points)
   (if (keywordp (car __corner_points))
       (send* _corner_points __corner_points)
     (progn
       (if __corner_points (setq _corner_points (car __corner_points)))
       _corner_points)))
  (:center_point
   (&rest __center_point)
   (if (keywordp (car __center_point))
       (send* _center_point __center_point)
     (progn
       (if __center_point (setq _center_point (car __center_point)))
       _center_point)))
  (:wheel_stop_points
   (&rest __wheel_stop_points)
   (if (keywordp (car __wheel_stop_points))
       (send* _wheel_stop_points __wheel_stop_points)
     (progn
       (if __wheel_stop_points (setq _wheel_stop_points (car __wheel_stop_points)))
       _wheel_stop_points)))
  (:points_3d
   (&rest __points_3d)
   (if (keywordp (car __points_3d))
       (send* _points_3d __points_3d)
     (progn
       (if __points_3d (setq _points_3d (car __points_3d)))
       _points_3d)))
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/CameraSourceEnum _camera_source
    (send _camera_source :serialization-length)
    ;; perception_interface_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; uint8 _available
    1
    ;; perception_interface_msgs/ParkingSlotPoint[] _corner_points
    (apply #'+ (send-all _corner_points :serialization-length)) 4
    ;; perception_interface_msgs/ParkingSlotCenterPoint _center_point
    (send _center_point :serialization-length)
    ;; perception_interface_msgs/Point2f[] _wheel_stop_points
    (apply #'+ (send-all _wheel_stop_points :serialization-length)) 4
    ;; perception_interface_msgs/ParkingSlotPoint3d[] _points_3d
    (apply #'+ (send-all _points_3d :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/CameraSourceEnum _camera_source
       (send _camera_source :serialize s)
     ;; perception_interface_msgs/CameraModelEnum _camera_model
       (send _camera_model :serialize s)
     ;; uint8 _available
       (write-byte _available s)
     ;; perception_interface_msgs/ParkingSlotPoint[] _corner_points
     (write-long (length _corner_points) s)
     (dolist (elem _corner_points)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/ParkingSlotCenterPoint _center_point
       (send _center_point :serialize s)
     ;; perception_interface_msgs/Point2f[] _wheel_stop_points
     (write-long (length _wheel_stop_points) s)
     (dolist (elem _wheel_stop_points)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/ParkingSlotPoint3d[] _points_3d
     (write-long (length _points_3d) s)
     (dolist (elem _points_3d)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/CameraSourceEnum _camera_source
     (send _camera_source :deserialize buf ptr-) (incf ptr- (send _camera_source :serialization-length))
   ;; perception_interface_msgs/CameraModelEnum _camera_model
     (send _camera_model :deserialize buf ptr-) (incf ptr- (send _camera_model :serialization-length))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/ParkingSlotPoint[] _corner_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _corner_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::ParkingSlotPoint :init) r)) r))
     (dolist (elem- _corner_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/ParkingSlotCenterPoint _center_point
     (send _center_point :deserialize buf ptr-) (incf ptr- (send _center_point :serialization-length))
   ;; perception_interface_msgs/Point2f[] _wheel_stop_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_stop_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point2f :init) r)) r))
     (dolist (elem- _wheel_stop_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/ParkingSlotPoint3d[] _points_3d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_3d (let (r) (dotimes (i n) (push (instance perception_interface_msgs::ParkingSlotPoint3d :init) r)) r))
     (dolist (elem- _points_3d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::ParkingSlot :md5sum-) "87e3c03b0fdca005d86220b8f6fc1a73")
(setf (get perception_interface_msgs::ParkingSlot :datatype-) "perception_interface_msgs/ParkingSlot")
(setf (get perception_interface_msgs::ParkingSlot :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
uint8 available
perception_interface_msgs/ParkingSlotPoint[] corner_points
perception_interface_msgs/ParkingSlotCenterPoint center_point
perception_interface_msgs/Point2f[] wheel_stop_points
perception_interface_msgs/ParkingSlotPoint3d[] points_3d

================================================================================
MSG: perception_interface_msgs/CameraSourceEnum
uint8 CAMERA_SOURCE_FRONT_FAR = 0
uint8 CAMERA_SOURCE_FRONT_MID = 1
uint8 CAMERA_SOURCE_FRONT_WIDE = 2
uint8 CAMERA_SOURCE_LEFT_FRONT = 3
uint8 CAMERA_SOURCE_LEFT_REAR = 4
uint8 CAMERA_SOURCE_REAR_MID = 5
uint8 CAMERA_SOURCE_REAR_MID_UP = 6
uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
uint8 CAMERA_SOURCE_RIGHT_REAR = 9
uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
uint8 CAMERA_SOURCE_FISHEYE = 14
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
uint8 CAMERA_SOURCE_BEV = 25
uint8 value

================================================================================
MSG: perception_interface_msgs/CameraModelEnum
uint8 CAMERA_MODEL_UNKNOWN = 0
uint8 CAMERA_MODEL_RAW = 1
uint8 CAMERA_MODEL_CYLINDER = 2
uint8 CAMERA_MODEL_DEDISTORT = 3
uint8 CAMERA_MODEL_PSTITCH = 4
uint8 CAMERA_MODEL_RESERVED_A = 5
uint8 CAMERA_MODEL_RESERVED_B = 6
uint8 CAMERA_MODEL_RESERVED_C = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotPoint
perception_interface_msgs/Point2f position
float32 confidence
perception_interface_msgs/ParkingSlotPointTypeEnum type

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/ParkingSlotPointTypeEnum
uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_POINT_TYPE_REAL = 1
uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotCenterPoint
perception_interface_msgs/Point2f position
perception_interface_msgs/ParkingSlotTypeEnum available_type
float32 confidence
float32 center_line_angle
perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type
perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type
float32 special_confidence

================================================================================
MSG: perception_interface_msgs/ParkingSlotTypeEnum
uint8 PARKING_SLOT_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_TYPE_AVAILABLE = 1
uint8 PARKING_SLOT_TYPE_OCCUPIED = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum
uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1
uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum
uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1
uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2
uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3
uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotPoint3d
perception_interface_msgs/Point3f position
float32 confidence
perception_interface_msgs/ParkingSlotPointTypeEnum type

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :perception_interface_msgs/ParkingSlot "87e3c03b0fdca005d86220b8f6fc1a73")


