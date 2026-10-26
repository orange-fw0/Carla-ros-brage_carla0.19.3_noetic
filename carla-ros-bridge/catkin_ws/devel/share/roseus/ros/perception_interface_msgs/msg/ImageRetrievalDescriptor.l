;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ImageRetrievalDescriptor)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ImageRetrievalDescriptor (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTOR")
  (make-package "PERCEPTION_INTERFACE_MSGS::IMAGERETRIEVALDESCRIPTOR"))

(in-package "ROS")
;;//! \htmlinclude ImageRetrievalDescriptor.msg.html


(defclass perception_interface_msgs::ImageRetrievalDescriptor
  :super ros::object
  :slots (_tag _available _feature_descriptor _log_info_2d _reserved_info ))

(defmethod perception_interface_msgs::ImageRetrievalDescriptor
  (:init
   (&key
    ((:tag __tag) "")
    ((:available __available) 0)
    ((:feature_descriptor __feature_descriptor) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:log_info_2d __log_info_2d) "")
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _tag (string __tag))
   (setq _available (round __available))
   (setq _feature_descriptor __feature_descriptor)
   (setq _log_info_2d (string __log_info_2d))
   (setq _reserved_info (string __reserved_info))
   self)
  (:tag
   (&optional __tag)
   (if __tag (setq _tag __tag)) _tag)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:feature_descriptor
   (&optional __feature_descriptor)
   (if __feature_descriptor (setq _feature_descriptor __feature_descriptor)) _feature_descriptor)
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
    ;; float32[] _feature_descriptor
    (* 4    (length _feature_descriptor)) 4
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
     ;; float32[] _feature_descriptor
     (write-long (length _feature_descriptor) s)
     (dotimes (i (length _feature_descriptor))
       (sys::poke (elt _feature_descriptor i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32[] _feature_descriptor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feature_descriptor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _feature_descriptor i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _log_info_2d
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _log_info_2d (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::ImageRetrievalDescriptor :md5sum-) "6aadb9376782722101ee023374c6a713")
(setf (get perception_interface_msgs::ImageRetrievalDescriptor :datatype-) "perception_interface_msgs/ImageRetrievalDescriptor")
(setf (get perception_interface_msgs::ImageRetrievalDescriptor :definition-)
      "string tag
uint8 available
float32[] feature_descriptor
string log_info_2d
string reserved_info

")



(provide :perception_interface_msgs/ImageRetrievalDescriptor "6aadb9376782722101ee023374c6a713")


