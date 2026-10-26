;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::FeatMapData)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'FeatMapData (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::FEATMAPDATA")
  (make-package "LANDMARK_MSGS::FEATMAPDATA"))

(in-package "ROS")
;;//! \htmlinclude FeatMapData.msg.html


(defclass landmark_msgs::FeatMapData
  :super ros::object
  :slots (_shape _map_scalar _x_range _y_range _cls_num _cls_map _feat_map _cls_range _reserved_info ))

(defmethod landmark_msgs::FeatMapData
  (:init
   (&key
    ((:shape __shape) (make-array 0 :initial-element 0 :element-type :integer))
    ((:map_scalar __map_scalar) 0.0)
    ((:x_range __x_range) (instance landmark_msgs::FloatRange :init))
    ((:y_range __y_range) (instance landmark_msgs::FloatRange :init))
    ((:cls_num __cls_num) 0)
    ((:cls_map __cls_map) (make-array 0 :initial-element 0 :element-type :char))
    ((:feat_map __feat_map) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cls_range __cls_range) ())
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _shape __shape)
   (setq _map_scalar (float __map_scalar))
   (setq _x_range __x_range)
   (setq _y_range __y_range)
   (setq _cls_num (round __cls_num))
   (setq _cls_map __cls_map)
   (setq _feat_map __feat_map)
   (setq _cls_range __cls_range)
   (setq _reserved_info (string __reserved_info))
   self)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:map_scalar
   (&optional __map_scalar)
   (if __map_scalar (setq _map_scalar __map_scalar)) _map_scalar)
  (:x_range
   (&rest __x_range)
   (if (keywordp (car __x_range))
       (send* _x_range __x_range)
     (progn
       (if __x_range (setq _x_range (car __x_range)))
       _x_range)))
  (:y_range
   (&rest __y_range)
   (if (keywordp (car __y_range))
       (send* _y_range __y_range)
     (progn
       (if __y_range (setq _y_range (car __y_range)))
       _y_range)))
  (:cls_num
   (&optional __cls_num)
   (if __cls_num (setq _cls_num __cls_num)) _cls_num)
  (:cls_map
   (&optional __cls_map)
   (if __cls_map (setq _cls_map __cls_map)) _cls_map)
  (:feat_map
   (&optional __feat_map)
   (if __feat_map (setq _feat_map __feat_map)) _feat_map)
  (:cls_range
   (&rest __cls_range)
   (if (keywordp (car __cls_range))
       (send* _cls_range __cls_range)
     (progn
       (if __cls_range (setq _cls_range (car __cls_range)))
       _cls_range)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; int32[] _shape
    (* 4    (length _shape)) 4
    ;; float32 _map_scalar
    4
    ;; landmark_msgs/FloatRange _x_range
    (send _x_range :serialization-length)
    ;; landmark_msgs/FloatRange _y_range
    (send _y_range :serialization-length)
    ;; int16 _cls_num
    2
    ;; uint8[] _cls_map
    (* 1    (length _cls_map)) 4
    ;; float32[] _feat_map
    (* 4    (length _feat_map)) 4
    ;; landmark_msgs/FloatRange[] _cls_range
    (apply #'+ (send-all _cls_range :serialization-length)) 4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _shape
     (write-long (length _shape) s)
     (dotimes (i (length _shape))
       (write-long (elt _shape i) s)
       )
     ;; float32 _map_scalar
       (sys::poke _map_scalar (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; landmark_msgs/FloatRange _x_range
       (send _x_range :serialize s)
     ;; landmark_msgs/FloatRange _y_range
       (send _y_range :serialize s)
     ;; int16 _cls_num
       (write-word _cls_num s)
     ;; uint8[] _cls_map
     (write-long (length _cls_map) s)
     (princ _cls_map s)
     ;; float32[] _feat_map
     (write-long (length _feat_map) s)
     (dotimes (i (length _feat_map))
       (sys::poke (elt _feat_map i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; landmark_msgs/FloatRange[] _cls_range
     (write-long (length _cls_range) s)
     (dolist (elem _cls_range)
       (send elem :serialize s)
       )
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _shape
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _shape i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32 _map_scalar
     (setq _map_scalar (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; landmark_msgs/FloatRange _x_range
     (send _x_range :deserialize buf ptr-) (incf ptr- (send _x_range :serialization-length))
   ;; landmark_msgs/FloatRange _y_range
     (send _y_range :deserialize buf ptr-) (incf ptr- (send _y_range :serialization-length))
   ;; int16 _cls_num
     (setq _cls_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[] _cls_map
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _cls_map (make-array n :element-type :char))
     (replace _cls_map buf :start2 ptr-) (incf ptr- n))
   ;; float32[] _feat_map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feat_map (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _feat_map i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; landmark_msgs/FloatRange[] _cls_range
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cls_range (let (r) (dotimes (i n) (push (instance landmark_msgs::FloatRange :init) r)) r))
     (dolist (elem- _cls_range)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::FeatMapData :md5sum-) "64a274ab3be400fd28c99ce404b8f383")
(setf (get landmark_msgs::FeatMapData :datatype-) "landmark_msgs/FeatMapData")
(setf (get landmark_msgs::FeatMapData :definition-)
      "int32[] shape
float32 map_scalar
landmark_msgs/FloatRange x_range
landmark_msgs/FloatRange y_range
int16 cls_num
uint8[] cls_map
float32[] feat_map
landmark_msgs/FloatRange[] cls_range
string reserved_info

================================================================================
MSG: landmark_msgs/FloatRange
float32 min
float32 max

")



(provide :landmark_msgs/FeatMapData "64a274ab3be400fd28c99ce404b8f383")


