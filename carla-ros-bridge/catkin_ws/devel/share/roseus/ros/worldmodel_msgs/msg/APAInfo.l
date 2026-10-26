;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::APAInfo)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'APAInfo (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::APAINFO")
  (make-package "WORLDMODEL_MSGS::APAINFO"))

(in-package "ROS")
;;//! \htmlinclude APAInfo.msg.html


(intern "*UNKNOWN*" (find-package "WORLDMODEL_MSGS::APAINFO"))
(shadow '*UNKNOWN* (find-package "WORLDMODEL_MSGS::APAINFO"))
(defconstant worldmodel_msgs::APAInfo::*UNKNOWN* 0)
(intern "*OCCUPIED*" (find-package "WORLDMODEL_MSGS::APAINFO"))
(shadow '*OCCUPIED* (find-package "WORLDMODEL_MSGS::APAINFO"))
(defconstant worldmodel_msgs::APAInfo::*OCCUPIED* 1)
(intern "*VACANT*" (find-package "WORLDMODEL_MSGS::APAINFO"))
(shadow '*VACANT* (find-package "WORLDMODEL_MSGS::APAINFO"))
(defconstant worldmodel_msgs::APAInfo::*VACANT* 2)
(intern "*APA_FAIL*" (find-package "WORLDMODEL_MSGS::APAINFO"))
(shadow '*APA_FAIL* (find-package "WORLDMODEL_MSGS::APAINFO"))
(defconstant worldmodel_msgs::APAInfo::*APA_FAIL* 3)
(intern "*APA_SUCCEED*" (find-package "WORLDMODEL_MSGS::APAINFO"))
(shadow '*APA_SUCCEED* (find-package "WORLDMODEL_MSGS::APAINFO"))
(defconstant worldmodel_msgs::APAInfo::*APA_SUCCEED* 4)
(intern "*REVERSED*" (find-package "WORLDMODEL_MSGS::APAINFO"))
(shadow '*REVERSED* (find-package "WORLDMODEL_MSGS::APAINFO"))
(defconstant worldmodel_msgs::APAInfo::*REVERSED* 5)

(defun worldmodel_msgs::APAInfo-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::APAInfo::*UNKNOWN*)
        ((= const 1) 'worldmodel_msgs::APAInfo::*OCCUPIED*)
        ((= const 2) 'worldmodel_msgs::APAInfo::*VACANT*)
        ((= const 3) 'worldmodel_msgs::APAInfo::*APA_FAIL*)
        ((= const 4) 'worldmodel_msgs::APAInfo::*APA_SUCCEED*)
        ((= const 5) 'worldmodel_msgs::APAInfo::*REVERSED*)
        (t nil)))

(defclass worldmodel_msgs::APAInfo
  :super ros::object
  :slots (_status _map_id _last_update_timestamp _allow_back_in _allow_front_in _back_in_estimated_zigzag_num _front_in_estimated_zigzag_num ))

(defmethod worldmodel_msgs::APAInfo
  (:init
   (&key
    ((:status __status) 0)
    ((:map_id __map_id) 0)
    ((:last_update_timestamp __last_update_timestamp) 0)
    ((:allow_back_in __allow_back_in) nil)
    ((:allow_front_in __allow_front_in) nil)
    ((:back_in_estimated_zigzag_num __back_in_estimated_zigzag_num) 0)
    ((:front_in_estimated_zigzag_num __front_in_estimated_zigzag_num) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _map_id (round __map_id))
   (setq _last_update_timestamp (round __last_update_timestamp))
   (setq _allow_back_in __allow_back_in)
   (setq _allow_front_in __allow_front_in)
   (setq _back_in_estimated_zigzag_num (round __back_in_estimated_zigzag_num))
   (setq _front_in_estimated_zigzag_num (round __front_in_estimated_zigzag_num))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:last_update_timestamp
   (&optional __last_update_timestamp)
   (if __last_update_timestamp (setq _last_update_timestamp __last_update_timestamp)) _last_update_timestamp)
  (:allow_back_in
   (&optional (__allow_back_in :null))
   (if (not (eq __allow_back_in :null)) (setq _allow_back_in __allow_back_in)) _allow_back_in)
  (:allow_front_in
   (&optional (__allow_front_in :null))
   (if (not (eq __allow_front_in :null)) (setq _allow_front_in __allow_front_in)) _allow_front_in)
  (:back_in_estimated_zigzag_num
   (&optional __back_in_estimated_zigzag_num)
   (if __back_in_estimated_zigzag_num (setq _back_in_estimated_zigzag_num __back_in_estimated_zigzag_num)) _back_in_estimated_zigzag_num)
  (:front_in_estimated_zigzag_num
   (&optional __front_in_estimated_zigzag_num)
   (if __front_in_estimated_zigzag_num (setq _front_in_estimated_zigzag_num __front_in_estimated_zigzag_num)) _front_in_estimated_zigzag_num)
  (:serialization-length
   ()
   (+
    ;; uint32 _status
    4
    ;; int32 _map_id
    4
    ;; uint64 _last_update_timestamp
    8
    ;; bool _allow_back_in
    1
    ;; bool _allow_front_in
    1
    ;; int32 _back_in_estimated_zigzag_num
    4
    ;; int32 _front_in_estimated_zigzag_num
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _status
       (write-long _status s)
     ;; int32 _map_id
       (write-long _map_id s)
     ;; uint64 _last_update_timestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _last_update_timestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _last_update_timestamp) (= (length (_last_update_timestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_last_update_timestamp . bv) 0) 0) s)
              (write-long (ash (elt (_last_update_timestamp . bv) 1) -1) s))
             ((and (class _last_update_timestamp) (= (length (_last_update_timestamp . bv)) 1)) ;; big1
              (write-long (elt (_last_update_timestamp . bv) 0) s)
              (write-long (if (>= _last_update_timestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _last_update_timestamp s)(write-long (if (>= _last_update_timestamp 0) 0 #xffffffff) s)))
     ;; bool _allow_back_in
       (if _allow_back_in (write-byte -1 s) (write-byte 0 s))
     ;; bool _allow_front_in
       (if _allow_front_in (write-byte -1 s) (write-byte 0 s))
     ;; int32 _back_in_estimated_zigzag_num
       (write-long _back_in_estimated_zigzag_num s)
     ;; int32 _front_in_estimated_zigzag_num
       (write-long _front_in_estimated_zigzag_num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _map_id
     (setq _map_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _last_update_timestamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _last_update_timestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _last_update_timestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _allow_back_in
     (setq _allow_back_in (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _allow_front_in
     (setq _allow_front_in (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _back_in_estimated_zigzag_num
     (setq _back_in_estimated_zigzag_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _front_in_estimated_zigzag_num
     (setq _front_in_estimated_zigzag_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get worldmodel_msgs::APAInfo :md5sum-) "d28bc323f691be3d9ac9ed39ca01246c")
(setf (get worldmodel_msgs::APAInfo :datatype-) "worldmodel_msgs/APAInfo")
(setf (get worldmodel_msgs::APAInfo :definition-)
      "uint32 UNKNOWN = 0
uint32 OCCUPIED = 1
uint32 VACANT = 2
uint32 APA_FAIL = 3
uint32 APA_SUCCEED = 4
uint32 REVERSED = 5
uint32 status
int32 map_id
uint64 last_update_timestamp
bool allow_back_in
bool allow_front_in
int32 back_in_estimated_zigzag_num
int32 front_in_estimated_zigzag_num

")



(provide :worldmodel_msgs/APAInfo "d28bc323f691be3d9ac9ed39ca01246c")


