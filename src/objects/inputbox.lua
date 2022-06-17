--- Properties of the inputbox object
-- most of these properties are optional !
--
-- an inputbox is a customizable text input
-- featuring features like scrolling,insert mode,pasting
-- 
--
-- @module object.inputbox

local properties = {}
local read_properties = {}
local autocompletion = {}

--- inputbox OBJECT CREATION PROPERTIES
-- @table properties
-- @field x [number] the x position of the inputbox
-- @field y [number] the y position of the inputbox
-- @field width [number] the width of the inputbox
-- @field pattern [string] the pattern used for the input. lets say you only want numbers to be able to be inputed. then set pattern to "%d"
-- @field selected [boolean] sets if the input should be currently selected
-- @field cursor_pos [number] the position of the cursor in the inputbox
-- @field char_limit [number] the max characters that can be written into  the inputbox. defaulted to
-- @field background_color [number] the background color of the inputbox
-- @field text_color [number] the color of the text in the inputbox
-- @field space_symbol [string] the symbol to draw spaces with
-- @field background_symbol [string] the symbol to draw the background with
-- @field replace_char [string] can be used for showing diffirent chracters visualy. for example you can do "*" for passwords
-- @field ignore_tab [boolean] if true the tab key will be ignored for autocompletion. defaulted to false
-- @field on_change_select [function] a function that gets ran when the inputbox selection changes. gets passed self
-- @field on_change_input [function] a function that gets ran when the inputbox input changes. gets passed self and the change
-- @field on_enter [function] gets called when you press enter while  the inputbox is selected. gets passed self
-- @field autoc [table] a table of autocompletion options.

--- inputboxs OBJECT READ PROPERTIES
-- @table read_properties
-- @field input [string] the current text written in the inputbox
-- @field selected [boolean] tells whether the inputbox is selected or not
-- @field insert [boolean] tells whether the inputbox is in insert mode or not
-- @field ctrl [boolean] tells wheter ctrl key is currently held or not
-- @field shift [number] the visual offset to show the text with
-- @field autoc.current [string] the currently displayed autocompletion suggestion
-- @field autoc.selected [number] the currently selected autocompletion suggestion

--- autoc table properties
-- @table autocompletion
-- @field strings [table] a list of strings that the api will try to complete with every word
-- @field spec_strings [table] basicaly strings but word specific. if you want to have the first and second word only autocomplete Hello or World you can do {{"Hello","World"},{"Hello","world"}} the index of the strings table being the word count
-- @field bg [number] the background color of the autocompletion display
-- @field fg [number] the text color of the autocompletion display
-- @field[readonly] current [string] the currently selected autocompletion suggestion
-- @field[readonly] selected [number] the currently selected autocompletion suggestion
-- @field put_space [boolean] whether the autocompletion should put a space between each word autocompleted or not


return properties,read_properties