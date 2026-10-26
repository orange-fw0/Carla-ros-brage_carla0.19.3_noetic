;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneBoundaryType)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneBoundaryType (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANEBOUNDARYTYPE")
  (make-package "WORLDMODEL_MSGS::LANEBOUNDARYTYPE"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundaryType.msg.html


(defclass worldmodel_msgs::LaneBoundaryType
  :super ros::object
  :slots (_value _color _width ))

(defmethod worldmodel_msgs::LaneBoundaryType
  (:init
   (&key
    ((:value __value) (instance worldmodel_msgs::LaneBoundaryForm :init))
    ((:color __color) (instance worldmodel_msgs::LaneBoundaryColor :init))
    ((:width __width) (instance worldmodel_msgs::LaneBoundaryWidth :init))
    )
   (send-super :init)
   (setq _value __value)
   (setq _color __color)
   (setq _width __width)
   self)
  (:value
   (&rest __value)
   (if (keywordp (car __value))
       (send* _value __value)
     (progn
       (if __value (setq _value (car __value)))
       _value)))
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:width
   (&rest __width)
   (if (keywordp (car __width))
       (send* _width __width)
     (progn
       (if __width (setq _width (car __width)))
       _width)))
  (:serialization-length
   ()
   (+
    ;; worldmodel_msgs/LaneBoundaryForm _value
    (send _value :serialization-length)
    ;; worldmodel_msgs/LaneBoundaryColor _color
    (send _color :serialization-length)
    ;; worldmodel_msgs/LaneBoundaryWidth _width
    (send _width :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; worldmodel_msgs/LaneBoundaryForm _value
       (send _value :serialize s)
     ;; worldmodel_msgs/LaneBoundaryColor _color
       (send _color :serialize s)
     ;; worldmodel_msgs/LaneBoundaryWidth _width
       (send _width :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; worldmodel_msgs/LaneBoundaryForm _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;; worldmodel_msgs/LaneBoundaryColor _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;; worldmodel_msgs/LaneBoundaryWidth _width
     (send _width :deserialize buf ptr-) (incf ptr- (send _width :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::LaneBoundaryType :md5sum-) "95147bd5b7fa0fdf3fcf8e37648214d8")
(setf (get worldmodel_msgs::LaneBoundaryType :datatype-) "worldmodel_msgs/LaneBoundaryType")
(setf (get worldmodel_msgs::LaneBoundaryType :definition-)
      "worldmodel_msgs/LaneBoundaryForm value
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



(provide :worldmodel_msgs/LaneBoundaryType "95147bd5b7fa0fdf3fcf8e37648214d8")


