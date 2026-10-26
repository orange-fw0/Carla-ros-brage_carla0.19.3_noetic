;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::DmapInfo)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'DmapInfo (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::DMAPINFO")
  (make-package "LANDMARK_MSGS::DMAPINFO"))

(in-package "ROS")
;;//! \htmlinclude DmapInfo.msg.html


(defclass landmark_msgs::DmapInfo
  :super ros::object
  :slots (_available _input_datas _dmap_data _reserved_info ))

(defmethod landmark_msgs::DmapInfo
  (:init
   (&key
    ((:available __available) nil)
    ((:input_datas __input_datas) ())
    ((:dmap_data __dmap_data) (instance landmark_msgs::FeatMapData :init))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available __available)
   (setq _input_datas __input_datas)
   (setq _dmap_data __dmap_data)
   (setq _reserved_info (string __reserved_info))
   self)
  (:available
   (&optional (__available :null))
   (if (not (eq __available :null)) (setq _available __available)) _available)
  (:input_datas
   (&rest __input_datas)
   (if (keywordp (car __input_datas))
       (send* _input_datas __input_datas)
     (progn
       (if __input_datas (setq _input_datas (car __input_datas)))
       _input_datas)))
  (:dmap_data
   (&rest __dmap_data)
   (if (keywordp (car __dmap_data))
       (send* _dmap_data __dmap_data)
     (progn
       (if __dmap_data (setq _dmap_data (car __dmap_data)))
       _dmap_data)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; bool _available
    1
    ;; landmark_msgs/DmapInputData[] _input_datas
    (apply #'+ (send-all _input_datas :serialization-length)) 4
    ;; landmark_msgs/FeatMapData _dmap_data
    (send _dmap_data :serialization-length)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _available
       (if _available (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/DmapInputData[] _input_datas
     (write-long (length _input_datas) s)
     (dolist (elem _input_datas)
       (send elem :serialize s)
       )
     ;; landmark_msgs/FeatMapData _dmap_data
       (send _dmap_data :serialize s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _available
     (setq _available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/DmapInputData[] _input_datas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _input_datas (let (r) (dotimes (i n) (push (instance landmark_msgs::DmapInputData :init) r)) r))
     (dolist (elem- _input_datas)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/FeatMapData _dmap_data
     (send _dmap_data :deserialize buf ptr-) (incf ptr- (send _dmap_data :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::DmapInfo :md5sum-) "ddceedac66cb602cb8184958f8c12fa9")
(setf (get landmark_msgs::DmapInfo :datatype-) "landmark_msgs/DmapInfo")
(setf (get landmark_msgs::DmapInfo :definition-)
      "bool available
landmark_msgs/DmapInputData[] input_datas
landmark_msgs/FeatMapData dmap_data
string reserved_info

================================================================================
MSG: landmark_msgs/DmapInputData
string input_name
int32[] shape
float32[] data

================================================================================
MSG: landmark_msgs/FeatMapData
int32[] shape
float32 map_scalar
landmark_msgs/FloatRange x_range
landmark_msgs/FloatRange y_range
int16 cls_num
uint8[] cls_map
float32[] feat_map
landmark_msgs/FloatRange[] cls_range
string reserved_info

================================================================================
MSG: landmark_msgs/FloatRange
float32 min
float32 max

")



(provide :landmark_msgs/DmapInfo "ddceedac66cb602cb8184958f8c12fa9")


