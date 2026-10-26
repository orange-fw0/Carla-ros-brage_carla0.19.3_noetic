;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::Segment)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'Segment (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::SEGMENT")
  (make-package "MOMENTA_MSGS::SEGMENT"))

(in-package "ROS")
;;//! \htmlinclude Segment.msg.html


(defclass momenta_msgs::Segment
  :super ros::object
  :slots (_begin_index _end_index _connection_type _direction _lane_type _lane_original_id _is_in_intersection _is_on_route ))

(defmethod momenta_msgs::Segment
  (:init
   (&key
    ((:begin_index __begin_index) 0)
    ((:end_index __end_index) 0)
    ((:connection_type __connection_type) 0)
    ((:direction __direction) 0)
    ((:lane_type __lane_type) 0)
    ((:lane_original_id __lane_original_id) 0)
    ((:is_in_intersection __is_in_intersection) nil)
    ((:is_on_route __is_on_route) nil)
    )
   (send-super :init)
   (setq _begin_index (round __begin_index))
   (setq _end_index (round __end_index))
   (setq _connection_type (round __connection_type))
   (setq _direction (round __direction))
   (setq _lane_type (round __lane_type))
   (setq _lane_original_id (round __lane_original_id))
   (setq _is_in_intersection __is_in_intersection)
   (setq _is_on_route __is_on_route)
   self)
  (:begin_index
   (&optional __begin_index)
   (if __begin_index (setq _begin_index __begin_index)) _begin_index)
  (:end_index
   (&optional __end_index)
   (if __end_index (setq _end_index __end_index)) _end_index)
  (:connection_type
   (&optional __connection_type)
   (if __connection_type (setq _connection_type __connection_type)) _connection_type)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:lane_type
   (&optional __lane_type)
   (if __lane_type (setq _lane_type __lane_type)) _lane_type)
  (:lane_original_id
   (&optional __lane_original_id)
   (if __lane_original_id (setq _lane_original_id __lane_original_id)) _lane_original_id)
  (:is_in_intersection
   (&optional (__is_in_intersection :null))
   (if (not (eq __is_in_intersection :null)) (setq _is_in_intersection __is_in_intersection)) _is_in_intersection)
  (:is_on_route
   (&optional (__is_on_route :null))
   (if (not (eq __is_on_route :null)) (setq _is_on_route __is_on_route)) _is_on_route)
  (:serialization-length
   ()
   (+
    ;; uint16 _begin_index
    2
    ;; uint16 _end_index
    2
    ;; uint8 _connection_type
    1
    ;; uint8 _direction
    1
    ;; uint8 _lane_type
    1
    ;; int64 _lane_original_id
    8
    ;; bool _is_in_intersection
    1
    ;; bool _is_on_route
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _begin_index
       (write-word _begin_index s)
     ;; uint16 _end_index
       (write-word _end_index s)
     ;; uint8 _connection_type
       (write-byte _connection_type s)
     ;; uint8 _direction
       (write-byte _direction s)
     ;; uint8 _lane_type
       (write-byte _lane_type s)
     ;; int64 _lane_original_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lane_original_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lane_original_id) (= (length (_lane_original_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lane_original_id . bv) 0) 0) s)
              (write-long (ash (elt (_lane_original_id . bv) 1) -1) s))
             ((and (class _lane_original_id) (= (length (_lane_original_id . bv)) 1)) ;; big1
              (write-long (elt (_lane_original_id . bv) 0) s)
              (write-long (if (>= _lane_original_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lane_original_id s)(write-long (if (>= _lane_original_id 0) 0 #xffffffff) s)))
     ;; bool _is_in_intersection
       (if _is_in_intersection (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_on_route
       (if _is_on_route (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _begin_index
     (setq _begin_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _end_index
     (setq _end_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _connection_type
     (setq _connection_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lane_type
     (setq _lane_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int64 _lane_original_id
#+(or :alpha :irix6 :x86_64)
      (setf _lane_original_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lane_original_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _is_in_intersection
     (setq _is_in_intersection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_on_route
     (setq _is_on_route (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::Segment :md5sum-) "d39ccb4c476821967623d7d1188c5107")
(setf (get momenta_msgs::Segment :datatype-) "momenta_msgs/Segment")
(setf (get momenta_msgs::Segment :definition-)
      "uint16 begin_index
uint16 end_index
uint8 connection_type
uint8 direction
uint8 lane_type
int64 lane_original_id
bool is_in_intersection
bool is_on_route

")



(provide :momenta_msgs/Segment "d39ccb4c476821967623d7d1188c5107")


