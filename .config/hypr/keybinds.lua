-- Atajos personales independientes del shell
-- Hyprland 0.56+ / Lua

-- Cambiar a escritorios específicos
hl.bind("CTRL + F1", hl.dsp.focus({ workspace = "1" }),
    { description = "Cambiar al escritorio 1" })
hl.bind("CTRL + F2", hl.dsp.focus({ workspace = "2" }),
    { description = "Cambiar al escritorio 2" })
hl.bind("CTRL + F3", hl.dsp.focus({ workspace = "3" }),
    { description = "Cambiar al escritorio 3" })
hl.bind("CTRL + F4", hl.dsp.focus({ workspace = "4" }),
    { description = "Cambiar al escritorio 4" })
hl.bind("CTRL + F5", hl.dsp.focus({ workspace = "5" }),
    { description = "Cambiar al escritorio 5" })

-- Abrir aplicaciones
hl.bind("SUPER + Insert", hl.dsp.exec_cmd("ghostty"),
    { description = "Abrir Ghostty" })
hl.bind("SUPER + S", hl.dsp.exec_cmd("flatpak run com.spotify.Client"),
    { description = "Abrir Spotify" })
hl.bind("SUPER + E", hl.dsp.exec_cmd("dolphin"),
    { description = "Abrir Dolphin" })
hl.bind("SUPER + H", hl.dsp.exec_cmd("brave-browser"),
    { description = "Abrir Brave Browser" })

-- Maximizar/restaurar ventana
hl.bind("SUPER + Page_Up",
    hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }),
    { description = "Maximizar/restaurar ventana" })

-- Ocultar/recuperar ventana
local previousWorkspace = nil

hl.bind("SUPER + Page_Down", function()
    if hl.get_workspace("special:minimized") then
        hl.dispatch(hl.dsp.window.move({
            workspace = hl.get_active_workspace(),
            window = "tag:minimized"
        }))
        hl.dispatch(hl.dsp.window.clear_tags({ window = "tag:minimized" }))
    else
        hl.dispatch(hl.dsp.window.tag({
            tag = "minimized",
            window = hl.get_active_window()
        }))
        hl.dispatch(hl.dsp.window.move({
            workspace = "special:minimized",
            follow = false
        }))
    end
end, { description = "Ocultar/recuperar ventana" })

-- Cambiar a la siguiente ventana
hl.bind("ALT + Tab", function()
    hl.dispatch(hl.dsp.window.cycle_next())
    hl.dispatch(hl.dsp.window.bring_to_top())
end, { description = "Cambiar de ventana" })

-- Mostrar/ocultar el escritorio
hl.bind("SUPER + SHIFT + D", function()
    local active = hl.get_active_workspace()

    if active.name == "Desktop" then
        if previousWorkspace then
            hl.dispatch(hl.dsp.focus({ workspace = previousWorkspace }))
        end
    else
        previousWorkspace = active.name
        hl.dispatch(hl.dsp.focus({ workspace = "name:Desktop" }))
    end
end, { description = "Mostrar/ocultar escritorio" })
