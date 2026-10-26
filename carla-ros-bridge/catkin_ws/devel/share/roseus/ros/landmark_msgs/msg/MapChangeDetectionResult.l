;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::MapChangeDetectionResult)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'MapChangeDetectionResult (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::MAPCHANGEDETECTIONRESULT")
  (make-package "LANDMARK_MSGS::MAPCHANGEDETECTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude MapChangeDetectionResult.msg.html


(defclass landmark_msgs::MapChangeDetectionResult
  :super ros::object
  :slots (_change_type _score ))

(defmethod landmark_msgs::MapChangeDetectionResult
  (:init
   (&key
    ((:change_type __change_type) (instance landmark_msgs::MapChangeTypeEnum :init))
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _change_type __change_type)
   (setq _score (float __score))
   self)
  (:change_type
   (&rest __change_type)
   (if (keywordp (car __change_type))
       (send* _change_type __change_type)
     (progn
       (if __change_type (setq _change_type (car __change_type)))
       _change_type)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/MapChangeTypeEnum _change_type
    (send _change_type :serialization-length)
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/MapChangeTypeEnum _change_type
       (send _change_type :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/MapChangeTypeEnum _change_type
     (send _change_type :deserialize buf ptr-) (incf ptr- (send _change_type :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::MapChangeDetectionResult :md5sum-) "81789e0b25e985bfd68b0eca02929b17")
(setf (get landmark_msgs::MapChangeDetectionResult :datatype-) "landmark_msgs/MapChangeDetectionResult")
(setf (get landmark_msgs::MapChangeDetectionResult :definition-)
      "landmark_msgs/MapChangeTypeEnum change_type
float32 score

================================================================================
MSG: landmark_msgs/MapChangeTypeEnum
uint8 MAP_CHANGE_TYPE_UNKNOWN = 0
uint8 MAP_CHANGE_TYPE_NO_CHANGE = 1
uint8 MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE = 2
uint8 MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE = 3
uint8 MAP_CHANGE_TYPE_OTHER_CHANGES = 4
uint8 value

")



(provide :landmark_msgs/MapChangeDetectionResult "81789e0b25e985bfd68b0eca02929b17")


