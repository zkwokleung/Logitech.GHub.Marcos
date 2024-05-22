ARG_G_SHIFT = 6
ARG_TRIGGER_UP = 8
ARG_TRIGGER_DOWN = 7

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
      -- Look Up
      if arg == ARG_TRIGGER_UP then
        for i = 1, 10 do
          MoveMouseRelative(0, -127)
          Sleep(1)
        end
      end

      -- Look Down
      if arg == ARG_TRIGGER_DOWN then
        for i = 1, 10 do
          MoveMouseRelative(0, 127)
          Sleep(1)
        end
      end
    end
  end
end
