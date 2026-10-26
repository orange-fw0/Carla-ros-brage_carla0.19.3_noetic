;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ReferenceLinePoint)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ReferenceLinePoint (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::REFERENCELINEPOINT")
  (make-package "WORLDMODEL_MSGS::REFERENCELINEPOINT"))

(in-package "ROS")
;;//! \htmlinclude ReferenceLinePoint.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::ReferenceLinePoint
  :super ros::object
  :slots (_enu_point _curvature _distance_to_left_road_border _distance_to_right_road_border _distance_to_left_lane_border _distance_to_right_lane_border _distance_to_left_obstacle _distance_to_right_obstacle _lane_width _max_velocity _track_id _is_experience_data _left_road_border_type _right_road_border_type _on_route _longitudinal_slope _horizontal_slope ))

(defmethod worldmodel_msgs::ReferenceLinePoint
  (:init
   (&key
    ((:enu_point __enu_point) (instance perception_interface_msgs::Point3d :init))
    ((:curvature __curvature) 0.0)
    ((:distance_to_left_road_border __distance_to_left_road_border) 0.0)
    ((:distance_to_right_road_border __distance_to_right_road_border) 0.0)
    ((:distance_to_left_lane_border __distance_to_left_lane_border) 0.0)
    ((:distance_to_right_lane_border __distance_to_right_lane_border) 0.0)
    ((:distance_to_left_obstacle __distance_to_left_obstacle) 0.0)
    ((:distance_to_right_obstacle __distance_to_right_obstacle) 0.0)
    ((:lane_width __lane_width) 0.0)
    ((:max_velocity __max_velocity) 0)
    ((:track_id __track_id) 0)
    ((:is_experience_data __is_experience_data) nil)
    ((:left_road_border_type __left_road_border_type) (instance worldmodel_msgs::LaneBoundaryType :init))
    ((:right_road_border_type __right_road_border_type) (instance worldmodel_msgs::LaneBoundaryType :init))
    ((:on_route __on_route) nil)
    ((:longitudinal_slope __longitudinal_slope) 0.0)
    ((:horizontal_slope __horizontal_slope) 0.0)
    )
   (send-super :init)
   (setq _enu_point __enu_point)
   (setq _curvature (float __curvature))
   (setq _distance_to_left_road_border (float __distance_to_left_road_border))
   (setq _distance_to_right_road_border (float __distance_to_right_road_border))
   (setq _distance_to_left_lane_border (float __distance_to_left_lane_border))
   (setq _distance_to_right_lane_border (float __distance_to_right_lane_border))
   (setq _distance_to_left_obstacle (float __distance_to_left_obstacle))
   (setq _distance_to_right_obstacle (float __distance_to_right_obstacle))
   (setq _lane_width (float __lane_width))
   (setq _max_velocity (round __max_velocity))
   (setq _track_id (round __track_id))
   (setq _is_experience_data __is_experience_data)
   (setq _left_road_border_type __left_road_border_type)
   (setq _right_road_border_type __right_road_border_type)
   (setq _on_route __on_route)
   (setq _longitudinal_slope (float __longitudinal_slope))
   (setq _horizontal_slope (float __horizontal_slope))
   self)
  (:enu_point
   (&rest __enu_point)
   (if (keywordp (car __enu_point))
       (send* _enu_point __enu_point)
     (progn
       (if __enu_point (setq _enu_point (car __enu_point)))
       _enu_point)))
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:distance_to_left_road_border
   (&optional __distance_to_left_road_border)
   (if __distance_to_left_road_border (setq _distance_to_left_road_border __distance_to_left_road_border)) _distance_to_left_road_border)
  (:distance_to_right_road_border
   (&optional __distance_to_right_road_border)
   (if __distance_to_right_road_border (setq _distance_to_right_road_border __distance_to_right_road_border)) _distance_to_right_road_border)
  (:distance_to_left_lane_border
   (&optional __distance_to_left_lane_border)
   (if __distance_to_left_lane_border (setq _distance_to_left_lane_border __distance_to_left_lane_border)) _distance_to_left_lane_border)
  (:distance_to_right_lane_border
   (&optional __distance_to_right_lane_border)
   (if __distance_to_right_lane_border (setq _distance_to_right_lane_border __distance_to_right_lane_border)) _distance_to_right_lane_border)
  (:distance_to_left_obstacle
   (&optional __distance_to_left_obstacle)
   (if __distance_to_left_obstacle (setq _distance_to_left_obstacle __distance_to_left_obstacle)) _distance_to_left_obstacle)
  (:distance_to_right_obstacle
   (&optional __distance_to_right_obstacle)
   (if __distance_to_right_obstacle (setq _distance_to_right_obstacle __distance_to_right_obstacle)) _distance_to_right_obstacle)
  (:lane_width
   (&optional __lane_width)
   (if __lane_width (setq _lane_width __lane_width)) _lane_width)
  (:max_velocity
   (&optional __max_velocity)
   (if __max_velocity (setq _max_velocity __max_velocity)) _max_velocity)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:is_experience_data
   (&optional (__is_experience_data :null))
   (if (not (eq __is_experience_data :null)) (setq _is_experience_data __is_experience_data)) _is_experience_data)
  (:left_road_border_type
   (&rest __left_road_border_type)
   (if (keywordp (car __left_road_border_type))
       (send* _left_road_border_type __left_road_border_type)
     (progn
       (if __left_road_border_type (setq _left_road_border_type (car __left_road_border_type)))
       _left_road_border_type)))
  (:right_road_border_type
   (&rest __right_road_border_type)
   (if (keywordp (car __right_road_border_type))
       (send* _right_road_border_type __right_road_border_type)
     (progn
       (if __right_road_border_type (setq _right_road_border_type (car __right_road_border_type)))
       _right_road_border_type)))
  (:on_route
   (&optional (__on_route :null))
   (if (not (eq __on_route :null)) (setq _on_route __on_route)) _on_route)
  (:longitudinal_slope
   (&optional __longitudinal_slope)
   (if __longitudinal_slope (setq _longitudinal_slope __longitudinal_slope)) _longitudinal_slope)
  (:horizontal_slope
   (&optional __horizontal_slope)
   (if __horizontal_slope (setq _horizontal_slope __horizontal_slope)) _horizontal_slope)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/Point3d _enu_point
    (send _enu_point :serialization-length)
    ;; float32 _curvature
    4
    ;; float32 _distance_to_left_road_border
    4
    ;; float32 _distance_to_right_road_border
    4
    ;; float32 _distance_to_left_lane_border
    4
    ;; float32 _distance_to_right_lane_border
    4
    ;; float32 _distance_to_left_obstacle
    4
    ;; float32 _distance_to_right_obstacle
    4
    ;; float32 _lane_width
    4
    ;; int32 _max_velocity
    4
    ;; uint64 _track_id
    8
    ;; bool _is_experience_data
    1
    ;; worldmodel_msgs/LaneBoundaryType _left_road_border_type
    (send _left_road_border_type :serialization-length)
    ;; worldmodel_msgs/LaneBoundaryType _right_road_border_type
    (send _right_road_border_type :serialization-length)
    ;; bool _on_route
    1
    ;; float64 _longitudinal_slope
    8
    ;; float64 _horizontal_slope
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/Point3d _enu_point
       (send _enu_point :serialize s)
     ;; float32 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_to_left_road_border
       (sys::poke _distance_to_left_road_border (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_to_right_road_border
       (sys::poke _distance_to_right_road_border (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_to_left_lane_border
       (sys::poke _distance_to_left_lane_border (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_to_right_lane_border
       (sys::poke _distance_to_right_lane_border (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_to_left_obstacle
       (sys::poke _distance_to_left_obstacle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_to_right_obstacle
       (sys::poke _distance_to_right_obstacle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lane_width
       (sys::poke _lane_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _max_velocity
       (write-long _max_velocity s)
     ;; uint64 _track_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _track_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _track_id) (= (length (_track_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_track_id . bv) 0) 0) s)
              (write-long (ash (elt (_track_id . bv) 1) -1) s))
             ((and (class _track_id) (= (length (_track_id . bv)) 1)) ;; big1
              (write-long (elt (_track_id . bv) 0) s)
              (write-long (if (>= _track_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _track_id s)(write-long (if (>= _track_id 0) 0 #xffffffff) s)))
     ;; bool _is_experience_data
       (if _is_experience_data (write-byte -1 s) (write-byte 0 s))
     ;; worldmodel_msgs/LaneBoundaryType _left_road_border_type
       (send _left_road_border_type :serialize s)
     ;; worldmodel_msgs/LaneBoundaryType _right_road_border_type
       (send _right_road_border_type :serialize s)
     ;; bool _on_route
       (if _on_route (write-byte -1 s) (write-byte 0 s))
     ;; float64 _longitudinal_slope
       (sys::poke _longitudinal_slope (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _horizontal_slope
       (sys::poke _horizontal_slope (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/Point3d _enu_point
     (send _enu_point :deserialize buf ptr-) (incf ptr- (send _enu_point :serialization-length))
   ;; float32 _curvature
     (setq _curvature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_to_left_road_border
     (setq _distance_to_left_road_border (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_to_right_road_border
     (setq _distance_to_right_road_border (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_to_left_lane_border
     (setq _distance_to_left_lane_border (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_to_right_lane_border
     (setq _distance_to_right_lane_border (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_to_left_obstacle
     (setq _distance_to_left_obstacle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_to_right_obstacle
     (setq _distance_to_right_obstacle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lane_width
     (setq _lane_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _max_velocity
     (setq _max_velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _track_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _track_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _track_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _is_experience_data
     (setq _is_experience_data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; worldmodel_msgs/LaneBoundaryType _left_road_border_type
     (send _left_road_border_type :deserialize buf ptr-) (incf ptr- (send _left_road_border_type :serialization-length))
   ;; worldmodel_msgs/LaneBoundaryType _right_road_border_type
     (send _right_road_border_type :deserialize buf ptr-) (incf ptr- (send _right_road_border_type :serialization-length))
   ;; bool _on_route
     (setq _on_route (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _longitudinal_slope
     (setq _longitudinal_slope (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _horizontal_slope
     (setq _horizontal_slope (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get worldmodel_msgs::ReferenceLinePoint :md5sum-) "00add1f69861e3bf3d68775bc3111b4b")
(setf (get worldmodel_msgs::ReferenceLinePoint :datatype-) "worldmodel_msgs/ReferenceLinePoint")
(setf (get worldmodel_msgs::ReferenceLinePoint :definition-)
      "perception_interface_msgs/Point3d enu_point
float32 curvature
float32 distance_to_left_road_border
float32 distance_to_right_road_border
float32 distance_to_left_lane_border
float32 distance_to_right_lane_border
float32 distance_to_left_obstacle
float32 distance_to_right_obstacle
float32 lane_width
int32 max_velocity
uint64 track_id
bool is_experience_data
worldmodel_msgs/LaneBoundaryType left_road_border_type
worldmodel_msgs/LaneBoundaryType right_road_border_type
bool on_route
float64 longitudinal_slope
float64 horizontal_slope

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

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



(provide :worldmodel_msgs/ReferenceLinePoint "00add1f69861e3bf3d68775bc3111b4b")


