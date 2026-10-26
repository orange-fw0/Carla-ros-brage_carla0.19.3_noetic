;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::SceneCircleObject)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'SceneCircleObject (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::SCENECIRCLEOBJECT")
  (make-package "WORLDMODEL_MSGS::SCENECIRCLEOBJECT"))

(in-package "ROS")
;;//! \htmlinclude SceneCircleObject.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::SceneCircleObject
  :super ros::object
  :slots (_object_id _object_type _center_point _radius _height ))

(defmethod worldmodel_msgs::SceneCircleObject
  (:init
   (&key
    ((:object_id __object_id) 0)
    ((:object_type __object_type) (instance worldmodel_msgs::SceneObjectType :init))
    ((:center_point __center_point) (instance perception_interface_msgs::Point2d :init))
    ((:radius __radius) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _object_id (round __object_id))
   (setq _object_type __object_type)
   (setq _center_point __center_point)
   (setq _radius (float __radius))
   (setq _height (float __height))
   self)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:object_type
   (&rest __object_type)
   (if (keywordp (car __object_type))
       (send* _object_type __object_type)
     (progn
       (if __object_type (setq _object_type (car __object_type)))
       _object_type)))
  (:center_point
   (&rest __center_point)
   (if (keywordp (car __center_point))
       (send* _center_point __center_point)
     (progn
       (if __center_point (setq _center_point (car __center_point)))
       _center_point)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; uint64 _object_id
    8
    ;; worldmodel_msgs/SceneObjectType _object_type
    (send _object_type :serialization-length)
    ;; perception_interface_msgs/Point2d _center_point
    (send _center_point :serialization-length)
    ;; float64 _radius
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _object_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _object_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _object_id) (= (length (_object_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_object_id . bv) 0) 0) s)
              (write-long (ash (elt (_object_id . bv) 1) -1) s))
             ((and (class _object_id) (= (length (_object_id . bv)) 1)) ;; big1
              (write-long (elt (_object_id . bv) 0) s)
              (write-long (if (>= _object_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _object_id s)(write-long (if (>= _object_id 0) 0 #xffffffff) s)))
     ;; worldmodel_msgs/SceneObjectType _object_type
       (send _object_type :serialize s)
     ;; perception_interface_msgs/Point2d _center_point
       (send _center_point :serialize s)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _object_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _object_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _object_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; worldmodel_msgs/SceneObjectType _object_type
     (send _object_type :deserialize buf ptr-) (incf ptr- (send _object_type :serialization-length))
   ;; perception_interface_msgs/Point2d _center_point
     (send _center_point :deserialize buf ptr-) (incf ptr- (send _center_point :serialization-length))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get worldmodel_msgs::SceneCircleObject :md5sum-) "1b5eb0465630ba570726bf7bfe0513b6")
(setf (get worldmodel_msgs::SceneCircleObject :datatype-) "worldmodel_msgs/SceneCircleObject")
(setf (get worldmodel_msgs::SceneCircleObject :definition-)
      "uint64 object_id
worldmodel_msgs/SceneObjectType object_type
perception_interface_msgs/Point2d center_point
float64 radius
float64 height

================================================================================
MSG: worldmodel_msgs/SceneObjectType
uint8 UNKNOWN = 0
uint8 TRAFFIC_BARRIER_TYPE_CONE = 1
uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2
uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3
uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4
uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5
uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6
uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7
uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8
uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9
uint8 MAP_FIRE_EXIT_DOOR = 10
uint8 MAP_PILLAR = 11
uint8 MAP_TOLL_GATE = 12
uint8 MAP_BORDER_SOLID_LINE = 13
uint8 MAP_BORDER_DASH_LINE = 14
uint8 MAP_BORDER_PHYSICAL = 15
uint8 value

================================================================================
MSG: perception_interface_msgs/Point2d
float64 x
float64 y

")



(provide :worldmodel_msgs/SceneCircleObject "1b5eb0465630ba570726bf7bfe0513b6")


