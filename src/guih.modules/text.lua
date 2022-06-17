--- Api used for manipulating text and strings. similiar to cc.strings but better.
-- @module[kind=modules] guih.lib.text

local text = {}

--- wraps the text with a set maximum width.
-- @tparam string text the text to wrap
-- @tparam number width the maximum width of the text
-- @tparam[opt] boolean mode whether should the text be returned as a table of strings instead of a single string with newlines
-- @treturn string the newline wrapped text
function text.wrap(text,width,mode)
end

--- cuts string into sizes of variable width
-- @tparam string text the text to cut
-- @tparam number width the maximum width of the text
-- @treturn table the cut up parts of the string
function text.cut_parts(text,width)
end

--- ensures a width of a string
-- @tparam string text the text to ensure the width of
-- @tparam number width the maximum/minimum width of the text
-- @treturn string the new string with the width ensured to be the inputed width
function text.ensure_size(text,width)
end

return text