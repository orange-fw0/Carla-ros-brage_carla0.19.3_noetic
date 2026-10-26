;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::PNPRoutingTour)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'PNPRoutingTour (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::PNPROUTINGTOUR")
  (make-package "PNP_MSGS::PNPROUTINGTOUR"))

(in-package "ROS")
;;//! \htmlinclude PNPRoutingTour.msg.html


(defclass pnp_msgs::PNPRoutingTour
  :super ros::object
  :slots (_tour_id _path_list _total_length ))

(defmethod pnp_msgs::PNPRoutingTour
  (:init
   (&key
    ((:tour_id __tour_id) 0)
    ((:path_list __path_list) ())
    ((:total_length __total_length) 0.0)
    )
   (send-super :init)
   (setq _tour_id (round __tour_id))
   (setq _path_list __path_list)
   (setq _total_length (float __total_length))
   self)
  (:tour_id
   (&optional __tour_id)
   (if __tour_id (setq _tour_id __tour_id)) _tour_id)
  (:path_list
   (&rest __path_list)
   (if (keywordp (car __path_list))
       (send* _path_list __path_list)
     (progn
       (if __path_list (setq _path_list (car __path_list)))
       _path_list)))
  (:total_length
   (&optional __total_length)
   (if __total_length (setq _total_length __total_length)) _total_length)
  (:serialization-length
   ()
   (+
    ;; uint64 _tour_id
    8
    ;; pnp_msgs/Path[] _path_list
    (apply #'+ (send-all _path_list :serialization-length)) 4
    ;; float32 _total_length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _tour_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tour_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tour_id) (= (length (_tour_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tour_id . bv) 0) 0) s)
              (write-long (ash (elt (_tour_id . bv) 1) -1) s))
             ((and (class _tour_id) (= (length (_tour_id . bv)) 1)) ;; big1
              (write-long (elt (_tour_id . bv) 0) s)
              (write-long (if (>= _tour_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tour_id s)(write-long (if (>= _tour_id 0) 0 #xffffffff) s)))
     ;; pnp_msgs/Path[] _path_list
     (write-long (length _path_list) s)
     (dolist (elem _path_list)
       (send elem :serialize s)
       )
     ;; float32 _total_length
       (sys::poke _total_length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _tour_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _tour_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tour_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; pnp_msgs/Path[] _path_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_list (let (r) (dotimes (i n) (push (instance pnp_msgs::Path :init) r)) r))
     (dolist (elem- _path_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _total_length
     (setq _total_length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pnp_msgs::PNPRoutingTour :md5sum-) "db0d664e7963e96b65058e7cc852ff1d")
(setf (get pnp_msgs::PNPRoutingTour :datatype-) "pnp_msgs/PNPRoutingTour")
(setf (get pnp_msgs::PNPRoutingTour :definition-)
      "uint64 tour_id
pnp_msgs/Path[] path_list
float32 total_length

================================================================================
MSG: pnp_msgs/Path
pnp_msgs/IdxRoadId[] road_list
float32 length
pnp_msgs/RoadCursor start_road_cursor
pnp_msgs/RoadCursor end_road_cursor

================================================================================
MSG: pnp_msgs/IdxRoadId
pnp_msgs/PNPRoadId road_id
uint32 index_at_tour

================================================================================
MSG: pnp_msgs/PNPRoadId
uint16 ur_id
uint32 tile_id
uint32 road_count

================================================================================
MSG: pnp_msgs/RoadCursor
pnp_msgs/IdxRoadId index_road_id
float32 offset

")



(provide :pnp_msgs/PNPRoutingTour "db0d664e7963e96b65058e7cc852ff1d")


