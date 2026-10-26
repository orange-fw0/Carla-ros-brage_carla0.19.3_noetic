;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::PoleLine)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'PoleLine (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::POLELINE")
  (make-package "PERCEPTION_INTERFACE_MSGS::POLELINE"))

(in-package "ROS")
;;//! \htmlinclude PoleLine.msg.html


(defclass perception_interface_msgs::PoleLine
  :super ros::object
  :slots (_camera_source _camera_model _score _points_2d _type _track_id ))

(defmethod perception_interface_msgs::PoleLine
  (:init
   (&key
    ((:camera_source __camera_source) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance perception_interface_msgs::CameraModelEnum :init))
    ((:score __score) 0.0)
    ((:points_2d __points_2d) ())
    ((:type __type) (instance perception_interface_msgs::PoleLineTypeEnum :init))
    ((:track_id __track_id) 0)
    )
   (send-super :init)
   (setq _camera_source __camera_source)
   (setq _camera_model __camera_model)
   (setq _score (float __score))
   (setq _points_2d __points_2d)
   (setq _type __type)
   (setq _track_id (round __track_id))
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
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:points_2d
   (&rest __points_2d)
   (if (keywordp (car __points_2d))
       (send* _points_2d __points_2d)
     (progn
       (if __points_2d (setq _points_2d (car __points_2d)))
       _points_2d)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/CameraSourceEnum _camera_source
    (send _camera_source :serialization-length)
    ;; perception_interface_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; float32 _score
    4
    ;; perception_interface_msgs/PoleLinePoint[] _points_2d
    (apply #'+ (send-all _points_2d :serialization-length)) 4
    ;; perception_interface_msgs/PoleLineTypeEnum _type
    (send _type :serialization-length)
    ;; uint32 _track_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/CameraSourceEnum _camera_source
       (send _camera_source :serialize s)
     ;; perception_interface_msgs/CameraModelEnum _camera_model
       (send _camera_model :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/PoleLinePoint[] _points_2d
     (write-long (length _points_2d) s)
     (dolist (elem _points_2d)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/PoleLineTypeEnum _type
       (send _type :serialize s)
     ;; uint32 _track_id
       (write-long _track_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/CameraSourceEnum _camera_source
     (send _camera_source :deserialize buf ptr-) (incf ptr- (send _camera_source :serialization-length))
   ;; perception_interface_msgs/CameraModelEnum _camera_model
     (send _camera_model :deserialize buf ptr-) (incf ptr- (send _camera_model :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/PoleLinePoint[] _points_2d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_2d (let (r) (dotimes (i n) (push (instance perception_interface_msgs::PoleLinePoint :init) r)) r))
     (dolist (elem- _points_2d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/PoleLineTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; uint32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::PoleLine :md5sum-) "a58987aa64afaf915d968ea9517efe50")
(setf (get perception_interface_msgs::PoleLine :datatype-) "perception_interface_msgs/PoleLine")
(setf (get perception_interface_msgs::PoleLine :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/PoleLinePoint[] points_2d
perception_interface_msgs/PoleLineTypeEnum type
uint32 track_id

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
MSG: perception_interface_msgs/PoleLinePoint
perception_interface_msgs/Point2f position
float32 visibility

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/PoleLineTypeEnum
uint8 POLE_LINE_TYPE_UNKNOWN = 0
uint8 POLE_LINE_TYPE_GENERAL_POLE = 1
uint8 POLE_LINE_TYPE_LIGHT_POLE = 2
uint8 value

")



(provide :perception_interface_msgs/PoleLine "a58987aa64afaf915d968ea9517efe50")


