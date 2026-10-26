;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ObjectWorldModelData)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ObjectWorldModelData (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::OBJECTWORLDMODELDATA")
  (make-package "WORLDMODEL_MSGS::OBJECTWORLDMODELDATA"))

(in-package "ROS")
;;//! \htmlinclude ObjectWorldModelData.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::ObjectWorldModelData
  :super ros::object
  :slots (_filtered _occlusion_area _extra_json ))

(defmethod worldmodel_msgs::ObjectWorldModelData
  (:init
   (&key
    ((:filtered __filtered) nil)
    ((:occlusion_area __occlusion_area) ())
    ((:extra_json __extra_json) "")
    )
   (send-super :init)
   (setq _filtered __filtered)
   (setq _occlusion_area __occlusion_area)
   (setq _extra_json (string __extra_json))
   self)
  (:filtered
   (&optional (__filtered :null))
   (if (not (eq __filtered :null)) (setq _filtered __filtered)) _filtered)
  (:occlusion_area
   (&rest __occlusion_area)
   (if (keywordp (car __occlusion_area))
       (send* _occlusion_area __occlusion_area)
     (progn
       (if __occlusion_area (setq _occlusion_area (car __occlusion_area)))
       _occlusion_area)))
  (:extra_json
   (&optional __extra_json)
   (if __extra_json (setq _extra_json __extra_json)) _extra_json)
  (:serialization-length
   ()
   (+
    ;; bool _filtered
    1
    ;; perception_interface_msgs/Point3f[] _occlusion_area
    (apply #'+ (send-all _occlusion_area :serialization-length)) 4
    ;; string _extra_json
    4 (length _extra_json)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _filtered
       (if _filtered (write-byte -1 s) (write-byte 0 s))
     ;; perception_interface_msgs/Point3f[] _occlusion_area
     (write-long (length _occlusion_area) s)
     (dolist (elem _occlusion_area)
       (send elem :serialize s)
       )
     ;; string _extra_json
       (write-long (length _extra_json) s) (princ _extra_json s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _filtered
     (setq _filtered (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_interface_msgs/Point3f[] _occlusion_area
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _occlusion_area (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _occlusion_area)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _extra_json
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extra_json (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get worldmodel_msgs::ObjectWorldModelData :md5sum-) "8ab7304b697b94d7e5e3d7cc991f778e")
(setf (get worldmodel_msgs::ObjectWorldModelData :datatype-) "worldmodel_msgs/ObjectWorldModelData")
(setf (get worldmodel_msgs::ObjectWorldModelData :definition-)
      "bool filtered
perception_interface_msgs/Point3f[] occlusion_area
string extra_json

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :worldmodel_msgs/ObjectWorldModelData "8ab7304b697b94d7e5e3d7cc991f778e")


