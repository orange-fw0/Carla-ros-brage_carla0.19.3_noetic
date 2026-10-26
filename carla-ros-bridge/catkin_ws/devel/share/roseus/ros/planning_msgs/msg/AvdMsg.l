;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::AvdMsg)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'AvdMsg (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::AVDMSG")
  (make-package "PLANNING_MSGS::AVDMSG"))

(in-package "ROS")
;;//! \htmlinclude AvdMsg.msg.html


(defclass planning_msgs::AvdMsg
  :super ros::object
  :slots (_id _property _ignore _avd_direction _avd_priority _blocked_time_begin _blocked_time_end _polygon ))

(defmethod planning_msgs::AvdMsg
  (:init
   (&key
    ((:id __id) 0)
    ((:property __property) "")
    ((:ignore __ignore) nil)
    ((:avd_direction __avd_direction) "")
    ((:avd_priority __avd_priority) 0)
    ((:blocked_time_begin __blocked_time_begin) 0.0)
    ((:blocked_time_end __blocked_time_end) 0.0)
    ((:polygon __polygon) ())
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _property (string __property))
   (setq _ignore __ignore)
   (setq _avd_direction (string __avd_direction))
   (setq _avd_priority (round __avd_priority))
   (setq _blocked_time_begin (float __blocked_time_begin))
   (setq _blocked_time_end (float __blocked_time_end))
   (setq _polygon __polygon)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:property
   (&optional __property)
   (if __property (setq _property __property)) _property)
  (:ignore
   (&optional (__ignore :null))
   (if (not (eq __ignore :null)) (setq _ignore __ignore)) _ignore)
  (:avd_direction
   (&optional __avd_direction)
   (if __avd_direction (setq _avd_direction __avd_direction)) _avd_direction)
  (:avd_priority
   (&optional __avd_priority)
   (if __avd_priority (setq _avd_priority __avd_priority)) _avd_priority)
  (:blocked_time_begin
   (&optional __blocked_time_begin)
   (if __blocked_time_begin (setq _blocked_time_begin __blocked_time_begin)) _blocked_time_begin)
  (:blocked_time_end
   (&optional __blocked_time_end)
   (if __blocked_time_end (setq _blocked_time_end __blocked_time_end)) _blocked_time_end)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _property
    4 (length _property)
    ;; bool _ignore
    1
    ;; string _avd_direction
    4 (length _avd_direction)
    ;; int32 _avd_priority
    4
    ;; float32 _blocked_time_begin
    4
    ;; float32 _blocked_time_end
    4
    ;; planning_msgs/Point2d[] _polygon
    (apply #'+ (send-all _polygon :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _property
       (write-long (length _property) s) (princ _property s)
     ;; bool _ignore
       (if _ignore (write-byte -1 s) (write-byte 0 s))
     ;; string _avd_direction
       (write-long (length _avd_direction) s) (princ _avd_direction s)
     ;; int32 _avd_priority
       (write-long _avd_priority s)
     ;; float32 _blocked_time_begin
       (sys::poke _blocked_time_begin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _blocked_time_end
       (sys::poke _blocked_time_end (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; planning_msgs/Point2d[] _polygon
     (write-long (length _polygon) s)
     (dolist (elem _polygon)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _property
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _property (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _ignore
     (setq _ignore (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _avd_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _avd_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _avd_priority
     (setq _avd_priority (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _blocked_time_begin
     (setq _blocked_time_begin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _blocked_time_end
     (setq _blocked_time_end (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; planning_msgs/Point2d[] _polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon (let (r) (dotimes (i n) (push (instance planning_msgs::Point2d :init) r)) r))
     (dolist (elem- _polygon)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planning_msgs::AvdMsg :md5sum-) "fb26dfd71fdfbbf1bd461ce100bc9db8")
(setf (get planning_msgs::AvdMsg :datatype-) "planning_msgs/AvdMsg")
(setf (get planning_msgs::AvdMsg :definition-)
      "int32 id
string property
bool ignore
string avd_direction
int32 avd_priority
float32 blocked_time_begin
float32 blocked_time_end
planning_msgs/Point2d[] polygon

================================================================================
MSG: planning_msgs/Point2d
float64 x
float64 y

")



(provide :planning_msgs/AvdMsg "fb26dfd71fdfbbf1bd461ce100bc9db8")


