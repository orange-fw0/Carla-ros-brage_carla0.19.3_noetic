;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneBoundarySegment)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneBoundarySegment (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANEBOUNDARYSEGMENT")
  (make-package "WORLDMODEL_MSGS::LANEBOUNDARYSEGMENT"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundarySegment.msg.html


(defclass worldmodel_msgs::LaneBoundarySegment
  :super ros::object
  :slots (_length _type ))

(defmethod worldmodel_msgs::LaneBoundarySegment
  (:init
   (&key
    ((:length __length) 0.0)
    ((:type __type) (instance worldmodel_msgs::LaneBoundaryType :init))
    )
   (send-super :init)
   (setq _length (float __length))
   (setq _type __type)
   self)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
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
    ;; float64 _length
    8
    ;; worldmodel_msgs/LaneBoundaryType _type
    (send _type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; worldmodel_msgs/LaneBoundaryType _type
       (send _type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; worldmodel_msgs/LaneBoundaryType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::LaneBoundarySegment :md5sum-) "3706c60262ae419233a21af37b9d5b4b")
(setf (get worldmodel_msgs::LaneBoundarySegment :datatype-) "worldmodel_msgs/LaneBoundarySegment")
(setf (get worldmodel_msgs::LaneBoundarySegment :definition-)
      "float64 length
worldmodel_msgs/LaneBoundaryType type

================================================================================
MSG: worldmodel_msgs/LaneBoundaryType
worldmodel_msgs/LaneBoundaryForm value
worldmodel_msgs/LaneBoundaryColor color
worldmodel_msgs/LaneBoundaryWidth width

================================================================================
MSG: worldmodel_msgs/LaneBoundaryForm
uint8 UNKNOWN = 0
uint8 SOLID = 1
uint8 DASH = 2
uint8 VIRTUAL = 3
uint8 PHYSICAL = 4
uint8 DOUBLE_SOLID = 5
uint8 DASH_SOLID = 6
uint8 SOLID_DASH = 7
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneBoundaryColor
uint8 WHITE = 0
uint8 YELLOW = 1
uint8 OTHER = 2
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneBoundaryWidth
uint8 THIN = 0
uint8 THICK = 1
uint8 UNKNOWN = 2
uint8 value

")



(provide :worldmodel_msgs/LaneBoundarySegment "3706c60262ae419233a21af37b9d5b4b")


