;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::MapDownloadResponseId)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'MapDownloadResponseId (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::MAPDOWNLOADRESPONSEID")
  (make-package "PNP_MSGS::MAPDOWNLOADRESPONSEID"))

(in-package "ROS")
;;//! \htmlinclude MapDownloadResponseId.msg.html


(defclass pnp_msgs::MapDownloadResponseId
  :super ros::object
  :slots (_response_id _route_id ))

(defmethod pnp_msgs::MapDownloadResponseId
  (:init
   (&key
    ((:response_id __response_id) 0)
    ((:route_id __route_id) 0)
    )
   (send-super :init)
   (setq _response_id (round __response_id))
   (setq _route_id (round __route_id))
   self)
  (:response_id
   (&optional __response_id)
   (if __response_id (setq _response_id __response_id)) _response_id)
  (:route_id
   (&optional __route_id)
   (if __route_id (setq _route_id __route_id)) _route_id)
  (:serialization-length
   ()
   (+
    ;; uint64 _response_id
    8
    ;; uint64 _route_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _response_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _response_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _response_id) (= (length (_response_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_response_id . bv) 0) 0) s)
              (write-long (ash (elt (_response_id . bv) 1) -1) s))
             ((and (class _response_id) (= (length (_response_id . bv)) 1)) ;; big1
              (write-long (elt (_response_id . bv) 0) s)
              (write-long (if (>= _response_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _response_id s)(write-long (if (>= _response_id 0) 0 #xffffffff) s)))
     ;; uint64 _route_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _route_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _route_id) (= (length (_route_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_route_id . bv) 0) 0) s)
              (write-long (ash (elt (_route_id . bv) 1) -1) s))
             ((and (class _route_id) (= (length (_route_id . bv)) 1)) ;; big1
              (write-long (elt (_route_id . bv) 0) s)
              (write-long (if (>= _route_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _route_id s)(write-long (if (>= _route_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _response_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _response_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _response_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _route_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _route_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _route_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get pnp_msgs::MapDownloadResponseId :md5sum-) "2131083ec29f40d2fc722363ef9ba064")
(setf (get pnp_msgs::MapDownloadResponseId :datatype-) "pnp_msgs/MapDownloadResponseId")
(setf (get pnp_msgs::MapDownloadResponseId :definition-)
      "uint64 response_id
uint64 route_id

")



(provide :pnp_msgs/MapDownloadResponseId "2131083ec29f40d2fc722363ef9ba064")


