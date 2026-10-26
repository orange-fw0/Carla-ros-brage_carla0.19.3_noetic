uint8 POLYNOMIAL_CURVE = 1
uint8 PATH = 2
uint8 VELOCITY = 4
uint8 ACCELERATION = 8
uint8 FRENET_STATE = 16
uint8 available
planning_msgs/Curve polynomial_curve
planning_msgs/PathPoint[] path
planning_msgs/Velocity velocity
planning_msgs/Acceleration acceleration
planning_msgs/FrenetState[] frenet_state
