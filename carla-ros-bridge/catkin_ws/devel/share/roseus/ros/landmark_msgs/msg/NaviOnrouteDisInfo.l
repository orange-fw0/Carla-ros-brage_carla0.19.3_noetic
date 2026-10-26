;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::NaviOnrouteDisInfo)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'NaviOnrouteDisInfo (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::NAVIONROUTEDISINFO")
  (make-package "LANDMARK_MSGS::NAVIONROUTEDISINFO"))

(in-package "ROS")
;;//! \htmlinclude NaviOnrouteDisInfo.msg.html


(defclass landmark_msgs::NaviOnrouteDisInfo
  :super ros::object
  :slots (_available _dist_to_onroute _on_route_dis_clses _cls_num _reserved_info ))

(defmethod landmark_msgs::NaviOnrouteDisInfo
  (:init
   (&key
    ((:available __available) nil)
    ((:dist_to_onroute __dist_to_onroute) 0.0)
    ((:on_route_dis_clses __on_route_dis_clses) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cls_num __cls_num) 0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available __available)
   (setq _dist_to_onroute (float __dist_to_onroute))
   (setq _on_route_dis_clses __on_route_dis_clses)
   (setq _cls_num (round __cls_num))
   (setq _reserved_info (string __reserved_info))
   self)
  (:available
   (&optional (__available :null))
   (if (not (eq __available :null)) (setq _available __available)) _available)
  (:dist_to_onroute
   (&optional __dist_to_onroute)
   (if __dist_to_onroute (setq _dist_to_onroute __dist_to_onroute)) _dist_to_onroute)
  (:on_route_dis_clses
   (&optional __on_route_dis_clses)
   (if __on_route_dis_clses (setq _on_route_dis_clses __on_route_dis_clses)) _on_route_dis_clses)
  (:cls_num
   (&optional __cls_num)
   (if __cls_num (setq _cls_num __cls_num)) _cls_num)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; bool _available
    1
    ;; float32 _dist_to_onroute
    4
    ;; int16[] _on_route_dis_clses
    (* 2    (length _on_route_dis_clses)) 4
    ;; int16 _cls_num
    2
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _available
       (if _available (write-byte -1 s) (write-byte 0 s))
     ;; float32 _dist_to_onroute
       (sys::poke _dist_to_onroute (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16[] _on_route_dis_clses
     (write-long (length _on_route_dis_clses) s)
     (dotimes (i (length _on_route_dis_clses))
       (write-word (elt _on_route_dis_clses i) s)
       )
     ;; int16 _cls_num
       (write-word _cls_num s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _available
     (setq _available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _dist_to_onroute
     (setq _dist_to_onroute (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16[] _on_route_dis_clses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _on_route_dis_clses (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _on_route_dis_clses i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16 _cls_num
     (setq _cls_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::NaviOnrouteDisInfo :md5sum-) "6f4f8afc5e0f728eb89876e0d282d0be")
(setf (get landmark_msgs::NaviOnrouteDisInfo :datatype-) "landmark_msgs/NaviOnrouteDisInfo")
(setf (get landmark_msgs::NaviOnrouteDisInfo :definition-)
      "bool available
float32 dist_to_onroute
int16[] on_route_dis_clses
int16 cls_num
string reserved_info

")



(provide :landmark_msgs/NaviOnrouteDisInfo "6f4f8afc5e0f728eb89876e0d282d0be")


