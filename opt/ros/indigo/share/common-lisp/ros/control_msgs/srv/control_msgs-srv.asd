
(cl:in-package :asdf)

(defsystem "control_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "QueryTrajectoryState" :depends-on ("_package_QueryTrajectoryState"))
    (:file "_package_QueryTrajectoryState" :depends-on ("_package"))
    (:file "QueryCalibrationState" :depends-on ("_package_QueryCalibrationState"))
    (:file "_package_QueryCalibrationState" :depends-on ("_package"))
  ))