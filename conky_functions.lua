-- ~/bin/conky_functions.lua
require 'cairo'
-- Function to handle mouse clicks
function conky_reload(event)
    local button_x, button_y, button_w, button_h = 1, 1, 10, 10

    if event.x >= button_x and event.x <= button_x + button_w and
       event.y >= button_y and event.y <= button_y + button_h then
            os.execute("killall -SIGUSR1 conky")
            -- os.execute("killall conky && sleep 1 && conky &")
    end
end

-- Function to draw the "reset button" (optional, but good for visualization)
function conky_draw_reset_button()
    if conky_window == nil then return end
    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
    local cr = cairo_create(cs)

    -- Button dimensions and position
    local x, y, width, height = 1, 1, 10, 10

    -- Draw the text
    cairo_set_source_rgba(cr, 1, 1, 1, 1)
    cairo_select_font_face(cr, "Zekton Bold", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL)
    cairo_set_font_size(cr, 18)
    cairo_move_to(cr, x + 2, y + 21) -- Position the text inside the button
    cairo_show_text(cr, "MainFrame")

    cairo_destroy(cr)
    cairo_surface_destroy(cs)
end
