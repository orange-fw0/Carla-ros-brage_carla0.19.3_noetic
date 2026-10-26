;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ScenePolygonObject)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ScenePolygonObject (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::SCENEPOLYGONOBJECT")
  (make-package "WORLDMODEL_MSGS::SCENEPOLYGONOBJECT"))

(in-package "ROS")
;;//! \htmlinclude ScenePolygonObject.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::ScenePolygonObject
  :super ros::object
  :slots (_object_id _object_type _object_polygon ))

(defmethod worldmodel_msgs::ScenePolygonObject
  (:init
   (&key
    ((:object_id __object_id) 0)
    ((:object_type __object_type) (instance worldmodel_msgs::SceneObjectType :init))
    ((:object_polygon __object_polygon) (instance perception_interface_msgs::Polygon3f :init))
    )
   (send-super :init)
   (setq _object_id (round __object_id))
   (setq _object_type __object_type)
   (setq _object_polygon __object_polygon)
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
  (:object_polygon
   (&rest __object_polygon)
   (if (keywordp (car __object_polygon))
       (send* _object_polygon __object_polygon)
     (progn
       (if __object_polygon (setq _object_polygon (car __object_polygon)))
       _object_polygon)))
  (:serialization-length
   ()
   (+
    ;; uint64 _object_id
    8
    ;; worldmodel_msgs/SceneObjectType _object_type
    (send _object_type :serialization-length)
    ;; perception_interface_msgs/Polygon3f _object_polygon
    (send _object_polygon :serialization-length)
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
     ;; perception_interface_msgs/Polygon3f _object_polygon
       (send _object_polygon :serialize s)
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
   ;; perception_interface_msgs/Polygon3f _object_polygon
     (send _object_polygon :deserialize buf ptr-) (incf ptr- (send _object_polygon :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::ScenePolygonObject :md5sum-) "2966a81dad84df9927a29c8d4bade247")
(setf (get worldmodel_msgs::ScenePolygonObject :datatype-) "worldmodel_msgs/ScenePolygonObject")
(setf (get worldmodel_msgs::ScenePolygonObject :definition-)
      "uint64 object_id
worldmodel_msgs/SceneObjectType object_type
perception_interface_msgs/Polygon3f object_polygon

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
MSG: perception_interface_msgs/Polygon3f
perception_interface_msgs/Point3f[] points

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :worldmodel_msgs/ScenePolygonObject "2966a81dad84df9927a29c8d4bade247")


