--- Library used for drawing shape and getting points in various shapes. mostly used for visual things
-- @module[kind=modules] guih.lib.algo

local algo = {}


--- returns all pixels you need to draw an ellipse
-- @tparam number horizontal_radius horizontal radius of the ellipse
-- @tparam number vertical_radius vertical radius of the ellipse
-- @tparam number x x coordinate of the center of the ellipse
-- @tparam number y y coordinate of the center of the ellipse
-- @tparam boolean filled whether the ellipse should be filled or not
-- @treturn table a table of all pixels you need to draw the ellipse 
function algo.get_elipse_points(horizontal_radius,vertical_radius,x,y,filled)
end

--- returns all the pixels you need to draw a triangle
-- @tparam vector p1 first point of the triangle
-- @tparam vector p2 second point of the triangle
-- @tparam vector p3 third point of the triangle
-- @treturn table a table of all pixels you need to draw the triangle
function algo.get_triangle_points(p1,p2,p3)
end

--- returns all the pixels you need to draw outline of an triangle
-- @tparam vector p1 first point of the triangle
-- @tparam vector p2 second point of the triangle
-- @tparam vector p3 third point of the triangle
-- @treturn table a table of all pixels you need to draw the triangle outline
function algo.get_triangle_outline_points(p1,p2,p3)
end

--- returns all pixels you need to draw a line
-- @tparam number start_x x coordinate of the start of the line
-- @tparam number start_y y coordinate of the start of the line
-- @tparam number end_x x coordinate of the end of the line
-- @tparam number end_y y coordinate of the end of the line
-- @treturn table a table of all pixels you need to draw the line
function algo.get_line_points(start_x,start_y,end_x,end_y)
end

return algo