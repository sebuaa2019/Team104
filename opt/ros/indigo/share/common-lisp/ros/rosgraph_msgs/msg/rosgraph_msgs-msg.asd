
(cl:in-package :asdf)

(defsystem "rosgraph_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Clock" :depends-on ("_package_Clock"))
    (:file "_package_Clock" :depends-on ("_package"))
    (:file "TopicStatistics" :depends-on ("_package_TopicStatistics"))
    (:file "_package_TopicStatistics" :depends-on ("_package"))
    (:file "Log" :depends-on ("_package_Log"))
    (:file "_package_Log" :depends-on ("_package"))
  ))