;; Auto-generated. Do not edit!


(when (boundp 'shadow_mode_msgs::ShadowModeTriggerEvent)
  (if (not (find-package "SHADOW_MODE_MSGS"))
    (make-package "SHADOW_MODE_MSGS"))
  (shadow 'ShadowModeTriggerEvent (find-package "SHADOW_MODE_MSGS")))
(unless (find-package "SHADOW_MODE_MSGS::SHADOWMODETRIGGEREVENT")
  (make-package "SHADOW_MODE_MSGS::SHADOWMODETRIGGEREVENT"))

(in-package "ROS")
;;//! \htmlinclude ShadowModeTriggerEvent.msg.html


(defclass shadow_mode_msgs::ShadowModeTriggerEvent
  :super ros::object
  :slots (_trigger_state _tags _road_curvature ))

(defmethod shadow_mode_msgs::ShadowModeTriggerEvent
  (:init
   (&key
    ((:trigger_state __trigger_state) nil)
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:road_curvature __road_curvature) 0.0)
    )
   (send-super :init)
   (setq _trigger_state __trigger_state)
   (setq _tags __tags)
   (setq _road_curvature (float __road_curvature))
   self)
  (:trigger_state
   (&optional (__trigger_state :null))
   (if (not (eq __trigger_state :null)) (setq _trigger_state __trigger_state)) _trigger_state)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:road_curvature
   (&optional __road_curvature)
   (if __road_curvature (setq _road_curvature __road_curvature)) _road_curvature)
  (:serialization-length
   ()
   (+
    ;; bool _trigger_state
    1
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ;; float64 _road_curvature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _trigger_state
       (if _trigger_state (write-byte -1 s) (write-byte 0 s))
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64 _road_curvature
       (sys::poke _road_curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _trigger_state
     (setq _trigger_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64 _road_curvature
     (setq _road_curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get shadow_mode_msgs::ShadowModeTriggerEvent :md5sum-) "622ef37a95532eaa0ce8597b42774062")
(setf (get shadow_mode_msgs::ShadowModeTriggerEvent :datatype-) "shadow_mode_msgs/ShadowModeTriggerEvent")
(setf (get shadow_mode_msgs::ShadowModeTriggerEvent :definition-)
      "bool trigger_state
string[] tags
float64 road_curvature

")



(provide :shadow_mode_msgs/ShadowModeTriggerEvent "622ef37a95532eaa0ce8597b42774062")


