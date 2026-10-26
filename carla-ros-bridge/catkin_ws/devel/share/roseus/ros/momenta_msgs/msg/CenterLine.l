;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::CenterLine)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'CenterLine (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::CENTERLINE")
  (make-package "MOMENTA_MSGS::CENTERLINE"))

(in-package "ROS")
;;//! \htmlinclude CenterLine.msg.html


(defclass momenta_msgs::CenterLine
  :super ros::object
  :slots (_polycoeff _head _tail _is_recommended ))

(defmethod momenta_msgs::CenterLine
  (:init
   (&key
    ((:polycoeff __polycoeff) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:head __head) 0.0)
    ((:tail __tail) 0.0)
    ((:is_recommended __is_recommended) nil)
    )
   (send-super :init)
   (setq _polycoeff __polycoeff)
   (setq _head (float __head))
   (setq _tail (float __tail))
   (setq _is_recommended __is_recommended)
   self)
  (:polycoeff
   (&optional __polycoeff)
   (if __polycoeff (setq _polycoeff __polycoeff)) _polycoeff)
  (:head
   (&optional __head)
   (if __head (setq _head __head)) _head)
  (:tail
   (&optional __tail)
   (if __tail (setq _tail __tail)) _tail)
  (:is_recommended
   (&optional (__is_recommended :null))
   (if (not (eq __is_recommended :null)) (setq _is_recommended __is_recommended)) _is_recommended)
  (:serialization-length
   ()
   (+
    ;; float64[] _polycoeff
    (* 8    (length _polycoeff)) 4
    ;; float64 _head
    8
    ;; float64 _tail
    8
    ;; bool _is_recommended
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _polycoeff
     (write-long (length _polycoeff) s)
     (dotimes (i (length _polycoeff))
       (sys::poke (elt _polycoeff i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _head
       (sys::poke _head (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tail
       (sys::poke _tail (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_recommended
       (if _is_recommended (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _polycoeff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polycoeff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _polycoeff i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _head
     (setq _head (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tail
     (setq _tail (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_recommended
     (setq _is_recommended (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::CenterLine :md5sum-) "fd2107c395db9ffe9f267903e950b9dd")
(setf (get momenta_msgs::CenterLine :datatype-) "momenta_msgs/CenterLine")
(setf (get momenta_msgs::CenterLine :definition-)
      "float64[] polycoeff
float64 head
float64 tail
bool is_recommended

")



(provide :momenta_msgs/CenterLine "fd2107c395db9ffe9f267903e950b9dd")


