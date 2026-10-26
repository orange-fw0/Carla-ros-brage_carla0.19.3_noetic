;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::VelodynePacket)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'VelodynePacket (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::VELODYNEPACKET")
  (make-package "SENSOR_INTERFACE_MSGS::VELODYNEPACKET"))

(in-package "ROS")
;;//! \htmlinclude VelodynePacket.msg.html


(defclass sensor_interface_msgs::VelodynePacket
  :super ros::object
  :slots (_stamp _id _data ))

(defmethod sensor_interface_msgs::VelodynePacket
  (:init
   (&key
    ((:stamp __stamp) 0)
    ((:id __id) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _stamp (round __stamp))
   (setq _id (round __id))
   (setq _data __data)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint64 _stamp
    8
    ;; int16 _id
    2
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _stamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _stamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _stamp) (= (length (_stamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_stamp . bv) 0) 0) s)
              (write-long (ash (elt (_stamp . bv) 1) -1) s))
             ((and (class _stamp) (= (length (_stamp . bv)) 1)) ;; big1
              (write-long (elt (_stamp . bv) 0) s)
              (write-long (if (>= _stamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _stamp s)(write-long (if (>= _stamp 0) 0 #xffffffff) s)))
     ;; int16 _id
       (write-word _id s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _stamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _stamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _stamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::VelodynePacket :md5sum-) "9af6b2d712488712fa7e8df8f73500fa")
(setf (get sensor_interface_msgs::VelodynePacket :datatype-) "sensor_interface_msgs/VelodynePacket")
(setf (get sensor_interface_msgs::VelodynePacket :definition-)
      "uint64 stamp
int16 id
uint8[] data

")



(provide :sensor_interface_msgs/VelodynePacket "9af6b2d712488712fa7e8df8f73500fa")


