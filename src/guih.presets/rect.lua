--- Rectangle style presets
-- @module[kind=PRESET] guih.presets.rect

local preset = {}

--- make a new border symbol set
--- borders can be used to put an outline around objects
--- such as a progressbar or a switch. by drawing rectangle behind them
-- @tparam number border_color
-- @tparam number background_color
-- @treturn table
function preset.border(border_color,background_color)
end


--- make a new frame symbol set
--- frames are basically inverted borders with almost no changes
-- @tparam number border_color
-- @tparam number background_color
-- @treturn table rectangle symbol set
function preset.frame(border_color,background_color)
end

--- make a new thick frame symbol set
--- these are  pretty much unfilled squares with no drawing chars
-- @tparam number border_color
-- @tparam number background_color
-- @treturn table rectangle symbol set
function preset.frame_thick(border_color,background_color)
end

--- make a new borderless window symbol set
--- pretty much just a line with a background box under it
-- @tparam number border_color
-- @tparam number background_color
-- @treturn table rectangle symbol set
function preset.window(border_color,background_color)
end

--- same as a window but with drawing char border around the edges
-- @tparam number border_color
-- @tparam number background_color
-- @treturn table rectangle symbol set
function preset.framed_window(border_color,background_color)
end

--- showcase of how to attach an symbol preset to an rectangle
-- @usage
-- local GuiH = require("GuiH")
-- local gui = guih.new(term.current())
-- local preset = guih.presets.rect.framed_window(colors.black,colors.white)
-- gui.new.rectangle{
--     x=2,y=2,width=10,height=5,
--     symbols=preset
-- }
-- gui.execute()
preset.example = "^"

return preset