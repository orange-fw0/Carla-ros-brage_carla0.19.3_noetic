;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::SceneRecognition)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'SceneRecognition (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::SCENERECOGNITION")
  (make-package "LANDMARK_MSGS::SCENERECOGNITION"))

(in-package "ROS")
;;//! \htmlinclude SceneRecognition.msg.html


(defclass landmark_msgs::SceneRecognition
  :super ros::object
  :slots (_scene_types _reserved_info ))

(defmethod landmark_msgs::SceneRecognition
  (:init
   (&key
    ((:scene_types __scene_types) ())
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _scene_types __scene_types)
   (setq _reserved_info (string __reserved_info))
   self)
  (:scene_types
   (&rest __scene_types)
   (if (keywordp (car __scene_types))
       (send* _scene_types __scene_types)
     (progn
       (if __scene_types (setq _scene_types (car __scene_types)))
       _scene_types)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/SceneRecognitionType[] _scene_types
    (apply #'+ (send-all _scene_types :serialization-length)) 4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/SceneRecognitionType[] _scene_types
     (write-long (length _scene_types) s)
     (dolist (elem _scene_types)
       (send elem :serialize s)
       )
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/SceneRecognitionType[] _scene_types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scene_types (let (r) (dotimes (i n) (push (instance landmark_msgs::SceneRecognitionType :init) r)) r))
     (dolist (elem- _scene_types)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::SceneRecognition :md5sum-) "5fce90c362d21b9e64e5e0e241351d65")
(setf (get landmark_msgs::SceneRecognition :datatype-) "landmark_msgs/SceneRecognition")
(setf (get landmark_msgs::SceneRecognition :definition-)
      "landmark_msgs/SceneRecognitionType[] scene_types
string reserved_info

================================================================================
MSG: landmark_msgs/SceneRecognitionType
uint8 SCENE_RECOGNITION_TYPE_UKNOWN = 0
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD = 1
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_RAMP = 2
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_UNKNOWN = 3
uint8 SCENE_RECOGNITION_TYPE_URBAN_UNDER_HIGHWAY_BRIDGE = 4
uint8 SCENE_RECOGNITION_TYPE_URBAN_TUNNEL = 5
uint8 SCENE_RECOGNITION_TYPE_URBAN_COMMON_SIDE_ROAD = 6
uint8 SCENE_RECOGNITION_TYPE_URBAN_OTHER = 7
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_TOLL_GATE = 8
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INDOOR_PARKING_LOT = 9
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_GAS_STATION = 10
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_OTHER = 11
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_ON_GROUND = 12
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_MAIN_ROAD_NOT_GROUND = 13
uint8 SCENE_RECOGNITION_TYPE_URBAN_ROAD_UNDER_BRIDGE = 14
uint8 SCENE_RECOGNITION_TYPE_HIGHWAY_ROAD_UNDER_BRIDGE = 15
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_INTERNAL_ROAD = 16
uint8 SCENE_RECOGNITION_TYPE_UNSTRUCTURED_COUNTRY_ROAD = 17
uint8 SCENE_RECOGNITION_TYPE_UP_DOWN_SLOPE = 18
uint8 value

")



(provide :landmark_msgs/SceneRecognition "5fce90c362d21b9e64e5e0e241351d65")


