;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::AvdMsg)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'AvdMsg (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::AVDMSG")
  (make-package "MOMENTA_MSGS::AVDMSG"))

(in-package "ROS")
;;//! \htmlinclude AvdMsg.msg.html


(defclass momenta_msgs::AvdMsg
  :super ros::object
  :slots (_Id _Property _Ignore _AvdDirection ))

(defmethod momenta_msgs::AvdMsg
  (:init
   (&key
    ((:Id __Id) 0)
    ((:Property __Property) "")
    ((:Ignore __Ignore) nil)
    ((:AvdDirection __AvdDirection) "")
    )
   (send-super :init)
   (setq _Id (round __Id))
   (setq _Property (string __Property))
   (setq _Ignore __Ignore)
   (setq _AvdDirection (string __AvdDirection))
   self)
  (:Id
   (&optional __Id)
   (if __Id (setq _Id __Id)) _Id)
  (:Property
   (&optional __Property)
   (if __Property (setq _Property __Property)) _Property)
  (:Ignore
   (&optional (__Ignore :null))
   (if (not (eq __Ignore :null)) (setq _Ignore __Ignore)) _Ignore)
  (:AvdDirection
   (&optional __AvdDirection)
   (if __AvdDirection (setq _AvdDirection __AvdDirection)) _AvdDirection)
  (:serialization-length
   ()
   (+
    ;; int32 _Id
    4
    ;; string _Property
    4 (length _Property)
    ;; bool _Ignore
    1
    ;; string _AvdDirection
    4 (length _AvdDirection)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Id
       (write-long _Id s)
     ;; string _Property
       (write-long (length _Property) s) (princ _Property s)
     ;; bool _Ignore
       (if _Ignore (write-byte -1 s) (write-byte 0 s))
     ;; string _AvdDirection
       (write-long (length _AvdDirection) s) (princ _AvdDirection s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Id
     (setq _Id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _Property
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Property (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _Ignore
     (setq _Ignore (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _AvdDirection
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _AvdDirection (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get momenta_msgs::AvdMsg :md5sum-) "8c5c10c820df4b4d90403966228982b6")
(setf (get momenta_msgs::AvdMsg :datatype-) "momenta_msgs/AvdMsg")
(setf (get momenta_msgs::AvdMsg :definition-)
      "int32 Id
string Property
bool Ignore
string AvdDirection

")



(provide :momenta_msgs/AvdMsg "8c5c10c820df4b4d90403966228982b6")


