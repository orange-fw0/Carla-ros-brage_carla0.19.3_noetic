;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::GroundLine)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'GroundLine (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINE")
  (make-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINE"))

(in-package "ROS")
;;//! \htmlinclude GroundLine.msg.html


(defclass perception_interface_msgs::GroundLine
  :super ros::object
  :slots (_camera_source _camera_model _available _score _type _points _points_3d _points_3d_type ))

(defmethod perception_interface_msgs::GroundLine
  (:init
   (&key
    ((:camera_source __camera_source) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance perception_interface_msgs::CameraModelEnum :init))
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:type __type) (instance perception_interface_msgs::GroundLineTypeEnum :init))
    ((:points __points) ())
    ((:points_3d __points_3d) ())
    ((:points_3d_type __points_3d_type) (instance perception_interface_msgs::GroundLine3dPointTypeEnum :init))
    )
   (send-super :init)
   (setq _camera_source __camera_source)
   (setq _camera_model __camera_model)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _type __type)
   (setq _points __points)
   (setq _points_3d __points_3d)
   (setq _points_3d_type __points_3d_type)
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
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:points_3d
   (&rest __points_3d)
   (if (keywordp (car __points_3d))
       (send* _points_3d __points_3d)
     (progn
       (if __points_3d (setq _points_3d (car __points_3d)))
       _points_3d)))
  (:points_3d_type
   (&rest __points_3d_type)
   (if (keywordp (car __points_3d_type))
       (send* _points_3d_type __points_3d_type)
     (progn
       (if __points_3d_type (setq _points_3d_type (car __points_3d_type)))
       _points_3d_type)))
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/CameraSourceEnum _camera_source
    (send _camera_source :serialization-length)
    ;; perception_interface_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; uint8 _available
    1
    ;; float32 _score
    4
    ;; perception_interface_msgs/GroundLineTypeEnum _type
    (send _type :serialization-length)
    ;; perception_interface_msgs/Point2f[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; perception_interface_msgs/Point3f[] _points_3d
    (apply #'+ (send-all _points_3d :serialization-length)) 4
    ;; perception_interface_msgs/GroundLine3dPointTypeEnum _points_3d_type
    (send _points_3d_type :serialization-length)
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
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/GroundLineTypeEnum _type
       (send _type :serialize s)
     ;; perception_interface_msgs/Point2f[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point3f[] _points_3d
     (write-long (length _points_3d) s)
     (dolist (elem _points_3d)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/GroundLine3dPointTypeEnum _points_3d_type
       (send _points_3d_type :serialize s)
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
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/GroundLineTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; perception_interface_msgs/Point2f[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point2f :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point3f[] _points_3d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_3d (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _points_3d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/GroundLine3dPointTypeEnum _points_3d_type
     (send _points_3d_type :deserialize buf ptr-) (incf ptr- (send _points_3d_type :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::GroundLine :md5sum-) "d45c85367e32120eddb07002a17e0981")
(setf (get perception_interface_msgs::GroundLine :datatype-) "perception_interface_msgs/GroundLine")
(setf (get perception_interface_msgs::GroundLine :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
uint8 available
float32 score
perception_interface_msgs/GroundLineTypeEnum type
perception_interface_msgs/Point2f[] points
perception_interface_msgs/Point3f[] points_3d
perception_interface_msgs/GroundLine3dPointTypeEnum points_3d_type

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
MSG: perception_interface_msgs/GroundLineTypeEnum
uint8 GROUND_LINE_TYPE_UNKNOWN = 0
uint8 GROUND_LINE_TYPE_WALL = 1
uint8 GROUND_LINE_TYPE_PILLAR = 2
uint8 GROUND_LINE_TYPE_FENCE = 3
uint8 GROUND_LINE_TYPE_STEP = 4
uint8 GROUND_LINE_TYPE_SPECIAL = 5
uint8 GROUND_LINE_TYPE_POLE = 6
uint8 GROUND_LINE_TYPE_WHEELSTOP = 7
uint8 GROUNDLINE_TYPE_BARRIER = 8
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12
uint8 value

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/GroundLine3dPointTypeEnum
uint8 GROUND_LINE_3D_POINT_TYPE_RULE = 0
uint8 GROUND_LINE_3D_POINT_TYPE_DD = 1
uint8 value

")



(provide :perception_interface_msgs/GroundLine "d45c85367e32120eddb07002a17e0981")


