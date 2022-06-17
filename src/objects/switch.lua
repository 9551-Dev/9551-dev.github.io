--- Properties of the switch object
-- most of these properties are optional !
--
-- a switch a simple object that changes its state upon being clicked
-- while being simple it also has high graphic capabilities
--
-- @module object.switch

local properties = {}
local read_properties = {}

--- switch OBJECT CREATION PROPERTIES
-- @table creation_properties
-- @field x [number] the x position of the switch
-- @field y [number] the y position of the switch
-- @field width [number] the width of the switch
-- @field height [number] the height of the switch
-- @field text [@{guih.main_ui.text}] the text to put on the switch when its off
-- @field text_on [@{guih.main_ui.text}] the text to put on the switch when its on
-- @field background_color [number] the background_color color of the switch when the switch is off
-- @field background_color_on [number] the background_color color of the switch when the switch is on
-- @field text_color [number] the color of the symbols on the switch when the switch is off (not the actual "text")
-- @field text_color_on [number] the color of the symbols on the switch when the switch is on (not the actual "text")
-- @field symbol [string]  the symbol to fill the background of the switch with
-- @field tex [GuiH.texture] the texture to draw on the switch when its off
-- @field tex_on [GuiH.texture] the texture to draw on the switch when its on   
-- @field on_change_state [function] the function that gets ran when the switch changes its state (gets passed the object and the event as an argument)

--- switch OBJECT READ PROPERTIES
-- @table read_properties
-- @field value [boolean] the current state of the switch


return properties,read_properties