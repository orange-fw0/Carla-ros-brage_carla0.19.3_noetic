;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MTPTrafficLight)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MTPTrafficLight (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MTPTRAFFICLIGHT")
  (make-package "MOMENTA_MSGS::MTPTRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude MTPTrafficLight.msg.html


(defclass momenta_msgs::MTPTrafficLight
  :super ros::object
  :slots (_rect _score _state_enum _pattern_enum _track_id ))

(defmethod momenta_msgs::MTPTrafficLight
  (:init
   (&key
    ((:rect __rect) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:score __score) 0.0)
    ((:state_enum __state_enum) 0)
    ((:pattern_enum __pattern_enum) 0)
    ((:track_id __track_id) 0)
    )
   (send-super :init)
   (setq _rect __rect)
   (setq _score (float __score))
   (setq _state_enum (round __state_enum))
   (setq _pattern_enum (round __pattern_enum))
   (setq _track_id (round __track_id))
   self)
  (:rect
   (&optional __rect)
   (if __rect (setq _rect __rect)) _rect)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:state_enum
   (&optional __state_enum)
   (if __state_enum (setq _state_enum __state_enum)) _state_enum)
  (:pattern_enum
   (&optional __pattern_enum)
   (if __pattern_enum (setq _pattern_enum __pattern_enum)) _pattern_enum)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:serialization-length
   ()
   (+
    ;; float32[] _rect
    (* 4    (length _rect)) 4
    ;; float32 _score
    4
    ;; int32 _state_enum
    4
    ;; int32 _pattern_enum
    4
    ;; int32 _track_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _rect
     (write-long (length _rect) s)
     (dotimes (i (length _rect))
       (sys::poke (elt _rect i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _state_enum
       (write-long _state_enum s)
     ;; int32 _pattern_enum
       (write-long _pattern_enum s)
     ;; int32 _track_id
       (write-long _track_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _rect
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rect (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rect i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _state_enum
     (setq _state_enum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pattern_enum
     (setq _pattern_enum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::MTPTrafficLight :md5sum-) "b7ac1b020fb935505e9c77ab77450d3c")
(setf (get momenta_msgs::MTPTrafficLight :datatype-) "momenta_msgs/MTPTrafficLight")
(setf (get momenta_msgs::MTPTrafficLight :definition-)
      "float32[] rect
float32 score
int32 state_enum
int32 pattern_enum
int32 track_id

")



(provide :momenta_msgs/MTPTrafficLight "b7ac1b020fb935505e9c77ab77450d3c")


