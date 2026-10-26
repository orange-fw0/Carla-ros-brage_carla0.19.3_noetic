;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::MergePoint)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'MergePoint (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::MERGEPOINT")
  (make-package "WORLDMODEL_MSGS::MERGEPOINT"))

(in-package "ROS")
;;//! \htmlinclude MergePoint.msg.html


(defclass worldmodel_msgs::MergePoint
  :super ros::object
  :slots (_distance _type ))

(defmethod worldmodel_msgs::MergePoint
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:type __type) (instance worldmodel_msgs::MergeType :init))
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _type __type)
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; worldmodel_msgs/MergeType _type
    (send _type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; worldmodel_msgs/MergeType _type
       (send _type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; worldmodel_msgs/MergeType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::MergePoint :md5sum-) "fc4aa91f76393862e9bc4f6ac3c197a5")
(setf (get worldmodel_msgs::MergePoint :datatype-) "worldmodel_msgs/MergePoint")
(setf (get worldmodel_msgs::MergePoint :definition-)
      "float64 distance
worldmodel_msgs/MergeType type

================================================================================
MSG: worldmodel_msgs/MergeType
uint8 UNKNOWN = 0
uint8 UNRELATED = 1
uint8 FROM_RIGHT = 2
uint8 FROM_LEFT = 3
uint8 FROM_BOTH = 4
uint8 LANE_END = 5
uint8 value

")



(provide :worldmodel_msgs/MergePoint "fc4aa91f76393862e9bc4f6ac3c197a5")


