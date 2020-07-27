; Auto-generated. Do not edit!


(cl:in-package myworkcell_core-srv)


;//! \htmlinclude PlanCartesianPath-request.msg.html

(cl:defclass <PlanCartesianPath-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass PlanCartesianPath-request (<PlanCartesianPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanCartesianPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanCartesianPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name myworkcell_core-srv:<PlanCartesianPath-request> is deprecated: use myworkcell_core-srv:PlanCartesianPath-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PlanCartesianPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myworkcell_core-srv:pose-val is deprecated.  Use myworkcell_core-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanCartesianPath-request>) ostream)
  "Serializes a message object of type '<PlanCartesianPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanCartesianPath-request>) istream)
  "Deserializes a message object of type '<PlanCartesianPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanCartesianPath-request>)))
  "Returns string type for a service object of type '<PlanCartesianPath-request>"
  "myworkcell_core/PlanCartesianPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanCartesianPath-request)))
  "Returns string type for a service object of type 'PlanCartesianPath-request"
  "myworkcell_core/PlanCartesianPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanCartesianPath-request>)))
  "Returns md5sum for a message object of type '<PlanCartesianPath-request>"
  "e2c94f25791ccda9422dbc6f0a8d45b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanCartesianPath-request)))
  "Returns md5sum for a message object of type 'PlanCartesianPath-request"
  "e2c94f25791ccda9422dbc6f0a8d45b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanCartesianPath-request>)))
  "Returns full string definition for message of type '<PlanCartesianPath-request>"
  (cl:format cl:nil "~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanCartesianPath-request)))
  "Returns full string definition for message of type 'PlanCartesianPath-request"
  (cl:format cl:nil "~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanCartesianPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanCartesianPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanCartesianPath-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude PlanCartesianPath-response.msg.html

(cl:defclass <PlanCartesianPath-response> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass PlanCartesianPath-response (<PlanCartesianPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanCartesianPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanCartesianPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name myworkcell_core-srv:<PlanCartesianPath-response> is deprecated: use myworkcell_core-srv:PlanCartesianPath-response instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <PlanCartesianPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myworkcell_core-srv:trajectory-val is deprecated.  Use myworkcell_core-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanCartesianPath-response>) ostream)
  "Serializes a message object of type '<PlanCartesianPath-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanCartesianPath-response>) istream)
  "Deserializes a message object of type '<PlanCartesianPath-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanCartesianPath-response>)))
  "Returns string type for a service object of type '<PlanCartesianPath-response>"
  "myworkcell_core/PlanCartesianPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanCartesianPath-response)))
  "Returns string type for a service object of type 'PlanCartesianPath-response"
  "myworkcell_core/PlanCartesianPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanCartesianPath-response>)))
  "Returns md5sum for a message object of type '<PlanCartesianPath-response>"
  "e2c94f25791ccda9422dbc6f0a8d45b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanCartesianPath-response)))
  "Returns md5sum for a message object of type 'PlanCartesianPath-response"
  "e2c94f25791ccda9422dbc6f0a8d45b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanCartesianPath-response>)))
  "Returns full string definition for message of type '<PlanCartesianPath-response>"
  (cl:format cl:nil "~%~%trajectory_msgs/JointTrajectory trajectory~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanCartesianPath-response)))
  "Returns full string definition for message of type 'PlanCartesianPath-response"
  (cl:format cl:nil "~%~%trajectory_msgs/JointTrajectory trajectory~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanCartesianPath-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanCartesianPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanCartesianPath-response
    (cl:cons ':trajectory (trajectory msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanCartesianPath)))
  'PlanCartesianPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanCartesianPath)))
  'PlanCartesianPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanCartesianPath)))
  "Returns string type for a service object of type '<PlanCartesianPath>"
  "myworkcell_core/PlanCartesianPath")