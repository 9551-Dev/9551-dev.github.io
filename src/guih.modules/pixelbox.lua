--- Drawing chararacter utilities to make precision drawing easier
-- @module[kind=modules] guih.lib.pixelbox

local pixelbox = {}
local canvas = {}

--- creates a new pixelbox canvas in an term object
-- @tparam terminal terminal the terminal to draw the canvas on
-- @tparam[opt] number background the background color to fill the new canvas with
-- @tparam[opt] table existing have the new canvas be made from an existing one
-- @treturn table the resulting pixelbox canvas
function pixelbox.new(terminal,background,existing)
end

--- procceses the canvas and pushes the updates into the draw buffer
function canvas:push_updates()
end

--- draws the current canvas to the screen from the draw buffer
function canvas:draw()
end

--- clears the canvas with set background color
-- @tparam number background color to fill the canvas with
function canvas:clear(background)
end

--- reads a pixel from a specific cordinate in the canvas. not the draw buffer
-- @tparam number x the x position of the pixel
-- @tparam number y the y position of the pixel
-- @treturn number the color of the pixel
function canvas:get_pixel(x,y)
end

--- writes a pixel to the canvas with a set color
-- @tparam number x the x position of the pixel
-- @tparam number y the y position of the pixel
-- @tparam number color the color to write to the pixel
-- @tparam[opt] number thickness the thickness of the pixel
function canvas:set_pixel(x,y,color,thickness)
end

--- draws a box between 2 sets of cordinates
-- @tparam number start_x the x position for the start of the rectangle
-- @tparam number start_y the y position for the start of the rectangle
-- @tparam number end_x the x position for the end of the rectangle
-- @tparam number end_y the y position for the end of the rectangle
-- @tparam number color the color to draw the rectangle with
function canvas:set_box(start_x,start_y,end_x,end_y,color)
end

--- draws an ellipse ellipse with set vertical and horizonal radius
-- @tparam number x the x position of the center of the ellipse
-- @tparam number y the y position of the center of the ellipse
-- @tparam number radius_x the horizontal radius of the ellipse
-- @tparam number radius_y the vertical radius of the ellipse
-- @tparam number color the color to draw the ellipse with
-- @tparam[opt] boolean filled whether the ellipse should be filled or not
-- @tparam[opt] number thickness the thickness of the ellipses points
function canvas:set_ellipse(x,y,radius_x,radius_y,color,filled,thickness)
end

--- draws an circle with set radius
-- @tparam number x the x position of the center of the circle
-- @tparam number y the y position of the center of the circle
-- @tparam number radius the radius of the circle
-- @tparam number color the color to draw the circle with
-- @tparam[opt] boolean filled whether the circle should be filled or not
-- @tparam[opt] number thickness the thickness of the circle points
function canvas:set_circle(x,y,radius,color,filled,thickness)
end

--- draws a triangle from 3 sets of points
-- @tparam number x1 the x position of the first point
-- @tparam number y1 the y position of the first point
-- @tparam number x2 the x position of the second point
-- @tparam number y2 the y position of the second point
-- @tparam number x3 the x position of the third point
-- @tparam number y3 the y position of the third point
-- @tparam number color the color to draw the triangle with
-- @tparam[opt] boolean filled whether the triangle should be filled or not
-- @tparam[opt] number thickness the thickness of the triangle points
function canvas:set_triangle(x1,y1,x2,y2,x3,y3,color,filled,thickness)
end

--- draws a line between 2 points
-- @tparam number x1 the x position of the first point
-- @tparam number y1 the y position of the first point
-- @tparam number x2 the x position of the second point
-- @tparam number y2 the y position of the second point
-- @tparam number color the color to draw the line with
-- @tparam[opt] number thickness the thickness of the line
function canvas:set_line(x1,y1,x2,y2,color,thickness)
end

return pixelbox