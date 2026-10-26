;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::MagicCarpetRawObject)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'MagicCarpetRawObject (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETRAWOBJECT")
  (make-package "PERCEPTION_INTERFACE_MSGS::MAGICCARPETRAWOBJECT"))

(in-package "ROS")
;;//! \htmlinclude MagicCarpetRawObject.msg.html


(defclass perception_interface_msgs::MagicCarpetRawObject
  :super ros::object
  :slots (_type _polygon_2d _polygon_3d _score ))

(defmethod perception_interface_msgs::MagicCarpetRawObject
  (:init
   (&key
    ((:type __type) 0)
    ((:polygon_2d __polygon_2d) ())
    ((:polygon_3d __polygon_3d) ())
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _polygon_2d __polygon_2d)
   (setq _polygon_3d __polygon_3d)
   (setq _score (float __score))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:polygon_2d
   (&rest __polygon_2d)
   (if (keywordp (car __polygon_2d))
       (send* _polygon_2d __polygon_2d)
     (progn
       (if __polygon_2d (setq _polygon_2d (car __polygon_2d)))
       _polygon_2d)))
  (:polygon_3d
   (&rest __polygon_3d)
   (if (keywordp (car __polygon_3d))
       (send* _polygon_3d __polygon_3d)
     (progn
       (if __polygon_3d (setq _polygon_3d (car __polygon_3d)))
       _polygon_3d)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; perception_interface_msgs/Point2f[] _polygon_2d
    (apply #'+ (send-all _polygon_2d :serialization-length)) 4
    ;; perception_interface_msgs/Point3f[] _polygon_3d
    (apply #'+ (send-all _polygon_3d :serialization-length)) 4
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; perception_interface_msgs/Point2f[] _polygon_2d
     (write-long (length _polygon_2d) s)
     (dolist (elem _polygon_2d)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point3f[] _polygon_3d
     (write-long (length _polygon_3d) s)
     (dolist (elem _polygon_3d)
       (send elem :serialize s)
       )
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/Point2f[] _polygon_2d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon_2d (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point2f :init) r)) r))
     (dolist (elem- _polygon_2d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point3f[] _polygon_3d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon_3d (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _polygon_3d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::MagicCarpetRawObject :md5sum-) "23df4b60585bce242a7e1ae41e4abce1")
(setf (get perception_interface_msgs::MagicCarpetRawObject :datatype-) "perception_interface_msgs/MagicCarpetRawObject")
(setf (get perception_interface_msgs::MagicCarpetRawObject :definition-)
      "uint8 type
perception_interface_msgs/Point2f[] polygon_2d
perception_interface_msgs/Point3f[] polygon_3d
float32 score

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :perception_interface_msgs/MagicCarpetRawObject "23df4b60585bce242a7e1ae41e4abce1")


