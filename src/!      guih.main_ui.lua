--- The gui object itself and its manipulation functions
--@module guih.main_ui

local main_ui = {}
local log={}
local key = {}
local event_listener = {}
local async_task = {}

--- The window this gui is attached to
-- @field[readonly] main_ui.term_object
main_ui.term_object = {}

--- Alias for main_ui.term_object
-- @field[readonly] main_ui.term
-- @see main_ui.term_object
main_ui.term = {}

--- list of all the elements in the current gui following format main_ui.elements.<object_type (button)>.<object_name (custom name/uuid4)>
-- @field[readonly] main_ui.elements
main_ui.elements = {}

--- Alias for main_ui.elements
-- @field[readonly] main_ui.elements_list
-- @see main_ui.elements
main_ui.gui = {}

--- sets if the current gui should be visible
-- @field[readwrite] main_ui.visible
main_ui.visible = true

--- special uuid4 identifier for this gui
-- @field[readonly] main_ui.id
main_ui.id = ""

--- a list of all currently running asynchronous tasks indexed by an uuid4
-- @field[readwrite] main_ui.task_routine
main_ui.task_routine = {}

--- a list of all currently pasued asynchronous tasks indexed by an uuid4
-- @field[readwrite] main_ui.paused_task_routine
main_ui.paused_task_routine = {}

--- the rate the UI should update the grahics at. default: 0.05
-- @field[readwrite] main_ui.update_delay
main_ui.update_delay = 0.5

--- a lookup table of all currently held keys (used internally)
-- @field[read] main_ui.held_keys
main_ui.held_keys = {}

--- Error Log type used by the @{main_ui.log} function
-- @field[readonly] log.error
-- @see main_ui.log
log.error = 1

--- Warn Log type used by the @{main_ui.log} function
-- @field[readonly] log.warn
-- @see main_ui.log
log.warn = 2

--- Fatal Log type used by the @{main_ui.log} function
-- @field[readonly] log.fatal
-- @see main_ui.log
log.fatal = 3

--- Success Log type used by the @{main_ui.log} function
-- @field[readonly] log.success
-- @see main_ui.log
log.success = 4

--- Message Log type used by the @{main_ui.log} function
-- @field[readonly] log.message
-- @see main_ui.log
log.message = 6

--- Update Log type used by the @{main_ui.log} function
-- @field[readonly] log.update
-- @see main_ui.log
log.update = 7

--- Info Log type used by the @{main_ui.log} function
-- @field[readonly] log.info
-- @see main_ui.log
log.info = 8

--- the current width of the gui terminal object
-- @field[readonly] main_ui.width
main_ui.width = 0

--- the current height of the gui terminal object
-- @field[readonly] main_ui.height
main_ui.height = 0

--- alias for main_ui.width
-- @see main_ui.width
main_ui.w = 0

--- alias for main_ui.height
-- @see main_ui.height
main_ui.h = 0

--- list of all currently active event listeners
-- @field[readwrite] main_ui.event_listeners
main_ui.event_listeners = {}

--- list of all currently paused event listeners
-- @field[readwrite] main_ui.paused_listeners
main_ui.paused_listeners = {}

--- the background color for this gui object. used for clearing when updating the gui
-- defaults to the current terminal color or black
-- @field[readwrite] main_ui.background
main_ui.background = 32768

--- sets if the gui should be cleared every frame. this is already done for the main gui no matter the value
-- this value only makes effect on child GUI's and their elements
-- @field[readwrite] main_ui.cls
main_ui.cls = false

--- a list of already drawn textures used to accelerate redrawing to the same positions masively
-- the table folors this format cache[texture.id] = {tex_data,args={last_draw_arguments}}
-- note that every texture has only 1 place in memory.
-- @field[readwrite] main_ui.texture_cache
main_ui.texture_cache = {}

--- Enables all additional debug logs to be shown
-- which is useful for  debbugging
-- @field[readwrite] main_ui.debug
main_ui.debug = false

--- horizontal offset of all events used for calibration of the gui
-- @field[readwrite] main_ui.event_offset_x
main_ui.event_offset_x = 0

--- vertical offset of all events used for calibration of the gui
-- @field[readwrite] main_ui.event_offset_x
main_ui.event_offset_y = 0

--- the last error that gui.execute has caught
-- @field[readonly] main_ui.last_error
main_ui.last_error = ""

--- the type of terminal or a monitor used by the gui
-- if gui is made on an terminal it will be term_object
-- if its on a monitor it will be the monitors name
-- @field[readonly] main_ui.monitor
main_ui.monitor = ""

--- table with all the functions for creating new objects in the UI
-- for reference of what Properites what object needs and what objects are avaible visit @{objects}
-- @field[readonly] main_ui.new
-- @see objects
main_ui.new = {}

--- Alias for main_ui.new
-- @field[readonly] main_ui.create
-- @see main_ui.new
main_ui.create = {}

--- Alias for @{guih.apis}
-- @field[readonly] main_ui.api
-- @see guih.apis
-- @see modules
main_ui.api = {}

--- Alias for GuiH.presets
-- @field[readonly] main_ui.preset
-- @see guih.presets
-- @see presets
main_ui.preset = {}

--- Internal function used for updating the gui. I do no reccomend touching this
-- @tparam number timeout
-- @tparam[opt] boolean visible
-- @tparam[opt] boolean is_child
-- @tparam[opt] table data data passed from the previous run. used for reccursive updating of child objects
-- @tparam[opt] boolean block_logic sets if the updater should update the states of elements
-- @tparam[opt] boolean block_graphic sets if the updater should update the graphics on the screen
function main_ui.update(timeout,visible,is_child,data,block_logic,block_graphic)
end

--- processes and saves the current log into the GuiH/log.log file
-- @treturn table resulting log
function log:dump()
end

--- logs a message into the GuiH/log.log file
-- @tparam string message message to get written into the log file
-- @tparam number log_type type to use. these can be got by doing main_ui.log.<type> (ex. error)
function main_ui.log(message,log_type)
end

--- checks for held keys
-- can have any amount of keys inputed for keybindings
-- @warning if no keys are provided this will return true,true
-- @tparam number ... keys to check for
-- @treturn boolean are_pressed returns true if all the current keys are pressed down
-- @treturn boolean are_held returns true if all the keys have been pressed down for at least 1 second
function key.held(...)
end

--- schedules a new asynchronous task in  the background
-- @tparam function f the function to run asynchronously
-- @tparam[opt] number delay the amount of time in seconds to wait before starting up this task
-- @tparam[opt] boolean error_flag should an exeption happen if this task errors
-- @tparam[opt] boolean debug enables useful things like error and state logging
-- @treturn guih.SCHEDULED_THREAD bunch of functions you can use to pause/kill/revive and manipulate this thread
function main_ui.async(f,delay,error_flag,debug)
end 

--- Alias for main_ui.async
-- @see main_ui.async
function main_ui.schedule(f,delay,error_flag,debug)
end

--- Makes a new event listener with a custom filter
-- @tparam string/table filter the filter used for this event listener
-- @tparam function f function triggered by the event_listener
-- @param[opt] name allows you to select a custom name for the listener
-- @tparam[opt] boolean debug enables a bunch of logs that might be useful 
-- @treturn guih.EVENT_LISTENER bunch of useful functions you can use to pause/kill/revive and manipulate this listener
function main_ui.add_listener(filter,f,name,debug)
end

--- causes an error stopping the gui
-- @tparam string err the error to cause
function main_ui.cause_exeption(err)
end

--- Alias for main_ui.cause_exeption
-- @see main_ui.cause_exeption
function main_ui.error(err)
end

--- Alias for main_ui.key.held
-- @see key.held
function main_ui.is_held(...)
end

--- This is the main function that you will use to run your application
-- it provides you with 4 functions that it will run as it goes
-- @tparam[opt] function runtime as long as this function runs the gui will run too. you can use it to add custom code to your gui wihnout using scripts but putting it in the main loop itself
-- @tparam[opt] function on_event this function gets ran when an event happens that updates the gui. it gets passed the GUI_WINDOW,EVENT
-- @tparam[opt] function before_draw this function gets called before the gui gets drawn so you can use it for some update code. it gets passed only the GUI_WINDOW
-- @tparam[opt] function after_draw this function gets called after the gui gets drawn so you can use it to overlay your own things on top of the gui
-- @treturn string the error that caused the gui to stop. you can use error(main_ui.execute(),0) to get normal error messages
function main_ui.execute(runtime,on_event,before_draw,after_draw)
end

--- Alias for main_ui.execute()
-- @see main_ui.execute
function main_ui.run(runtime,on_event,before_draw,after_draw)
end

--- removes all elements form the gui
-- @tparam boolean debug
function main_ui.clear(debug)
end

--- loads a basic .nimg texture or can be used to make texture improters
-- @see guih.load_texture
function main_ui.load_texture(path)
end

--- loads a .ppm texture
-- such a texture can be exported from gimp in the raw mode and be displayed ingame
-- @tparam string path the path to the image file
-- @treturn guih.texture the loaded texture
function main_ui.load_ppm_texture(path)
end

--- loads a .cimg texture
-- .cimg is a space inneficient format made by compec
-- @tparam string path the path to the image file
-- @treturn guih.texture the loaded texture
function main_ui.load_cimg_texture(path)
end

--- loads a .limg texture
-- limg is a format made by Leveloper the developer of LevelOS
-- this loads the first frame in the image file and gives it to you
-- @tparam string path the path to the image file
-- @treturn guih.texture the loaded texture
-- @treturn guih.texture_array all of the images in the file put in a table
function main_ui.load_limg_texture(path)
end

--- loads a .bbf texture
-- blbfor aka Blit Byte Format is a compact format developed by me (9551Dev)
-- this loads the first frame in the image file and gives it to you
-- @tparam string path the path to the image file
-- @treturn guih.texture the loaded texture
-- @treturn guih.texture_array all of the images in the file put in a table
function main_ui.load_blbfor_texture(path)
end

--- loads a .limg texture
-- limg is a format made by Leveloper the developer of LevelOS
-- this loads the entire animation and returns a table with all the frames
-- @tparam string path the path to the image file
-- @treturn guih.texture_array
function main_ui.load_limg_animation(path)
end

--- loads a .bbf texture
-- blbfor aka Blit Byte Format is a compact format developed by me (9551Dev)
-- this loads the entire animation and returns a table with all the frames
-- @tparam string path the path to the image file
-- @treturn guih.texture_array
function main_ui.load_blbfor_animation(path)
end

--- Used for calibrating the gui by setting the event offset
-- this doesnt have to be used most of the time as the gui has
-- a build in calibration
-- @tparam[opt] number horizontal the x axis offset
-- @tparam[opt] number vertical the y axis offset
function main_ui.set_event_offset(horizontal,vertical)
end

--- allows getting blit data from the screen in a line between 2 points
-- @tparam number line the line to get  the blit data on
-- @tparam number start_x the x to start getting the blit from
-- @tparam number end_x the x to stop getting the blit from
-- @treturn string characters
-- @treturn string text color
-- @treturn string background color
function main_ui.get_blit(line,start_x,end_x)
end

--- returns the width and size of the gui
-- @treturn number the width of the gui
-- @treturn number the height of the gui
function main_ui.getSize()
end

--- recalibrates to gui to the current window position
function main_ui.calibrate()
end

--- a list of values for creating a primitive text object
-- @table text_object_properties
-- @field text the text this object will represted
-- @field[opt] x the x positions to draw the text at
-- @field[opt] y the y positions to draw the text at
-- @field[opt] centered should the text be centered (default in the middle of the entire screen)
-- @field[opt] offset_x the x offset to draw the text at
-- @field[opt] offset_y the y offset to draw the text at
-- @field[opt] blit the blit data to draw the text with
-- @field[opt] transparent should the text have transparent background (default false)
-- @field[opt] bg the background color to draw the text with
-- @field[opt] fg the foreground color to draw the text with
-- @field[opt] width the width to center the text between. can be used to centering text within a box. default is fullscreen
-- @field[opt] height the height to center the text between. can be used to centering text within a box. default is fullscreen

--- Used for making primite text objects that can then be inputed into more advanced objects
-- these are also objects and you can set their properties. which you can find at @{primitive.object.text.properties}
-- @see primitive.object.text.properties
-- @see text_object_properties
-- @tparam table OBJECT_PROPERTIES the properties to create text with
-- @treturn guih.primitive.text
function main_ui.text(OBJECT_PROPERTIES)
end 


--- stops the gui execution
function main_ui.stop()
end

--- kills the currently running gui instance
function main_ui.kill()
end

--- kills the given thread
-- @treturn boolean true/nil returns true of successful
function async_task.kill()
end

--- checks if the thread is alive
-- @treturn boolean the state of the thread
function async_task.alive()
end

--- Resumes the current thread no matter if paused or not with inputed event
-- @param ... Event data. the same as with os.queueEvent(...)
-- @treturn boolean was the task updated successfuly
-- @treturn[opt] boolean was the thread resumed correctly
-- @treturn[optchain] string possible error if the thread died on the resume (in that case the second return will be false)
function async_task.update(...)
end

--- Alias for async_task.update()
-- @see async_task.update
function async_task.step(...)
end

--- pauses the currently running thread
-- @treturn boolean was the task paused successfuly
function async_task.pause()
end

--- resumes a currently paused thread
-- @treturn boolean was the task resumed successfuly
function async_task.resume()
end

--- returns the error that happened on this thread if any happened
-- @treturn string error message
function async_task.get_error()
end

--- sets the current thread to state depending on a boolean value
-- @tparam boolean state selects if you want to pause or resume the current thread
-- @tparam boolean debug enables bunch of logs useful for debugging purposes
function async_task.set_running(state,debug)
end

--- kills the current event listener
function event_listener.kill()
end

--- pauses the currently running event listener
function event_listener.pause()
end

--- resumes the currently paused event listener
function event_listener.resume()
end

return main_ui