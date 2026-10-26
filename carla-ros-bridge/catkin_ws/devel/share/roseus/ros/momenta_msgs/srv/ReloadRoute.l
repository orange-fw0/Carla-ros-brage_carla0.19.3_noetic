;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::ReloadRoute)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'ReloadRoute (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::RELOADROUTE")
  (make-package "MOMENTA_MSGS::RELOADROUTE"))
(unless (find-package "MOMENTA_MSGS::RELOADROUTEREQUEST")
  (make-package "MOMENTA_MSGS::RELOADROUTEREQUEST"))
(unless (find-package "MOMENTA_MSGS::RELOADROUTERESPONSE")
  (make-package "MOMENTA_MSGS::RELOADROUTERESPONSE"))

(in-package "ROS")





(defclass momenta_msgs::ReloadRouteRequest
  :super ros::object
  :slots (_route_file ))

(defmethod momenta_msgs::ReloadRouteRequest
  (:init
   (&key
    ((:route_file __route_file) "")
    )
   (send-super :init)
   (setq _route_file (string __route_file))
   self)
  (:route_file
   (&optional __route_file)
   (if __route_file (setq _route_file __route_file)) _route_file)
  (:serialization-length
   ()
   (+
    ;; string _route_file
    4 (length _route_file)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _route_file
       (write-long (length _route_file) s) (princ _route_file s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _route_file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _route_file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass momenta_msgs::ReloadRouteResponse
  :super ros::object
  :slots (_road_count ))

(defmethod momenta_msgs::ReloadRouteResponse
  (:init
   (&key
    ((:road_count __road_count) 0)
    )
   (send-super :init)
   (setq _road_count (round __road_count))
   self)
  (:road_count
   (&optional __road_count)
   (if __road_count (setq _road_count __road_count)) _road_count)
  (:serialization-length
   ()
   (+
    ;; int64 _road_count
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _road_count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _road_count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _road_count) (= (length (_road_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_road_count . bv) 0) 0) s)
              (write-long (ash (elt (_road_count . bv) 1) -1) s))
             ((and (class _road_count) (= (length (_road_count . bv)) 1)) ;; big1
              (write-long (elt (_road_count . bv) 0) s)
              (write-long (if (>= _road_count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _road_count s)(write-long (if (>= _road_count 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _road_count
#+(or :alpha :irix6 :x86_64)
      (setf _road_count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _road_count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass momenta_msgs::ReloadRoute
  :super ros::object
  :slots ())

(setf (get momenta_msgs::ReloadRoute :md5sum-) "f658c9c823055e3e59793158f6173b34")
(setf (get momenta_msgs::ReloadRoute :datatype-) "momenta_msgs/ReloadRoute")
(setf (get momenta_msgs::ReloadRoute :request) momenta_msgs::ReloadRouteRequest)
(setf (get momenta_msgs::ReloadRoute :response) momenta_msgs::ReloadRouteResponse)

(defmethod momenta_msgs::ReloadRouteRequest
  (:response () (instance momenta_msgs::ReloadRouteResponse :init)))

(setf (get momenta_msgs::ReloadRouteRequest :md5sum-) "f658c9c823055e3e59793158f6173b34")
(setf (get momenta_msgs::ReloadRouteRequest :datatype-) "momenta_msgs/ReloadRouteRequest")
(setf (get momenta_msgs::ReloadRouteRequest :definition-)
      "string route_file
---
int64 road_count
")

(setf (get momenta_msgs::ReloadRouteResponse :md5sum-) "f658c9c823055e3e59793158f6173b34")
(setf (get momenta_msgs::ReloadRouteResponse :datatype-) "momenta_msgs/ReloadRouteResponse")
(setf (get momenta_msgs::ReloadRouteResponse :definition-)
      "string route_file
---
int64 road_count
")



(provide :momenta_msgs/ReloadRoute "f658c9c823055e3e59793158f6173b34")


