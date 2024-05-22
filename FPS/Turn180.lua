ARG_G_SHIFT = 6
ARG_TRIGGER_LEFT = 11
ARG_TRIGGER_RIGHT = 10

STATE_G_SHIFT = false

function OnEvent(event, arg)
  if arg == ARG_G_SHIFT then
    if event == "MOUSE_BUTTON_PRESSED" then
      STATE_G_SHIFT = true
    elseif event == "MOUSE_BUTTON_RELEASED" then
      STATE_G_SHIFT = false
    end
  end

  if STATE_G_SHIFT then
    if event == "MOUSE_BUTTON_PRESSED" then
      if arg == ARG_TRIGGER_LEFT then
        for i = 1, 10 do
          MoveMouseRelative(-127, 0)
          Sleep(1)
        end
      end

      if arg == ARG_TRIGGER_RIGHT then
        for i = 1, 10 do
          MoveMouseRelative(127, 0)
          Sleep(1)
        end
      end
    end
  end
end
