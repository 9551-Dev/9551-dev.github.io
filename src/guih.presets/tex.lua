--- texture presets
-- @module[kind=PRESET] guih.presets.tex

local preset = {}

--- Makes a checkerboard texture with any amount of colors
-- @tparam number ... colors to make the texture from
-- @treturn table guih.texture
-- @usage
-- local GuiH = require("GuiH")
-- local texture = guih.presets.tex.checkerboard(colors.white,colors.black,colors.gray)
-- print(texture)
function preset.checker(...)
end

--- Generates a tileable brick texture with 2 colors
-- @tparam number color_between
-- @tparam number brick_color
-- @treturn table guih.texture
-- @usage
-- local GuiH = require("GuiH")
-- local texture = guih.presets.tex.brick(colors.brown,colors.orange)
-- print(texture)
function preset.brick(color_between,brick_color)
end

return preset