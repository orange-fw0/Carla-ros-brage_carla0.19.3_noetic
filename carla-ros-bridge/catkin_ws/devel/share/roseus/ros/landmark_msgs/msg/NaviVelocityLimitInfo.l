;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::NaviVelocityLimitInfo)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'NaviVelocityLimitInfo (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::NAVIVELOCITYLIMITINFO")
  (make-package "LANDMARK_MSGS::NAVIVELOCITYLIMITINFO"))

(in-package "ROS")
;;//! \htmlinclude NaviVelocityLimitInfo.msg.html


(defclass landmark_msgs::NaviVelocityLimitInfo
  :super ros::object
  :slots (_available _means _sigma ))

(defmethod landmark_msgs::NaviVelocityLimitInfo
  (:init
   (&key
    ((:available __available) nil)
    ((:means __means) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sigma __sigma) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _available __available)
   (setq _means __means)
   (setq _sigma __sigma)
   self)
  (:available
   (&optional (__available :null))
   (if (not (eq __available :null)) (setq _available __available)) _available)
  (:means
   (&optional __means)
   (if __means (setq _means __means)) _means)
  (:sigma
   (&optional __sigma)
   (if __sigma (setq _sigma __sigma)) _sigma)
  (:serialization-length
   ()
   (+
    ;; bool _available
    1
    ;; float32[] _means
    (* 4    (length _means)) 4
    ;; float32[] _sigma
    (* 4    (length _sigma)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _available
       (if _available (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _means
     (write-long (length _means) s)
     (dotimes (i (length _means))
       (sys::poke (elt _means i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _sigma
     (write-long (length _sigma) s)
     (dotimes (i (length _sigma))
       (sys::poke (elt _sigma i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _available
     (setq _available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _means
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _means (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _means i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _sigma
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sigma (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sigma i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::NaviVelocityLimitInfo :md5sum-) "f3da0141f6070c936a51fad43abe456e")
(setf (get landmark_msgs::NaviVelocityLimitInfo :datatype-) "landmark_msgs/NaviVelocityLimitInfo")
(setf (get landmark_msgs::NaviVelocityLimitInfo :definition-)
      "bool available
float32[] means
float32[] sigma

")



(provide :landmark_msgs/NaviVelocityLimitInfo "f3da0141f6070c936a51fad43abe456e")


