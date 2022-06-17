--- An api used for reading/writing Blit Byte Format images. ".bbf"
-- note that this DOES NOT document the internal functions of the api
-- even tho they are accessible
-- @module[kind=modules] guih.lib.blbfor

local blbfor = {}
local blit_write_handle
local blit_read_handle

--- Opens a file for writing/reading.
-- @tparam string filename the name of the file to open
-- @tparam string mode the mode to open the file in ("w" or "r")
-- @tparam number width the width of the image to write
-- @tparam number height the height of the image to write
-- @tparam number layers the amount of layers to write
-- @tparam[opt] number FG the foreground color to fill the new image with
-- @tparam[opt] number BG the background color to fill the new image with
-- @tparam[opt] number SYM the symbol to fill the new image with
-- @tparam[opt] table meta the custom metadata to save in the new image
-- @return blit_read_handle/blit_write_handle the handle to work with the file
function blbfor.open(filename, mode, width, height, layers, FG, BG, SYM, meta)
end

--- Reads a pixel from the image.
-- @tparam number layer the layer to read the pixel from
-- @tparam number x the x coordinate of the pixel
-- @tparam number y the y coordinate of the pixel
-- @tparam[opt] boolean return_blit should the pixel data be returned in the blit format
-- @treturn string the symbol of the pixel
-- @treturn number/string the foreground color of the pixel
-- @treturn number/string the background color of the pixel
function blit_read_handle:get_pixel(layer,x,y,return_blit)
end

--- Reads a line from the image.
-- @tparam number layer the layer to read the line from
-- @tparam number y the y coordinate of the line
-- @treturn string the text of the line
-- @treturn string the foreground color of the line (blit string)
-- @treturn string the background color of the line (blit string)
function blit_read_handle:get_line(layer,y)
end

--- Writes a single pixel to the image.
-- @tparam number layer the layer to write the pixel on
-- @tparam number x the x coordinate of the pixel
-- @tparam number y the y coordinate of the pixel
-- @tparam number char the symbol of the pixel
-- @tparam number fg the foreground color of the pixel
-- @tparam number bg the background color of the pixel
function blit_write_handle:set_pixel(layer,x,y,char,fg,bg)
end

--- Writes an entire line of blit to the image.
-- @tparam number layer the layer to write the line on
-- @tparam number y the y coordinate of the line
-- @tparam string char the text to write to that line
-- @tparam string fg the foreground color of the line (blit string)
-- @tparam string bg the background color of the line (blit string)
function blit_write_handle:set_line(layer,y,char,fg,bg)
end

--- Flushes the image into its file
function blit_write_handle:flush()
end

--- Closes the image and saves it into its file.
function blit_write_handle:close()
end


return blbfor