--- GuiH graphics library. used for drawing and image reading purposes.
-- @module[kind=modules] guih.lib.graphic

local graphic = {}

--- draws a box from a given texture on the screen
-- @tparam term_object terminal the terminal to draw the box on
-- @tparam gui.texture texture the texture to draw
-- @tparam number x the x position to draw the box at
-- @tparam number y the y position to draw the box at
-- @tparam number width the width of the drawn sprite
-- @tparam number height the height of the drawn sprite
-- @tparam[opt] number bg the background color to draw empty pixels with
-- @tparam[opt] number fg the foreground color to draw empty pixels with
-- @tparam[opt] number offsetx the x offset to draw the sprite at
-- @tparam[opt] number offsety the y offset to draw the sprite at
-- @tparam[opt] table cache the cache to store loaded sprites. can lead to massive performance increase. see @{guih.main_ui.texture_cache}

function draw_box_tex(terminal,texture,x,y,width,height,bg,fg,offsetx,offsety,cache)
end

--- reads a pixel from an texture
-- @tparam number x the x position of the pixel
-- @tparam number y the y position of the pixel
-- @tparam guih.texture texture the texture to read from
-- @tparam boolean fill_empty whether the empty pixel should get set to their nearest neighbor
-- @treturn table the resulting pixel table. properties: @{graphic.pixel}
function graphic.get_pixel(x,y,texture,fill_empty)
end

--- creates a drawing character out of a table with 6 color values
-- @tparam table tbl the table with 6 values
-- @tparam[opt] boolean mode whether the overflow colors should be filled with the first most common or the second most common color (default: most)
-- @treturn string the resulting character
-- @treturn number the resulting foreground color
-- @treturn number the resulting background color
function graphic.build_drawing_char(tbl,mode)
end

--- the simple pixel table properties
-- @table graphic.pixel
-- @field symbol the symbol stored at this pixel
-- @field text_color the color of the text
-- @field background_color the color of the background of this pixel

--- a lookup table for converting blit values into color numbers.
-- @table graphic.to_color

--- a lookup table converting color numbers to blit values.
-- @table graphic.to_blit

return graphic