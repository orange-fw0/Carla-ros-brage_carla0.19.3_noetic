
(cl:in-package :asdf)

(defsystem "can_bridge_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CanBridge" :depends-on ("_package_CanBridge"))
    (:file "_package_CanBridge" :depends-on ("_package"))
    (:file "CanMessage" :depends-on ("_package_CanMessage"))
    (:file "_package_CanMessage" :depends-on ("_package"))
    (:file "Meta" :depends-on ("_package_Meta"))
    (:file "_package_Meta" :depends-on ("_package"))
  ))