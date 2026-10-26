;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAReserved)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAReserved (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLARESERVED")
  (make-package "MLA_LOCALIZATION_MSGS::MLARESERVED"))

(in-package "ROS")
;;//! \htmlinclude MLAReserved.msg.html


(intern "*MLA_RESERVED_DATA*" (find-package "MLA_LOCALIZATION_MSGS::MLARESERVED"))
(shadow '*MLA_RESERVED_DATA* (find-package "MLA_LOCALIZATION_MSGS::MLARESERVED"))
(defconstant mla_localization_msgs::MLAReserved::*MLA_RESERVED_DATA* 1)

(defun mla_localization_msgs::MLAReserved-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAReserved::*MLA_RESERVED_DATA*)
        (t nil)))

(defclass mla_localization_msgs::MLAReserved
  :super ros::object
  :slots (_available _reserved_data ))

(defmethod mla_localization_msgs::MLAReserved
  (:init
   (&key
    ((:available __available) 0)
    ((:reserved_data __reserved_data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _reserved_data __reserved_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:reserved_data
   (&optional __reserved_data)
   (if __reserved_data (setq _reserved_data __reserved_data)) _reserved_data)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; uint64[] _reserved_data
    (* 8    (length _reserved_data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; uint64[] _reserved_data
     (write-long (length _reserved_data) s)
     (dotimes (i (length _reserved_data))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _reserved_data i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _reserved_data i)) (= (length ((elt _reserved_data i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _reserved_data i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _reserved_data i) . bv) 1) -1) s))
             ((and (class (elt _reserved_data i)) (= (length ((elt _reserved_data i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _reserved_data i) . bv) 0) s)
              (write-long (if (>= (elt _reserved_data i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _reserved_data i) s)(write-long (if (>= (elt _reserved_data i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64[] _reserved_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_data (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _reserved_data i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _reserved_data i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAReserved :md5sum-) "e2bc8b28248782138f12e765061f43bf")
(setf (get mla_localization_msgs::MLAReserved :datatype-) "mla_localization_msgs/MLAReserved")
(setf (get mla_localization_msgs::MLAReserved :definition-)
      "uint8 MLA_RESERVED_DATA = 1
uint8 available
uint64[] reserved_data

")



(provide :mla_localization_msgs/MLAReserved "e2bc8b28248782138f12e765061f43bf")


