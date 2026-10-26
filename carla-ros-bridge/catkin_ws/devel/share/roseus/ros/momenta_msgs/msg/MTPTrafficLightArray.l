;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MTPTrafficLightArray)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MTPTrafficLightArray (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MTPTRAFFICLIGHTARRAY")
  (make-package "MOMENTA_MSGS::MTPTRAFFICLIGHTARRAY"))

(in-package "ROS")
;;//! \htmlinclude MTPTrafficLightArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::MTPTrafficLightArray
  :super ros::object
  :slots (_header _items _bbox_points ))

(defmethod momenta_msgs::MTPTrafficLightArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:items __items) ())
    ((:bbox_points __bbox_points) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _items __items)
   (setq _bbox_points __bbox_points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:items
   (&rest __items)
   (if (keywordp (car __items))
       (send* _items __items)
     (progn
       (if __items (setq _items (car __items)))
       _items)))
  (:bbox_points
   (&optional __bbox_points)
   (if __bbox_points (setq _bbox_points __bbox_points)) _bbox_points)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/MTPTrafficLight[] _items
    (apply #'+ (send-all _items :serialization-length)) 4
    ;; float32[] _bbox_points
    (* 4    (length _bbox_points)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/MTPTrafficLight[] _items
     (write-long (length _items) s)
     (dolist (elem _items)
       (send elem :serialize s)
       )
     ;; float32[] _bbox_points
     (write-long (length _bbox_points) s)
     (dotimes (i (length _bbox_points))
       (sys::poke (elt _bbox_points i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/MTPTrafficLight[] _items
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _items (let (r) (dotimes (i n) (push (instance momenta_msgs::MTPTrafficLight :init) r)) r))
     (dolist (elem- _items)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _bbox_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bbox_points (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bbox_points i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::MTPTrafficLightArray :md5sum-) "450daad939b682bf94fc0c3ec7176756")
(setf (get momenta_msgs::MTPTrafficLightArray :datatype-) "momenta_msgs/MTPTrafficLightArray")
(setf (get momenta_msgs::MTPTrafficLightArray :definition-)
      "std_msgs/Header header
momenta_msgs/MTPTrafficLight[] items
float32[] bbox_points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: momenta_msgs/MTPTrafficLight
float32[] rect
float32 score
int32 state_enum
int32 pattern_enum
int32 track_id

")



(provide :momenta_msgs/MTPTrafficLightArray "450daad939b682bf94fc0c3ec7176756")


