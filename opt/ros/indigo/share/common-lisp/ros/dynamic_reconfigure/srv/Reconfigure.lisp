; Auto-generated. Do not edit!


(cl:in-package dynamic_reconfigure-srv)


;//! \htmlinclude Reconfigure-request.msg.html

(cl:defclass <Reconfigure-request> (roslisp-msg-protocol:ros-message)
  ((config
    :reader config
    :initarg :config
    :type dynamic_reconfigure-msg:Config
    :initform (cl:make-instance 'dynamic_reconfigure-msg:Config)))
)

(cl:defclass Reconfigure-request (<Reconfigure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reconfigure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reconfigure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamic_reconfigure-srv:<Reconfigure-request> is deprecated: use dynamic_reconfigure-srv:Reconfigure-request instead.")))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <Reconfigure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-srv:config-val is deprecated.  Use dynamic_reconfigure-srv:config instead.")
  (config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reconfigure-request>) ostream)
  "Serializes a message object of type '<Reconfigure-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'config) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reconfigure-request>) istream)
  "Deserializes a message object of type '<Reconfigure-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'config) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reconfigure-request>)))
  "Returns string type for a service object of type '<Reconfigure-request>"
  "dynamic_reconfigure/ReconfigureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reconfigure-request)))
  "Returns string type for a service object of type 'Reconfigure-request"
  "dynamic_reconfigure/ReconfigureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reconfigure-request>)))
  "Returns md5sum for a message object of type '<Reconfigure-request>"
  "bb125d226a21982a4a98760418dc2672")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reconfigure-request)))
  "Returns md5sum for a message object of type 'Reconfigure-request"
  "bb125d226a21982a4a98760418dc2672")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reconfigure-request>)))
  "Returns full string definition for message of type '<Reconfigure-request>"
  (cl:format cl:nil "Config config~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reconfigure-request)))
  "Returns full string definition for message of type 'Reconfigure-request"
  (cl:format cl:nil "Config config~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reconfigure-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'config))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reconfigure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Reconfigure-request
    (cl:cons ':config (config msg))
))
;//! \htmlinclude Reconfigure-response.msg.html

(cl:defclass <Reconfigure-response> (roslisp-msg-protocol:ros-message)
  ((config
    :reader config
    :initarg :config
    :type dynamic_reconfigure-msg:Config
    :initform (cl:make-instance 'dynamic_reconfigure-msg:Config)))
)

(cl:defclass Reconfigure-response (<Reconfigure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reconfigure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reconfigure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamic_reconfigure-srv:<Reconfigure-response> is deprecated: use dynamic_reconfigure-srv:Reconfigure-response instead.")))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <Reconfigure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_reconfigure-srv:config-val is deprecated.  Use dynamic_reconfigure-srv:config instead.")
  (config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reconfigure-response>) ostream)
  "Serializes a message object of type '<Reconfigure-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'config) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reconfigure-response>) istream)
  "Deserializes a message object of type '<Reconfigure-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'config) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reconfigure-response>)))
  "Returns string type for a service object of type '<Reconfigure-response>"
  "dynamic_reconfigure/ReconfigureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reconfigure-response)))
  "Returns string type for a service object of type 'Reconfigure-response"
  "dynamic_reconfigure/ReconfigureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reconfigure-response>)))
  "Returns md5sum for a message object of type '<Reconfigure-response>"
  "bb125d226a21982a4a98760418dc2672")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reconfigure-response)))
  "Returns md5sum for a message object of type 'Reconfigure-response"
  "bb125d226a21982a4a98760418dc2672")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reconfigure-response>)))
  "Returns full string definition for message of type '<Reconfigure-response>"
  (cl:format cl:nil "Config config~%~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reconfigure-response)))
  "Returns full string definition for message of type 'Reconfigure-response"
  (cl:format cl:nil "Config config~%~%~%================================================================================~%MSG: dynamic_reconfigure/Config~%BoolParameter[] bools~%IntParameter[] ints~%StrParameter[] strs~%DoubleParameter[] doubles~%GroupState[] groups~%~%================================================================================~%MSG: dynamic_reconfigure/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_reconfigure/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_reconfigure/StrParameter~%string name~%string value~%~%================================================================================~%MSG: dynamic_reconfigure/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_reconfigure/GroupState~%string name~%bool state~%int32 id~%int32 parent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reconfigure-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'config))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reconfigure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Reconfigure-response
    (cl:cons ':config (config msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Reconfigure)))
  'Reconfigure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Reconfigure)))
  'Reconfigure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reconfigure)))
  "Returns string type for a service object of type '<Reconfigure>"
  "dynamic_reconfigure/Reconfigure")