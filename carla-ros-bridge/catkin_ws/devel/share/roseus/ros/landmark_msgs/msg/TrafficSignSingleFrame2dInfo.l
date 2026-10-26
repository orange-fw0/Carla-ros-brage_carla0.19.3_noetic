;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignSingleFrame2dInfo)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignSingleFrame2dInfo (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignSingleFrame2dInfo.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*CAMERA_SOURCE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(shadow '*CAMERA_SOURCE_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficSignSingleFrame2dInfo::*CAMERA_SOURCE_VALID* 1)
(intern "*CAMERA_MODEL_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(shadow '*CAMERA_MODEL_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficSignSingleFrame2dInfo::*CAMERA_MODEL_VALID* 2)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficSignSingleFrame2dInfo::*SCORE_VALID* 4)
(intern "*BOUNDING_BOX_2D_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(shadow '*BOUNDING_BOX_2D_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficSignSingleFrame2dInfo::*BOUNDING_BOX_2D_VALID* 8)
(intern "*SIGN_TYPE_SCORE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(shadow '*SIGN_TYPE_SCORE_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficSignSingleFrame2dInfo::*SIGN_TYPE_SCORE_VALID* 16)
(intern "*ATTR_NAMES_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(shadow '*ATTR_NAMES_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficSignSingleFrame2dInfo::*ATTR_NAMES_VALID* 32)
(intern "*ATTR_SCORES_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(shadow '*ATTR_SCORES_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNSINGLEFRAME2DINFO"))
(defconstant landmark_msgs::TrafficSignSingleFrame2dInfo::*ATTR_SCORES_VALID* 64)

(defun landmark_msgs::TrafficSignSingleFrame2dInfo-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::TrafficSignSingleFrame2dInfo::*CAMERA_SOURCE_VALID*)
        ((= const 2) 'landmark_msgs::TrafficSignSingleFrame2dInfo::*CAMERA_MODEL_VALID*)
        ((= const 4) 'landmark_msgs::TrafficSignSingleFrame2dInfo::*SCORE_VALID*)
        ((= const 8) 'landmark_msgs::TrafficSignSingleFrame2dInfo::*BOUNDING_BOX_2D_VALID*)
        ((= const 16) 'landmark_msgs::TrafficSignSingleFrame2dInfo::*SIGN_TYPE_SCORE_VALID*)
        ((= const 32) 'landmark_msgs::TrafficSignSingleFrame2dInfo::*ATTR_NAMES_VALID*)
        ((= const 64) 'landmark_msgs::TrafficSignSingleFrame2dInfo::*ATTR_SCORES_VALID*)
        (t nil)))

(defclass landmark_msgs::TrafficSignSingleFrame2dInfo
  :super ros::object
  :slots (_track_id _camera_source _camera_model _score _bounding_box_2d _sign_type_score _attr_names _attr_scores _reserved_info _available ))

(defmethod landmark_msgs::TrafficSignSingleFrame2dInfo
  (:init
   (&key
    ((:track_id __track_id) 0)
    ((:camera_source __camera_source) (instance landmark_msgs::CameraSourceEnum :init))
    ((:camera_model __camera_model) (instance landmark_msgs::CameraModelEnum :init))
    ((:score __score) 0.0)
    ((:bounding_box_2d __bounding_box_2d) (instance perception_interface_msgs::Rect4f :init))
    ((:sign_type_score __sign_type_score) 0.0)
    ((:attr_names __attr_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:attr_scores __attr_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reserved_info __reserved_info) "")
    ((:available __available) 0)
    )
   (send-super :init)
   (setq _track_id (round __track_id))
   (setq _camera_source __camera_source)
   (setq _camera_model __camera_model)
   (setq _score (float __score))
   (setq _bounding_box_2d __bounding_box_2d)
   (setq _sign_type_score (float __sign_type_score))
   (setq _attr_names __attr_names)
   (setq _attr_scores __attr_scores)
   (setq _reserved_info (string __reserved_info))
   (setq _available (round __available))
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
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
  (:bounding_box_2d
   (&rest __bounding_box_2d)
   (if (keywordp (car __bounding_box_2d))
       (send* _bounding_box_2d __bounding_box_2d)
     (progn
       (if __bounding_box_2d (setq _bounding_box_2d (car __bounding_box_2d)))
       _bounding_box_2d)))
  (:sign_type_score
   (&optional __sign_type_score)
   (if __sign_type_score (setq _sign_type_score __sign_type_score)) _sign_type_score)
  (:attr_names
   (&optional __attr_names)
   (if __attr_names (setq _attr_names __attr_names)) _attr_names)
  (:attr_scores
   (&optional __attr_scores)
   (if __attr_scores (setq _attr_scores __attr_scores)) _attr_scores)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:serialization-length
   ()
   (+
    ;; int32 _track_id
    4
    ;; landmark_msgs/CameraSourceEnum _camera_source
    (send _camera_source :serialization-length)
    ;; landmark_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; float32 _score
    4
    ;; perception_interface_msgs/Rect4f _bounding_box_2d
    (send _bounding_box_2d :serialization-length)
    ;; float32 _sign_type_score
    4
    ;; string[] _attr_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _attr_names)) 4
    ;; float32[] _attr_scores
    (* 4    (length _attr_scores)) 4
    ;; string _reserved_info
    4 (length _reserved_info)
    ;; uint32 _available
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _track_id
       (write-long _track_id s)
     ;; landmark_msgs/CameraSourceEnum _camera_source
       (send _camera_source :serialize s)
     ;; landmark_msgs/CameraModelEnum _camera_model
       (send _camera_model :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Rect4f _bounding_box_2d
       (send _bounding_box_2d :serialize s)
     ;; float32 _sign_type_score
       (sys::poke _sign_type_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string[] _attr_names
     (write-long (length _attr_names) s)
     (dolist (elem _attr_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _attr_scores
     (write-long (length _attr_scores) s)
     (dotimes (i (length _attr_scores))
       (sys::poke (elt _attr_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;; uint32 _available
       (write-long _available s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; landmark_msgs/CameraSourceEnum _camera_source
     (send _camera_source :deserialize buf ptr-) (incf ptr- (send _camera_source :serialization-length))
   ;; landmark_msgs/CameraModelEnum _camera_model
     (send _camera_model :deserialize buf ptr-) (incf ptr- (send _camera_model :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Rect4f _bounding_box_2d
     (send _bounding_box_2d :deserialize buf ptr-) (incf ptr- (send _bounding_box_2d :serialization-length))
   ;; float32 _sign_type_score
     (setq _sign_type_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string[] _attr_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _attr_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _attr_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _attr_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _attr_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _attr_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _available
     (setq _available (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::TrafficSignSingleFrame2dInfo :md5sum-) "740bdf5646f0620d9358d7bd0b552186")
(setf (get landmark_msgs::TrafficSignSingleFrame2dInfo :datatype-) "landmark_msgs/TrafficSignSingleFrame2dInfo")
(setf (get landmark_msgs::TrafficSignSingleFrame2dInfo :definition-)
      "uint32 CAMERA_SOURCE_VALID = 1
uint32 CAMERA_MODEL_VALID = 2
uint32 SCORE_VALID = 4
uint32 BOUNDING_BOX_2D_VALID = 8
uint32 SIGN_TYPE_SCORE_VALID = 16
uint32 ATTR_NAMES_VALID = 32
uint32 ATTR_SCORES_VALID = 64
int32 track_id
landmark_msgs/CameraSourceEnum camera_source
landmark_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/Rect4f bounding_box_2d
float32 sign_type_score
string[] attr_names
float32[] attr_scores
string reserved_info
uint32 available

================================================================================
MSG: landmark_msgs/CameraSourceEnum
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
MSG: landmark_msgs/CameraModelEnum
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
MSG: perception_interface_msgs/Rect4f
float32 left
float32 top
float32 right
float32 bottom

")



(provide :landmark_msgs/TrafficSignSingleFrame2dInfo "740bdf5646f0620d9358d7bd0b552186")


