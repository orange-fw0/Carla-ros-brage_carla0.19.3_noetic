;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VisionDataDesensibilisationObject)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VisionDataDesensibilisationObject (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VISIONDATADESENSIBILISATIONOBJECT")
  (make-package "PERCEPTION_INTERFACE_MSGS::VISIONDATADESENSIBILISATIONOBJECT"))

(in-package "ROS")
;;//! \htmlinclude VisionDataDesensibilisationObject.msg.html


(defclass perception_interface_msgs::VisionDataDesensibilisationObject
  :super ros::object
  :slots (_camera_source _camera_model _type_info _score _bounding_box_2d _bounding_box_2d_raw ))

(defmethod perception_interface_msgs::VisionDataDesensibilisationObject
  (:init
   (&key
    ((:camera_source __camera_source) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance perception_interface_msgs::CameraModelEnum :init))
    ((:type_info __type_info) (instance perception_interface_msgs::DataDesensibilisationTypeEnum :init))
    ((:score __score) 0.0)
    ((:bounding_box_2d __bounding_box_2d) (instance perception_interface_msgs::Rect4f :init))
    ((:bounding_box_2d_raw __bounding_box_2d_raw) (instance perception_interface_msgs::Rect4f :init))
    )
   (send-super :init)
   (setq _camera_source __camera_source)
   (setq _camera_model __camera_model)
   (setq _type_info __type_info)
   (setq _score (float __score))
   (setq _bounding_box_2d __bounding_box_2d)
   (setq _bounding_box_2d_raw __bounding_box_2d_raw)
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
  (:type_info
   (&rest __type_info)
   (if (keywordp (car __type_info))
       (send* _type_info __type_info)
     (progn
       (if __type_info (setq _type_info (car __type_info)))
       _type_info)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:bounding_box_2d
   (&rest __bounding_box_2d)
   (if (keywordp (car __bounding_box_2d))
       (send* _bounding_box_2d __bounding_box_2d)
     (progn
       (if __bounding_box_2d (setq _bounding_box_2d (car __bounding_box_2d)))
       _bounding_box_2d)))
  (:bounding_box_2d_raw
   (&rest __bounding_box_2d_raw)
   (if (keywordp (car __bounding_box_2d_raw))
       (send* _bounding_box_2d_raw __bounding_box_2d_raw)
     (progn
       (if __bounding_box_2d_raw (setq _bounding_box_2d_raw (car __bounding_box_2d_raw)))
       _bounding_box_2d_raw)))
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/CameraSourceEnum _camera_source
    (send _camera_source :serialization-length)
    ;; perception_interface_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; perception_interface_msgs/DataDesensibilisationTypeEnum _type_info
    (send _type_info :serialization-length)
    ;; float32 _score
    4
    ;; perception_interface_msgs/Rect4f _bounding_box_2d
    (send _bounding_box_2d :serialization-length)
    ;; perception_interface_msgs/Rect4f _bounding_box_2d_raw
    (send _bounding_box_2d_raw :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/CameraSourceEnum _camera_source
       (send _camera_source :serialize s)
     ;; perception_interface_msgs/CameraModelEnum _camera_model
       (send _camera_model :serialize s)
     ;; perception_interface_msgs/DataDesensibilisationTypeEnum _type_info
       (send _type_info :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Rect4f _bounding_box_2d
       (send _bounding_box_2d :serialize s)
     ;; perception_interface_msgs/Rect4f _bounding_box_2d_raw
       (send _bounding_box_2d_raw :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/CameraSourceEnum _camera_source
     (send _camera_source :deserialize buf ptr-) (incf ptr- (send _camera_source :serialization-length))
   ;; perception_interface_msgs/CameraModelEnum _camera_model
     (send _camera_model :deserialize buf ptr-) (incf ptr- (send _camera_model :serialization-length))
   ;; perception_interface_msgs/DataDesensibilisationTypeEnum _type_info
     (send _type_info :deserialize buf ptr-) (incf ptr- (send _type_info :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Rect4f _bounding_box_2d
     (send _bounding_box_2d :deserialize buf ptr-) (incf ptr- (send _bounding_box_2d :serialization-length))
   ;; perception_interface_msgs/Rect4f _bounding_box_2d_raw
     (send _bounding_box_2d_raw :deserialize buf ptr-) (incf ptr- (send _bounding_box_2d_raw :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::VisionDataDesensibilisationObject :md5sum-) "42ad93b377f7131bb37668dce2805721")
(setf (get perception_interface_msgs::VisionDataDesensibilisationObject :datatype-) "perception_interface_msgs/VisionDataDesensibilisationObject")
(setf (get perception_interface_msgs::VisionDataDesensibilisationObject :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
perception_interface_msgs/DataDesensibilisationTypeEnum type_info
float32 score
perception_interface_msgs/Rect4f bounding_box_2d
perception_interface_msgs/Rect4f bounding_box_2d_raw

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
MSG: perception_interface_msgs/DataDesensibilisationTypeEnum
uint8 DATA_DESENSIBILISATION_TYPE_UNKNOWN = 0
uint8 DATA_DESENSIBILISATION_TYPE_HUMAN_FACE = 1
uint8 DATA_DESENSIBILISATION_TYPE_VECHILE_IDENTIFICATION_NUMBER = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/Rect4f
float32 left
float32 top
float32 right
float32 bottom

")



(provide :perception_interface_msgs/VisionDataDesensibilisationObject "42ad93b377f7131bb37668dce2805721")


