;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FeaturePointArray)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FeaturePointArray (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAY")
  (make-package "PERCEPTION_INTERFACE_MSGS::FEATUREPOINTARRAY"))

(in-package "ROS")
;;//! \htmlinclude FeaturePointArray.msg.html


(defclass perception_interface_msgs::FeaturePointArray
  :super ros::object
  :slots (_tag _available _num_point _track_ids _point_xs _point_ys _descriptor_size _descriptors _log_info_2d _reserved_info ))

(defmethod perception_interface_msgs::FeaturePointArray
  (:init
   (&key
    ((:tag __tag) "")
    ((:available __available) 0)
    ((:num_point __num_point) 0)
    ((:track_ids __track_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:point_xs __point_xs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:point_ys __point_ys) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:descriptor_size __descriptor_size) 0)
    ((:descriptors __descriptors) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:log_info_2d __log_info_2d) "")
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _tag (string __tag))
   (setq _available (round __available))
   (setq _num_point (round __num_point))
   (setq _track_ids __track_ids)
   (setq _point_xs __point_xs)
   (setq _point_ys __point_ys)
   (setq _descriptor_size (round __descriptor_size))
   (setq _descriptors __descriptors)
   (setq _log_info_2d (string __log_info_2d))
   (setq _reserved_info (string __reserved_info))
   self)
  (:tag
   (&optional __tag)
   (if __tag (setq _tag __tag)) _tag)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:num_point
   (&optional __num_point)
   (if __num_point (setq _num_point __num_point)) _num_point)
  (:track_ids
   (&optional __track_ids)
   (if __track_ids (setq _track_ids __track_ids)) _track_ids)
  (:point_xs
   (&optional __point_xs)
   (if __point_xs (setq _point_xs __point_xs)) _point_xs)
  (:point_ys
   (&optional __point_ys)
   (if __point_ys (setq _point_ys __point_ys)) _point_ys)
  (:descriptor_size
   (&optional __descriptor_size)
   (if __descriptor_size (setq _descriptor_size __descriptor_size)) _descriptor_size)
  (:descriptors
   (&optional __descriptors)
   (if __descriptors (setq _descriptors __descriptors)) _descriptors)
  (:log_info_2d
   (&optional __log_info_2d)
   (if __log_info_2d (setq _log_info_2d __log_info_2d)) _log_info_2d)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; string _tag
    4 (length _tag)
    ;; uint8 _available
    1
    ;; int32 _num_point
    4
    ;; uint32[] _track_ids
    (* 4    (length _track_ids)) 4
    ;; float32[] _point_xs
    (* 4    (length _point_xs)) 4
    ;; float32[] _point_ys
    (* 4    (length _point_ys)) 4
    ;; int32 _descriptor_size
    4
    ;; float32[] _descriptors
    (* 4    (length _descriptors)) 4
    ;; string _log_info_2d
    4 (length _log_info_2d)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tag
       (write-long (length _tag) s) (princ _tag s)
     ;; uint8 _available
       (write-byte _available s)
     ;; int32 _num_point
       (write-long _num_point s)
     ;; uint32[] _track_ids
     (write-long (length _track_ids) s)
     (dotimes (i (length _track_ids))
       (write-long (elt _track_ids i) s)
       )
     ;; float32[] _point_xs
     (write-long (length _point_xs) s)
     (dotimes (i (length _point_xs))
       (sys::poke (elt _point_xs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _point_ys
     (write-long (length _point_ys) s)
     (dotimes (i (length _point_ys))
       (sys::poke (elt _point_ys i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _descriptor_size
       (write-long _descriptor_size s)
     ;; float32[] _descriptors
     (write-long (length _descriptors) s)
     (dotimes (i (length _descriptors))
       (sys::poke (elt _descriptors i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _log_info_2d
       (write-long (length _log_info_2d) s) (princ _log_info_2d s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _num_point
     (setq _num_point (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _track_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _track_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _track_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _point_xs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point_xs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _point_xs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _point_ys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point_ys (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _point_ys i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _descriptor_size
     (setq _descriptor_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _descriptors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _descriptors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _descriptors i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _log_info_2d
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _log_info_2d (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::FeaturePointArray :md5sum-) "f7093cb3e63b9e0b78dcf246dfc0428d")
(setf (get perception_interface_msgs::FeaturePointArray :datatype-) "perception_interface_msgs/FeaturePointArray")
(setf (get perception_interface_msgs::FeaturePointArray :definition-)
      "string tag
uint8 available
int32 num_point
uint32[] track_ids
float32[] point_xs
float32[] point_ys
int32 descriptor_size
float32[] descriptors
string log_info_2d
string reserved_info

")



(provide :perception_interface_msgs/FeaturePointArray "f7093cb3e63b9e0b78dcf246dfc0428d")


