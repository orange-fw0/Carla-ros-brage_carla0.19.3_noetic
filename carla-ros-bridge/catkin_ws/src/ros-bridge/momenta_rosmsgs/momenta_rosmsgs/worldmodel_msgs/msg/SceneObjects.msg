uint8 ON_PATH_POLYGON_OBJECTS = 1
uint8 SURROUND_POLYGON_OBJECTS = 2
uint8 ON_PATH_CIRCLE_OBJECTS = 4
uint8 SURROUND_CIRCLE_OBJECTS = 8
std_msgs/Header header
worldmodel_msgs/SceneObjectsMeta meta
uint8 available
worldmodel_msgs/ScenePolygonObject[] on_path_polygon_objects
worldmodel_msgs/ScenePolygonObject[] surround_polygon_objects
worldmodel_msgs/SceneCircleObject[] on_path_circle_objects
worldmodel_msgs/SceneCircleObject[] surround_circle_objects
