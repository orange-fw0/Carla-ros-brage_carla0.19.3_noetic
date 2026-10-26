;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneBoundary)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneBoundary (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANEBOUNDARY")
  (make-package "WORLDMODEL_MSGS::LANEBOUNDARY"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundary.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::LaneBoundary
  :super ros::object
  :slots (_existence _segments _polyline _points _reserved ))

(defmethod worldmodel_msgs::LaneBoundary
  (:init
   (&key
    ((:existence __existence) nil)
    ((:segments __segments) ())
    ((:polyline __polyline) (instance worldmodel_msgs::LaneBoundaryPolyline :init))
    ((:points __points) ())
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _existence __existence)
   (setq _segments __segments)
   (setq _polyline __polyline)
   (setq _points __points)
   (setq _reserved (string __reserved))
   self)
  (:existence
   (&optional (__existence :null))
   (if (not (eq __existence :null)) (setq _existence __existence)) _existence)
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:polyline
   (&rest __polyline)
   (if (keywordp (car __polyline))
       (send* _polyline __polyline)
     (progn
       (if __polyline (setq _polyline (car __polyline)))
       _polyline)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; bool _existence
    1
    ;; worldmodel_msgs/LaneBoundarySegment[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ;; worldmodel_msgs/LaneBoundaryPolyline _polyline
    (send _polyline :serialization-length)
    ;; perception_interface_msgs/Point3f[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _existence
       (if _existence (write-byte -1 s) (write-byte 0 s))
     ;; worldmodel_msgs/LaneBoundarySegment[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/LaneBoundaryPolyline _polyline
       (send _polyline :serialize s)
     ;; perception_interface_msgs/Point3f[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _existence
     (setq _existence (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; worldmodel_msgs/LaneBoundarySegment[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance worldmodel_msgs::LaneBoundarySegment :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/LaneBoundaryPolyline _polyline
     (send _polyline :deserialize buf ptr-) (incf ptr- (send _polyline :serialization-length))
   ;; perception_interface_msgs/Point3f[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get worldmodel_msgs::LaneBoundary :md5sum-) "489d9596a5fcbfec300adeb37414f4fb")
(setf (get worldmodel_msgs::LaneBoundary :datatype-) "worldmodel_msgs/LaneBoundary")
(setf (get worldmodel_msgs::LaneBoundary :definition-)
      "bool existence
worldmodel_msgs/LaneBoundarySegment[] segments
worldmodel_msgs/LaneBoundaryPolyline polyline
perception_interface_msgs/Point3f[] points
string reserved

================================================================================
MSG: worldmodel_msgs/LaneBoundarySegment
float64 length
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

================================================================================
MSG: worldmodel_msgs/LaneBoundaryPolyline
uint64 track_id
float64[] poly_coefficient
worldmodel_msgs/Interval available_interval

================================================================================
MSG: worldmodel_msgs/Interval
float64 begin
float64 end

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :worldmodel_msgs/LaneBoundary "489d9596a5fcbfec300adeb37414f4fb")


