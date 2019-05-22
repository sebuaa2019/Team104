; Auto-generated. Do not edit!


(cl:in-package nodelet-srv)


;//! \htmlinclude NodeletUnload-request.msg.html

(cl:defclass <NodeletUnload-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass NodeletUnload-request (<NodeletUnload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeletUnload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeletUnload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nodelet-srv:<NodeletUnload-request> is deprecated: use nodelet-srv:NodeletUnload-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <NodeletUnload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nodelet-srv:name-val is deprecated.  Use nodelet-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeletUnload-request>) ostream)
  "Serializes a message object of type '<NodeletUnload-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeletUnload-request>) istream)
  "Deserializes a message object of type '<NodeletUnload-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeletUnload-request>)))
  "Returns string type for a service object of type '<NodeletUnload-request>"
  "nodelet/NodeletUnloadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeletUnload-request)))
  "Returns string type for a service object of type 'NodeletUnload-request"
  "nodelet/NodeletUnloadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeletUnload-request>)))
  "Returns md5sum for a message object of type '<NodeletUnload-request>"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeletUnload-request)))
  "Returns md5sum for a message object of type 'NodeletUnload-request"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeletUnload-request>)))
  "Returns full string definition for message of type '<NodeletUnload-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeletUnload-request)))
  "Returns full string definition for message of type 'NodeletUnload-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeletUnload-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeletUnload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeletUnload-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude NodeletUnload-response.msg.html

(cl:defclass <NodeletUnload-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NodeletUnload-response (<NodeletUnload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeletUnload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeletUnload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nodelet-srv:<NodeletUnload-response> is deprecated: use nodelet-srv:NodeletUnload-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <NodeletUnload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nodelet-srv:success-val is deprecated.  Use nodelet-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeletUnload-response>) ostream)
  "Serializes a message object of type '<NodeletUnload-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeletUnload-response>) istream)
  "Deserializes a message object of type '<NodeletUnload-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeletUnload-response>)))
  "Returns string type for a service object of type '<NodeletUnload-response>"
  "nodelet/NodeletUnloadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeletUnload-response)))
  "Returns string type for a service object of type 'NodeletUnload-response"
  "nodelet/NodeletUnloadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeletUnload-response>)))
  "Returns md5sum for a message object of type '<NodeletUnload-response>"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeletUnload-response)))
  "Returns md5sum for a message object of type 'NodeletUnload-response"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeletUnload-response>)))
  "Returns full string definition for message of type '<NodeletUnload-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeletUnload-response)))
  "Returns full string definition for message of type 'NodeletUnload-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeletUnload-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeletUnload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeletUnload-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NodeletUnload)))
  'NodeletUnload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NodeletUnload)))
  'NodeletUnload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeletUnload)))
  "Returns string type for a service object of type '<NodeletUnload>"
  "nodelet/NodeletUnload")