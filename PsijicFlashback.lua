-- namespace
PsijicFlashback = {}

-- global variables which I'll use from time to time
PsijicFlashback.name = "PsijicFlashback"

function PsijicFlashback:Initialize()
  -- nothing there yet!
end

-- Initialize our addon only if it has fully loaded (not too complicated on this little fucker)
function PsijicFlashback.OnAddOnLoaded(event, addonName)
  -- The event fires each time *any* addon loads - but we only care about when our own addon loads
  if addonName == PsijicFlashback.name then
    PsijicFlashback:Initialize()
  end
end

-- Finally, we'll register our event handler function to be called when the proper event occurs
-- tbh I don't fully understand why this is necessary
EVENT_MANAGER:RegisterForEvent(PsijicFlashback.name, EVENT_ADD_ON_LOADED, PsijicFlashback.OnAddOnLoaded)


local counter = 1

function PsijicFlashbackUpdate()
    PsijicFlashbackCounter:SetText(string.format("Counter: %d", counter))
    counter = counter + 1
end

function PsijicFlashbackReset()
    counter = 0
    CHAT_SYSTEM:AddMessage("Flashback counter resetted!")
end

function PsijicFlashbackInitialized()
end
