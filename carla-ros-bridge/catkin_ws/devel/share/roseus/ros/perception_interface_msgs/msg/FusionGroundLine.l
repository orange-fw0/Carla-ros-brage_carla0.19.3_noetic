;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FusionGroundLine)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FusionGroundLine (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINE")
  (make-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINE"))

(in-package "ROS")
;;//! \htmlinclude FusionGroundLine.msg.html


(intern "*FUSION_GROUND_LINE_AVAILABLE_DATA*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINE"))
(shadow '*FUSION_GROUND_LINE_AVAILABLE_DATA* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINE"))
(defconstant perception_interface_msgs::FusionGroundLine::*FUSION_GROUND_LINE_AVAILABLE_DATA* 1)
(intern "*FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINE"))
(shadow '*FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINE"))
(defconstant perception_interface_msgs::FusionGroundLine::*FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO* 2)

(defun perception_interface_msgs::FusionGroundLine-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::FusionGroundLine::*FUSION_GROUND_LINE_AVAILABLE_DATA*)
        ((= const 2) 'perception_interface_msgs::FusionGroundLine::*FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO*)
        (t nil)))

(defclass perception_interface_msgs::FusionGroundLine
  :super ros::object
  :slots (_available _ground_line_data _reserved_info ))

(defmethod perception_interface_msgs::FusionGroundLine
  (:init
   (&key
    ((:available __available) 0)
    ((:ground_line_data __ground_line_data) ())
    ((:reserved_info __reserved_info) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _ground_line_data __ground_line_data)
   (setq _reserved_info __reserved_info)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:ground_line_data
   (&rest __ground_line_data)
   (if (keywordp (car __ground_line_data))
       (send* _ground_line_data __ground_line_data)
     (progn
       (if __ground_line_data (setq _ground_line_data (car __ground_line_data)))
       _ground_line_data)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; perception_interface_msgs/FusionGroundLineData[] _ground_line_data
    (apply #'+ (send-all _ground_line_data :serialization-length)) 4
    ;; string[] _reserved_info
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _reserved_info)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; perception_interface_msgs/FusionGroundLineData[] _ground_line_data
     (write-long (length _ground_line_data) s)
     (dolist (elem _ground_line_data)
       (send elem :serialize s)
       )
     ;; string[] _reserved_info
     (write-long (length _reserved_info) s)
     (dolist (elem _reserved_info)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/FusionGroundLineData[] _ground_line_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ground_line_data (let (r) (dotimes (i n) (push (instance perception_interface_msgs::FusionGroundLineData :init) r)) r))
     (dolist (elem- _ground_line_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _reserved_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_info (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _reserved_info i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::FusionGroundLine :md5sum-) "55b01f23e6e888132d3c5eb272f4d8f8")
(setf (get perception_interface_msgs::FusionGroundLine :datatype-) "perception_interface_msgs/FusionGroundLine")
(setf (get perception_interface_msgs::FusionGroundLine :definition-)
      "uint8 FUSION_GROUND_LINE_AVAILABLE_DATA = 1
uint8 FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO = 2
uint8 available
perception_interface_msgs/FusionGroundLineData[] ground_line_data
string[] reserved_info

================================================================================
MSG: perception_interface_msgs/FusionGroundLineData
uint8 FUSION_GROUND_LINE_SOURCE_VISON = 1
uint8 FUSION_GROUND_LINE_SOURCE_ULTRASONIC = 2
uint8 FUSION_GROUND_LINE_SOURCE_DDUSS = 3
uint8 available
perception_interface_msgs/GroundLineTypeEnum type
uint64 track_id
float32 score
perception_interface_msgs/Point3f[] points_fusion
float32[] points_fusion_confidence
perception_interface_msgs/Point3f[] local_points_fusion
float32[] local_points_fusion_confidence
perception_interface_msgs/FusionObstacleTypeEnum obstacle_type
perception_interface_msgs/FusionObstaclePointType obstacle_point_type
string reserved_info
float32[] points_height

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
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/FusionObstacleTypeEnum
uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0
uint8 FUSION_OBSTACLE_TYPE_WALL = 1
uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2
uint8 FUSION_OBSTACLE_TYPE_FENCE = 3
uint8 FUSION_OBSTACLE_TYPE_STEP = 4
uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5
uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6
uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7
uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8
uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9
uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10
uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11
uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12
uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13
uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14
uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15
uint8 value

================================================================================
MSG: perception_interface_msgs/FusionObstaclePointType
uint8 POINT_TYPE_UNKNOWN = 0
uint8 POINT_TYPE_SCATTER = 1
uint8 POINT_TYPE_POLYLINE = 2
uint8 value

")



(provide :perception_interface_msgs/FusionGroundLine "55b01f23e6e888132d3c5eb272f4d8f8")


