--- Api used for reading .ppm images that can be exported from gimp in raw mode.
-- @module[kind=modules] guih.lib.ppm

local luappm = {}
local ppmimage = {}
local pixel = {}
local palette = {}

--- decodes image with the given path returning all the data
-- @tparam string path the path to the image
-- @treturn table the decoded image (ppmimage)
function luappm(path)
end

--- reads a pixel from the image
-- @tparam number x the x position of the pixel
-- @tparam number y the y position of the pixel
-- @treturn table the resulting pixel table. properties: @{pixel}
function ppmimage.get_pixel(x,y)
end

--- returns all the diffirent color types from the image and their counts
-- @treturn table the resulting palette table. properties: @{palette}
function ppmimage.get_palette()
end

--- the raw image data from the file
-- @field[readonly] ppmimage.data
ppmimage.data = {}

--- all of the metadata in a table
-- @field[readonly] ppmimage.meta
ppmimage.meta = {}

--- raw map of all the image data
-- @field[readonly] ppmimage.pixels
ppmimage.pixels = {}

--- pixel count in the image
-- @field[readonly] ppmimage.pixels
ppmimage.pixels = 0

--- the width of the image
-- @field[readonly] ppmimage.width
ppmimage.width = 0

--- the height of the image
-- @field[readonly] ppmimage.height
ppmimage.height = 0

--- the color type in this image
-- 255 in most images
-- @field[readonly] ppmimage.color_type
ppmimage.color_type = 0

--- the pixel table properties
-- @table pixel
-- @field r the red color of the pixel
-- @field g the green color of the pixel
-- @field b the blue color of the pixel

--- the palette table properties
-- it is a table of rgb color tables. sorted from most to least common with their counts included
-- @table palette
-- @field commonness a single color of this palette


return luappm